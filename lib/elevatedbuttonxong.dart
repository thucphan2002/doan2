import 'package:flutter/material.dart';

class ElevatedButtonXong extends StatefulWidget {
  const ElevatedButtonXong({Key? key, required this.onPress}) : super(key: key);

  final Function onPress;
  @override
  State<ElevatedButtonXong> createState() => _ElevatedButtonXongState();
}

class _ElevatedButtonXongState extends State<ElevatedButtonXong> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff219ebc),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            shape: const StadiumBorder(
                side: BorderSide(
                    color: Colors.white
                )
            )
        ),
        onPressed: (){
          widget.onPress.call();
        },
        child: const Text('Xong', style: TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),));
  }
}
