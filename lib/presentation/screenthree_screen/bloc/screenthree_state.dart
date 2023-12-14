// ignore_for_file: must_be_immutable

part of 'screenthree_bloc.dart';

/// Represents the state of Screenthree in the application.
class ScreenthreeState extends Equatable {
  ScreenthreeState({
    this.patientNameController,
    this.ageController,
    this.sexController,
    this.visitNumberController,
    this.weightController,
    this.screenthreeModelObj,
  });

  TextEditingController? patientNameController;

  TextEditingController? ageController;

  TextEditingController? sexController;

  TextEditingController? visitNumberController;

  TextEditingController? weightController;

  ScreenthreeModel? screenthreeModelObj;

  @override
  List<Object?> get props => [
        patientNameController,
        ageController,
        sexController,
        visitNumberController,
        weightController,
        screenthreeModelObj,
      ];
  ScreenthreeState copyWith({
    TextEditingController? patientNameController,
    TextEditingController? ageController,
    TextEditingController? sexController,
    TextEditingController? visitNumberController,
    TextEditingController? weightController,
    ScreenthreeModel? screenthreeModelObj,
  }) {
    return ScreenthreeState(
      patientNameController:
          patientNameController ?? this.patientNameController,
      ageController: ageController ?? this.ageController,
      sexController: sexController ?? this.sexController,
      visitNumberController:
          visitNumberController ?? this.visitNumberController,
      weightController: weightController ?? this.weightController,
      screenthreeModelObj: screenthreeModelObj ?? this.screenthreeModelObj,
    );
  }
}
