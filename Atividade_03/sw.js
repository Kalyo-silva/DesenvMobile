var Open = false;

function Hamburguer(){
    if (!Open){
        document.getElementById('mobileMenuBG').style = "display:block";
        document.getElementById('MobileMenuItens').style = "right: 0;";
    }
    else{
        document.getElementById('mobileMenuBG').style = "display:none";
        document.getElementById('MobileMenuItens').style = "right: -100%";        
    }

    Open = !Open;
}