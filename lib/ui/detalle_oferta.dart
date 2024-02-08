import 'package:flutter/material.dart';

import 'package:eltacoloco/models/oferta.dart';
import 'package:eltacoloco/themes/colors.dart';

class DetalleOferta extends StatelessWidget {
  final Oferta oferta;

  const DetalleOferta({super.key, required this.oferta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.tertiary,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                oferta.nombre,
                style: TextStyle(
                  color: lightColorScheme.onTertiary,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: lightColorScheme.onTertiary,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset(oferta.urlImage).image,
                      fit: BoxFit.cover),
                ),
                child: Container(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            oferta.descripcion,
            style: TextStyle(
              fontSize: 20,
              color: lightColorScheme.onTertiary,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
