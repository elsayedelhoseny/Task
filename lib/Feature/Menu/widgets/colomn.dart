import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';

class Colomn extends StatelessWidget {
  const Colomn({
    super.key,
    this.user,
  });
  final Bbbbbb? user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2.0),
            ),
            child: ClipOval(
              child: Image.network(user!.data?.user?.photo ?? ''),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            user!.data?.user?.name ?? '',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 1),
          Text(
            user!.data?.user?.phone ?? '',
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
