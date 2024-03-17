import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Home/data/models/category_model.dart';
import 'package:task_jadara/constants.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({required this.categorys, super.key});
  CategoryModel categorys;
  bool con2 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: 88,
        decoration: BoxDecoration(
          color: kthereColor,
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: con2 == true ? ksecondColor : kPrimaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(categorys.photo!),
              const SizedBox(
                height: 10,
              ),
              Text(
                categorys.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
