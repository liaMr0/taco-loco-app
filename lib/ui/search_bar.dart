import 'package:flutter/material.dart';

import 'package:eltacoloco/data/data.dart';
import 'package:eltacoloco/models/oferta.dart';
import 'package:eltacoloco/themes/colors.dart';
import 'package:eltacoloco/ui/detalle_oferta.dart';

class MySearchDelegate extends SearchDelegate {
  List<Oferta> searchResults = tacos + churros + cafes;

  @override
  String get searchFieldLabel => 'Buscar';

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Oferta> suggestions = searchResults.where((searchResult) {
      final result = searchResult.nombre.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return Container(
      color: lightColorScheme.tertiary,
      child: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index].nombre;
            return ListTile(
              title: Text(
                suggestion,
                style: TextStyle(
                  color: lightColorScheme.onTertiary,
                ),
              ),
              onTap: () {
                query = suggestion;

                final flag = {};
                for (final oferta in searchResults) {
                  final nombreOferta = oferta.nombre.toLowerCase();
                  flag[nombreOferta] = oferta;
                }
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetalleOferta(oferta: flag[query.toLowerCase()])));
              },
            );
          }),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final flag = {};
    for (final oferta in searchResults) {
      final nombreOferta = oferta.nombre.toLowerCase();
      flag[nombreOferta] = oferta;
    }
    if (flag[query] != null) {
      return DetalleOferta(oferta: flag[query.toLowerCase()]);
    } else {
      return Container(
        color: lightColorScheme.tertiary,
        child: Center(
          child: Text(
            "No hay resultados en la busqueda",
            style: TextStyle(
              color: lightColorScheme.onTertiary,
            ),
          ),
        ),
      );
    }
  }
}
