import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterProductController extends GetxController{

  RxBool isloading = false.obs;
  TextEditingController? cIdProduct;
  TextEditingController? cNameProduct;
  TextEditingController? cTypeProduct;
  TextEditingController? cUnitProduct;
  TextEditingController? cPriceProduct;
  TextEditingController? cMinStockProduct;
  
  @override
  // TODO: implement initialized
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cIdProduct = TextEditingController();
    cNameProduct = TextEditingController();
    cTypeProduct = TextEditingController();
    cUnitProduct = TextEditingController();
    cPriceProduct = TextEditingController();
    cMinStockProduct = TextEditingController();
  }
  
  static final List<String> states = [
    'ANDAMAN AND NICOBAR ISLANDS',
    'ANDHRA PRADESH',
    'ARUNACHAL PRADESH',
    'ASSAM',
    'BIHAR',
    'CHATTISGARH',
    'CHANDIGARH',
    'DAMAN AND DIU',
    'DELHI',
  ];
  
  static List<String> getSuggestions(String query) {
    List<String> matches = [];
    matches.addAll(states);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
  
}