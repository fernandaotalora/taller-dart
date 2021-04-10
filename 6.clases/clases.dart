class Persona{
  String nombre;
  String apellido;
  int edad;
  
  Persona(this.nombre, this.apellido,this.edad);
  
  obtenerNombre() => this.nombre;
  
}

class Empleado  extends Persona with Aeropuerto{
  String cargo;
  Empleado(this.cargo):super("Alberto","Herrera",34);
  
  Empleado.cargar(this.cargo):super("Alberto","Herrera",34);
}

class Vehiculo{
  int? puertas;
  String? color;
  //Vehiculo();
}

//Class Abstract  -- no se pueden crear una instancia

//implements

class Trabajador implements Empleado{
  @override
  String apellido;

  @override
  String cargo;

  @override
  int edad;

  @override
  String nombre;

  Trabajador(this.apellido,this.cargo,this.edad,this.nombre);
  
  @override
  obtenerNombre() {
    // TODO: implement obtenerNombre
    throw UnimplementedError();
  }

  @override
  int? salas;

  @override
  nombreAeropuerto(String valor) {
    // TODO: implement nombreAeropuerto
    throw UnimplementedError();
  }

}

//mixin
mixin Aeropuerto{
  int? salas;
  
  nombreAeropuerto(String valor)=>"El nombre es $valor";
}


void main() {
  var persona = Persona("Mafe","Otalora",30); // la palabra reservada new no es requerida
  print(persona);
  
  //var empleado = Empleado("Ingeniero");
  
  var empleado = Empleado.cargar("Ingeniero");
  print(empleado.obtenerNombre());
  print(empleado.nombreAeropuerto("dorado")); //utilizar mixing de aeropuerto
  var vehiculo = Vehiculo();  // Si tiene los interrogantes no es necesario enviar los parametros al instanciar la clase
  print(vehiculo);
}
