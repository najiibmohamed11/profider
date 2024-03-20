import 'package:flutter/material.dart';
import 'package:profider_learning/numberprofider.dart';
import 'package:profider_learning/screentwoo.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Numberprofider>(
      builder: (context, value, child) => Scaffold(
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
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screentwo(
                          
                          ),
                        ),
                      );
                    },
                    child: Text("screen two"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
