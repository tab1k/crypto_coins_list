import 'package:flutter/material.dart';


class CryptoAddScreen extends StatefulWidget {
  const CryptoAddScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoAddScreen> createState() => _CryptoAddScreenState();
}


class _CryptoAddScreenState extends State<CryptoAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Создать записку.'),
      ),
    );
  }
}