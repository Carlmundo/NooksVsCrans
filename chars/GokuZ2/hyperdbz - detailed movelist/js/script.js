$(document).ready(function() {
	$('#character_menu').on('click', 'a[data-toggle="tab"]', function(e) {
		e.preventDefault();
	
		var $link = $(this);
		
		// Highlight new character icon
		$('#character_menu a:not(.grayscale)').addClass('grayscale');
		$link.removeClass('grayscale');
	
		if (!$link.parent().hasClass('active')) {
	
			//remove active class from other tab-panes
			$('.tab-content:not(.' + $link.attr('href').replace('#','') + ') .tab-pane').removeClass('active');
	
			// click first submenu tab for active section
			$('a[href="' + $link.attr('href') + '_all"][data-toggle="tab"]').click();
			
			// remove all active classes from the move menu
			$('.move-menu li.active').removeClass('active');
			
			// activate tab-pane for active section
			$('.tab-content.' + $link.attr('href').replace('#','') + ' .tab-pane:first').addClass('active');
		}
		
		// Find selected character
		var character = null;
		for (var i = 0; i < window.characters.length; i++) {
			if ($link.attr('name') === window.characters[i].name){
				character = window.characters[i];
				$('.profile-img img').attr('src', './chara/' + character.id +'/img/profile.png');
			}
		}
		
		// Change character name on page
		$('.character-name').text(character.name);
	
		

		// Set default character pane
		if (!$link.parent().hasClass('active')){
			$('#' + character.id + '_default').addClass('active in');
		}
	});
});