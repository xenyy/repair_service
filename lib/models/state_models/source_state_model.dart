import 'package:freezed_annotation/freezed_annotation.dart';

part "source_state_model.freezed.dart";

@freezed
class SourceState<T> with _$SourceState<T> {
  const SourceState._();
  const factory SourceState.loading() = Start<T>;
  const factory SourceState.notLogged() = NotLogged<T>;
  const factory SourceState.logged() = Logged<T>;
  //const factory SourceState.onError() = Error;
}
