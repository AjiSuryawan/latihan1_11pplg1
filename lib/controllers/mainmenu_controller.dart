import 'package:get/get.dart';

class MainmenuController extends GetxController{

  var selectedIndex = 0.obs;

  void changePage(index){
    selectedIndex.value = index;
  }

}