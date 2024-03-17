import 'package:flutter/material.dart';
import 'package:task_jadara/Feature/Menu/our%20services/widgets/our_services_body.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff025366),
          body: OurServicesBody(),
        ),
      ),
    );
  }
}
