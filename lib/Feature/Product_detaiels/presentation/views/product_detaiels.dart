import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/product_detaiels_body.dart';

class ProductDetaiels extends StatelessWidget {
  const ProductDetaiels({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: ProductDetaielsBody(),
        ),
      ),
    );
  }
}
