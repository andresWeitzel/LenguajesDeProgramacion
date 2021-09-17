$(document).ready(function() {


    var incluirParrafo = $("<p id='parrafoAgregado'>Parrafo Agregado</p>");
    var incluirLista = $("<ul id='listaAgregada'><li>Lista1</li><li>Lista2</li></ul>");


    $("button#agregar").click(function() {
        $("body")
            .append(incluirParrafo, incluirLista)
        $("p#parrafoAgregado,ul#listaAgregada > li")
            .css({
                color: "rgb(165, 8, 8)",
                size: 26,
                background: white
            });

    });

    $("button#modificar").click(function() {
        $("p#parrafoAgregado,ul#listaAgregada > li")
            .css({
                color: "black",
                background: "#ccf0f9",
                size: 40,


            });


    });

    $("button#deshacer").click(function() {
        $("p#parrafoAgregado,ul#listaAgregada > li")
            .css({
                color: "rgb(165, 8, 8)",
                size: 26,
                background: "white"
            });


    });

    $("button#remover").click(function() {
        $("p,ul")

        .remove('#parrafoAgregado,#listaAgregada')

    });



});