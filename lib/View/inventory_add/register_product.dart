import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tumbuh/View/inventory_add/product_controller.dart';
import 'package:tumbuh/View/inventory_add/register_product_controller.dart';
import 'package:tumbuh/View/widget/cs_button.dart';
import 'package:tumbuh/View/widget/cs_text_field.dart';

class RegisterProductForm extends StatelessWidget {
  RegisterProductForm({super.key});

  final controller = Get.put(RegisterProductController());
  final controllerProduct = Get.put(ProductController());

    @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.cancel_outlined, color: Color(0xff003566), size: 25,),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              // Header 
              Container(
                alignment: Alignment.center, 
                height: screenHeight * 0.1,
                width: screenWidth * 0.75,
                child: Column(
                  children: [
                    Text(
                      'Register Product',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff003566),
                      ),
                    ),
                    
                  ],
                ),
              ),
              // Form
              Container(
                height: screenHeight * 0.8,
                width: screenWidth * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField( labelText: 'ID Product',   isPrice: false, controller: controller.cIdProduct! ),
                    CustomTextField( labelText: 'Name Product', isPrice: false, controller: controller.cNameProduct!, ),
                    CustomTextField( labelText: 'Type Product', isPrice: false, controller: controller.cTypeProduct!, ),
                    CustomTextField( labelText: 'Units Product', isPrice: false, controller: controller.cUnitProduct!, ),
                    CustomTextField( labelText: 'Price Product', isPrice: true, controller: controller.cPriceProduct!, ),
                    CustomTextField( labelText: 'Min Stock Product', isPrice: false, controller: controller.cMinStockProduct!, ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      child:
                      Obx(() =>
                        controller.isloading.value == true
                        ? CircularProgressIndicator()
                        : Text("Add Product")
                      ),
                      onPressed: () async {
                        if (
                          controller.cIdProduct!.text.isNotEmpty &&
                          controller.cNameProduct!.text.isNotEmpty &&
                          controller.cTypeProduct!.text.isNotEmpty &&
                          controller.cUnitProduct!.text.isNotEmpty &&
                          controller.cPriceProduct!.text.isNotEmpty &&
                          controller.cMinStockProduct!.text.isNotEmpty
                        ){
                          Map<String, dynamic> product = await
                          controllerProduct.addProduct({
                            "Id": controller.cIdProduct!.text,
                            "Name": controller.cNameProduct!.text,
                            "Type": controller.cTypeProduct!.text,
                            "Unit": controller.cUnitProduct!.text,
                            "Price": controller.cPriceProduct!.text,
                            "MinStock": controller.cMinStockProduct!.text,
                          });
                          Get.back();
                          Get.snackbar(
                            product["error"] == true ? "Error" : "Success", 
                            product["message"]);
                          controller.cIdProduct!.clear();
                          controller.cNameProduct!.clear();
                          controller.cTypeProduct!.clear();
                          controller.cUnitProduct!.clear();
                          controller.cPriceProduct!.clear();
                          controller.cMinStockProduct!.clear();
                        } else {
                          Get.snackbar("Error", "Please fill all the fields");
                        }
                          
                    })
                  ],
                ),
              )   
            ],
          ),
        ),
      ),
    );
  }
}