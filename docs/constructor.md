# Constructor

Un **constructor** es un método especial de una clase que se utiliza para inicializar un objeto cuando se crea una instancia de esa clase. Su propósito principal es asignar valores iniciales a las propiedades del objeto o realizar configuraciones necesarias.

## Ejemplo en Dart

```dart
class Persona {
  String nombre;

  // Constructor
  Persona(this.nombre);
}

void main() {
  final persona = Persona('Juan');
  print(persona.nombre); // Salida: Juan
}