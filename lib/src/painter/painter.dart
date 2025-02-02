import 'package:flutter/material.dart';
import 'package:app_tutorial/src/models/shape_models.dart';

/// A class that holds the data of the shapes
class HolePainter extends CustomPainter {
  final double dx;
  final double dy;
  final double width;
  final double height;
  final Color color;
  final Radius borderRadius;
  final ShapeFocus shapeFocus;

  /// A constructor that takes in the data of the shape
  HolePainter({
    required this.dx,
    required this.dy,
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
    this.shapeFocus = ShapeFocus.oval,
  });

  @override

  /// A method that paints the shape
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    if (shapeFocus == ShapeFocus.oval) {
      canvas.drawPath(
          Path.combine(
            PathOperation.difference,
            Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
            Path()
              ..addOval(Rect.fromCircle(center: Offset(dx, dy), radius: width))
              ..close(),
          ),
          paint);
    } else if (shapeFocus == ShapeFocus.roundedSquare) {
      canvas.drawPath(
          Path.combine(
            PathOperation.difference,
            Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
            Path()
              ..addRRect(RRect.fromRectAndCorners(
                Rect.fromLTWH(
                  dx - (width / 2),
                  dy - (height / 2),
                  width,
                  height,
                ),
                topRight: borderRadius,
                topLeft: borderRadius,
                bottomRight: borderRadius,
                bottomLeft: borderRadius,
              ))
              ..close(),
          ),
          paint);
    } else {
      canvas.drawPath(
          Path.combine(
            PathOperation.difference,
            Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
            Path()
              ..addRect(Rect.fromLTWH(
                  dx - (width / 2), dy - (height / 2), width, height))
              ..close(),
          ),
          paint);
    }
  }

  @override

  /// A method that returns whether the shape is a custom shape or not
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
