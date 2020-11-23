library card_swipe;

import 'dart:math';

import 'package:flutter/material.dart';

const double DEFAULT_MARGIN = 10;
const int DEFAULT_ELEMENTS_COUNT = 3;

class CardSwipe extends StatelessWidget {
  final List<Widget> elements;

  const CardSwipe({Key key, @required this.elements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.0),
      color: Colors.green,
      child: LayoutBuilder(
        builder: (context, constraints) => Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: _buildPositionedListOf(elements, constraints),
        ),
      ),
    );
  }

  List<Widget> _buildPositionedListOf(List<Widget> elements, BoxConstraints constraints,
      {int count = DEFAULT_ELEMENTS_COUNT}) {
    int take = min(count, elements.length);

    List<Widget> newList = List();

    for (int i = 0; i < take; i++) {
      newList.add(
        Positioned(
          top: DEFAULT_MARGIN * i,
          child: Transform.scale(
            alignment: Alignment.bottomCenter,
            scale: 1 - (i * 0.1),
            child: Container(
              constraints: constraints,
              child: elements[i],
            ),
          ),
        ),
      );
    }

    return newList.reversed.toList();
  }
}
