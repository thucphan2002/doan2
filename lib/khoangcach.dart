import 'package:doan2/icon_quy_doi.dart';
import 'package:doan2/ketqua.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'textfieldnhapsoluongwidget.dart';
import 'elevatedbuttonxong.dart';

class KhoangCach extends StatefulWidget {
  const KhoangCach({Key? key}) : super(key: key);

  @override
  State<KhoangCach> createState() => _KhoangCachState();
}

class _KhoangCachState extends State<KhoangCach> {
  final khoangcachController = TextEditingController();

  int _mm() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) * 1000;
    }
  }

  int _cm() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) * 100;
    }
  }

  int _dm() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) * 10;
    }
  }

  int _m() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text);
    }
  }

  double _dam() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) / 10;
    }
  }

  double _hm() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) / 100;
    }
  }

  double _km() {
    if (khoangcachController.text.isEmpty) {
      return 0;
    } else {
      return int.parse(khoangcachController.text) / 1000;
    }
  }

  String _Khoangcach(){
    if(khoangcachController.text.isEmpty){
      return '0';
    }
    return khoangcachController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Nhập khoảng cách: ",
                  style:
                      TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
                ),
              ),

              TextfieldNhapSoLuongWidget(labelController: khoangcachController, MaxlengthTextfield: 4,),

              const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  'm',
                  style:
                      TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
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
                          'Khoảng cách bạn đã nhập',
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
                            "${_Khoangcach()}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Quicksand Regular',
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffb8500),
                            ),
                          ),
                          const Text(
                            ' mét',
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
                Column(
                  children: [
                    KetQua(text: "${_mm()}", label: "mm"),
                    KetQua(text: "${_cm()}", label: "cm"),
                    KetQua(text: "${_dm()}", label: "dm"),
                    KetQua(text: "${_m()}", label: "m"),
                    KetQua(text: "${_dam()}", label: "dam"),
                    KetQua(text: "${_hm()}", label: "hm"),
                    KetQua(text: "${_km()}", label: "km"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
