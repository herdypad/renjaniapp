import 'package:flutter/material.dart';
import 'package:renjani/themes.dart';

class BlockedView extends StatelessWidget {
  const BlockedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This App Blocked For You Because Your Device has been Rooted',
          style: mediumText14,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
