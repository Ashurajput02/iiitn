// ignore_for_file: must_be_immutable

part of 'screentwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Screentwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScreentwoEvent extends Equatable {}

/// Event that is dispatched when the Screentwo widget is first created.
class ScreentwoInitialEvent extends ScreentwoEvent {
  @override
  List<Object?> get props => [];
}
