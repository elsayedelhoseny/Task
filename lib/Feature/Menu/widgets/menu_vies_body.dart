import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Menu/widgets/colomn.dart';
import 'package:task_jadara/Feature/Menu/widgets/custom_con1.dart';
import 'package:task_jadara/Feature/Menu/widgets/custom_con2.dart';
import 'package:task_jadara/Feature/Menu/widgets/custom_cont3.dart';
import 'package:task_jadara/Feature/Menu/widgets/logout.dart';
import 'package:task_jadara/Feature/Menu/widgets/txxt.dart';

class MenuViewBody extends StatelessWidget {
   final Bbbbbb user;

  const MenuViewBody({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Colomn(user:user ,),
        const SizedBox(
          height:20,
        ),
        CustomCon1(user:user ,),
        const SizedBox(
          height: 88,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 30, right: 30),
          child: CustomTxxt(
            txxt: 'الاعدادات ',
          ),
        ),
        const CustomCon2(),
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 30, right: 30),
          child: CustomTxxt(
            txxt: 'المساعدة والدعم',
          ),
        ),
        const CustomCon3(),
        const Logout(),
        const SizedBox(
          height: 11,
        ),
        const Center(
            child: Text(
          'سياسيه الخصوصيه  |  شروط الاستخدام ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        )),
        const SizedBox(
          height: 40,
        ),
      ],
    ));
  }
}
