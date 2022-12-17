import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'player_block.freezed.dart';

@freezed
class MyPlayerEvent with _$MyPlayerEvent {
  const factory MyPlayerEvent.init({required String videoId, bool? playOn}) =
      InitEvent;
  const factory MyPlayerEvent.load(String videoId) = LoadEvent;
  const factory MyPlayerEvent.start() = StartEvent;
  const factory MyPlayerEvent.stop() = StopEvent;
  const factory MyPlayerEvent.toggle() = ToggleEvent;
  const factory MyPlayerEvent.ready() = ReadyEvent;
}

@freezed
class MyPlayerState with _$MyPlayerState {
  const factory MyPlayerState.def() = DefState;
  const factory MyPlayerState.init(YoutubePlayerController controller) =
      InitState;
  const factory MyPlayerState.toggle(bool playOn) = ToggleState;
  const factory MyPlayerState.refresh() = RefreshState;
  const factory MyPlayerState.ready() = ReadyPlayerState;
}

class MyPlayerBloc extends Bloc<MyPlayerEvent, MyPlayerState> {
  MyPlayerBloc() : super(const MyPlayerState.def()) {
    on<InitEvent>(_onInitEvent);
    on<LoadEvent>(_onLoadEvent);
    on<StartEvent>(_onStartEvent);
    on<StopEvent>(_onStopEvent);
    on<ToggleEvent>(_onToggleEvent);
    on<ReadyEvent>(_onReadyEvent);
  }

  bool _isPlayerReady = false;
  bool _playOn = true;
  YoutubePlayerController? _controller;
  YoutubePlayerController? get controller => _controller;

  void listener() {}

  Future<void> _onInitEvent(
      InitEvent event, Emitter<MyPlayerState> emit) async {
    // Если определен - чистим
    if (_controller != null) {
      _controller!.removeListener(listener);
      _controller!.dispose();
      _isPlayerReady = false;
    }
    _playOn = event.playOn ?? true;
    // Инициализируем новый
    _controller = YoutubePlayerController(
      initialVideoId: event.videoId, //'qGDjiv4Utsg',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: _playOn,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
        showLiveFullscreenButton: false,
      ),
    );

    if (_controller != null) {
      _controller?.addListener(listener);
      emit.call(MyPlayerState.init(_controller!));
    }
    // _videoMetaData = const YoutubeMetaData();
    // _playerState = PlayerState.unknown;
  }

  Future<void> _onLoadEvent(
      LoadEvent event, Emitter<MyPlayerState> emit) async {
    if (_isPlayerReady) {
      // emit.call(MyPlayerState.load(event.videoId));
      add(const MyPlayerEvent.stop());
    }
  }

  Future<void> _onStartEvent(
      StartEvent event, Emitter<MyPlayerState> emit) async {
    if (_isPlayerReady && !_playOn) {
      _playOn = true;
      _controller?.play();
      emit.call(const MyPlayerState.refresh());
    }
  }

  Future<void> _onStopEvent(
      StopEvent event, Emitter<MyPlayerState> emit) async {
    if (_isPlayerReady && _playOn) {
      _playOn = false;
      _controller?.pause();
      emit.call(const MyPlayerState.refresh());
    }
  }

  Future<void> _onToggleEvent(
      ToggleEvent event, Emitter<MyPlayerState> emit) async {
    if (_playOn) {
      _onStopEvent(const StopEvent(), emit);
    } else {
      _onStartEvent(const StartEvent(), emit);
    }
    emit.call(MyPlayerState.toggle(_playOn));
  }

  Future<void> _onReadyEvent(
      ReadyEvent event, Emitter<MyPlayerState> emit) async {
    _isPlayerReady = true;
    emit.call(const MyPlayerState.ready());
  }
}
