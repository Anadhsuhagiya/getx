import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  Model m = Get.put(Model());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("GetX State Management",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${m.a.value}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100,color: Colors.red),)),
            ElevatedButton(onPressed: () {
                m.increment();
              }, child: Text("Increment")),
            ElevatedButton(onPressed: () {
                m.decrement();
              }, child: Text("Decrement")),
          ],
        ),
      )
    );
  }
}

class Model extends GetxController{
  
  RxInt a = 0.obs;

  void increment() {
    a = a+1;
  }

  void decrement() {
    a = a-1;
  }
  
}