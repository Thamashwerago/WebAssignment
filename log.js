window.onload=checklogin();

function checklogin() {
    var xhr = new XMLHttpRequest();

    xhr.open('POST', 'phpvariables.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded')

    xhr.onload = function () {
        if (this.status == 200) {
            if(this.responseText){
                document.getElementById("navlogin").innerHTML="Logout";
            }else{
                document.getElementById("navlogin").innerHTML="Login";
            }

        }

    }

    xhr.send("userid_availability");
}

function logout() {
    var xhr = new XMLHttpRequest();

    xhr.open('POST', 'phpvariables.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded')

    xhr.onload = function () {
        if (this.status == 200) {
            if(this.responseText){
                location.reload();
            }
        }
    }

    xhr.send("logout");
}


document.getElementById("navlogin").addEventListener("click",redirlogin);

function redirlogin(){
    if(document.getElementById("navlogin").innerHTML=="Login"){
    window.location.href="login";
    }else{
        if(confirm("Do you want to Logout?")){
            logout();
        }
    }
}