//import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_bloc.freezed.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.init() = InitPlayerEvent;
}

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.fetching() = FetchingState;
}

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerState.fetching()) {
    on<InitPlayerEvent>(_onInitPlayerEvent);
  }

  Future<void> _onInitPlayerEvent(
      PlayerEvent event, Emitter<PlayerState> emit) async {
    emit.call(const PlayerState.fetching());
  }
}
