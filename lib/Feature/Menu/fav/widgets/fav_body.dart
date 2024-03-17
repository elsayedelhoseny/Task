import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_jadara/Feature/Menu/fav/widgets/item_listview.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/appbarr.dart';

class FavBody extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const FavBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Appbarr(text: 'المفضله'),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 74, right: 30, left: 30),
            child: ItemFaveList(),
          ),
        ),
      ],
    );
  }
}
