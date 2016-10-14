document.addEventListener('turbolinks:load', function() {
    $('[data-behavior~=popup-gallery]').each(function() { // the containers for all your galleries
        var image = $(this).data('image');
        var pkg = $(this).data('package');
        $(this).magnificPopup({
            items: [
                {
                    src: image
                },
                {
                    src: pkg
                }
            ],
            gallery: {
                enabled: true
            },
            type: 'image' // this is default type
        });
    });
})