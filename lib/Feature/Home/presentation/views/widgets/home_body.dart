import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/banner_Listview.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/category_ListView.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/custom_text.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/delivery.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/product_list_view.dart';

class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                Delivery(),
                CustomText(text: 'عروض مميزه '),
                BannerListView(),
                CustomText(text: 'التصنيفات'),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 30, left: 30),
                  child: CategoryListView(),
                ),
                CustomText(text: 'مفروم'),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 30, left: 30),
                  child: ProductListView(),
                ),
                SizedBox(
                  height: 52,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
