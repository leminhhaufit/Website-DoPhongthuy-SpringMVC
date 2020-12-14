function validateContact(){
    var email= document.getElementById("yourEmail").value;
    var content= document.getElementById("content").value;

    var emailPatt= /\w+@\w+[.]\w+/;

    var check=true;
    if (email == null || email == "") {
        check = false;
        alert("Email not null");
    } else if (emailPatt.test(email) == false) {
        check = false;
        alert("Invalid Email.");
    }

    if(content == null || content == ""){
        check=false;
        alert("Content not null");
    }
    return check;
}