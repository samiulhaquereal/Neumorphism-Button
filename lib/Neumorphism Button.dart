import 'package:flutter/material.dart';

class NeumorphismButton extends StatelessWidget {
  const NeumorphismButton({
    super.key,
    required bool isElevated, required this.height, required this.width, required this.color, required this.radius, required this.blurRadius, required this.TLshadowcolor,required this.BRshadowcolor, required this.child,
  }) : _isElevated = isElevated;

  final bool _isElevated;
  final double height;
  final double width;
  final double radius;
  final double blurRadius;
  final Color? color;
  final Color? TLshadowcolor;
  final Color? BRshadowcolor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: _isElevated ? [
            BoxShadow(
              color: BRshadowcolor!,
              offset: Offset(4,4),
              blurRadius: blurRadius,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: TLshadowcolor!,
              offset: Offset(-4,-4),
              blurRadius: blurRadius,
              spreadRadius: 1,
            )
          ] : null
      ),
      child: _isElevated ? child : null,
    );
  }
}