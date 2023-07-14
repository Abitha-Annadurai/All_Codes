import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class BackDropp extends StatefulWidget {
  const BackDropp({Key? key}) : super(key: key);

  @override
  State<BackDropp> createState() => _BackDroppState();
}

class _BackDroppState extends State<BackDropp> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Text('Backdrop Appbar'),
        backgroundColor: Colors.pink,
      ),
      headerHeight: 100,
      frontLayer: Center(
        child: Text('Click Top Left button'),
      ),
      backLayer: Center(
        child: Text('Back Layer'),
      ),
    );
  }
}
