import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/fav/widgets/fav_body.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: FavBody(),
        ),
      ),
    );
  }
}
