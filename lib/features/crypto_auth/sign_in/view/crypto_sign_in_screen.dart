import 'package:flutter/material.dart';

class CryptoSignInScreen extends StatefulWidget {
  const CryptoSignInScreen({super.key, required this.title});

  final String title;

  final String aboutPage = 'Страница входа';

  @override
  State<CryptoSignInScreen> createState() => _CryptoSignInScreenState();
}


class _CryptoSignInScreenState extends State<CryptoSignInScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body:
        Center(
          child: Text(widget.aboutPage),
        ),
    );
    
  }
}