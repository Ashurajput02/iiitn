// ignore_for_file: must_be_immutable

part of 'screenthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Screenthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScreenthreeEvent extends Equatable {}

/// Event that is dispatched when the Screenthree widget is first created.
class ScreenthreeInitialEvent extends ScreenthreeEvent {
  @override
  List<Object?> get props => [];
}
