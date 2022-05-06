import 'package:carrito_getx/pages/controller/cart_controller.dart';
import 'package:carrito_getx/pages/controller/product_controller.dart';
//import 'package:carrito_getx/pages/model/productos_modelos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogoItems extends StatelessWidget {
  final productController = Get.put(ProductController());
  CatalogoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CatalogoProductosCard(index: index);
          },
        ),
      ),
    );
  }
}

class CatalogoProductosCard extends StatelessWidget {
  // llamamos el controlador
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;

  CatalogoProductosCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 13), blurRadius: 4, color: Colors.black12),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
                  NetworkImage(productController.products[index].imgUrl),
            ),
            Expanded(
              child: Text(productController.products[index].name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Text(
                  '\$ ${productController.products[index].prince.toString()}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            IconButton(
                onPressed: () {
                  cartController.addProduct(productController.products[index]);
                },
                icon: const Icon(
                  Icons.add_box,
                  size: 40,
                ))
          ],
        ),
      ),
    );
  }
}
