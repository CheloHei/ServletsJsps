let capa;

function cambio(idCapa) {

    //recuperar la capa segun elemento disponible
    if (document.layers)
        capa = eval("document." + idCapa);
    if (document.all)
        capa = eval(idCapa + ".style");
    if (document.getElementById)
        capa = eval('document.getElementById("' + idCapa + '").style');

    //si esta visible la capa se oculta, o visceversa
    if ((capa.visibility == "hidden") || (capa.visibility == "hide")) {
        capa.visibility = (document.layers) ? "show" : "visible";
    } else {
        capa.visibility = (document.layers) ? "hide" : "hidden";

    }
}

