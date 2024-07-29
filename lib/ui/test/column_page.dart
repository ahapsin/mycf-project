import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (MediaQuery.of(context).size.width > 600) {
            return Row(
              children: [
                FormSignIn(),
              ],
            );
          } else {
            return ListView(
              children: const [
                ListTile(title: Text('Menu Item 1')),
                ListTile(title: Text('Menu Item 2')),
                ListTile(title: Text('Menu Item 3')),
              ],
            );
          }
        },
      ),
    );
  }
}
