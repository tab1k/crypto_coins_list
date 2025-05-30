import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() {
    return _CryptoListScreenState();
  }

}

class _CryptoListScreenState extends State<CryptoListScreen> {

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: 
        ListView.separated(
          separatorBuilder: (context, index) => Divider(color: theme.dividerColor,),
          itemCount: 10,
          itemBuilder: (context, i) { 
            const coinName = 'Bitcoin';
            const coinSubtitle = 'Bitcoin subtitle';
            return ListTile(
            leading: Image.asset('assets/images/bitcoin.png', height: 35, width: 35),
            title: Text(coinName, style: theme.textTheme.bodyMedium,),
            subtitle: Text(coinSubtitle, style: theme.textTheme.bodySmall,),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pushNamed(
                '/coin', 
                arguments: {
                  'coinName': coinName,
                  'coinSubtitle': coinSubtitle,
                },
              );
            },
          );
        },
      ),
    );
  }
}