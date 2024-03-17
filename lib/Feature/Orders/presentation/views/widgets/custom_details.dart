import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/widgets/custom_row.dart';
import 'package:task_jadara/constants.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 30, right: 30),
      child: Container(
        width: 368,
        height: 259,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(8),
            border: Border.all(color: Colors.white)),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRow(
                  fontSize: 12,
                  clr: kPrimaryColor,
                  text11: 'العنوان',
                  text12: '12,العليا شارع العليا'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
              ),
              CustomRow(
                  fontSize: 12,
                  clr: kPrimaryColor,
                  text11: 'تاريخ الطلب',
                  text12: '23/8/2023'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
              ),
              CustomRow(
                  fontSize: 12,
                  clr: kPrimaryColor,
                  text11: 'حالة الطلب',
                  text12: 'تم ارسال الطلب'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
              ),
              CustomRow(
                  fontSize: 12,
                  clr: kPrimaryColor,
                  text11: 'نوع الطلب',
                  text12: 'توصيل للمنزل'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  indent: 3,
                  endIndent: 3,
                  color: Colors.grey,
                ),
              ),
              CustomRow(
                  fontSize: 12,
                  clr: kPrimaryColor,
                  text11: 'طريفة الدفع',
                  text12: 'كاش'),
            ],
          ),
        ),
      ),
    );
  }
}
