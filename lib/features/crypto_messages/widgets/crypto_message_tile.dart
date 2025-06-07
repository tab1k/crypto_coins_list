

import 'package:flutter/material.dart';

class CryptoMessageTile extends StatelessWidget {
  const CryptoMessageTile({
    super.key,
    required this.name,
    required this.status,
    required this.theme,
  });
  

  final String name;
  final ThemeData theme;
  final String status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      

      leading: CircleAvatar(child: Text('A')),
      title: Text(name, style: theme.textTheme.bodyMedium),
      subtitle: Text(status, style: theme.textTheme.bodySmall),
      trailing: Icon(Icons.message_outlined),

      onTap: () {
        Navigator.of(context).pushNamed(
          '/message_detail',
          arguments: {
            'name' : name,
            'status' : status,
          }
        );
      },
    );
  }
}