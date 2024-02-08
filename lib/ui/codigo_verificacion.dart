import 'package:eltacoloco/ui/home_page.dart';
import 'package:flutter/material.dart';

import 'package:eltacoloco/themes/colors.dart';

class CodigoConfirmacion extends StatelessWidget {
  const CodigoConfirmacion({Key? key}) : super(key: key);

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
              Text('Verificacion de cuenta', style:
              TextStyle(fontSize: 20, color: lightColorScheme.tertiary),),
              const SizedBox(height: 50,),
              pin(),
              const SizedBox(height: 50,),
              botonIngresar(context)
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

Widget pin() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            icon: Icon(
              Icons.pin,
              color: lightColorScheme.tertiary,
            ),
            labelText: 'Ingrese el pin'),
      ));
}

Widget botonIngresar(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15.0),
      child: Text(
        'Ingresar',
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
              Icons.security,
              color: Colors.white,
              size: 100.0,
            ),
            SizedBox(
              height: 10.0,
              width: double.infinity,
            ),
          ],
        ),
      )
    ],
  );
}