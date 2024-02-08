import 'package:flutter/material.dart';

import 'package:eltacoloco/data/data.dart';
import 'package:eltacoloco/ui/oferta_widget.dart';

class Taco extends StatefulWidget {
  const Taco({Key? key}) : super(key: key);

  @override
  State<Taco> createState() => _TacoState();
}

class _TacoState extends State<Taco> {
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
      children: tacos.map((cafe) {
        return OfertaWidget(
          oferta: cafe,
        );
      }).toList(),
    );
  }
}
