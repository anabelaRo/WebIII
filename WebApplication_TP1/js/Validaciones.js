
// JScript File
function prueba2() {

    var txtName = '<%= txtNombre.ClientID %>'
    alert("lala");
    alert(txtName);


    var textbox = document.getElementById(txtName).value;
    alert("TextBox Value is " + textbox);
}

