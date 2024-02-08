import 'package:eltacoloco/themes/colors.dart';
import 'package:eltacoloco/ui/crear_cuenta.dart';
import 'package:eltacoloco/ui/log_in.dart';
import 'package:flutter/material.dart';

class Bienvenido extends StatelessWidget {
  const Bienvenido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: lightColorScheme.tertiary,
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 60,
                  color: lightColorScheme.onTertiary,
                  fontFamily: 'dancingScript'),
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                height: 200.0,
                width: 200.0,
                child: const Image(
                    image: AssetImage('assets/icons/mainicon.png'),
                    fit: BoxFit.fitWidth)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightColorScheme.onTertiary,
                    foregroundColor: lightColorScheme.tertiary,
                    minimumSize: const Size(double.infinity, 60)),
                child: const Text('Iniciar sesion', style: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CrearCuenta()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightColorScheme.onTertiary,
                    foregroundColor: lightColorScheme.tertiary,
                    minimumSize: const Size(double.infinity, 60)),
                child: const Text(
                  'Crear cuenta',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
