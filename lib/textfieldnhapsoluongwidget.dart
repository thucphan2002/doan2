import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldNhapSoLuongWidget extends StatefulWidget {
  const TextfieldNhapSoLuongWidget({Key? key, required this.labelController, required this.MaxlengthTextfield}) : super(key: key);

  final TextEditingController labelController;
  final int MaxlengthTextfield;
  @override
  State<TextfieldNhapSoLuongWidget> createState() => _TextfieldNhapSoLuongWidgetState();
}

class _TextfieldNhapSoLuongWidgetState extends State<TextfieldNhapSoLuongWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          controller: widget.labelController,
          textAlign: TextAlign.center,
          maxLength: widget.MaxlengthTextfield,
          decoration: const InputDecoration(
            counterText: "",
          ),
        ),
      ),
    );
  }
}
