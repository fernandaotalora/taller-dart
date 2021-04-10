void main() {
  //Manejo de Excepciones
  try{
    //print(obtenerNombre("Juan"));
    print(obtenerNombreDos("Mafe"));
  }
  on FormatException catch (e){
    print("Se produjo un error de tipo FormatException");
  }
  catch(e){
    print("Se produjo un error en la aplicacion, comunicar al administrador");
  }finally{
    print("Esto es finally");
  }
  
}

String obtenerNombre(String? nombre){
  if(nombre=="Juan"){
    throw FormatException("El nombre no pede ser $nombre");
  }
  
  return "Mi nombre es $nombre";
}

String obtenerNombreDos(String? nombre){
 if(nombre=="Juan"){
    throw ("El nombre no pede ser $nombre");
  }
  
  return "Mi nombre es $nombre";
} 