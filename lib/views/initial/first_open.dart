import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/initial/opening_cont.dart';

class FirstOpening extends StatelessWidget {
  FirstOpening({super.key});
  final OpeningController openingController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.sp),
          // color: Colors.indigo,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage("assets/logo.png"),
                width: 20.w,
              ),
              Text(
                "Welcome ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
