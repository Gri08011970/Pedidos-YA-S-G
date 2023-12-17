function mostrarMensaje(event) {
    event.preventDefault(); // Evitar que se envíe el formulario
  
    var nombreUsuario = document.getElementById("nombreUsuario").value;
    var direccionEnvio = document.getElementById("direccionEnvio").value;
    var menu = document.getElementById("menu").value;
    var cantidad = document.getElementById("cantidad").value;
  
    var mensaje = `Compraste ${cantidad} unidades de ${menu}`;
    alert(mensaje);
  }
  