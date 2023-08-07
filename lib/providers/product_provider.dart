// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/model/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> productList = [];

  fetchProductData() {

    // FirebaseFirestore.instance.collection("").get();
  }
}
