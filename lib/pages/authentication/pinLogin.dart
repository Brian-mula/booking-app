import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';

class PinLogin extends StatefulWidget {
  const PinLogin({Key? key}) : super(key: key);

  @override
  State<PinLogin> createState() => _PinLoginState();
}

class _PinLoginState extends State<PinLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pinput(),
    );
  }
}
