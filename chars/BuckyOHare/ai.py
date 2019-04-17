import re
import os
import sys
import random

def cut(line):
    p=re.compile(r';.*')
    subs=p.sub('',line)
    return subs

def findstateno(state):
    s=0
    stateno=-1
    p=re.compile(r'value\s*=\s*(\d+)',re.I)
    for line in state:
        m=p.search(line)
        if m:            
            stateno=int(m.group(1))
            break
    return stateno

def findstatedef(stateno,stfiles):
    p=re.compile(r'\[Statedef\s*'+str(stateno)+'\s*\]',re.I)
    p1=re.compile(r'\[Statedef',re.I)
    s=0
    statedef=[]
    for cnsfile in stfiles:
        if os.path.isfile(cnsfile):
            ST=open(cnsfile,'r')        
            try:
                if statedef ==[]:
                    temp=ST.readlines()
                    for line in temp:
                        m=p.search(line)
                        m1=p1.search(line)
                        if s==1:
                            if m1==None:statedef.append(line)
                            if m1:break
                        if m and s==0:
                            s=1
                            statedef.append(line)
            finally:ST.close()
    return statedef

def findattr(statedef):
    animno=None
    s1=0
    s2=0
    s3=0
    power=0
    statetype=None
    hitdef=None
    pausetime=None
    p1=re.compile(r'anim\s*=\s*(\d+)',re.I)
    p2=re.compile(r'^type\s*=\s*(\w)\s*$',re.I)
    p3=re.compile(r'^type\s*=\s*poweradd$',re.I)
    p4=re.compile(r'^poweradd\s*=\s*-(\d+)',re.I)
    p5=re.compile(r'^value\s*=\s*-(\d+)',re.I)
    p6=re.compile(r'^type\s*=\s*hitdef$',re.I)
    p7=re.compile(r'^type\s*=\s*(super)?pause$',re.I)
    p8=re.compile(r'^(?:move)?time\s*=\s*(\d+)\s*',re.I)
    p9=re.compile(r'^hitflag\s*=\s*(\S+)',re.I)
    p0=re.compile(r'^guardflag\s*=\s*(\S+)',re.I)
    for line in statedef:
        m1=p1.search(line)
        m2=p2.search(line)
        m3=p3.search(line)
        m4=p4.search(line)
        m5=p5.search(line)
        m6=p6.search(line)
        m7=p7.search(line)
        m8=p8.search(line)
        m9=p9.search(line)
        m0=p0.search(line)
        if m1 and animno==None:
            animno=m1.group(1)
        if m2 and statetype==None:            
            statetype=m2.group(1)            
        if m3 and s1==0 and power == 0:
            s1=1
        if m5 and s1==1 and power == 0:
            power = int(m5.group(1))
            s1=0
        if m4:power = int(m4.group(1))
        if m6 and s2==1:
            hitdef=''.join(m6.group(2).split())
        if m6 and s2==0:
            s2=1
            p6=re.compile(r'^attr\s*=\s*([SCA]+),\s*(\w\w)',re.I)        
        if m7:
            s3=1
        if s3==1 and m8 and pausetime == None:
            pausetime = int(m8.group(1))
        if m9 and hitdef != None:
            if 'A' not in m9.group(1):hitdef=hitdef+'-A'
            if '-' in m9.group(1):hitdef=hitdef+'-B'
        if m0 and hitdef != None:
            if 'A' not in m0.group(1):hitdef=hitdef+'-G'
            if 'L' in m0.group(1) and statetype != 'C':hitdef=hitdef+'-L'
            if 'H' in m0.group(1) and statetype != 'A':hitdef=hitdef+'-C'
        if m0 == None and hitdef != None and 'T' in hitdef:hitdef=hitdef+'-U'
    return animno,statetype,power,hitdef,pausetime

def findaction(animno,air):
    p=re.compile(r'\[Begin action\s*'+str(animno)+'\s*\]',re.I)
    p1=re.compile(r'\[Begin action',re.I)
    s=0
    anim=0
    action=[]
    AIR=open(air,'r')
    try:
        temp=AIR.readlines()
        for line in temp:
            m=p.search(line)
            if s==1:
                m1=p1.search(line)
                if m1==None and cut(line):action.append(line)
                if m1:break
            if m and s==0:
                action.append(line)
                s=1
    finally:
        AIR.close()
    return action

def findreach(action,pausetime,statetype):
    t=re.compile(r'\s*-?\d+\s*,\s*-?\d+\s*,\s*-?\d+\s*,\s*-?\d+\s*,\s*(-?\d+)\s*')
    c1=re.compile(r'clsn1\[\d+\]\s*=\s*(-?\d+\s*),(\s*-?\d+\s*),(\s*-?\d+\s*),(\s*-?\d+\s*)',re.I)
    c2=re.compile(r'clsn2\[\d+\]\s*=\s*(-?\d+\s*),(\s*-?\d+\s*),(\s*-?\d+\s*),(\s*-?\d+\s*)',re.I)
    s0,s1,s2,s3,s4=0,0,0,0,0
    time=0
    totaltime=0    
    c1x1=None
    c1x2=None
    c1y1=None
    c1y2=None    
    c2y1=None
    c2y2=None    
    for line in action:        
        m=t.search(line)
        m1=c1.search(line)
        m2=c2.search(line)        
        if m:
            t1=abs(int(m.group(1)))
            time=time+t1*(1-s1)*(1-s3)            
            totaltime=totaltime+t1
            if s1==1:s0=1
            if s2==1:s4=1
        if m1 and s0==0:                        
            if c1x1 is not None:
                c1x1=min(c1x1,int(m1.group(1)),int(m1.group(3)))
            else:c1x1=min(int(m1.group(1)),int(m1.group(3)))
            if c1x2 is not None:
                c1x2=max(c1x2,int(m1.group(1)),int(m1.group(3)))
            else:c1x2=max(int(m1.group(1)),int(m1.group(3)))
            if c1y1 is not None:
                c1y1=min(c1y1,int(m1.group(2)),int(m1.group(4)))
            else:c1y1=min(int(m1.group(2)),int(m1.group(4)))
            if c1y2 is not None:                
                c1y2=max(c1y2,int(m1.group(2)),int(m1.group(4)))
            else:c1y2=max(int(m1.group(2)),int(m1.group(4)))
            s1=1
            if s2==0:s3=1
        if m2 and s4==0:            
            if statetype == 'A' and s1==1:
                if c2y1 is not None:
                    c2y1=min(int(m2.group(2)),int(m2.group(4)),c2y1)
                else:c2y1=min(int(m2.group(2)),int(m2.group(4)))
                if c2y2 is not None:
                    c2y2=max(int(m2.group(2)),int(m2.group(4)),c2y2)
                else:c2y2=max(int(m2.group(2)),int(m2.group(4)))
                s2=1
    if c1x1 == None:time = None
    if time != None and time!=0:time=time+1    
    if pausetime != None and time != None and time >= pausetime:time=time-pausetime
    return time,totaltime,c1x1,c1x2,c1y1,c1y2,c2y1,c2y2
    
def clearcmd(state):
    p = re.compile(r'(\s*)statetype\s*=\s*[SC]',re.I)
    p0 = re.compile(r'var\(59\)\s*=\s*0|!\s*var\(59\)|var\(59\)\s*<=\s*0',re.I)
    p1 = re.compile(r'command\s*!?=\s*".*?"',re.I)
    p2 = re.compile(r'(&&|\(|=|(?:\|\|))\s*&&')
    p3 = re.compile(r'&&\s*(&&|(?:\|\|)|\s*$|\))')
    p4 = re.compile(r'(&&|\(|=|(?:\|\|))\s*\|\|')
    p5 = re.compile(r'\|\|\s*(&&|(?:\|\|)|\s*$|\))')
    p6 = re.compile(r'\(\s*\)',re.I)
    p7 = re.compile(r'trigger\S+\s*=\s*$',re.I)    
    temp = []
    for line in state:        
        m = p.search(line)        
        if m:line=re.sub(p,r'\1Statetype != A',line)
        m0=p0.search(line)
        if m0:line=re.sub(p0,'',line)
        m1=p1.search(line)
        if m1:line=re.sub(p1,'',line)
        m2=p2.search(line)
        m3=p3.search(line)
        m4=p4.search(line)
        m5=p5.search(line)
        while(m2 or m3 or m4 or m5):
            m2=p2.search(line)
            if m2:line=re.sub(p2,r'\1',line)
            m3=p3.search(line)
            if m3:line=re.sub(p3,r'\1',line)
            m4=p4.search(line)
            if m4:line=re.sub(p4,r'\1',line)
            m5=p5.search(line)
            if m5:line=re.sub(p5,r'\1',line)        
        m6=p6.search(line)
        if m6:line=re.sub(p6,'',line)
        m7=p7.search(line)
        if m7:line=re.sub(p7,'',line)
        temp.append(line)
    if temp != []:
        for lineno in range(len(temp)):
            if lineno < len(temp)-1 and temp[lineno]=='\n':
                temp.pop(lineno)
    return temp
    
def writecounter(py,reachtime,hitdef):
    tempstate=state[:]            
    if reachtime > 1:
        tempstate.insert(trigger,py)
        tempstate.insert(trigger+1,"triggerall = p2movetype = A && p2stateno=helper(33000),var(2) && enemynear,time < helper(33000),var(3)-%d\n"%reachtime)
        tempstate.insert(trigger+2,"triggerall = random <= 60*var(59)\n")        
    else:
        tempstate.insert(trigger,py)
        tempstate.insert(trigger+1,"triggerall = p2movetype = A && !enemynear,hitdefattr = sca,aa,ap,at\n")
        tempstate.insert(trigger+2,"triggerall = p2stateno < 2000 || p2stateno = helper(33000),var(2)\n")
        tempstate.insert(trigger+3,"triggerall = random <= 60*var(59)\n")
    if 'T' in hitdef:tempstate.insert(trigger+3,"triggerall = helper(33000),var(18) <= 0\n")
    return tempstate

def writechance(py,reachtime,hitdef,totaltime):    
    tempstate=state[:]
    tempstate.insert(trigger,py)
    if reachtime+totaltime <= 25:        
        tempstate.insert(trigger+1,"triggerall = p2movetype = A || p2movetype = I\n")
    else:
        tempstate.insert(trigger+1,"triggerall = p2movetype = A || p2movetype = I && p2stateno > 160\n")
    tempstate.insert(trigger+2,"triggerall = p2statetype != L && !enemynear,ctrl && enemynear,animtime < -%d\n"%reachtime)
    tempstate.insert(trigger+3,"triggerall = !inguarddist || helper(33000),var(1) > 1 && (p2statetype != A || prevstateno = [120,159]) && random%3 < 2\n")
    tempstate.insert(trigger+4,"triggerall = random <= 90*var(59)\n")
    tempstate.insert(trigger+5,"triggerall = random < 500 || enemynear,animtime = -%d\n"%(reachtime+1))
    if 'T' in hitdef:tempstate.insert(trigger+4,"triggerall = helper(33000),var(18) <= 0\n")
    return tempstate

def writefight(py,reachtime,hitdef,statetype,totaltime):        
    tempstate = state[:]
    tempstate.insert(trigger,py)
    if '-B' in hitdef or 'T' in hitdef:tempstate.insert(trigger+1,"triggerall = p2movetype != H\n")
    else:tempstate.insert(trigger+1,"triggerall = p2movetype != H || p2stateno = [120,159]\n")
    tempstate.insert(trigger+2,"triggerall = !inguarddist && p2statetype != L\n")
    attack_rate = max(min(int(500/(reachtime+1+totaltime+10*('S' in hitdef or 'H' in hitdef))+10*(statetype=='A' or 'T' in hitdef)),60),1)
    if '-G' in hitdef and 'H' not in hitdef:
        attack_rateA = max(min(int(1000/(reachtime+1+totaltime)),60),20)
        tempstate.insert(trigger+3,"triggerall = random <= %d*var(59)|| p2statetype = A && random <= %d*var(59)\n"%(attack_rate,attack_rateA))
    else:
        tempstate.insert(trigger+3,"triggerall = random <= %d*var(59)\n"%attack_rate)
    if 'T' in hitdef:tempstate.insert(trigger+3,"triggerall = helper(33000),var(18) <= 0\n")
    return tempstate

def writethrow(py,reachtime):        
    tempstate = state[:]
    tempstate.insert(trigger,py)
    tempstate.insert(trigger+1,"triggerall = p2movetype != H\n")    
    tempstate.insert(trigger+2,"triggerall = !inguarddist && p2statetype != L\n")
    attack_rate = max(min(int(120/(reachtime+1)),60),1)
    tempstate.insert(trigger+3,"triggerall = random <= %d*var(59)\n"%attack_rate)
    tempstate.insert(trigger+4,"triggerall = helper(33000),var(18) <= 0\n")
    return tempstate

def writecombo(pyh,reachtime):    
    tempstate = state[:]
    tempstate.insert(trigger,pyh)
    tempstate.insert(trigger+1,"triggerall = p2movetype = H && helper(33000),var(17) > %d\n"%reachtime)
    tempstate.insert(trigger+2,"triggerall = (!inguarddist || !ctrl) && p2statetype != L\n")
    tempstate.insert(trigger+3,"triggerall = random <= (50+(helper(33000),var(17)=%d)*49)*var(59)\n"%(reachtime+1))        
    return tempstate

def procArray(a):
     b=[]
     a.sort(key=lambda x:findstateno(x))
     for e in a:
         b=b+e     
     return b

def writestate2(state,stateno,trigger):
    tempstate=state[:]
    if stateno == 40:
        p = re.compile(r'value\s*=\s*40\$',re.I)
        for lino in range(len(tempstate)):
            if p.search(tempstate[lino]):tempstate[lino]='value = 41\n'
        tempstate.insert(trigger,"triggerall = p2movetype = H || p2bodydist x > 120 || random%5=0 && p2bodydist x = [40,100]\n")
        tempstate.insert(trigger+1,"triggerall = p2statetype != L || p2bodydist x > 100 || p2stateno = 5120 && enemynear,animtime = [-41,-30]\n")
        tempstate.insert(trigger+2,"triggerall = p2movetype != H || p2statetype = A || p2stateno = [120,159]\n")
        tempstate.insert(trigger+3,"triggerall = (!inguarddist || !ctrl) && random <= (20+40*(p2movetype = H))*var(59)\n")
    if stateno == 100:        
        tempstate.insert(trigger,"triggerall = p2bodydist x > 100 || p2bodydist x > 60 && enemynear,vel x < 0 && p2movetype = H && p2stateno != [120,159]\n")
        tempstate.insert(trigger+1,"triggerall = p2statetype != L || p2bodydist x > 140\n")
        tempstate.insert(trigger+2,"triggerall = !inguarddist\n")
        tempstate.insert(trigger+3,"triggerall = random <= 10*var(59) && stateno != [100,102]\n")
    if stateno == 110:        
        tempstate.insert(trigger,"triggerall = p2bodydist x > 100 || (p2bodydist x > 60 || !ctrl) && enemynear,vel x < 0 && p2movetype = H && p2stateno != [120,159]\n")
        tempstate.insert(trigger+1,"triggerall = p2statetype != L || p2bodydist x > 130\n")
        tempstate.insert(trigger+2,"triggerall = !inguarddist || !ctrl\n")
        tempstate.insert(trigger+3,"triggerall = random <= 10*var(59) && stateno != [110,111]\n")
    if stateno == 105:        
        tempstate.insert(trigger,"triggerall = p2bodydist x = [0,80]\n")
        tempstate.insert(trigger+1,"triggerall = p2statetype != L && !inguarddist\n")
        tempstate.insert(trigger+2,"triggerall = p2movetype != H || p2stateno = [120,159]\n")
        tempstate.insert(trigger+3,"triggerall = random <= 2*var(59) && stateno != [105,106]\n")
    if stateno == 115:        
        tempstate.insert(trigger,"triggerall = p2bodydist x = [0,80]\n")
        tempstate.insert(trigger+1,"triggerall = p2statetype != L && !inguarddist\n")
        tempstate.insert(trigger+2,"triggerall = p2movetype != H || p2stateno = [120,159]\n")
        tempstate.insert(trigger+3,"triggerall = random <= 2*var(59) && stateno != [115,116]\n")           
    return tempstate

workdir = os.listdir()
deffilelist=[]
deffile = None
select_num=0
for s in workdir:
    if s[-4:].lower()==".def":
        deffilelist.append(s)
if deffilelist !=[]:
    for i in range(len(deffilelist)):
            print("{0} {1}".format(i+1,deffilelist[i]))
else:
    input("Can't open def file.Press enter to exit.")
    sys.exit()
if len(deffilelist)>1:
    select_num=input("Please select a def file(1-{0}):".format(i+1))    
try:
    s = int(select_num)-1
    if s < 0:
        s=0
    elif s > i:
        s=i
    deffile=deffilelist[s]
except ValueError as err:
    print(err)
if os.path.isfile(deffile):
    DEF = open(deffile,'r')
else:
    input("Can't open def file.Press enter to exit.")
    sys.exit()
DEF.seek(0)
deflist = DEF.readlines()
st =[]
for line in deflist:
        airmatch=re.search(r'anim\s*=\s*(\S+)',cut(line),re.I)
        if airmatch is not None:air=airmatch.group(1)
        cmdmatch=re.search(r'cmd\s*=\s*(\S+)',cut(line),re.I)
        if cmdmatch is not None:cmd=cmdmatch.group(1)
        cnsmatch=re.search(r'cns\s*=\s*(\S+)',cut(line),re.I)
        if cnsmatch is not None:cns=cnsmatch.group(1)
        stcmatch=re.search(r'stcommon\s*=\s*(\S+)',cut(line),re.I)
        if stcmatch is not None:stcommon=stcmatch.group(1)
        stmatch=re.search(r'st\d*\s*=\s*(\S+)',cut(line),re.I)
        if stmatch is not None:st.append(stmatch.group(1))
DEF.close()
if cns != None and os.path.isfile(cns):
    print("Cns file:",cns)
else:
    input("Can't find cns file.Press enter to exit")
    sys.exit()
if air != None and os.path.isfile(air):
    print("Air file:",air)
else:
    input("Can't find air file.Press enter to exit")
    sys.exit()
if cmd != None and os.path.isfile(cmd):
    print("Cmd file:",cmd)
else:
    input("Can't find cmd file.Press enter to exit")
    sys.exit()
if st != None:
    print("St file:",st)
else:
    input("Can't find st file.Press enter to exit")
    sys.exit()
CNS = open(cns,'r')
CNS.seek(0)
temp = CNS.readlines()
xscale = None
for line in temp:
    XS=re.search(r'xscale\s*=\s*(\d+)',line,re.I)
    if XS and xscale==None:xscale=int(XS.group(1))
    GBACK=re.search(r'ground\.back\s*=\s*(\d+)',line,re.I)
    if GBACK is not None:groundback=int(GBACK.group(1))
    GFRONT=re.search(r'ground\.front\s*=\s*(\d+)',line,re.I)
    if GFRONT is not None:groundfront=int(GFRONT.group(1))
    ABACK=re.search(r'air\.back\s*=\s*(\d+)',line,re.I)
    if ABACK is not None:airback=int(ABACK.group(1))
    AFRONT=re.search(r'air\.front\s*=\s*(\d+)',line,re.I)
    if AFRONT is not None:airfront=int(AFRONT.group(1))
    HPOSY=re.search(r'head\.pos\s*=\s*\S+\s*,\s*(-\d+)',line,re.I)
    if HPOSY is not None:headposy=int(HPOSY.group(1))
    MPOSY=re.search(r'mid\.pos\s*=\s*\S+\s*,\s*(-\d+)',line,re.I)
    if MPOSY is not None:midposy=int(MPOSY.group(1))
if xscale != None and xscale >= 0:
    groundback=groundback*xscale
    groundfront=groundfront*xscale
    airfront=airfront*xscale
    airback=airback*xscale
CNS.close()
p1=re.compile(r'^\[state',re.I)
p2=re.compile(r'^type\s*=\s*changestate',re.I)
flag=0
statedef=[]
state=[]
chance=[]
counter=[]
fight=[]
combo=[]
throw=[]
movetext=[]
guardtext=["[State -3,Guard]\ntype = changestate\nvalue = 120\ntriggerall = var(59) > 0 && roundstate=2\ntriggerall = ctrl || stateno = [0,20]\ntriggerall = helper(33000),var(1) <= 1 || stateno != [120,155]\ntrigger1 = inguarddist\ntrigger2 = numhelper(33000)&& helper(33000),inguarddist\ntrigger2 = abs(p2bodydist x) <= 80\ntrigger2 = Facing*EnemyNear,Facing!=-1 || P2Dist X<0\n\n"]
stfiles = st[:]
if stcommon not in st and os.path.isfile(stcommon):
    stfiles = st+[str(stcommon)]    
CMD = open(cmd,'r')
CMD.seek(0)
temp = CMD.readlines()
i = 0
statenolist =[]
for line in temp:
    m1 = p1.search(line)
    m2 = p2.search(line)
    i=i+1    
    if flag >= 1 and m1==None:
        if m2:flag = 2
        if cut(line)!= None:state.append(cut(line))
    if (flag == 2 and m1) or i >= len(temp):
        stateno = findstateno(state)
        statedef = findstatedef(stateno,stfiles)        
        stateattr = findattr(statedef)        
        action = findaction(stateattr[0],air)        
        reach = findreach(action,stateattr[4],stateattr[1])
        state = clearcmd(state)
        trigger=None        
        for lineno in range(len(state)):
                if "trigger1" in state[lineno] and trigger == None:
                    trigger=lineno-1
        if reach[0] == None:
            if trigger and (stateno == 100 or stateno == 105 or stateno == 40 or stateno == 110 or stateno == 115):
                movetext = movetext+writestate2(state,stateno,trigger)
                statenolist.append(stateno)
            state = []
            if cut(line):state.append(cut(line))
            flag = 1
            continue            
        if reach[2] != None:
            p2x2=reach[3]-airfront*(stateattr[1]=='A')-groundfront*(stateattr[1]!='A')
            if reach[2] < 0 and abs(reach[2]) > airback*(stateattr[1]=='A')+groundfront*(stateattr[1]!='A'):p2x1=reach[2]+airback*(stateattr[1]=='A')+groundfront*(stateattr[1]!='A')
            elif reach[2] >= airback*(stateattr[1]=='A')+groundfront*(stateattr[1]!='A')+10:p2x1=reach[2]-airback*(stateattr[1]=='A')-groundfront*(stateattr[1]!='A')
            else:p2x1 = 0
            if stateattr[1]!='A':p2y1,p2y2=reach[4],reach[5]
            else:
                if reach[7]==None:
                    p2y1=reach[4]
                else:p2y1=reach[4]-reach[7]
                if reach[6]==None:
                    p2y2=reach[5]
                else:p2y2=reach[5]-reach[6]                
            state.insert(3,"triggerall = var(59) > 0 && roundstate = 2\n")                       
            if trigger != None:
                if reach[0] > 0:state.insert(trigger,"triggerall = p2bodydist x = [%d,%d+%d*(vel x+enemynear,vel x)]\n"%(p2x1,p2x2,reach[0]))
                else:state.insert(trigger,"triggerall = p2bodydist x = [%d,%d]\n"%(p2x1,p2x2))
                if reach[0] > 6 and stateattr[1]=='A':state.insert(trigger+1,"triggerall = pos Y+%d*vel y+const(movement.yaccel)*%d*%d*0.5 < 0\n"%(reach[0],reach[0],reach[0]+1))
                if p2y2 < -20 and stateattr[1] !='A':state.insert(trigger+1,"triggerall = !numhelper(33000) || helper(33000),var(16) <= %d\n"%p2y2)
                if stateattr[1] != 'A':
                    if reach[0] > 1:
                        py = "triggerall = p2bodydist y + %d*enemynear,vel y >= %d\n"%(reach[0],p2y1)
                        pyh = "triggerall = p2statetype != A || p2bodydist y + %d*enemynear,vel y + enemynear,gethitvar(yaccel)*%d*%d*0.5 = [%d,-1]\n"%(reach[0],reach[0],reach[0]+1,p2y1)
                    elif reach[0] == 1:
                        py = "triggerall = p2bodydist y + enemynear,vel y >= %d\n"%(p2y1)
                        pyh = "triggerall = p2statetype != A || p2bodydist y + enemynear,vel y + enemynear,gethitvar(yaccel) = [%d,-1]\n"%(p2y1)
                    else:
                        py=pyh="triggerall = p2statetype != A || p2bodydist y = [%d,%d]\n"%(p2y1,p2y2)
                    if stateattr[3] != None and '-A' in stateattr[3]: py=pyh="triggerall = p2statetype != A\n"
                else:
                    if reach[0] > 0:
                        py=pyh="triggerall = p2bodydist y - %d*(vel y - enemynear,vel y) = [%d,%d]\n"%(reach[0],p2y1,p2y2)
                    elif reach[0] == 1:
                        py=pyh="triggerall = p2bodydist y - vel y + enemynear,vel y = [%d,%d]\n"%(p2y1,p2y2)
                    else:
                        py=pyh="triggerall = p2bodydist y = [%d,%d]\n"%(p2y1,p2y2)
            if p2x1 != None and p2x2 != None and reach[0] != None and trigger and stateattr[3] != None and (py != None or pyh != None):
                tempset=None
                tempset = writecounter(py,reach[0],stateattr[3])
                if tempset != None:counter.append(tempset)
                tempset=None
                tempset = writechance(py,reach[0],stateattr[3],reach[1])
                if tempset != None:chance.append(tempset)
                if '-B' not in stateattr[3]:
                    tempset=None
                    tempset = writecombo(pyh,reach[0])
                    if tempset != None:combo.append(tempset)                
                if (stateattr[2] < 1000 and '-U' not in stateattr[3]):
                    tempset=None
                    tempset = writefight(py,reach[0],stateattr[3],stateattr[1],reach[1])
                    if tempset != None:fight.append(tempset)
                if '-U' in stateattr[3]:                    
                    throw=throw+writethrow(py,reach[0])
                statenolist.append(stateno)                
        state = []       
        if cut(line):state.append(cut(line))
        flag = 1
    if m1:        
        if flag == 1:state=[]
        if cut(line):state.append(cut(line))
        if flag == 0:flag=1            
CMD.close()
num_cmd = 0
insertpoint=0
s,s1,aistart=0,1,1
r_command = ['U','D','F','B','DF','DB','a','b','c','x','y','z','a','s']
singlecmd = ['up','fwd','back','down','start','a','b','c','x','y','z']
for lino in range(len(temp)):
    p = re.compile(r'\[Command\]',re.I)
    p1 = re.compile(r'name\s*=\s*"(up|fwd|back|down|start|[abcxyz])"',re.I)
    p2 = re.compile(r'var\(59\)\s*=\s*0|!\s*var\(59\)|var\(59\)\s*<=\s*0')    
    p3 = re.compile(r'^type\s*=\s*changestate',re.I)
    p4 = re.compile(r'^value\s*=\s*(\d+)',re.I)    
    m1 = p1.search(temp[lino])
    m2 = p2.search(temp[lino])
    m3 = p3.search(temp[lino])
    m4 = p4.search(temp[lino])    
    if s==0:insertpoint += 1        
    if p.search(temp[lino]):
        s=1
        num_cmd +=1
    if m1 and m1.group(1) in singlecmd:        
        singlecmd.remove(m1.group(1))
    if s1 == 1 and (m2 or (m4 and int(m4.group(1)) not in statenolist)):s1=0
    if s1==0 and m3:s1=1
    if s1==1 and "triggerall" in temp[lino]:
        temp.insert(lino,"triggerall = var(59) <= 0\n")
        s1 = 0
useable_cmd = 127-num_cmd
aiswitch = ['[State -3]\n','Type = varset\n','Triggerall = var(59) = 0 && roundstate < 3\n']
if useable_cmd > len(singlecmd):
    useable_cmd -=len(singlecmd)
    for t in range(len(singlecmd)):
        temp.insert(insertpoint-1,"[Command]\n")
        temp.insert(insertpoint,'name = "'+singlecmd[t]+'"\n')
        if singlecmd[t] in ['up','fwd','back','down']:
            temp.insert(insertpoint+1,'command = '+singlecmd[t][0].upper()+'\n')            
        else:
            temp.insert(insertpoint+1,'command = '+singlecmd[t]+'\n')
        temp.insert(insertpoint+2,'time = 1\n\n')
else:aistart = 0
if useable_cmd-11 >= 20:useable_cmd = useable_cmd-11
if useable_cmd >= 1:
    for n in range(min(50,useable_cmd-1)):
        useable_cmd -=1
        temp.insert(insertpoint-1,"[Command]\n")
        temp.insert(insertpoint,'name = "AI'+str(n)+'"\n')
        aicommand = ','.join(random.sample(r_command,random.randint(2,5)))
        temp.insert(insertpoint+1,'command = '+str(aicommand)+'\n')
        temp.insert(insertpoint+2,'time = 0\n\n')        
        aiswitch.append("trigger"+str(n+1)+' = '+'command = "AI'+str(n)+'"\n')
aiswitch.append("trigger"+str(n+2)+' = '+'numhelper(11990+id) && helper(11990+id),var(59) > 0\n')
aiswitch.append("var(59) = 10\n")
aiswitch.append("ignorehitpause = 1\n\n")
aiswitch.append('[State -3]\ntype = helper\ntrigger1 = !numhelper(33000)\nhelpertype = normal\nname = "AIconfig"\n')
aiswitch.append('ID = 33000\nstateno = 33000\npostype = p1\npos = 0,0\nfacing = -1\n')
aiswitch.append('ownpal = 1\nIgnorehitpause = 1\npausemovetime=2147483647\nsupermovetime=2147483647\nSprPriority = 7\npersistent = 0\n\n')
aiswitch.append('[State -3]\ntype = changestate\nTrigger1= ishelper(33000)\nstateno != 33000\nvalue = 33000\n\n')
aiswitch.append('[State -3]\ntype = helper\ntriggerall = !ishelper\ntriggerall = roundstate < 2 || stateno = 0 && !ctrl\n')
if aistart:
    aiswitch.append('trigger1=!numhelper(11990+id) && alive && var(59) = 0\nhelpertype = normal\nname = "AIstart"\n')
    aiswitch.append('ID = 11990+id\nstateno = 11990\nkeyctrl = 1\npos = 9999,9999\n')
    aiswitch.append('pausemovetime=2147483647\nsupermovetime=2147483647\nSprPriority = 7\npersistent = 0\n\n')
    aiswitch.append('[State -3]\ntype = changestate\nTrigger1 = ishelper\nTrigger1= ishelper(11990+id) && stateno != 11990\nvalue = 11990\n\n')
CMDAI=open('AI-'+cmd,'w')
CMDAI.writelines(temp)
CMDAI.close()
print('AI-'+cmd+' is saved')
state3 = []
state3state,guardstate = [],[]
state3file = None
guardfile = None
p = re.compile(r'\[Statedef\s*(-?\d+)',re.I)
for cnsfile in stfiles:
    if os.path.isfile(cnsfile):
        ST=open(cnsfile,'r')
        tempST=ST.readlines()
        ST.close()        
        for line in tempST:
            m = p.search(line)          
            if m:stateno2 = int(m.group(1))
            if m and stateno2 == 120:
                guardfile=cnsfile
                guardstate=tempST[:]
            if m and stateno2 == -3:
                state3file=cnsfile
                state3state=tempST[:]
            if state3file != None and guardfile != None and guardfile != stcommon:break
s3=None
linolist=[]
if state3file != None:
    s=0
    i=0
    start,end = 0,0    
    for line in state3state:        
        m = p.search(line)
        if m:
            stateno2 = int(m.group(1))
            if stateno2 != -3:s3=0
        if s==1:
            if m:
                s3=0
                s = 2
                break
            else:
                state3.append(line)
                linolist.append(i)                
        if stateno2 == -3 and m and s==0:
            state3.append(line)
            linolist.append(i)
            start = i
            s=1
            if s3==None:s3=1
        i +=1
if len(linolist) >= 1 and s3 == 0:
    for k in range(i-start):
        state3state.pop(start)
if len(state3) >= 1:state3[-1]=state3[-1]+'\n\n'
if state3file == guardfile !=None:
    guardstate = state3state[:]
    state3state = []
elif state3file != None and s3 == 0:
    STATE3 = open('AI-'+state3file,'w')
    STATE3.writelines(state3state)
    STATE3.close()
    print('AI-'+state3file+' is saved')
if state3file == None or state3 == None or state3==[]:state3=["[Statedef -3]\n"]
counter=procArray(counter)
chance=procArray(chance)
combo=procArray(combo)
fight=procArray(fight)
tempfile = state3+aiswitch+['\n;Counter\n']+counter+['\n;Guard\n']+guardtext+['\n;Chance\n']+chance+['\n;Combo\n']+combo+['\n;Throw\n']+throw+['\n;Fight\n']+fight+['\n;Move and other\n']+movetext
if s3 == 1:
    AIFILE=open('AI-'+state3file,'w')
    print('AI-'+state3file+' is saved.')
else:
    AIFILE=open("aisummary.txt",'w')
    print('aisummary.txt is saved.')
AIFILE.writelines(tempfile)
AIFILE.close()
counter=[]
chance=[]
combo=[]
fight=[]
tempfile = []
temp = []
aiswitch = []
p = re.compile(r'\[Statedef\s*(-?\d+)',re.I)
p1 = re.compile(r'\[State',re.I)
p2 = re.compile(r'Type\s*=\s*Statetypeset',re.I)
p3 = re.compile(r'Type\s*=\s*changestate',re.I)
p4 = re.compile(r'value\s*=\s*(\d+)',re.I)
p6 = re.compile(r'(command\s*!?=\s*".*?")',re.I)
p7 = re.compile(r'(!inguarddist)',re.I)
p8 = re.compile(r'trigger(\S+)\s*=',re.I)
p9 = re.compile(r'hitshakeover',re.I)
p0 = re.compile(r'^statetype\s*=\s*(\w)',re.I)
s,s1=0,0
tempno=None
if guardfile != None:
    for lino in range(len(guardstate)):
        m=p.search(guardstate[lino])
        m1=p1.search(guardstate[lino])
        m2=p2.search(guardstate[lino])
        m3=p3.search(guardstate[lino])
        m4=p4.search(guardstate[lino])        
        m6=p6.search(guardstate[lino])
        m7=p7.search(guardstate[lino])
        m8=p8.search(guardstate[lino])
        m9=p9.search(guardstate[lino])
        m0=p0.search(guardstate[lino])
        if m:stateno2 = int(m.group(1))
        if m4:value = int(m4.group(1))
        if m8:
            triggerno= m8.group(1)
            if triggerno.isdigit():triggerin = int(triggerno)+1
            else:triggerin = 1
        if 120<=stateno2<=155:
            if m1:
                s=0
                triggerno=0
                tempno=0
            if m2:s=1
            if m3:s=2            
            if 1<=s<2:                
                if m6:
                    guardstate[lino] = p6.sub(r'\1 && var(59) <= 0',guardstate[lino])
                    s=1.5
                if m0 and s==1.5:                    
                    if m0.group(1).upper() == 'C' and triggerin:
                        guardstate.insert(lino,'trigger'+str(triggerin)+' = var(59) > 0 && statetype = S\n')
                        guardstate.insert(lino+1,'trigger'+str(triggerin)+' = p2statetype = C || p2statetype = S && numhelper(33000) && (random%2 = 0 && helper(33000),var(11) = 0 || helper(33000),var(11) = 1)\n')
                        s = 3
                    if m0.group(1).upper() == 'S' and triggerin:
                        guardstate.insert(lino,'trigger'+str(triggerin)+' = var(59) > 0 && statetype = C\n')
                        guardstate.insert(lino+1,'trigger'+str(triggerin)+' = p2statetype = A || p2statetype = S && numhelper(33000) && (random%2 = 1 && helper(33000),var(11) = 0 || helper(33000),var(11) = 2)\n')
                        s = 3
            if 2<=s<3:                
                if m9:
                    s=2.5
                if m6 and s:
                    if stateno2 == 132 or stateno2 == 155:
                        guardstate[lino] = p6.sub(r'\1 || var(59) > 0',guardstate[lino])
                        s=2.6
                    elif s==2.5 and value == 151:
                        guardstate[lino] = p6.sub(r'\1 && var(59) <= 0 || var(59) && (p2statetype = C || p2statetype = S && helper(33000),var(11) = 1)',guardstate[lino])
                        s=2.6
                    else:
                        s=2.4
                        guardstate[lino] = p6.sub(r'\1 && var(59) <= 0',guardstate[lino])  
                if m4:
                    if value == 131 and triggerin and stateno2 == 130:
                        guardstate.insert(lino,'trigger'+str(triggerin)+' = var(59) > 0\n')
                        guardstate.insert(lino+1,'trigger'+str(triggerin)+' = p2statetype = C || p2statetype = S && numhelper(33000) && (random%2 = 0 && helper(33000),var(11) = 0 || helper(33000),var(11) = 1)\n')
                        s=3
                    if value == 130 and triggerin and stateno2 == 131:
                        guardstate.insert(lino,'trigger'+str(triggerin)+' = var(59) > 0\n')
                        guardstate.insert(lino+1,'trigger'+str(triggerin)+' = p2statetype = A || p2statetype = S && numhelper(33000) && (random%2 = 1 && helper(33000),var(11) = 0 || helper(33000),var(11) = 2)\n')
                        s=3
                if m7 and 120 <= stateno2 <= 132:
                    guardstate[lino] = p7.sub(r'\1 && !helper(33000),inguarddist || enemynear,hitdefattr = ,at',guardstate[lino])
if guardfile !=None:
    GUARD = open('AI-'+guardfile,'w')
    GUARD.writelines(guardstate)
    GUARD.close()
    print('AI-'+guardfile+' is saved')
elif guardfile == None and stcommon not in stfiles:
    print("Copy the common1.cns in the RAR into the character's folder")
if guardfile != None or state3file != None and deffile != None:    
    p = re.compile(r'=\s*(\S+)',re.I)
    p1 = re.compile(r'st(\d+)\s*=\s*',re.I)    
    s=0
    for lino in range(len(deflist)):
        line = cut(deflist[lino])
        m = p.search(line)
        m1 = p1.search(line)
        if m and m.group(1) == guardfile:deflist[lino] = p.sub('= '+'AI-'+guardfile,line)
        if m and m.group(1) == state3file:deflist[lino] = p.sub('= '+'AI-'+state3file,line)
        if m and m.group(1) == cmd:deflist[lino] = p.sub('= '+'AI-'+cmd,line)
        if m1 and s <= 1:            
            stno = int(m1.group(1))
            s=1
        if m1 == None and s==1:
            deflist.insert(lino,"st"+str(stno+1)+" = aihelper2.cns\n")
            if s3!=1:deflist.insert(lino+1,"st"+str(stno+2)+" = aisummary.txt\n")
            s=2
    DEFNEW=open('AI-'+deffile,'w')
    DEFNEW.writelines(deflist)
    DEFNEW.close()
    print('AI-'+deffile+' is saved')
input('Press enter to exit.')

