

import 'package:crypto_coins_list/features/crypto_messages/widgets/crypto_message_tile.dart';
import 'package:flutter/material.dart';

class CryptoMessageScreen extends StatefulWidget {
  const CryptoMessageScreen({super.key});

  @override
  State<CryptoMessageScreen> createState() => _CryptoMessageScreenState();
}

class _CryptoMessageScreenState extends State<CryptoMessageScreen> {
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      body: 
        ListView.separated(
          separatorBuilder: (context, index) => Divider(color: theme.dividerColor,),
          itemCount: 10,
          itemBuilder: (context, i) {
            const name = 'Person';
            const status = 'Online';

            return CryptoMessageTile(name: name, status: status, theme: theme);
            
          }, 
          
        ),
    );
  }
}