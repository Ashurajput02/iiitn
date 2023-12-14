import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/screenfour_screen/models/screenfour_model.dart';
part 'screenfour_event.dart';
part 'screenfour_state.dart';

/// A bloc that manages the state of a Screenfour according to the event that is dispatched to it.
class ScreenfourBloc extends Bloc<ScreenfourEvent, ScreenfourState> {
  ScreenfourBloc(ScreenfourState initialState) : super(initialState) {
    on<ScreenfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenfourInitialEvent event,
    Emitter<ScreenfourState> emit,
  ) async {}
}
