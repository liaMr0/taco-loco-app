import 'package:eltacoloco/themes/colors.dart';
import 'package:flutter/material.dart';


class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: lightColorScheme.tertiary,
            title: Text('Acerca de',
                style: TextStyle(color: Colors.white.withOpacity(.5))),
            leading: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: lightColorScheme.onTertiary,
                  ),
                  onPressed: null,
                ))),
        body: Container(
          color: lightColorScheme.tertiary,
          child: Center(
            //color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'El Taco Loco',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.6),
                    fontSize: 20.0,
                  ),
                ),
                Container(
                    height: 200.0,
                    width: 200.0,
                    child: const Image(
                        image: AssetImage('assets/icons/mainicon.png'),
                        fit: BoxFit.fitWidth)),
                Text(
                  'Version 1.0',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'Desarrollado por LHL',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ));
  }
}
