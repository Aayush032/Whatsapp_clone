import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const ResponsivePage({super.key, required this.mobileScreen, required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
          if(constraints.maxWidth >=600){
            return webScreen;
          }
          else{
            return mobileScreen;
          }
    },
    );
  }
}