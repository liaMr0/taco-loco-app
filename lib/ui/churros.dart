import 'package:flutter/material.dart';

import 'package:eltacoloco/data/data.dart';
import 'package:eltacoloco/ui/oferta_widget.dart';

class Churro extends StatefulWidget {
  const Churro({Key? key}) : super(key: key);

  @override
  State<Churro> createState() => _ChurroState();
}

class _ChurroState extends State<Churro> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      crossAxisCount: 2,
      childAspectRatio: 1,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: churros.map((cafe) {
        return OfertaWidget(
          oferta: cafe,
        );
      }).toList(),
    );
  }
}
