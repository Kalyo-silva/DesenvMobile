import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstração de um SnackBar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demonstração de um SnackBar'),
          foregroundColor: Colors.teal,
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: const Row(
              children: [
                Icon(Icons.local_pizza_rounded, color: Colors.white),
                Text(style: TextStyle(color: Colors.white),
                     'Yay! um Snack!')

              ],
            ),
            action: SnackBarAction(
              label: 'Nhom!',
              onPressed: () {
                // Some code to undo the change.
              },
              textColor: Colors.white,
            ),
            backgroundColor: Colors.teal
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Pegue um Snack!'),
      ),
    );
  }
}