import 'package:get/get.dart';

class ToggleController extends GetxController{
  RxBool isOn=false.obs;
  void toggle(){
    isOn.value=!isOn.value;
  }
}