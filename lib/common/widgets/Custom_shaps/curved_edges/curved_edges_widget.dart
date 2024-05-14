import 'package:bh_customeapp/common/widgets/Custom_shaps/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurvedEdgWidget extends StatelessWidget {
  const TCurvedEdgWidget({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:TCustomCurvedEdges() ,
      child: child,
    );
  }
}

