document.getElementById("formIngredientes").addEventListener("submit", function(event) {
    event.preventDefault();
  
    const ingredientesElegidos = [];
    const checkboxes = document.getElementsByName("ingredientes");
  
    checkboxes.forEach(checkbox => {
      if (checkbox.checked) {
        ingredientesElegidos.push(checkbox.value);
      }
    });
  
    mostrarIngredientes(ingredientesElegidos);
  });
  
  function mostrarIngredientes(ingredientes) {
    const resultadoDiv = document.getElementById("resultado");
    const ingredientesP = document.getElementById("ingredientesElegidos");
  
    if (ingredientes.length > 0) {
      ingredientesP.textContent = `Ingredientes seleccionados: ${ingredientes.join(', ')}.`;
    } else {
      ingredientesP.textContent = "No has seleccionado ningún ingrediente.";
    }
  
    resultadoDiv.style.display = "block";
  }
  