import 'bloc/screentwo_bloc.dart';
import 'models/screentwo_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

class ScreentwoScreen extends StatelessWidget {
  const ScreentwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreentwoBloc>(
        create: (context) =>
            ScreentwoBloc(ScreentwoState(screentwoModelObj: ScreentwoModel()))
              ..add(ScreentwoInitialEvent()),
        child: ScreentwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ScreentwoBloc, ScreentwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.v),
                        Container(
                            margin: EdgeInsets.only(left: 11.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 44.h, vertical: 41.v),
                            decoration: AppDecoration.fillAmber,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  Text("lbl_connect".tr,
                                      style: theme.textTheme.headlineSmall)
                                ]))
                      ]))));
    });
  }
}
