import 'package:flutter/material.dart';
import 'package:myapplication/model/product.dart';
import 'package:myapplication/provider/category_provider.dart';
import 'package:myapplication/provider/product_provider.dart';
import 'package:myapplication/screens/detailscreen.dart';
import 'package:myapplication/screens/homepage.dart';
import 'package:myapplication/screens/search_category.dart';
import 'package:myapplication/screens/search_product.dart';
import 'package:myapplication/widgets/notification_button.dart';
import 'package:myapplication/widgets/singeproduct.dart';
import 'package:provider/provider.dart';

class ListProduct extends StatelessWidget {
  final String name;
  bool isCategory = true;
  final List<Product> snapShot;
  ListProduct({
    this.name,
    this.isCategory,
    this.snapShot,
  });

  Widget _buildTopName() {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMyGridView(context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      height: 700,
      child: GridView.count(
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        childAspectRatio: orientation == Orientation.portrait ? 0.8 : 0.9,
        scrollDirection: Axis.vertical,
        children: snapShot
            .map(
              (e) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (ctx) => DetailScreen(
                    image: e.image,
                    name: e.name,
                    price: e.price,
                  )));
            },
            child: SingleProduct(
              price: e.price,
              image: e.image,
              name: e.name,
            ),
          ),
        )
            .toList(),
      ),
    );
  }

  CategoryProvider categoryProvider;
  ProductProvider productProvider;
  Widget _buildSearchBar(context) {
    return isCategory == true
        ? IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      onPressed: () {
        categoryProvider.getSearchList(list: snapShot);
        showSearch(context: context, delegate: SearchCategory());
      },
    )
        : IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      onPressed: () {
        productProvider.getSearchList(list: snapShot);
        showSearch(context: context, delegate: SearchProduct());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    categoryProvider = Provider.of<CategoryProvider>(context);
    productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => HomePage(),
                ),
              );
            }),
        actions: <Widget>[
          _buildSearchBar(context),
          NotificationButton(),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            _buildTopName(),
            SizedBox(
              height: 10,
            ),
            _buildMyGridView(context),
          ],
        ),
      ),
    );
  }
}
