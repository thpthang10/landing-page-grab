import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _callCar,
          backgroundColor: Colors.blue,
          child: const Icon(Icons.phone),
        ),
        body: SafeArea(
            child: Center(
                child: Container(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    color: Colors.white,
                    child: _mainContent()))));
  }

  _mainContent() {
    return Column(children: [
      const SizedBox(height: 20),
      _buildText(text: 'GRAB XE MÁY - GRAB Ô TÔ - GRAB FOOD'),
      Expanded(
          child: Column(children: [
        const SizedBox(height: 20),
        Image.asset('lib/res/images/grap_banner.jpg'),
        const SizedBox(height: 20),
        _buildText(text: 'Gọi ngay cho chúng tôi để biết trước giá'),
        const SizedBox(height: 20),
        _buildButton(),
        const SizedBox(height: 20),
        _buildText(
            text: '374/10, Vĩnh Lập, Vĩnh Trung, Tịnh Biên, An Giang',
            fontSize: 15),
      ]))
    ]);
  }

  _buildText({String? text, double? fontSize}) {
    return Text(text ?? '',
        style: TextStyle(
            fontSize: fontSize ?? 20,
            fontWeight: FontWeight.bold,
            color: Colors.green));
  }

  _buildButton() {
    return ElevatedButton(
        onPressed: _callCar,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.phone),
              Text(' 0979 600 709',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))
            ],
          ),
        ));
  }

  void _callCar() {
    launchUrl(Uri.parse('tel:0979600709'));
  }
}
