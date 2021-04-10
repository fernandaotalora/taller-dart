void main() {
  //Ejemplos funciones
  print(obtenerNombre("Fernanda"));
  print(obtenerNombreDos("Juan Sebastian"));
  print(obtenerNombreTres());
  print(obtenerNombreCuatro(valor:"Alberto"));
  print(obtenerNombreCinco());
  print(obtenerNombreSeis(nombre:"Alberto",edad:34));
  print(obtenerNombreSiete("Mafe",168));
  print(miFunction("Mafe Otalora"));
}

// Si no se define tipo de retorno, se puede inferir que es dinamico si hay return
String obtenerNombre(String valor) {
  return "Ni nombre es $valor";
}

String obtenerNombreDos(String valor) => "Mi nombres es $valor";

//Parametros nombrados named parameters,si no se envia el parametro
String obtenerNombreTres({String valor='Pablo'}){
  return "Mi nombre es $valor";
}

String obtenerNombreCuatro({String? valor}){
  return "Mi nombre es $valor";
}

String obtenerNombreCinco({String nombre='Pablo',int? edad}){
  return "Mi nombre es $nombre y mi edad es $edad";
}

String obtenerNombreSeis({String nombre='Pablo',required int edad}){
  return "Mi nombre es $nombre y mi edad es $edad";
}

//Parametros opcionales
String obtenerNombreSiete(String valor,[int? estatura,String? apellido]){
  return "Mi nombre es $valor $apellido y estatura $estatura";
}

//Anonymous functions
var miFunction = (String valor){
  return "Anonima: Mi nombre es $valor";
};