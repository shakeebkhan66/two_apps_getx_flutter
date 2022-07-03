import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CartController extends GetxController{

  var counter = 0.obs;

  void increment(){
    counter +=1;
  }
  void decrement(){
    counter -=1;
  }
}