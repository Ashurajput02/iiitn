// ignore_for_file: must_be_immutable

part of 'screentwo_bloc.dart';

/// Represents the state of Screentwo in the application.
class ScreentwoState extends Equatable {
  ScreentwoState({this.screentwoModelObj});

  ScreentwoModel? screentwoModelObj;

  @override
  List<Object?> get props => [
        screentwoModelObj,
      ];
  ScreentwoState copyWith({ScreentwoModel? screentwoModelObj}) {
    return ScreentwoState(
      screentwoModelObj: screentwoModelObj ?? this.screentwoModelObj,
    );
  }
}
