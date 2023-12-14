// ignore_for_file: must_be_immutable

part of 'screenfour_bloc.dart';

/// Represents the state of Screenfour in the application.
class ScreenfourState extends Equatable {
  ScreenfourState({this.screenfourModelObj});

  ScreenfourModel? screenfourModelObj;

  @override
  List<Object?> get props => [
        screenfourModelObj,
      ];
  ScreenfourState copyWith({ScreenfourModel? screenfourModelObj}) {
    return ScreenfourState(
      screenfourModelObj: screenfourModelObj ?? this.screenfourModelObj,
    );
  }
}
