import 'package:flutter/material.dart';

class ResContainer extends StatelessWidget {
  const ResContainer({
    super.key,
    required this.color
  });

final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
