import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/counterController.dart';

class CounterAddPage extends StatelessWidget {
  const CounterAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 162),
              child: Obx(
                () =>  Text(
                  '${counterController.counter}',
                  style: const TextStyle(
                      fontSize: 57,
                      fontWeight: FontWeight.w500,),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            FloatingActionButton(onPressed: () {
              counterController.minus();
            },child: Icon(Icons.remove),),
            SizedBox(width: 280,),
            FloatingActionButton(onPressed: () {
              counterController.add();
            },child: Icon(Icons.add),),
          ],
        ),
      )
    );
  }
}
