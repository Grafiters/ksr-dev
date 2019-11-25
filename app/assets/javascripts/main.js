$(function() {
  "use strict";

  var nav_offset_top = $('header').height() + 50; 
    /*-------------------------------------------------------------------------------
	  Navbar 
	-------------------------------------------------------------------------------*/

	//* Navbar Fixed  
    function navbarFixed(){
        if ( $('.header_area').length ){ 
            $(window).scroll(function() {
                var scroll = $(window).scrollTop();   
                if (scroll >= nav_offset_top ) {
                    $(".header_area").addClass("navbar_fixed");
                } else {
                    $(".header_area").removeClass("navbar_fixed");
                }
            });
        };
    };
    navbarFixed();

    //------- Parallax -------//
  skrollr.init({
    forceHeight: false
  });



  //------- mailchimp --------//  
	function mailChimp() {
		$('#mc_embed_signup').find('form').ajaxChimp();
	}
  mailChimp();


  $('select').niceSelect();

    /*-------------------------------------------------------------------------------
	  testimonial slider
	-------------------------------------------------------------------------------*/
    if ($('.testimonial').length) {
        $('.testimonial').owlCarousel({
            loop: true,
            margin: 30,
            items: 5,
            nav: false,
            dots: true,
            responsiveClass: true,
            slideSpeed: 300,
            paginationSpeed: 500,
            responsive: {
                0: {
                    items: 1
                }
            }
        })
    }

    handler = Gmaps.build('Google');  
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){  
      markers = handler.addMarkers([  
        {  
          "lat": 37.3333945,  
          "lng": -121.8806499,  
          "picture": {  
            "width":  32,  
            "height": 32  
          },  
          "infowindow": "SJSU"  
        }  
      ]);  
      handler.bounds.extendWith(markers);  
      handler.fitMapToBounds();  
    });
    
});