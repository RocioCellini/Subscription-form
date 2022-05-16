document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("form-suscripcion").addEventListener('submit', validarFormulario); 
  });
  
  function validarFormulario(evento) {
    evento.preventDefault();
    var email = document.getElementById('email').value;
    var state = document.getElementById('state').value;
    var caract = new RegExp(/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/);
    
    if(email.length == 0) {
        document.getElementById("error-email").style.visibility = 'visible';  
        return false;
    }

    if (state.length == 0) {
        document.getElementById("error-state").style.visibility = 'visible';
        return false;
    } 

    if (caract.test(email) == false){
        document.getElementById("error-email").style.visibility = 'visible';
        return false;
    } 

    this.submit();
  }

