import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/fav/widgets/item_fav.dart';

class ItemFaveList extends StatelessWidget {
  const ItemFaveList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return const ItemFavView();
        });
  }
}
