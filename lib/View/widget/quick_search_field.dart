import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:tumbuh/View/inventory_add/register_product_controller.dart';

class QuickSearchField extends StatelessWidget {
  QuickSearchField({super.key});

  final addController = Get.put(RegisterProductController());
  String? userSelected;

  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.mediaQuery.size.height;
    double screenWidth = Get.mediaQuery.size.width;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TypeAheadField(
        decorationBuilder: (context, child) {
          return Container(
            height: screenHeight * 0.07,
            width: screenWidth,
            child: child,
          );
        
        },
        suggestionsCallback: (value) {
          return RegisterProductController.getSuggestions(value);
        },
        itemBuilder: (context, String suggestion) {
          return Row();
        },
        onSelected: (String suggestion) {
          userSelected = suggestion;
        },
        
      ),
    );
  }
}