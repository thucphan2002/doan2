import 'package:doan2/colors.dart';
import 'package:doan2/khoangcach.dart';
import 'package:doan2/tiente.dart';
import 'package:doan2/trongluong.dart';
import 'package:doan2/tuoitac.dart';
import 'package:flutter/material.dart';
class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  int _luachon = 0;
  static List _widgetluachon = [
    Tuoitac(),
    TrongLuong(),
    TienTe(),
    KhoangCach(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _luachon = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.xanhmuc,
          elevation: 3,
          title: Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.menu, size: 30, color: Colors.white,)),
              const Padding(
                padding: EdgeInsets.only(left: 76.0),
                child: Text("Unit change", style: TextStyle(fontSize: 30, fontFamily: 'Quicksand Regular', color: Colors.white),),
              ),
            ],
          ),
        ),
        body: Center(
          child: _widgetluachon.elementAt(_luachon),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.cyan,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: 'Tuổi tác'),
            BottomNavigationBarItem(
                icon: Icon(Icons.scale),
                label: 'Trọng lượng'),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on),
                label: 'Tiền tệ'),
            BottomNavigationBarItem(
                icon: Icon(Icons.king_bed),
                label: 'Khoảng cách')
          ],
          currentIndex: _luachon,
          selectedItemColor: AppColor.danguoi,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
