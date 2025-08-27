var isOpen = false

function openMenu(){
    if (!isOpen){
        document.getElementById('sideMenu').style = 'right: 0;'
        document.getElementById('bg').style = 'display: block;'
    }
    else{
        document.getElementById('sideMenu').style = 'right: -100%;'
        document.getElementById('bg').style = 'display: none;'
    }

    isOpen = !isOpen;
    
}