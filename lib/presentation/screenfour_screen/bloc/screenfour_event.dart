// ignore_for_file: must_be_immutable

part of 'screenfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Screenfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScreenfourEvent extends Equatable {}

/// Event that is dispatched when the Screenfour widget is first created.
class ScreenfourInitialEvent extends ScreenfourEvent {
  @override
  List<Object?> get props => [];
}
