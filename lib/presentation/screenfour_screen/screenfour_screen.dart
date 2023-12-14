import 'bloc/screenfour_bloc.dart';
import 'models/screenfour_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

class ScreenfourScreen extends StatelessWidget {
  const ScreenfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenfourBloc>(
      create: (context) => ScreenfourBloc(ScreenfourState(
        screenfourModelObj: ScreenfourModel(),
      ))
        ..add(ScreenfourInitialEvent()),
      child: ScreenfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ScreenfourBloc, ScreenfourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 47.h,
                top: 282.v,
                right: 47.h,
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    width: 256.h,
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 41.v,
                    ),
                    decoration: AppDecoration.fillAmber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Text(
                          "lbl_generate_report".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
