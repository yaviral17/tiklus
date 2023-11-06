import 'package:flutter/material.dart';

class RectangularButtons extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final void Function()? onTap;

  const RectangularButtons({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.color,
    this.textColor,
    this.onTap,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: child,
      ),
    );
  }
}
