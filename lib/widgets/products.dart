import 'package:flutter/material.dart';
import '../pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProdut;

  Products(this.products, {this.deleteProdut}) {
    print ('Products');
  }

  Widget _buildProductItem(context, index) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset(products[index]['imageUrl']),
        Text(products[index]['title']),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Details'),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                          products[index]['title'],
                          products[index]['imageUrl']))).then((value) {
                            if (value == true) {
                              deleteProdut(index);
                            }
                          }),
            )
          ],
        )
      ],
    ));
  }

  Widget _buildProductList() {
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Container(
          child: Text('No products, please tap the Add button'),
        ),
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
