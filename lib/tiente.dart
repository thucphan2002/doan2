import 'package:doan2/elevatedbuttonxong.dart';
import 'package:flutter/material.dart';
import 'textfieldnhapsoluongwidget.dart';
import 'ketqua.dart';
import 'icon_quy_doi.dart';

class TienTe extends StatefulWidget {
  const TienTe({Key? key}) : super(key: key);

  @override
  State<TienTe> createState() => _TienTeState();
}

class _TienTeState extends State<TienTe> {
  final tienteController = TextEditingController();

  String _QuyDoiTienTe({required int chia}) {
    if (tienteController.text.isEmpty) {
      return "0";
    } else {
      return (int.parse(tienteController.text) / chia).toStringAsFixed(2);
    }
  }

  String _TienTe() {
    if (tienteController.text.isEmpty) {
      return '0';
    }
    return tienteController.text;
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
                child: Text('Nhập số tiền: ',
                    style: TextStyle(
                        fontSize: 24, fontFamily: 'Quicksand Regular')),
              ),
              TextfieldNhapSoLuongWidget(
                labelController: tienteController,
                MaxlengthTextfield: 6,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'VND',
                  style:
                      TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
                ),
              )
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
                          'Tiền bạn đã nhập',
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
                            "${_TienTe()}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Quicksand Regular',
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffb8500),
                            ),
                          ),
                          const Text(
                            ' VND',
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
                KetQua(text: "${_QuyDoiTienTe(chia: 23495)}", label: "USD"),
                KetQua(text: "${_QuyDoiTienTe(chia: 180)}", label: "Yên Nhật"),
                KetQua(text: "${_QuyDoiTienTe(chia: 3416)}", label: "Nhân dân tệ"),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {

          });
        },
        backgroundColor: const Color(0xff219ebc),
        child: const Icon(Icons.restart_alt, size: 38),
      ),
    );
  }
}
