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
  const factory EditState.ready(EntitySynopsys synopsys) = ReadyState;
}

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(const EditState.init()) {
    on<InitEvent>(_onInitEvent);
    on<LoadEvent>(_onLoadEvent);
    on<AddEvent>(_onAddEvent);
  }

  EntitySynopsys _synopsys = EntitySynopsys(id: '');

  FutureOr<void> _onInitEvent(InitEvent event, Emitter<EditState> emit) {
    _synopsys = EntitySynopsys(id: '1', name: "Test 1", fritters: [
      EntityFritter(id: "1", begin: 0),
      EntityFritter(id: "2", begin: 100),
      EntityFritter(id: "3", begin: 200),
    ]);
  }

  FutureOr<void> _onLoadEvent(LoadEvent event, Emitter<EditState> emit) {
    emit.call(EditState.ready(_synopsys));
  }

  FutureOr<void> _onAddEvent(AddEvent event, Emitter<EditState> emit) {
    _synopsys.fritters.add(event.fritter);
    emit.call(EditState.ready(_synopsys));
  }
}
