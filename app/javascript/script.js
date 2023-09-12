const mainImage = document.querySelector('.gallery-image img');
const thumbImages = document.querySelectorAll('.gallery-thumbnails img');
thumbImages.forEach((thumbImage) => {
    thumbImage.addEventListener('mouseover', (event) => {
        mainImage.src = event.target.src;
        mainImage.animate({opacity: [0, 1]}, 500);
    });
});

/*=======================================================================*/
document.addEventListener('turbo:load', function () {
    $('.gallery-image').slick({
        infinite: true,
        fade: true,
        arrows: true,
        prevArrow: '<div class="slick-prev"></div>',
        nextArrow: '<div class="slick-next"></div>',
    });
    $('.gallery-thumbnails').slick({
        infinite: true,
        slidesToShow: 8,
        focusOnSelect: true,
        asNavFor: '.gallery-image',
    });
    $('.gallery-image').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
        var index = nextSlide;
        $('.gallery-thumbnails .slick-slide').removeClass('slick-current').eq(index).addClass('slick-current');
    });
});