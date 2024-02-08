import 'package:flutter/material.dart';

import 'package:eltacoloco/data/data.dart';
import 'package:eltacoloco/ui/oferta_widget.dart';

class Cafe extends StatefulWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  State<Cafe> createState() => _CafeState();
}

class _CafeState extends State<Cafe> {
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
      children: cafes.map((cafe) {
        return OfertaWidget(
          oferta: cafe,
        );
      }).toList(),
    );
  }
}
