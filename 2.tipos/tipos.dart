void main() {
  //Ejemplos tipos de datos

  //Numbers: Integers - Doubles
  int edad = 52;
  double estatura = 1.80;

  if (edad.isNegative) {
    print("Este numero es negativo");
    print(edad.abs());
  } else {
    print(edad.abs());
  }

  
  print("Edad: " + edad.toString() + " años");

  print("");
  print("Ejemplos de tipo de datos texto");
  print("");
  
  //Strings
  var texto1 = 'Las comillas simples funcionan bien para cadenas literales';
  var texto2 = "Las comillas dobles funcionan igual de bien";
  var texto3 = "It\'s easy to escape the string delimiter'";
  var texto4 = "It´s even eaiser to use the other delimiter";
  var texto5 = "El resultado de la expresion es ${4+8}";
  
  var texto6 = "Cadena 1 "+" Cadena2";
  var texto7 = "Valor1 " ' valor2';
  
  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  
  print("");
  //Interpolacion de texo
  var texto8="texto a interpolar";
  var numero1=50;
  var texto9 = "Se interpola \'$texto8' con el valor de la variable numero1 = $numero1";
  
  print(texto9);
  print("");
  
  //Multilinea
  print("Multilinea");
  print("");
  
  var texto10 = '''
              CREATE TABLE cultivo_departamento(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              cultivo_id INTEGER,
              codigo_dpto INTEGER,
              FOREING KEY(cultivo_id) REFERENCES cultivos(id),
              FOREING KEY(codigo_dpto) REFERENCES departamentos(code))''';
  
  
  print(texto10);
  print("");
  
  var texto11 = 'Prueba de un texto, salto de linea \n prueba de impresion';
  // Con la r al inicio no toma el salto de linea
  var texto12 = r'Prueba de un texto, salto de linea \n prueba de impresion';
  print(texto11);
  print(texto12);
  
  //Booleans
  
  // --- List -------------
  
  var lista1 = ["mazda","chevrolet","kia",8]; // Recibe cualquier tipo de dato
  List<String> lista2 = ["mazda","chevrolet","kia"]; //Solo recibe texto
  
  print("");
  print(lista1.reversed); // Cambiar orden elementos
  print(lista1.first); // Mostrar primero
  print(lista1.last); // Mostrar ultimo
  print("");
  print(lista2);
  
  lista1.add("Toyota"); // Adicionar a una lista
  print(lista1);
  //lista1.clear(); // Limpiar una lista
  print(lista1);
  
  
  //Spred
  
  var lista3 = ["renault",...lista1,...lista2];
  print(lista3);
  //Forma de hacerlo sin spread
  lista1.forEach((element) {
    lista3.add(element);
  });
 
  print("");
  print(lista3);
  print("");
  
  //null-aware spread(...?)
  var lista4;
  lista3 = ["renault",...?lista1,...?lista2,...?lista4];
  print(lista3);
  
  //Set
  var sets1 ={'uno','dos','tres','cuatro','cinco','seis'};
  print("");
  print(sets1);
  print("");
  
  //Maps
  String llave = "black";
  var translation ={
    'red':'rojo',
    'blue':'azul',
    'green':'verde'
  };
  translation[llave]="negro";
  print(translation);
}