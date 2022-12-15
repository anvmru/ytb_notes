// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPlayerEventCopyWith<$Res> {
  factory $MyPlayerEventCopyWith(
          MyPlayerEvent value, $Res Function(MyPlayerEvent) then) =
      _$MyPlayerEventCopyWithImpl<$Res, MyPlayerEvent>;
}

/// @nodoc
class _$MyPlayerEventCopyWithImpl<$Res, $Val extends MyPlayerEvent>
    implements $MyPlayerEventCopyWith<$Res> {
  _$MyPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitEventCopyWith<$Res> {
  factory _$$InitEventCopyWith(
          _$InitEvent value, $Res Function(_$InitEvent) then) =
      __$$InitEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId, bool? playOn});
}

/// @nodoc
class __$$InitEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$InitEvent>
    implements _$$InitEventCopyWith<$Res> {
  __$$InitEventCopyWithImpl(
      _$InitEvent _value, $Res Function(_$InitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? playOn = freezed,
  }) {
    return _then(_$InitEvent(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      playOn: freezed == playOn
          ? _value.playOn
          : playOn // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitEvent implements InitEvent {
  const _$InitEvent({required this.videoId, this.playOn});

  @override
  final String videoId;
  @override
  final bool? playOn;

  @override
  String toString() {
    return 'MyPlayerEvent.init(videoId: $videoId, playOn: $playOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEvent &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.playOn, playOn) || other.playOn == playOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, playOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEventCopyWith<_$InitEvent> get copyWith =>
      __$$InitEventCopyWithImpl<_$InitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return init(videoId, playOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return init?.call(videoId, playOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(videoId, playOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements MyPlayerEvent {
  const factory InitEvent({required final String videoId, final bool? playOn}) =
      _$InitEvent;

  String get videoId;
  bool? get playOn;
  @JsonKey(ignore: true)
  _$$InitEventCopyWith<_$InitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEventCopyWith<$Res> {
  factory _$$LoadEventCopyWith(
          _$LoadEvent value, $Res Function(_$LoadEvent) then) =
      __$$LoadEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$LoadEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$LoadEvent>
    implements _$$LoadEventCopyWith<$Res> {
  __$$LoadEventCopyWithImpl(
      _$LoadEvent _value, $Res Function(_$LoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$LoadEvent(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadEvent implements LoadEvent {
  const _$LoadEvent(this.videoId);

  @override
  final String videoId;

  @override
  String toString() {
    return 'MyPlayerEvent.load(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEvent &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventCopyWith<_$LoadEvent> get copyWith =>
      __$$LoadEventCopyWithImpl<_$LoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return load(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return load?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadEvent implements MyPlayerEvent {
  const factory LoadEvent(final String videoId) = _$LoadEvent;

  String get videoId;
  @JsonKey(ignore: true)
  _$$LoadEventCopyWith<_$LoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartEventCopyWith<$Res> {
  factory _$$StartEventCopyWith(
          _$StartEvent value, $Res Function(_$StartEvent) then) =
      __$$StartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$StartEvent>
    implements _$$StartEventCopyWith<$Res> {
  __$$StartEventCopyWithImpl(
      _$StartEvent _value, $Res Function(_$StartEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartEvent implements StartEvent {
  const _$StartEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartEvent implements MyPlayerEvent {
  const factory StartEvent() = _$StartEvent;
}

/// @nodoc
abstract class _$$StopEventCopyWith<$Res> {
  factory _$$StopEventCopyWith(
          _$StopEvent value, $Res Function(_$StopEvent) then) =
      __$$StopEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$StopEvent>
    implements _$$StopEventCopyWith<$Res> {
  __$$StopEventCopyWithImpl(
      _$StopEvent _value, $Res Function(_$StopEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopEvent implements StopEvent {
  const _$StopEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopEvent implements MyPlayerEvent {
  const factory StopEvent() = _$StopEvent;
}

/// @nodoc
abstract class _$$ToggleEventCopyWith<$Res> {
  factory _$$ToggleEventCopyWith(
          _$ToggleEvent value, $Res Function(_$ToggleEvent) then) =
      __$$ToggleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$ToggleEvent>
    implements _$$ToggleEventCopyWith<$Res> {
  __$$ToggleEventCopyWithImpl(
      _$ToggleEvent _value, $Res Function(_$ToggleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleEvent implements ToggleEvent {
  const _$ToggleEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.toggle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class ToggleEvent implements MyPlayerEvent {
  const factory ToggleEvent() = _$ToggleEvent;
}

/// @nodoc
abstract class _$$ReadyEventCopyWith<$Res> {
  factory _$$ReadyEventCopyWith(
          _$ReadyEvent value, $Res Function(_$ReadyEvent) then) =
      __$$ReadyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$ReadyEvent>
    implements _$$ReadyEventCopyWith<$Res> {
  __$$ReadyEventCopyWithImpl(
      _$ReadyEvent _value, $Res Function(_$ReadyEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadyEvent implements ReadyEvent {
  const _$ReadyEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId, bool? playOn) init,
    required TResult Function(String videoId) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId, bool? playOn)? init,
    TResult? Function(String videoId)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId, bool? playOn)? init,
    TResult Function(String videoId)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(ReadyEvent value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(ReadyEvent value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(ReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ReadyEvent implements MyPlayerEvent {
  const factory ReadyEvent() = _$ReadyEvent;
}

/// @nodoc
mixin _$MyPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() def,
    required TResult Function(YoutubePlayerController controller) init,
    required TResult Function(bool playOn) toggle,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? def,
    TResult? Function(YoutubePlayerController controller)? init,
    TResult? Function(bool playOn)? toggle,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? def,
    TResult Function(YoutubePlayerController controller)? init,
    TResult Function(bool playOn)? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefState value) def,
    required TResult Function(InitState value) init,
    required TResult Function(ToggleState value) toggle,
    required TResult Function(RefreshState value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefState value)? def,
    TResult? Function(InitState value)? init,
    TResult? Function(ToggleState value)? toggle,
    TResult? Function(RefreshState value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefState value)? def,
    TResult Function(InitState value)? init,
    TResult Function(ToggleState value)? toggle,
    TResult Function(RefreshState value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPlayerStateCopyWith<$Res> {
  factory $MyPlayerStateCopyWith(
          MyPlayerState value, $Res Function(MyPlayerState) then) =
      _$MyPlayerStateCopyWithImpl<$Res, MyPlayerState>;
}

/// @nodoc
class _$MyPlayerStateCopyWithImpl<$Res, $Val extends MyPlayerState>
    implements $MyPlayerStateCopyWith<$Res> {
  _$MyPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DefStateCopyWith<$Res> {
  factory _$$DefStateCopyWith(
          _$DefState value, $Res Function(_$DefState) then) =
      __$$DefStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DefStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$DefState>
    implements _$$DefStateCopyWith<$Res> {
  __$$DefStateCopyWithImpl(_$DefState _value, $Res Function(_$DefState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefState implements DefState {
  const _$DefState();

  @override
  String toString() {
    return 'MyPlayerState.def()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DefState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() def,
    required TResult Function(YoutubePlayerController controller) init,
    required TResult Function(bool playOn) toggle,
    required TResult Function() refresh,
  }) {
    return def();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? def,
    TResult? Function(YoutubePlayerController controller)? init,
    TResult? Function(bool playOn)? toggle,
    TResult? Function()? refresh,
  }) {
    return def?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? def,
    TResult Function(YoutubePlayerController controller)? init,
    TResult Function(bool playOn)? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefState value) def,
    required TResult Function(InitState value) init,
    required TResult Function(ToggleState value) toggle,
    required TResult Function(RefreshState value) refresh,
  }) {
    return def(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefState value)? def,
    TResult? Function(InitState value)? init,
    TResult? Function(ToggleState value)? toggle,
    TResult? Function(RefreshState value)? refresh,
  }) {
    return def?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefState value)? def,
    TResult Function(InitState value)? init,
    TResult Function(ToggleState value)? toggle,
    TResult Function(RefreshState value)? refresh,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(this);
    }
    return orElse();
  }
}

abstract class DefState implements MyPlayerState {
  const factory DefState() = _$DefState;
}

/// @nodoc
abstract class _$$InitStateCopyWith<$Res> {
  factory _$$InitStateCopyWith(
          _$InitState value, $Res Function(_$InitState) then) =
      __$$InitStateCopyWithImpl<$Res>;
  @useResult
  $Res call({YoutubePlayerController controller});
}

/// @nodoc
class __$$InitStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$InitState>
    implements _$$InitStateCopyWith<$Res> {
  __$$InitStateCopyWithImpl(
      _$InitState _value, $Res Function(_$InitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$InitState(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YoutubePlayerController,
    ));
  }
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState(this.controller);

  @override
  final YoutubePlayerController controller;

  @override
  String toString() {
    return 'MyPlayerState.init(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitState &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStateCopyWith<_$InitState> get copyWith =>
      __$$InitStateCopyWithImpl<_$InitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() def,
    required TResult Function(YoutubePlayerController controller) init,
    required TResult Function(bool playOn) toggle,
    required TResult Function() refresh,
  }) {
    return init(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? def,
    TResult? Function(YoutubePlayerController controller)? init,
    TResult? Function(bool playOn)? toggle,
    TResult? Function()? refresh,
  }) {
    return init?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? def,
    TResult Function(YoutubePlayerController controller)? init,
    TResult Function(bool playOn)? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefState value) def,
    required TResult Function(InitState value) init,
    required TResult Function(ToggleState value) toggle,
    required TResult Function(RefreshState value) refresh,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefState value)? def,
    TResult? Function(InitState value)? init,
    TResult? Function(ToggleState value)? toggle,
    TResult? Function(RefreshState value)? refresh,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefState value)? def,
    TResult Function(InitState value)? init,
    TResult Function(ToggleState value)? toggle,
    TResult Function(RefreshState value)? refresh,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements MyPlayerState {
  const factory InitState(final YoutubePlayerController controller) =
      _$InitState;

  YoutubePlayerController get controller;
  @JsonKey(ignore: true)
  _$$InitStateCopyWith<_$InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleStateCopyWith<$Res> {
  factory _$$ToggleStateCopyWith(
          _$ToggleState value, $Res Function(_$ToggleState) then) =
      __$$ToggleStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool playOn});
}

/// @nodoc
class __$$ToggleStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$ToggleState>
    implements _$$ToggleStateCopyWith<$Res> {
  __$$ToggleStateCopyWithImpl(
      _$ToggleState _value, $Res Function(_$ToggleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playOn = null,
  }) {
    return _then(_$ToggleState(
      null == playOn
          ? _value.playOn
          : playOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleState implements ToggleState {
  const _$ToggleState(this.playOn);

  @override
  final bool playOn;

  @override
  String toString() {
    return 'MyPlayerState.toggle(playOn: $playOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleState &&
            (identical(other.playOn, playOn) || other.playOn == playOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleStateCopyWith<_$ToggleState> get copyWith =>
      __$$ToggleStateCopyWithImpl<_$ToggleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() def,
    required TResult Function(YoutubePlayerController controller) init,
    required TResult Function(bool playOn) toggle,
    required TResult Function() refresh,
  }) {
    return toggle(playOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? def,
    TResult? Function(YoutubePlayerController controller)? init,
    TResult? Function(bool playOn)? toggle,
    TResult? Function()? refresh,
  }) {
    return toggle?.call(playOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? def,
    TResult Function(YoutubePlayerController controller)? init,
    TResult Function(bool playOn)? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(playOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefState value) def,
    required TResult Function(InitState value) init,
    required TResult Function(ToggleState value) toggle,
    required TResult Function(RefreshState value) refresh,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefState value)? def,
    TResult? Function(InitState value)? init,
    TResult? Function(ToggleState value)? toggle,
    TResult? Function(RefreshState value)? refresh,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefState value)? def,
    TResult Function(InitState value)? init,
    TResult Function(ToggleState value)? toggle,
    TResult Function(RefreshState value)? refresh,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class ToggleState implements MyPlayerState {
  const factory ToggleState(final bool playOn) = _$ToggleState;

  bool get playOn;
  @JsonKey(ignore: true)
  _$$ToggleStateCopyWith<_$ToggleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshStateCopyWith<$Res> {
  factory _$$RefreshStateCopyWith(
          _$RefreshState value, $Res Function(_$RefreshState) then) =
      __$$RefreshStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$RefreshState>
    implements _$$RefreshStateCopyWith<$Res> {
  __$$RefreshStateCopyWithImpl(
      _$RefreshState _value, $Res Function(_$RefreshState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshState implements RefreshState {
  const _$RefreshState();

  @override
  String toString() {
    return 'MyPlayerState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() def,
    required TResult Function(YoutubePlayerController controller) init,
    required TResult Function(bool playOn) toggle,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? def,
    TResult? Function(YoutubePlayerController controller)? init,
    TResult? Function(bool playOn)? toggle,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? def,
    TResult Function(YoutubePlayerController controller)? init,
    TResult Function(bool playOn)? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefState value) def,
    required TResult Function(InitState value) init,
    required TResult Function(ToggleState value) toggle,
    required TResult Function(RefreshState value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefState value)? def,
    TResult? Function(InitState value)? init,
    TResult? Function(ToggleState value)? toggle,
    TResult? Function(RefreshState value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefState value)? def,
    TResult Function(InitState value)? init,
    TResult Function(ToggleState value)? toggle,
    TResult Function(RefreshState value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshState implements MyPlayerState {
  const factory RefreshState() = _$RefreshState;
}
