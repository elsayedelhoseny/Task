// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

import 'package:task_jadara/Feature/Home/data/models/banners_model.dart';

class BannerItem extends StatelessWidget {
  BannerItem({required this.banner, super.key});
  BannerModel banner;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 120,
        width: 220,
        child: Image.network(banner.photo!),
      ),
    );
  }
}
