import 'package:flutter/material.dart';
import 'package:flutter_get/Controller/shopping_controller.dart';
import 'package:flutter_get/Views/products.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping"),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: Obx(() {
          if (shoppingController.productslist.isEmpty){
            return Center(
              child: CircularProgressIndicator(),
            );}

            return GridView.builder(
                itemCount: shoppingController.productslist.length,
                itemBuilder: (context, index) {
                  return Productpage(
                      shoppingController.productslist[index]);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  
                ));
          }
        ));
  }
}


