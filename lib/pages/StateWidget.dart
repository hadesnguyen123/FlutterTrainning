import 'package:flutter/cupertino.dart';

class ItemCount extends StatefulWidget {
  final String name;

  const ItemCount({super.key, required this.name});

  @override
  State<StatefulWidget> createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${widget.name}: $count'),
        CupertinoButton(
          onPressed: increment,
          child: Text("Tăng"),
        ),
      ],
    );
  }
}
