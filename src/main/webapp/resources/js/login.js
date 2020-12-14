function validateForm(){
    var username= document.getElementById("username").value;
    var password= document.getElementById("password").value;
    var user="pikashop",pass="pikashop1619";
    var check=true;

    if(username== null || username ==""){
        check = false;
    }
    else if(username!=user){
        check=false;
    }

    if(password== null || password ==""){
        check = false;
    }
    else if(password!=pass){
        check=false;
    }
    if(check==false){
        alert("Invalid UserName or Password !!");
    }
    if(check==true){
        alert("Login successfully");
    }
    return check;
}