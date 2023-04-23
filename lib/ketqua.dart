import 'package:flutter/material.dart';

class KetQua extends StatefulWidget {
  const KetQua({Key? key, required this.text, required this.label}) : super(key: key);

  final String text;
  final String label;
  @override
  State<KetQua> createState() => _KetQuaState();
}

class _KetQuaState extends State<KetQua> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container(
            alignment: Alignment.centerRight,
            child: Text(widget.text, style: const TextStyle(fontSize: 20, fontFamily: 'Quicksand Regular'),))),
        const SizedBox(
          width: 10,
        ),
        Expanded(child: Text(widget.label, style: TextStyle(fontSize: 20, fontFamily: 'Quicksand Regular')))
      ],
    );
  }
}

