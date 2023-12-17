function acceder() {
    var usuario = document.getElementById("usuario").value;
    var contraseña = document.getElementById("contraseña").value;
  
    // Simulación de validación de usuario y contraseña
    if (usuario === "SoleGri" && contraseña === "pedidos") {
      mostrarMensaje("Accedió correctamente");
      setTimeout(function () {
        window.location.href = "index.html"; // Redirigir a la página principal
      }, 1500); // Esperar 1.5 segundos antes de redirigir
    } else {
      mostrarMensaje("Usuario o contraseña incorrectos");
    }
  }
  
  function mostrarMensaje(texto) {
    var mensaje = document.getElementById("mensajeAcceso");
    var textoMensaje = document.getElementById("textoAcceso");
  
    textoMensaje.textContent = texto;
    mensaje.style.display = "block";
  
    setTimeout(function () {
      mensaje.style.display = "none";
    }, 2000); // Mostrar el mensaje por 2 segundos
  }