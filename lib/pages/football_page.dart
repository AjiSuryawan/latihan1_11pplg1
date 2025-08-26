import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg1/controllers/football_controller.dart';
import 'package:latihan1_11pplg1/routes/routes.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});
  final FootballController footballController = Get.put(FootballController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Football Players"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
              itemCount: footballController.players.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.snackbar(
                        "item clicker", footballController.players[index]);
                    // route ke editpage
                    Get.toNamed(AppRoutes.footballeditplayers, arguments: index);
                  },
                  title: Text(footballController.players[index]),
                );
              },
            )),
      ),
    );
  }
}
