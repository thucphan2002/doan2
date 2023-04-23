import 'package:flutter/material.dart';

class IconQuyDoi extends StatelessWidget {
  const IconQuyDoi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          const Icon(Icons.ac_unit, size: 20,),
          Container(
            padding: EdgeInsets.only(left: 2),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Quy đổi:",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Quicksand Regular',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
