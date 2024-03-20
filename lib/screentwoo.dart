import 'package:flutter/material.dart';
import 'package:profider_learning/numberprofider.dart';
import 'package:provider/provider.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({super.key, this.numbers});
  final List<int>? numbers;

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Numberprofider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Text(value.numbers.last.toString(),
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.numbers.length,
                    itemBuilder: (context, index) => Text(
                      value.numbers[index].toString(),
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
