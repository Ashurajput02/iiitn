import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/screentwo_screen/models/screentwo_model.dart';
part 'screentwo_event.dart';
part 'screentwo_state.dart';

/// A bloc that manages the state of a Screentwo according to the event that is dispatched to it.
class ScreentwoBloc extends Bloc<ScreentwoEvent, ScreentwoState> {
  ScreentwoBloc(ScreentwoState initialState) : super(initialState) {
    on<ScreentwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreentwoInitialEvent event,
    Emitter<ScreentwoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashScreen,
      );
    });
  }
}
