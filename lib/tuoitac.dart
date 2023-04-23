import 'ketquatuoitac.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tuoitac extends StatefulWidget {
  const Tuoitac({Key? key}) : super(key: key);

  @override
  State<Tuoitac> createState() => _TuoitacState();
}

class _TuoitacState extends State<Tuoitac> {
  final _ngaySinhController = TextEditingController();
  final _thangSinhController = TextEditingController();
  final _namSinhController = TextEditingController();
  var now = DateTime.now();
  @override
  Widget build(BuildContext context) {

    int tinhTrangNam = 0;
    int tinhTrangThang = 0;
    int tinhTrangNgay = 0;
    int tinhTrangGio = 0;
    int tinhTrangPhut = 0;

    int _tinhTrangNamHienTai(){
      try{
        if(_namSinhController.text.isEmpty){
          return 0;
        }else{
          if(int.parse(_namSinhController.text) > now.year){
            return 0;
          }else{
            return now.year - int.parse(_namSinhController.text);
          }
        }
      }
      catch(e){
        return 0;
      }
    }
    int _tinhTrangThangHienTai(){
      try{
        if(_thangSinhController.text.isEmpty){
          return 0;
        }else{
          if(int.parse(_thangSinhController.text) > 12){
            return 0;
          }
          else{
            return (now.year - int.parse(_namSinhController.text)) * 12 + now.month;
          }
        }
      }
      catch(e){
        return 0;
      }
    }
    int _tinhTrangNgayHienTai(){
      try{
        if(_ngaySinhController.text.isEmpty){
          return 0;
        }else{
          if(int.parse(_ngaySinhController.text) > 31){
            return 0;
          }
          else{
            return (now.year - int.parse(_namSinhController.text)) * 365 + now.day;
          }
        }
      }
      catch(e){
        return 0;
      }
    }
    int _tinhTrangGioHienTai(){
      if(_ngaySinhController.text.isEmpty){
        return 0;
      }
      return (now.year - int.parse(_namSinhController.text)) * 365 * 24;
    }
    int _tinhTrangPhutHienTai(){
      if(_ngaySinhController.text.isEmpty){
        return 0;
      }
      return (now.year - int.parse(_namSinhController.text)) * 365 * 24 * 60 + (int.parse(_thangSinhController.text) * 24 * 60);
    }
    int _tinhTrangGiayHienTai(){
      if(_ngaySinhController.text.isEmpty){
        return 0;
      }
      return (now.year - int.parse(_namSinhController.text)) * 365 * 24 * 60 * 60 + (int.parse(_thangSinhController.text) * 24 * 60 * 60);
    }

    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Nhập sinh nhật: ",
                style: TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
              ),
              NhapNgayThangNamSinh(NgayThangNamSinh: _ngaySinhController),
              const Text(
                "/",
                style: TextStyle(fontSize: 30),
              ),
              NhapNgayThangNamSinh(NgayThangNamSinh: _thangSinhController),
              const Text(
                "/",
                style: TextStyle(fontSize: 30),
              ),
              NhapNgayThangNamSinh(NgayThangNamSinh: _namSinhController),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xff219ebc),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                shape: const StadiumBorder(
                    side: BorderSide(
                  color: Colors.white,
                  width: 0,
                )),
              ),
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                "Xong",
                style: TextStyle(fontSize: 24, fontFamily: 'Quicksand Regular'),
              )),
          const SizedBox(
            height: 10,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff8ecae6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Năm hiện tại",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Quicksand Regular',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text("Days",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Quicksand Regular',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${now.day}",
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Quicksand Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfffb8500)))
                              ],
                            ),
                            Column(
                              children: [
                                const Text("Months",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Quicksand Regular',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${now.month}",
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Quicksand Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfffb8500)))
                              ],
                            ),
                            Column(
                              children: [
                                const Text("Years",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Quicksand Regular',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${now.year}",
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Quicksand Regular',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfffb8500)))
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 62.0),
                  child: Text(
                    "Tình trạng tuổi của bạn",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Quicksand Regular',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 34),
                  child: Column(
                    children: [
                      KetQuaTuoiTac(text: 'Years', label: "${_tinhTrangNamHienTai()}"),
                      KetQuaTuoiTac(text: 'Months', label: "${_tinhTrangThangHienTai()}"),
                      KetQuaTuoiTac(text: 'Days', label: "${_tinhTrangNgayHienTai()}"),
                      KetQuaTuoiTac(text: 'Hours', label: "${_tinhTrangGioHienTai()}"),
                      KetQuaTuoiTac(text: 'Minutes', label: "${_tinhTrangPhutHienTai()}"),
                      KetQuaTuoiTac(text: 'Seconds', label: "${_tinhTrangGiayHienTai()}"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NhapNgayThangNamSinh extends StatelessWidget {
  const NhapNgayThangNamSinh({
    Key? key,
    required this.NgayThangNamSinh
  }) : super(key: key);

  final TextEditingController NgayThangNamSinh;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 4),
      child: TextField(
        style: const TextStyle(fontSize: 18),
        decoration: const InputDecoration(
          prefixStyle:
              TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.fromLTRB(18, 5, 5, 12),
          counterText: "",
        ),
        textAlignVertical: TextAlignVertical.bottom,
        maxLength: 4,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: NgayThangNamSinh,
      ),
    ));
  }
}
