import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/manger/cubit/product_detaiels_cubit.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/cusom_continer.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_colum.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_row2.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/custom_row3.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/encapsulation.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/shredder.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/size_view.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/widgets/without.dart';

class ProductDetaielsBody extends StatelessWidget {
  const ProductDetaielsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ProductDetailsCubit()..getProductDetails(),
      child: const SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContiner(),
              CustomColum(),
              CustomRow3(),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 30, right: 30),
                child: Text('الحجم '),
              ),
              SizeVeiw(),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 30, right: 30),
                child: Text('التقطيع  '),
              ),
              Shredder(),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 30, right: 30),
                child: Text('التغليف '),
              ),
              encapsulation(),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 30, right: 30),
                child: Text('بدون '),
              ),
              without(),
              SizedBox(
                height: 68,
              ),
              CustomRow2(),
               SizedBox(
                height: 85,
              ),
            ],
          ),
        ),
      
    );
  }
}
