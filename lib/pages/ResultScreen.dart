import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String data;

  ResultScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kết Quả")),
      body: Center(
        child: Text(
          "Bạn đã nhập: $data",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
