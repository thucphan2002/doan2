import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ketqua.dart';
import 'textfieldnhapsoluongwidget.dart';
import 'elevatedbuttonxong.dart';
import 'icon_quy_doi.dart';

class TrongLuong extends StatefulWidget {
  const TrongLuong({Key? key}) : super(key: key);

  @override
  State<TrongLuong> createState() => _TrongLuongState();
}

class _TrongLuongState extends State<TrongLuong> {
  final trongLuongController = TextEditingController();

  int _Gam() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) * 1000;
    }
  }

  int _Dag() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) * 100;
    }
  }

  int _Hectogam() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) * 10;
    }
  }

  double _yen() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) / 10;
    }
  }

  double _ta() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) / 100;
    }
  }

  double _tan() {
    if (trongLuongController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(trongLuongController.text) / 1000;
    }
  }

  String _trongLuong(){
    if(trongLuongController.text.isEmpty){
      return '0';
    }
    return trongLuongController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 12),
                child: const Text(
                  "Nhập trọng lượng: ",
                  style:
                      TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
                )),

            TextfieldNhapSoLuongWidget(labelController: trongLuongController, MaxlengthTextfield: 4,),

            const SizedBox(
              width: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 56.0),
              child: Text(
                'Kg/lít',
                style: TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
              ),
            ),
          ],
        ),
        ElevatedButtonXong(onPress: () {
          setState(() {});
        }),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xff8ecae6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Trọng lượng bạn đã nhập',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Quicksand Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${_trongLuong()}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontFamily: 'Quicksand Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffb8500),
                          ),
                        ),
                        const Text(
                          ' Kg/lít',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Quicksand Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffb8500),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              IconQuyDoi(),
              Container(
                child: Column(
                  children: [
                    KetQua(
                      text: "${_Gam()}",
                      label: "Gam",
                    ),
                    KetQua(
                      text: "${_Dag()}",
                      label: "Dag",
                    ),
                    KetQua(
                      text: "${_Hectogam()}",
                      label: "Hg",
                    ),
                    KetQua(
                      text: "${_yen()}",
                      label: "Yến",
                    ),
                    KetQua(
                      text: "${_ta()}",
                      label: "Tạ",
                    ),
                    KetQua(
                      text: "${_tan()}",
                      label: "Tấn",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
