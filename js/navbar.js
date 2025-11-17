var nav = document.getElementById("navsection");
window.addEventListener("scroll", function () {
    if (window.scrollY > 80) {
        nav.style.setProperty("background-color", "#f0eded");
    } else {
        nav.style.removeProperty("background-color");
    }
});