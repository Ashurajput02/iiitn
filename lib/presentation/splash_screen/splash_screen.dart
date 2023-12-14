import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 52.h,
                top: 123.v,
                right: 52.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIitngp1,
                    height: 186.v,
                    width: 233.h,
                  ),
                  Text(
                    "msg_in_collaboration".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 32.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAiims21,
                    height: 230.v,
                    width: 245.h,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
