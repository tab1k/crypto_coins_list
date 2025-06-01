

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


            return ListTile(
              leading: CircleAvatar(child: Text('A')),
              title: Text(name, style: theme.textTheme.bodyMedium),
              subtitle: Text(status, style: theme.textTheme.bodySmall),
              trailing: Icon(Icons.message_outlined),
            );
            
          }, 
          
        ),
    );
  }
}