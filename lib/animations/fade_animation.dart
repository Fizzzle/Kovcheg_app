import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation(
      {super.key,
      this.begin = 0,
      this.end = 1,
      this.intervalStart = 0,
      this.intervalEnd = 1,
      this.duraction = const Duration(milliseconds: 3000),
      this.curve = Curves.fastLinearToSlowEaseIn,
      required this.child});

  final double begin;
  final double end;
  final Duration duraction;
  final double intervalStart;
  final double intervalEnd;
  final Curve curve;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: begin, end: end),
      duration: duraction,
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
          opacity: value!,
          child: child,
        );
      },
    );
  }
}
