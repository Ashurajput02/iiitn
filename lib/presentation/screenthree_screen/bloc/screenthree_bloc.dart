import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/screenthree_screen/models/screenthree_model.dart';
part 'screenthree_event.dart';
part 'screenthree_state.dart';

/// A bloc that manages the state of a Screenthree according to the event that is dispatched to it.
class ScreenthreeBloc extends Bloc<ScreenthreeEvent, ScreenthreeState> {
  ScreenthreeBloc(ScreenthreeState initialState) : super(initialState) {
    on<ScreenthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenthreeInitialEvent event,
    Emitter<ScreenthreeState> emit,
  ) async {
    emit(state.copyWith(
      patientNameController: TextEditingController(),
      ageController: TextEditingController(),
      sexController: TextEditingController(),
      visitNumberController: TextEditingController(),
      weightController: TextEditingController(),
    ));
  }
}
