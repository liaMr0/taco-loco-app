import 'package:eltacoloco/ui/codigo_verificacion.dart';
import 'package:flutter/material.dart';

import 'package:eltacoloco/themes/colors.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            crearFondo(context),
            loginForm(context),
          ],
        ));
  }
}

Widget loginForm(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
            child: Container(
              height: 200,
            )),
        Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(vertical: 50),
          margin: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                )
              ]),
          child: Column(
            children: [
              Text('Crear cuenta', style:
              TextStyle(fontSize: 20, color: lightColorScheme.tertiary),),
              const SizedBox(height: 30,),
              nombre(),
              email(),
              const SizedBox(height: 20,),
              PasswordField(),
              const SizedBox(height: 40),
              botonIngresar(context),
            ],
          ),
        ),
        Text(
          'Olvido su contraseña?',
          style: TextStyle(color: lightColorScheme.tertiary, fontSize: 18),
        )
      ],
    ),
  );
}

Widget nombre() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            icon: Icon(
              Icons.nest_cam_wired_stand_rounded,
              color: lightColorScheme.tertiary,
            ),
            labelText: 'Nombre de usuario'),
      ));
}

Widget email() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(
              Icons.alternate_email,
              color: lightColorScheme.tertiary,
            ),
            labelText: 'Correo electronico'),
      ));
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}
class _PasswordFieldState extends State<PasswordField> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: _hidePassword,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock_clock_outlined,
            color: lightColorScheme.tertiary,
          ),
          labelText: 'Contraseña',
          suffixIcon: IconButton(
            color:lightColorScheme.tertiary,
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon: _hidePassword
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}

Widget botonIngresar(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CodigoConfirmacion()));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15.0),
      child: Text(
        'Crear Cuenta',
        style: TextStyle(color: lightColorScheme.tertiary),
      ),
    ),
  );
}

Widget crearFondo(BuildContext context) {
  final size = MediaQuery.of(context).size;

  final fondoColor = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: lightColorScheme.surfaceTint,
      ));

  final circulo = Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: const Color.fromRGBO(255, 255, 255, 0.3)),
  );

  return Stack(
    children: [
      fondoColor,
      Positioned(top: 90.0, left: 20.0, child: circulo),
      Positioned(top: -40.0, right: -30.0, child: circulo),
      Positioned(bottom: -50.0, right: -10.0, child: circulo),
      Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: const [
            Icon(
              Icons.person_pin_circle,
              color: Colors.white,
              size: 100.0,
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
            Text(
              'Nueva cuenta',
              style: TextStyle(color: Colors.white, fontSize: 25),
            )
          ],
        ),
      )
    ],
  );
}

