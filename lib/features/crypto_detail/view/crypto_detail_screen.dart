import 'dart:developer';
import 'package:flutter/material.dart';


class CryptoDetailScreen extends StatefulWidget {
  const CryptoDetailScreen({super.key});

  @override
  State<CryptoDetailScreen> createState() => _CryptoDetailScreenState();
}

class _CryptoDetailScreenState extends State<CryptoDetailScreen> {

  String? coinName;
  String? coinSubtitle;
  
  @override
  void didChangeDependencies() {

    final args = ModalRoute.of(context)?.settings.arguments;

    if (args == null || args is! Map) {
      log('U must provide Map<String, dynamic> args.');
      return;
    }

    coinName = args['coinName'] as String?;
    coinSubtitle = args['coinSubtitle'] as String?;

    setState(() {
      
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ?? '...')),

      body: Center(
        child: Text(coinSubtitle ?? 'No subtitle'),
      ),

    );
  }
}