import 'package:flutter/material.dart';

void main() {
  runApp(InventoryCheck());
}

class InventoryCheck extends StatefulWidget {
  @override
  _InventoryCheckState createState() => _InventoryCheckState();
}

class _InventoryCheckState extends State<InventoryCheck> {
  final TextEditingController _searchController = TextEditingController();
  List<ProductItem> allProducts = [
    ProductItem(productName: 'Product A', stockCount: 20, productId: 'ID123456'),
    ProductItem(productName: 'Product B', stockCount: 15, productId: 'ID789012'),
    // Tambahkan lebih banyak produk jika diperlukan
  ];
  List<ProductItem> displayedProducts = [];

  @override
  void initState() {
    super.initState();
    displayedProducts = allProducts;
    _searchController.addListener(_filterProducts);
  }

  void _filterProducts() {
    String query = _searchController.text.toLowerCase();
    List<ProductItem> results = [];
    if (query.isNotEmpty) {
      results = allProducts.where((product) {
        return product.productName.toLowerCase().contains(query);
      }).toList();
    } else {
      results = allProducts;
    }

    setState(() {
      displayedProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.yellow,
          ),
          title: Text(
            'Inventory',
            style: TextStyle(
              color: Color(0xFF003566),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Check",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0, // Ukuran teks dikurangi
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: Color(0xFFFAFAFA),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70.0, // Menyesuaikan tinggi kotak pencarian dan pengaturan
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            SizedBox(width: 8.0),
                            Expanded(
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(Icons.settings, color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              Text(
                'Last Update Product',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: displayedProducts.length,
                  itemBuilder: (context, index) {
                    return displayedProducts[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class ProductItem extends StatelessWidget {
  final String productName;
  final int stockCount;
  final String productId;

  const ProductItem({
    Key? key,
    required this.productName,
    required this.stockCount,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                '$stockCount in stock',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                'ID: $productId',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
