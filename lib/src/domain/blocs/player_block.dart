import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_block.freezed.dart';

@freezed
class MyPlayerEvent with _$MyPlayerEvent {
  const factory MyPlayerEvent.init() = InitEvent;
  const factory MyPlayerEvent.load(String id) = LoadEvent;
  const factory MyPlayerEvent.start() = StartEvent;
  const factory MyPlayerEvent.stop() = StopEvent;
  const factory MyPlayerEvent.toggle() = ToggleEvent;
  const factory MyPlayerEvent.refresh() = RefreshEvent;
}

@freezed
class MyPlayerState with _$MyPlayerState {
  const factory MyPlayerState.init() = InitState;
  const factory MyPlayerState.load(String url) = LoadState;
  const factory MyPlayerState.toggle(bool plaing) = ToggleState;
}

class MyPlayerBloc extends Bloc<MyPlayerEvent, MyPlayerState> {
  MyPlayerBloc() : super(const MyPlayerState.init()) {
    on<InitEvent>(_onInitEvent);
    on<LoadEvent>(_onLoadEvent);
    on<StartEvent>(_onStartEvent);
    on<StopEvent>(_onStopEvent);
    on<ToggleEvent>(_onToggleEvent);
    on<RefreshEvent>(_onRefreshEvent);
  }

  bool _playing = true;

  Future<void> _onInitEvent(
      MyPlayerEvent event, Emitter<MyPlayerState> emit) async {}

  Future<void> _onLoadEvent(
      LoadEvent event, Emitter<MyPlayerState> emit) async {
    emit.call(MyPlayerState.load(event.id));
    _playing = true;
    emit.call(MyPlayerState.toggle(_playing));
  }

  Future<void> _onStartEvent(
      StartEvent event, Emitter<MyPlayerState> emit) async {
    if (!_playing) {
      _playing = true;
      emit.call(MyPlayerState.toggle(_playing));
    }
  }

  Future<void> _onStopEvent(
      StopEvent event, Emitter<MyPlayerState> emit) async {
    if (_playing) {
      _playing = false;
      emit.call(MyPlayerState.toggle(_playing));
    }
  }

  Future<void> _onToggleEvent(
      ToggleEvent event, Emitter<MyPlayerState> emit) async {
    if (_playing) {
      _onStopEvent(const StopEvent(), emit);
    } else {
      _onStartEvent(const StartEvent(), emit);
    }
  }

  FutureOr<void> _onRefreshEvent(
      RefreshEvent event, Emitter<MyPlayerState> emit) {
    emit.call(MyPlayerState.toggle(_playing));
  }
}
