import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:two_apps_getx_flutter/cart_controller.dart';

class NextScreen extends StatelessWidget {
  final CartController cartController = Get.find();
  NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: SafeArea(
        child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(cartController.counter.value.toString())),
              Center(
                child: MaterialButton(
                  onPressed: (){
                    Get.back();
                  },
                  color: Colors.green,
                  child: Text("Go To Previous Screen"),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cartController.decrement();
        },
        child: Icon(Icons.add),
        tooltip: "Counter Button",
      ),
    );
  }
}
