import 'package:carrito_getx/pages/model/productos_modelos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final products = {}.obs;

  //Agregar producto al carrito
  void addProduct(Products product) {
    if (products.containsKey(product)) {
      products[product] += 1;
    } else {
      products[product] = 1;
    }

    Get.snackbar(
      "Productos Agregados",
      "Estas Agregando ${product.name} al carrito",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }

  //remover producto
  void removeProduct(Products product) {
    if (products.containsKey(product) && products[product] == 1) {
      products.removeWhere((key, value) => key == product);
    } else {
      products[product] -= 1;
    }
  }

  //cargar productos
  get productss => products;

  get productSubtotal => products.entries
      .map((product) => product.key.prince * product.value)
      .toList();

  get total => products.entries
      .map((product) => product.key.prince * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
