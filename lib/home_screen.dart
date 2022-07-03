import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:two_apps_getx_flutter/cart_controller.dart';
import 'package:two_apps_getx_flutter/next_screen.dart';

class HomeScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: SafeArea(
        child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(cartController.counter.value.toString())),
              Center(
                child: MaterialButton(
                  onPressed: (){
                    Get.to(NextScreen());
                  },
                  color: Colors.green,
                  child: Text("Go To Next Screen"),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cartController.increment();
        },
        child: Icon(Icons.add),
        tooltip: "Counter Button",
      ),
    );
  }
}
