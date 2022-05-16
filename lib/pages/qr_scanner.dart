// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class ScannerPage extends StatefulWidget {
//   const ScannerPage({Key? key}) : super(key: key);

//   @override
//   _ScannerPageState createState() => _ScannerPageState();
// }

// class _ScannerPageState extends State<ScannerPage> {
//   String _scanBarcode = 'Unknown';
//   bool scanned = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Builder(
//           builder: (BuildContext context) => Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: () => scanBarcodeNormal(),
//                       child: Container(
//                         padding: const EdgeInsets.all(20),
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.blue.shade900,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Icon(
//                               Icons.camera_alt,
//                               color: Colors.white,
//                               size: 35,
//                             ),
//                             SizedBox(
//                               width: 8,
//                             ),
//                             Text(
//                               "Scan",
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "Scanned results: $_scanBarcode",
//                       style:
//                           TextStyle(fontSize: 16, color: Colors.green.shade900),
//                     )
//                   ],
//                 ),
//               )),
//     );
//   }
// }
