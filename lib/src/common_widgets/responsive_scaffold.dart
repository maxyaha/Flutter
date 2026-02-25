import 'package:flutter/material.dart';
import 'package:flutter_app/src/utils/breakpoints.dart';

class ResponsiveScaffold extends StatelessWidget {
  const ResponsiveScaffold({
    super.key,
    required this.mobileBody,
    this.tabletBody,
    required this.desktopBody,
    this.appBar,
    this.drawer,
    this.bottomNavigationBar,
  });

  final Widget mobileBody;
  final Widget? tabletBody;
  final Widget desktopBody;

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < Breakpoints.mobile) {
            return mobileBody;
          } else if (constraints.maxWidth < Breakpoints.tablet) {
            return tabletBody ?? mobileBody;
          } else {
            return desktopBody;
          }
        },
      ),
    );
  }
}
