import 'package:flutter/material.dart';

class KetQuaTuoiTac extends StatefulWidget {
  const KetQuaTuoiTac({Key? key, required this.text, required this.label}) : super(key: key);

  final String text;
  final String label;
  @override
  State<KetQuaTuoiTac> createState() => _KetQuaTuoiTacState();
}

class _KetQuaTuoiTacState extends State<KetQuaTuoiTac> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
            alignment: Alignment.centerLeft,
            child: Text(widget.text, style: const TextStyle(fontSize: 20, fontFamily: 'Quicksand Regular'),))),
        const SizedBox(
          width: 10,
        ),
        Expanded(child: Container(
            alignment: Alignment.centerLeft,
            child: Text(widget.label, style: const TextStyle(fontSize: 20, fontFamily: 'Quicksand Regular'),))),
      ],
    );
  }
}

