/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function desplegar(categorias){
    var menu = document.getElementById(categorias);
    if (menu.className == "ver_menu") {
        menu.className == "ocultar_menu";
    }else{
        menu.className == "ver_menu";
    }
}

