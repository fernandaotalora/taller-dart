void main() {
  //Ejemplos Operadores
  
  var isPublic = false;
  var visible = isPublic ? 'publico':'privado'; // Operador ternario
  print(visible);
  
  var existeTexto;
  var texto1= existeTexto ?? 'valor del texto 1'; // Si es null toma el valor después de ??
  print(texto1);
  
}