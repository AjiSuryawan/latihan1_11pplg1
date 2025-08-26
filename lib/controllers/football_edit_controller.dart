import 'package:get/get.dart';
import 'package:latihan1_11pplg1/controllers/football_controller.dart';

class FootballEditController extends GetxController{

  late int index;
  late FootballController footballController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    index = Get.arguments as int;
    print("selected edit data "+index.toString());
    // get data list from football controller based on this index
    footballController = Get.find<FootballController>();
    footballController.players[index];
    print("selected edit from list data : "+footballController.players[index]);


  }

}