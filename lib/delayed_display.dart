library delayed_display;

import 'dart:async';

import 'package:flutter/material.dart';

class DelayedDisplay extends StatefulWidget {
  /// Child that will be displayed with the animation and delay
  final Widget child;

  /// Delay before displaying the widget and the animations
  final Duration delay;

  /// Duration of the fading animation
  final Duration fadingDuration;

  /// Curve of the sliding animation
  final Curve slidingCurve;

  /// Offset of the widget at the beginning of the sliding animation
  final Offset slidingBeginOffset;

  DelayedDisplay({
    @required this.child,
    this.delay,
    this.fadingDuration = const Duration(milliseconds: 800),
    this.slidingCurve = Curves.decelerate,
    this.slidingBeginOffset = const Offset(0.0, 0.35),
  });

  @override
  _DelayedDisplayState createState() => _DelayedDisplayState();
}

class _DelayedDisplayState extends State<DelayedDisplay> with TickerProviderStateMixin {
  AnimationController _opacityController;
  Animation<Offset> _slideAnimationOffset;

  Duration get delay => widget.delay;

  Duration get opacityTransitionDuration => widget.fadingDuration;

  Curve get slidingCurve => widget.slidingCurve;

  Offset get beginOffset => widget.slidingBeginOffset;

  @override
  void initState() {
    super.initState();

    _opacityController = AnimationController(
      vsync: this,
      duration: opacityTransitionDuration,
    );

    final CurvedAnimation curvedAnimation = CurvedAnimation(
      curve: slidingCurve,
      parent: _opacityController,
    );

    _slideAnimationOffset = Tween<Offset>(
      begin: beginOffset,
      end: Offset.zero,
    ).animate(curvedAnimation);

    if (delay == null) {
      _opacityController.forward();
    } else {
      Timer(delay, () {
        _opacityController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _opacityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _slideAnimationOffset,
        child: widget.child,
      ),
      opacity: _opacityController,
    );
  }
}
