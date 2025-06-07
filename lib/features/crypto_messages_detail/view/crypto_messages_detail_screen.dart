

import 'package:flutter/material.dart';

class CryptoMessagesDetailScreen extends StatefulWidget {
  const CryptoMessagesDetailScreen({super.key});

  @override
  State<CryptoMessagesDetailScreen> createState() => _CryptoMessagesDetailScreenState();
}

class _CryptoMessagesDetailScreenState extends State<CryptoMessagesDetailScreen> {

  String? name;
  String? status;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;

    if (args == null || args is! Map) {
      return;
    }

    name = args['name'] as String?;
    status = args['status'] as String?;

    setState(() {
      
    });

    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(name ?? '...')),

      body: Center(
        child: Text('data'),
      ),
    );
  }
}