import 'package:flutter/material.dart';

class CartModel {
  final String name;
  final String image;
  final double price;
  final int quentity;
  final String color;
  final String size;
  CartModel({
    double this.price,
    String this.name,
    String this.image,
    String this.size,
    String this.color,
    int this.quentity,
  });
}
