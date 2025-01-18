import 'package:flutter/material.dart';

class OverViewWidget extends StatelessWidget {
  const OverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
        child: Text(
          '''The Egyptian Museum is the oldest archaeological museum in the MiddleEast and houses the largest collection of ancient Egyptian antiquities 
          
          ''',
        ),
      ),
    );
  }
}
