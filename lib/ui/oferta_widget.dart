import 'package:flutter/material.dart';

import 'package:eltacoloco/models/oferta.dart';
import 'package:eltacoloco/themes/colors.dart';

import 'detalle_oferta.dart';

class OfertaWidget extends StatelessWidget {
  const OfertaWidget({
    Key? key,
    required this.oferta,
  }) : super(key: key);

  final Oferta oferta;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        splashColor: lightColorScheme.primary,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalleOferta(
                  oferta: oferta,
                ),
              ));
        },
        child: Container(
          width: 400,
          height: 400,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Image(
                image: AssetImage(oferta.urlImage),
                fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.white.withOpacity(0.6),
                  child: Text(
                    '${oferta.nombre}: \$${oferta.precio}',
                    style: TextStyle(
                      color: lightColorScheme.onPrimaryContainer,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
