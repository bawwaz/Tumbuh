import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<Map<String, dynamic>> addProduct(Map<String,dynamic>data) async {
    try {
      var hasil = await firestore
      .collection("products")
      .add(data);
      await firestore.collection("products").doc(hasil.id).update({
        "Id": hasil.id,
      });
      return {
        "error": false,
        "message": "Berhasil menambah product.",
      };
    } catch (e) {
      print(e);
      return {
        "error": true,
        "message": "Tidak dapat menambah product.",
      };
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamProduct() async* {
    yield* firestore.collection("products").snapshots();
  }

  RxList<Map<String, dynamic>> products = <Map<String, dynamic>>[].obs;
  // Mendapatkan daftar produk dari Firebase
  void getProducts() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await firestore.collection('products').get();
      products.assignAll(snapshot.docs.map((doc) => doc.data()).toList());
    } catch (error) {
      print('Error fetching products: $error');
    }
  }

  // Metode untuk memperbarui stok produk
  Future<void> updateProductStock(String productId, int newStock) async {
    try {
      await firestore.collection('products').doc(productId).update({'stock': newStock});
    } catch (error) {
      print('Error updating stock: $error');
    }
  }

}