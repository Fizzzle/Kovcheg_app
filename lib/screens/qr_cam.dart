import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:noy_kovcheg/constants/const.dart';
import 'package:noy_kovcheg/widgets/kovcher_appbar.dart';

class QRScanCam extends StatefulWidget {
  const QRScanCam({super.key});

  @override
  State<QRScanCam> createState() => _QRScanCamState();
}

class _QRScanCamState extends State<QRScanCam> {
  String _scanBarcode =
      'Unknown'; // Переменная доступна внутри всего класса _QRScanCamState

  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Отмена', true, ScanMode.QR);
      debugPrint(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = "Failed to get platform version.";
    }
    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 174, 185),
      appBar: AppBarKovcheg(
        img: "assets/logo/kovcheglogo.png",
        color: Colors.white,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ostrov/ps5game/background.jpg'),
            fit: BoxFit.cover, // или другой тип заполнения, который вам нужен
          ),
        ),
        child: Column(
          children: [
            Text(
              "Сканируй раз в сутки QR который видите за столиком",
              style: kH2Text,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "И получайте бонусные баллы",
              style: kH3SubTitle,
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/home_img/qr.png',
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: scanQR, child: Text("Начать сканировать")),
            SizedBox(
              height: 20,
            ),
            Text(
              'Полученный код :  ${_scanBarcode}',
              style: kH3SubTitle,
            ),
          ],
        ),
      )),
    );
  }
}
