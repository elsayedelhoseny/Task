import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_jadara/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
              radius: 20,
              child: Image.asset(
                'assets/image/flag.png',
              )),
          const SizedBox(
            width: 8,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'حياك الله',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    size: 12,
                    color: Colors.grey,
                  ),
                  Text(
                    ' عنوانك يكتب هنا ...',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'تغيير العنوان',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
              backgroundColor: ksecondColor,
              radius: 20,
              child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 20,
                      )))),
        ],
      ),
    );
  }
}
