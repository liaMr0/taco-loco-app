import 'dart:async';

class LoginBloc{
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  // insertar valores al stram
Function(String)get changeEmail => _emailController.sink.add;
Function(String)get passwordEmail => _passwordController.sink.add;

// recuperar stram salida
Stream<String> get emailStream => _emailController.stream;
Stream<String> get passwordStream => _passwordController.stream;

dispose(){
  _passwordController.close();
  _emailController.close();
}
}