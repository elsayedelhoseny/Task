import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/appbarr.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/custom_buttton.dart';
import 'package:task_jadara/Feature/Menu/profile/widgets/customtf.dart';
import 'package:task_jadara/Feature/Menu/widgets/colomn.dart';
import 'package:task_jadara/Feature/Menu/widgets/txxt.dart';


class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key, this.user});
final Bbbbbb ?user;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(30.0),
            child: Appbarr(
              text: 'بياناتي',
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 40),
            child: Colomn(user:user ,),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomTxxt(
              txxt: 'الاسم ',
            ),
          ),
          CustomTextFiield(
            color: const Color(0xff166070),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomTxxt(
              txxt: 'البريد الالكنروني ',
            ),
          ),
          CustomTextFiield(
            color: const Color(0xff166070),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomTxxt(
              txxt: 'الجنس ',
            ),
          ),
          CustomTextFiield(
            color: const Color(0xff166070),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomTxxt(
              txxt: 'العمر',
            ),
          ),
          CustomTextFiield(
            color: const Color(0xff166070),
          ),
          const CustomButtton(
            text: 'حفظ البيانات',
            color: Color(0xff043E4B),
          ),
        ],
      ),
    );
  }
}
