import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../model/categoryicon.dart';
import '../model/product.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> Chemisiers = [];
  Product ChemisiersData;
  List<Product> Chandails = [];
  Product ChandailsData;
  List<Product> Manteaux = [];
  Product ManteauxData;
  List<Product> Pantalons = [];
  Product PantalonsData;
  List<Product> Shorts = [];
  Product ShortsData;

  List<CategoryIcon> ChandailsIcon = [];
  CategoryIcon ChandailsiconData;
  Future<void> getChandailsIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dressSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("G2fJ25oJ5x10YbB8Ncs3")
        .collection("Chandails")
        .get();
    dressSnapShot.docs.forEach(
          (element) {
        ChandailsiconData = CategoryIcon(image: element["image"]);
        newList.add(ChandailsiconData);
      },
    );
    ChandailsIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getChandailsIcon {
    return ChandailsIcon;
  }

  List<CategoryIcon> ChemisiersIcon = [];
  CategoryIcon ChemisiersiconData;
  Future<void> getChemisiersIcon() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot ChemisiersSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("G2fJ25oJ5x10YbB8Ncs3")
        .collection("Chemisiers")
        .get();
    ChemisiersSnapShot.docs.forEach(
          (element) {
        ChemisiersiconData = CategoryIcon(image: element["image"]);
        newList.add(ChemisiersiconData);
      },
    );
    ChemisiersIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getChemisiersIconData {
    return ChemisiersIcon;
  }

  List<CategoryIcon> ManteauxIcon = [];
  CategoryIcon ManteauxiconData;
  Future<void> getManteauxIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot ManteauxSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("G2fJ25oJ5x10YbB8Ncs3")
        .collection("Manteaux")
        .get();
    ManteauxSnapShot.docs.forEach(
          (element) {
        ManteauxiconData = CategoryIcon(image: element["image"]);
        newList.add(ManteauxiconData);
      },
    );
    ManteauxIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getManteauxIcon {
    return ManteauxIcon;
  }

  List<CategoryIcon> PantalonsIcon = [];
  CategoryIcon PantalonsiconData;
  Future<void> getPantalonsIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot PantalonsSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("G2fJ25oJ5x10YbB8Ncs3")
        .collection("Pantalons")
        .get();
    PantalonsSnapShot.docs.forEach(
          (element) {
        PantalonsiconData = CategoryIcon(image: element["image"]);
        newList.add(PantalonsiconData);
      },
    );
    PantalonsIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getPantalonsIcon {
    return PantalonsIcon;
  }

  List<CategoryIcon> ShortsIcon = [];
  CategoryIcon ShortsIconData;
  Future<void> getShortsIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot ShortsSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("G2fJ25oJ5x10YbB8Ncs3")
        .collection("Shorts")
        .get();
    ShortsSnapShot.docs.forEach(
          (element) {
        ShortsIconData = CategoryIcon(image: element["image"]);
        newList.add(ShortsIconData);
      },
    );
    ShortsIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getShortsIcon {
    return ShortsIcon;
  }

  Future<void> getChemisiersData() async {
    List<Product> newList = [];
    QuerySnapshot ChemisiersSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("U9X5Y1q3AblG7GZ6XlIP")
        .collection("Chemisiers")
        .get();
    ChemisiersSnapShot.docs.forEach(
          (element) {
        ChemisiersData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(ChemisiersData);
      },
    );
    Chemisiers = newList;
    notifyListeners();
  }

  List<Product> get getChemisiersList {
    return Chemisiers;
  }

  Future<void> getChandailsData() async {
    List<Product> newList = [];
    QuerySnapshot ChandailsSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("U9X5Y1q3AblG7GZ6XlIP")
        .collection("Chandails")
        .get();
    ChandailsSnapShot.docs.forEach(
          (element) {
        ChandailsData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(ChandailsData);
      },
    );
    Chandails = newList;
    notifyListeners();
  }

  List<Product> get getChandailsList {
    return Chandails;
  }

  Future<void> getManteauxData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("U9X5Y1q3AblG7GZ6XlIP")
        .collection("Manteaux")
        .get();
    shirtSnapShot.docs.forEach(
          (element) {
        ManteauxData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(ManteauxData);
      },
    );
    Manteaux = newList;
    notifyListeners();
  }

  List<Product> get getManteauxList {
    return Manteaux;
  }

  Future<void> getPantalonsData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("U9X5Y1q3AblG7GZ6XlIP")
        .collection("Pantalons")
        .get();
    shirtSnapShot.docs.forEach(
          (element) {
        PantalonsData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(PantalonsData);
      },
    );
    Pantalons = newList;
    notifyListeners();
  }

  List<Product> get getPantalonsList {
    return Pantalons;
  }

  Future<void> getShortsData() async {
    List<Product> newList = [];
    QuerySnapshot ShortsSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("U9X5Y1q3AblG7GZ6XlIP")
        .collection("Shorts")
        .get();
    ShortsSnapShot.docs.forEach(
          (element) {
        ShortsData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(ShortsData);
      },
    );
    Shorts = newList;
    notifyListeners();
  }

  List<Product> get getShortsList {
    return Shorts;
  }

  List<Product> searchList;
  void getSearchList({List<Product> list}) {
    searchList = list;
  }

  List<Product> searchCategoryList(String query) {
    List<Product> searchShirt = searchList.where((element) {
      return element.name.toUpperCase().contains(query) ||
          element.name.toLowerCase().contains(query);
    }).toList();
    return searchShirt;
  }
}
