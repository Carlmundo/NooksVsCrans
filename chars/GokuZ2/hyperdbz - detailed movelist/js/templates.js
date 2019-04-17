	// Wait for document to finish
	$(document).ready(() => {
		var cmenu = $('#character_menu');
		var mmenu = $('#move_menu');
		var panes = $('#panes');
		
		for (var i = 0; i < window.characters.length; i++) {
			var character = window.characters[i];
			var id = character.id;

			var dcLiClass = '';
			var dcClass = ' class="grayscale"';
			var dmClass = '';
		
			if (character.defaultChara === 'yes') {
				dcLiClass = ' class="active"';
				dcClass = '';
				dmClass = ' active in';
				
				$('.character-name').text(character.name);
				$('.profile-img').append(
					'<img class="img-responsive" src="./chara/' + id + '/img/profile.png">'
				);				
			}
			
			// Create Character Menu
			cmenu.append(
				'<li' + dcLiClass  + '><a href="#' + id + '" data-toggle="tab" name="' + character.name +'" style="background-image: url(\'./chara/' + id + '/img/selecticon.png\');"' + dcClass + '><img class="select-icon" src="./img/cursor.png"></a></li>'
			);
				
			if (character.id === '1general') {
				// General Gameplay Information Move Menu
				mmenu.append(
					'<div id="' + id + '" class="move-menu text-center text-uppercase tab-pane' + dmClass + '"><ul class="nav nav-tabs nav-justified"><li><a href="#' + id + '_specials" data-toggle="tab">' + character.name + '</a></li></ul></div>'
				);
			} else {
				// Create Move Menu
				mmenu.append(
					'<div id="' + id + '" class="move-menu text-center text-uppercase tab-pane' + dmClass + '"><ul class="nav nav-tabs nav-justified"><li><a href="#' + id + '_specials" data-toggle="tab">special moves</a></li><li><a href="#' + id + '_supers" data-toggle="tab">super moves</a></li><li><a href="#' + id + '_power" data-toggle="tab">power mode</a></li><li><a href="#' + id + '_credits" data-toggle="tab">credits</a></li></ul></div>'
				);
			}

			// Create Tab Panes
			panes.append(
				'<div id="' + id + '_default" class="tab-pane fade' + dmClass + '"><img class="img-responsive" src="./img/default-pane.png"></div><div id="' + id + '_specials" class="tab-pane fade"><iframe src="./chara/' + id + '/specialMoves.html" class="move-pane"></iframe></div><div id="' + id + '_supers" class="tab-pane fade"><iframe src="./chara/' + id + '/superMoves.html" class="move-pane"></iframe></div><div id="' + id + '_power" class="tab-pane fade"><iframe src="./chara/' + id + '/powerMode.html" class="move-pane"></iframe></div><div id="' + id + '_credits" class="tab-pane fade"><iframe src="./chara/' + id + '/credits.html" class="move-pane"></iframe></div>'
			);
		}
	});
