document.addEventListener('turbolinks:load', function() {
    $("#owl-hero").owlCarousel({
        navigation: true, // Show next and prev buttons
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true,
        transitionStyle: "fade",
        autoPlay: true,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
    });

    /***************** Full Width Slide ******************/


    $('#owl-hero .item').css('height',$(window).height());

    $(window).resize(function () {
        $('#owl-hero .item').css('height', $(window).height());
    });

})