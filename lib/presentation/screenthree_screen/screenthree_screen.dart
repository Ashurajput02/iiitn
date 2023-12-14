import 'bloc/screenthree_bloc.dart';
import 'models/screenthree_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScreenthreeScreen extends StatelessWidget {
  const ScreenthreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenthreeBloc>(
      create: (context) => ScreenthreeBloc(ScreenthreeState(
        screenthreeModelObj: ScreenthreeModel(),
      ))
        ..add(ScreenthreeInitialEvent()),
      child: ScreenthreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_patient_name".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 9.v),
              _buildPatientName(context),
              SizedBox(height: 22.v),
              Text(
                "lbl_patient_id".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 30.v),
              Container(
                height: 49.v,
                width: 324.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(right: 61.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_age".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    Text(
                      "lbl_sex".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              _buildNine(context),
              SizedBox(height: 46.v),
              Padding(
                padding: EdgeInsets.only(right: 51.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text(
                        "lbl_visit_number".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text(
                        "lbl_weight".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              _buildTen(context),
              SizedBox(height: 37.v),
              SizedBox(
                height: 86.v,
                width: 144.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 86.v,
                        width: 144.h,
                        decoration: BoxDecoration(
                          color: appTheme.deepOrangeA700,
                          borderRadius: BorderRadius.circular(
                            72.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 30.v,
                        width: 76.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_start".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 30.v,
                                width: 76.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_start".tr,
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 30.v,
                                        width: 76.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "lbl_start".tr,
                                                style: theme
                                                    .textTheme.headlineSmall,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "lbl_start".tr,
                                                style: theme
                                                    .textTheme.headlineSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              SizedBox(
                height: 86.v,
                width: 144.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 86.v,
                        width: 144.h,
                        decoration: BoxDecoration(
                          color: appTheme.deepOrangeA700,
                          borderRadius: BorderRadius.circular(
                            72.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 35.h),
                        child: Text(
                          "lbl_stop".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPatientName(BuildContext context) {
    return BlocSelector<ScreenthreeBloc, ScreenthreeState,
        TextEditingController?>(
      selector: (state) => state.patientNameController,
      builder: (context, patientNameController) {
        return CustomTextFormField(
          controller: patientNameController,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAge(BuildContext context) {
    return BlocSelector<ScreenthreeBloc, ScreenthreeState,
        TextEditingController?>(
      selector: (state) => state.ageController,
      builder: (context, ageController) {
        return CustomTextFormField(
          width: 131.h,
          controller: ageController,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSex(BuildContext context) {
    return BlocSelector<ScreenthreeBloc, ScreenthreeState,
        TextEditingController?>(
      selector: (state) => state.sexController,
      builder: (context, sexController) {
        return CustomTextFormField(
          width: 131.h,
          controller: sexController,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAge(context),
        _buildSex(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildVisitNumber(BuildContext context) {
    return BlocSelector<ScreenthreeBloc, ScreenthreeState,
        TextEditingController?>(
      selector: (state) => state.visitNumberController,
      builder: (context, visitNumberController) {
        return CustomTextFormField(
          width: 131.h,
          controller: visitNumberController,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWeight(BuildContext context) {
    return BlocSelector<ScreenthreeBloc, ScreenthreeState,
        TextEditingController?>(
      selector: (state) => state.weightController,
      builder: (context, weightController) {
        return CustomTextFormField(
          width: 131.h,
          controller: weightController,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildVisitNumber(context),
        _buildWeight(context),
      ],
    );
  }
}
