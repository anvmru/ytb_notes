import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ytb_notes/src/domain/entities/entity_fritter.dart';
import 'package:ytb_notes/src/domain/entities/entity_synopsis.dart';

part 'edit_bloc.freezed.dart';

@freezed
class EditEvent with _$EditEvent {
  const factory EditEvent.init() = InitEvent;
  const factory EditEvent.load() = LoadEvent;
  const factory EditEvent.add(EntityFritter fritter) = AddEvent;
}

@freezed
class EditState with _$EditState {
  const factory EditState.init() = InitState;
  const factory EditState.ready(EntitySynopsys synopsys, int? index) =
      ReadyState;
}

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(const EditState.init()) {
    on<InitEvent>(_onInitEvent);
    on<LoadEvent>(_onLoadEvent);
    on<AddEvent>(_onAddEvent);
  }

  EntitySynopsys _synopsys = EntitySynopsys(id: '*');
  int? _index;

  //static const String _videoId = "https://www.youtube.com/watch?v=7qrQP2B10iw";

  FutureOr<void> _onInitEvent(InitEvent event, Emitter<EditState> emit) {
    _synopsys =
        EntitySynopsys(id: '1', name: "Test 1 - Уральские пельмени", fritters: [
      // EntityFritter(id: "1", begin: 0, videoId: _videoId),
      // EntityFritter(id: "2", begin: 100, videoId: _videoId),
      // EntityFritter(id: "3", begin: 200, videoId: _videoId),
    ]);
    if (_synopsys.fritters.isNotEmpty) {
      _index = 0;
    } else {
      _index = null;
    }
    emit.call(EditState.ready(_synopsys, _index));
  }

  FutureOr<void> _onLoadEvent(LoadEvent event, Emitter<EditState> emit) {
    emit.call(EditState.ready(_synopsys, _index));
  }

  FutureOr<void> _onAddEvent(AddEvent event, Emitter<EditState> emit) {
    _synopsys.fritters.add(event.fritter);
    emit.call(EditState.ready(_synopsys, _index));
  }
}
