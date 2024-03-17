import 'package:flutter/material.dart';
import 'package:task_jadara/constants.dart';

class ItemFavView extends StatelessWidget {
  const ItemFavView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 179,
      height: 174,
      child: Card(
        color: kthereColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Image.asset('assets/image/food4.png'),
                Positioned(
                  left: 15,
                  bottom: 12,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: Image.asset('assets/image/heart2.png'),
                      ),
                      const SizedBox(
                        width: 62,
                      ),
                      const Column(
                        children: [
                          Text(
                            'مفروم غنم ',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '120 ريال ',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
