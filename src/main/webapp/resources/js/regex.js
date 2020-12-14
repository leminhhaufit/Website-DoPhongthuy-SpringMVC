function kiemtraTen() {
    var re = /[A-Z]{1}[a-zA-Z]+\s+[a-zA-Z]+$/;
    var t = document.getElementById("txtten").value;
    if (t == "") {
        ten.innerHTML = "Không để tên trống";
        return false;
    }
    else if (re.test(t) == false) {
        ten.innerHTML = "Tên đầu phải viết HOA và phải có đâu khoảng trắng";
        return false;
    }
    else {
        ten.innerHTML = "";
        return true;
    }
}
function kiemtraTen2() {
    var re = /[A-Z]{1}[a-zA-Z]+\s+[a-zA-Z]+$/;
    var t = document.getElementById("txtten2").value;
    if (t == "") {
        ten2.innerHTML = "Không để tên trống";
        return false;
    }
    else if (re.test(t) == false) {
        ten2.innerHTML = "Tên đầu phải viết HOA và phải có đâu khoảng trắng";
        return false;
    }
    else {
        ten2.innerHTML = "";
        return true;
    }
}
function kiemtraTen3() {
    var re = /[A-Z]{1}[a-zA-Z]+\s+[a-zA-Z]+$/;
    var t = document.getElementById("txtten3").value;
    if (t == "") {
        ten3.innerHTML = "Không để tên trống";
        return false;
    }
    else if (re.test(t) == false) {
        ten3.innerHTML = "Tên đầu phải viết HOA và phải có đâu khoảng trắng";
        return false;
    }
    else {
        ten3.innerHTML = "";
        return true;
    }
}
function kiemtraTen4() {
    var re = /[A-Z]{1}[a-zA-Z]+\s+[a-zA-Z]+$/;
    var t = document.getElementById("txtten4").value;
    if (t == "") {
        ten4.innerHTML = "Không để tên trống";
        return false;
    }
    else if (re.test(t) == false) {
        ten4.innerHTML = "Tên đầu phải viết HOA và phải có đâu khoảng trắng";
        return false;
    }
    else {
        ten4.innerHTML = "";
        return true;
    }
}
function kiemtraNS() {
    var today = new Date();
    var n = new Date(document.getElementById("txtns").value);
    if (n == "") {
        ns.innerHTML = "NS không để trống";
        return false;
    }
  else if ((today.getFullYear() - n.getFullYear()) < 18) {
        ns.innerHTML = "Ngày sinh phải lớn hơn 18 tuổi";
        return false;
    }
    else {
        ns.innerHTML = "";
        return true;
    }
}
function kiemtraSL() {
    var re = /\d+/;
    var e = document.getElementById("txtsl").value;
    if (e == "") {
        sl.innerHTML = "Số lượng không để trống";
        return false;
    }
    else if (re.test(e) == false) {
    	sl.innerHTML = "Số lượng là ký tự số";
        return false;
    }
    else {
    	sl.innerHTML = "";
        return true;
    }
}
function kiemtraGianhap() {
    var re = /[1-9]{1}\d+$/;
    var e = document.getElementById("txtgianhap").value;
    var e2 = document.getElementById("txtgiaban").value;
    if (e == "") {
        gianhap.innerHTML = "Giá nhập không để trống";
        return false;
    }
    else if (re.test(e) == false) {
    	gianhap.innerHTML = "Giá nhập là ký tự số";
        return false;
    }
    else if(e>e2){
    	gianhap.innerHTML = "Giá nhập không được lớn hơn giá bán";
    	return false;
    }
    else {
    	gianhap.innerHTML = "";
        return true;
    }
}
function kiemtraGiaban() {
    var re = /[1-9]{1}\d+$/;
    var e = document.getElementById("txtgianhap").value;
    var e2 = document.getElementById("txtgiaban").value;
    if (e == "") {
        giaban.innerHTML = "Giá bán không để trống";
        return false;
    }
    else if (re.test(e) == false) {
    	giaban.innerHTML = "Giá bán là ký tự số";
        return false;
    }
    else if(e2<e){
    	giaban.innerHTML = "Giá bán không được nhỏ hơn giá nhập";
    	return false;
    }
    else {
    	giaban.innerHTML = "";
        return true;
    }
}
function kiemtraMail() {
    var re = /^[a-z]+\w+\@(gmail|mail)(.com)/;
    var e = document.getElementById("txtmail").value;
    if (e == "") {
        mail.innerHTML = "Email không để trống";
        return false;
    }
    else if (re.test(e) == false) {
        mail.innerHTML = "Email phải có chữ đầu là chữ và có đuôi gmail hoặc mail all .com";
        return false;
    }
    else {
        mail.innerHTML = "";
        return true;
    }
}
function kiemtraSDT() {
    var re = /\d{9,11}$/;
    var dt = document.getElementById("txtsdt").value;
    if (dt == "") {
        sdt.innerHTML = "Khổng để SDT trống";
        return false;
    }
    else if (re.test(dt) == false) {
        sdt.innerHTML = "Số điện thoại từ 9-11 số";
        return false;
    }
    else {
        sdt.innerHTML = "";
        return true;
    }
}
function kiemtradc() {
    var re = /\w+/;
    var a = document.getElementById("txtdc").value;
    if (a == "")
    {
        dc.innerHTML = "Địa chỉ khổng để trống";
        return false;
    }
    else if (re.test(a) == false) {
        dc.innerHTML = "Địa chỉ bao gồm số chữ và ký tự '_' ";
        return false;
    }
    else {
        dc.innerHTML = "";
        return true;
    }
}
function data() {
    var count = 1;
    var name = document.getElementById("txtten").value;
    var age =  Date(document.getElementById("txtns").value);
    var email = document.getElementById("txtmail").value;
    var phone = document.getElementById("txtsdt").value;
    var diachi = document.getElementById("txtdc").value;
    var tp = document.getElementById("sel1").value;
    var gt;
    var n = document.getElementById("form1").length;
    var m = document.getElementById("form1");
    for (var i = 0; i < n; i++) {
        if (m.elements[i].type == "radio" && m.elements[i].checked == true) {
            gt = m.elements[i].value;
        }
    }
    if(kiemtraTen(name,"ten") && kiemtraNS(age,"ns") && kiemtraMail(email,"mail")&&  kiemtraSDT(phone,"sdt") && kiemtradc(diachi,"dc")){
        var s ="<tr>";
        s += "<td>" + (count++) + "</td>";
        s += "<td>" + name + "</td>";
        s += "<td>" + age + "</td>";
        s += "<td>" + email + "</td>";
        s += "<td>" + phone + "</td>";
        s += "<td>" + diachi + "</td>";
        s += "<td>" + tp + "</td>";
        s += "<td>" + gt + "</td>";
        s += "</tr>";
        document.getElementById("dulieu").innerHTML += s;
    }
}

