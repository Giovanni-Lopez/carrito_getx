import 'package:carrito_getx/pages/model/productos_modelos.dart';
import 'package:carrito_getx/pages/services/firestore_db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final products = <Products>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
