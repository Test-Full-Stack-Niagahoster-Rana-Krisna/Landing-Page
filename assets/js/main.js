function aos_init() {
    AOS.init({
    duration: 1000,
    easing: "ease-in-out",
    once: true,
    mirror: false
    });
}
window.addEventListener('load', () => {
    aos_init();
});
myButtonTop = document.getElementById("myBtnTop");
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        myButtonTop.style.display = "block";
    } else {
        myButtonTop.style.display = "none";
    }
}
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}