import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'First app',
      home: SafeArea(
          child: HelloApp()
      )
    )
  );
}

class HelloApp extends StatelessWidget{
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.blue),
            alignment: Alignment.center,
            child: const Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.menu),
                  tooltip: 'Menu',
                ),
                Expanded(child: Text('Primera app')),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.star)
                )
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                  'Hello world',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
