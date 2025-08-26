import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg1/controllers/mainmenu_controller.dart';
import 'package:latihan1_11pplg1/fragments/history_fragments.dart';
import 'package:latihan1_11pplg1/fragments/home_fragments.dart';
import 'package:latihan1_11pplg1/fragments/profile_fragments.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final MainmenuController mainmenuController = Get.put(MainmenuController());

  // var global list untuk deklarasi isi menu2 nya
  final List<Widget> pages = [
    HomeFragments(), 
    HistoryFragments(), 
    ProfileFragments()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
      appBar: AppBar(title: Text("Main Menu"),),
      body: pages[mainmenuController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.add_home) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.lock_clock) , label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline) , label: "Profile"),
      ],
      currentIndex: mainmenuController.selectedIndex.value,
      onTap: mainmenuController.changePage,
      ),
    ));
  }
}