import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Orders/data/models/order_model.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/order_details.dart';
import 'package:task_jadara/constants.dart';

class OrderNumber extends StatelessWidget {
 const OrderNumber({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, bottom: 16, left: 30, right: 30),
      child: Container(
        height: 149,
        width: 368,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return const OrderDetails();
                   },));
                  },
                  child: Container(
                    height: 25,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ksecondColor),
                    child: const Center(
                      child: Text('عرض التفاصيل ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          )),
                    ),
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text('طلب رقم',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                ),
                subtitle:  Text(order.orderNumber,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  SizedBox(
                      height: 46,
                      width: 46,
                      child: Image.network(order.items.first.productPhoto)),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 11),
              child: Row(
                children: [
                  const Text('عدد العناصر ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                  const SizedBox(
                    width: 7,
                  ),
                  Text( order.countItems.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                  const Spacer(),
                  const Text('الاجمالي',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                  const SizedBox(
                    width: 7,
                  ),
                  Text('${order.total}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
