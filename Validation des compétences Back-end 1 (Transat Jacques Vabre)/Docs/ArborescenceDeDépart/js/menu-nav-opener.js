document.addEventListener('DOMContentLoaded', () => {
    //ouvrir/fermer le menu en plein écran pour width < 768px
    let nav_opener = false;
    document.getElementById('nav-opener').addEventListener('change', (event) => {
        if (event.currentTarget.checked) {
            nav_opener = true;
            document.getElementById("article-wrapper").style.display = "none";
            document.getElementById("footer-wrapper").style.display = "none";
            document.getElementById("main-header").style.height = "100vh";
            document.getElementById("main-nav-ul").style.display = "flex";
        } else {
            nav_opener = false;
            document.getElementById("article-wrapper").style.display = "flex";
            document.getElementById("footer-wrapper").style.display = "flex";
            document.getElementById("main-header").style.height = "auto";
            document.getElementById("main-nav-ul").style.display = "none";
        }
    });
    //réinitialiser l'affichage de main-nav-ul quand min-width: 768px
    //parce que le javascript style.display ne peut pas être modifié avec des media-query
    let width_inf_768 = false;
    if (document.body.clientWidth < 768) {
        width_inf_768 = true;
    } width_inf_768 = true;
    if (matchMedia) {
        const mq = window.matchMedia("(min-width: 768px)");
        mq.addListener(WidthChange);
        WidthChange(mq);
    }

    function WidthChange(mq) {
        if (mq.matches) {
            view_sup_768();
        } else {
            view_inf_768();
        }
    }

    function view_sup_768() {
        document.getElementById("article-wrapper").style.display = "flex";
        document.getElementById("footer-wrapper").style.display = "flex";
        document.getElementById("main-header").style.height = "auto";
        document.getElementById("main-nav-ul").style.display = "flex";
    }

    function view_inf_768() {
        if (nav_opener == true) {
            document.getElementById("article-wrapper").style.display = "none";
            document.getElementById("footer-wrapper").style.display = "none";
            document.getElementById("main-header").style.height = "100vh";
            document.getElementById("main-nav-ul").style.display = "flex";
        } else {
            document.getElementById("article-wrapper").style.display = "flex";
            document.getElementById("footer-wrapper").style.display = "flex";
            document.getElementById("main-header").style.height = "auto";
            document.getElementById("main-nav-ul").style.display = "none";
        }
    }
    //clic sur un lien du menu quand écran width < 768px
    let liens = document.querySelectorAll('#main-nav-ul a');
    for (var i = 0; i < liens.length; i++) {
        liens[i].addEventListener('click', () => {
            if (nav_opener == true && width_inf_768 == true) {
                document.getElementById('nav-opener').click();
            }
        });
    }
}) //DOMContentLoaded