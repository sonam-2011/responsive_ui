import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  final Widget Function(bool isTapped) builder;
  final Color ?  color;
   BorderRadius ? borderRadius;
  final ShapeBorder ? customBorder;
  final VoidCallback onTap;

   InkWellWidget({super.key,
    required this.builder,
    required this.onTap,
    required this.color,
     this.borderRadius,

     this.customBorder,

  }) ;

  @override
  _InkWellWidgetState createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Colors.grey.withOpacity(0.2);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: color,
        highlightColor: color,
        borderRadius: widget.borderRadius,
        onTap: widget.onTap,
        child: widget.builder(isTapped),
        onHighlightChanged: (isTapped) =>
            setState(() => this.isTapped = isTapped),
        customBorder: widget.customBorder,
      ),
    );
  }
}
