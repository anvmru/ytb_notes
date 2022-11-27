// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
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
    required TResult Function(RefreshEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(RefreshEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(RefreshEvent value)? refresh,
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
}

/// @nodoc
class __$$InitEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$InitEvent>
    implements _$$InitEventCopyWith<$Res> {
  __$$InitEventCopyWithImpl(
      _$InitEvent _value, $Res Function(_$InitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitEvent implements InitEvent {
  const _$InitEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
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
    required TResult Function(RefreshEvent value) refresh,
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
    TResult? Function(RefreshEvent value)? refresh,
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
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements MyPlayerEvent {
  const factory InitEvent() = _$InitEvent;
}

/// @nodoc
abstract class _$$LoadEventCopyWith<$Res> {
  factory _$$LoadEventCopyWith(
          _$LoadEvent value, $Res Function(_$LoadEvent) then) =
      __$$LoadEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
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
    Object? id = null,
  }) {
    return _then(_$LoadEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadEvent implements LoadEvent {
  const _$LoadEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MyPlayerEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventCopyWith<_$LoadEvent> get copyWith =>
      __$$LoadEventCopyWithImpl<_$LoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
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
    required TResult Function(RefreshEvent value) refresh,
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
    TResult? Function(RefreshEvent value)? refresh,
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
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadEvent implements MyPlayerEvent {
  const factory LoadEvent(final String id) = _$LoadEvent;

  String get id;
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
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
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
    required TResult Function(RefreshEvent value) refresh,
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
    TResult? Function(RefreshEvent value)? refresh,
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
    TResult Function(RefreshEvent value)? refresh,
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
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
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
    required TResult Function(RefreshEvent value) refresh,
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
    TResult? Function(RefreshEvent value)? refresh,
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
    TResult Function(RefreshEvent value)? refresh,
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
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
    TResult Function()? refresh,
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
    required TResult Function(RefreshEvent value) refresh,
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
    TResult? Function(RefreshEvent value)? refresh,
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
    TResult Function(RefreshEvent value)? refresh,
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
abstract class _$$RefreshEventCopyWith<$Res> {
  factory _$$RefreshEventCopyWith(
          _$RefreshEvent value, $Res Function(_$RefreshEvent) then) =
      __$$RefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshEventCopyWithImpl<$Res>
    extends _$MyPlayerEventCopyWithImpl<$Res, _$RefreshEvent>
    implements _$$RefreshEventCopyWith<$Res> {
  __$$RefreshEventCopyWithImpl(
      _$RefreshEvent _value, $Res Function(_$RefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshEvent implements RefreshEvent {
  const _$RefreshEvent();

  @override
  String toString() {
    return 'MyPlayerEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String id) load,
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() toggle,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String id)? load,
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? toggle,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String id)? load,
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? toggle,
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
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(StartEvent value) start,
    required TResult Function(StopEvent value) stop,
    required TResult Function(ToggleEvent value) toggle,
    required TResult Function(RefreshEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(StartEvent value)? start,
    TResult? Function(StopEvent value)? stop,
    TResult? Function(ToggleEvent value)? toggle,
    TResult? Function(RefreshEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(StartEvent value)? start,
    TResult Function(StopEvent value)? stop,
    TResult Function(ToggleEvent value)? toggle,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshEvent implements MyPlayerEvent {
  const factory RefreshEvent() = _$RefreshEvent;
}

/// @nodoc
mixin _$MyPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String url) load,
    required TResult Function(bool plaing) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String url)? load,
    TResult? Function(bool plaing)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String url)? load,
    TResult Function(bool plaing)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadState value) load,
    required TResult Function(ToggleState value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadState value)? load,
    TResult? Function(ToggleState value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadState value)? load,
    TResult Function(ToggleState value)? toggle,
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
abstract class _$$InitStateCopyWith<$Res> {
  factory _$$InitStateCopyWith(
          _$InitState value, $Res Function(_$InitState) then) =
      __$$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$InitState>
    implements _$$InitStateCopyWith<$Res> {
  __$$InitStateCopyWithImpl(
      _$InitState _value, $Res Function(_$InitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState();

  @override
  String toString() {
    return 'MyPlayerState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String url) load,
    required TResult Function(bool plaing) toggle,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String url)? load,
    TResult? Function(bool plaing)? toggle,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String url)? load,
    TResult Function(bool plaing)? toggle,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadState value) load,
    required TResult Function(ToggleState value) toggle,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadState value)? load,
    TResult? Function(ToggleState value)? toggle,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadState value)? load,
    TResult Function(ToggleState value)? toggle,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements MyPlayerState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class _$$LoadStateCopyWith<$Res> {
  factory _$$LoadStateCopyWith(
          _$LoadState value, $Res Function(_$LoadState) then) =
      __$$LoadStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$LoadStateCopyWithImpl<$Res>
    extends _$MyPlayerStateCopyWithImpl<$Res, _$LoadState>
    implements _$$LoadStateCopyWith<$Res> {
  __$$LoadStateCopyWithImpl(
      _$LoadState _value, $Res Function(_$LoadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$LoadState(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadState implements LoadState {
  const _$LoadState(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'MyPlayerState.load(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadState &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStateCopyWith<_$LoadState> get copyWith =>
      __$$LoadStateCopyWithImpl<_$LoadState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String url) load,
    required TResult Function(bool plaing) toggle,
  }) {
    return load(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String url)? load,
    TResult? Function(bool plaing)? toggle,
  }) {
    return load?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String url)? load,
    TResult Function(bool plaing)? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadState value) load,
    required TResult Function(ToggleState value) toggle,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadState value)? load,
    TResult? Function(ToggleState value)? toggle,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadState value)? load,
    TResult Function(ToggleState value)? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadState implements MyPlayerState {
  const factory LoadState(final String url) = _$LoadState;

  String get url;
  @JsonKey(ignore: true)
  _$$LoadStateCopyWith<_$LoadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleStateCopyWith<$Res> {
  factory _$$ToggleStateCopyWith(
          _$ToggleState value, $Res Function(_$ToggleState) then) =
      __$$ToggleStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool plaing});
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
    Object? plaing = null,
  }) {
    return _then(_$ToggleState(
      null == plaing
          ? _value.plaing
          : plaing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleState implements ToggleState {
  const _$ToggleState(this.plaing);

  @override
  final bool plaing;

  @override
  String toString() {
    return 'MyPlayerState.toggle(plaing: $plaing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleState &&
            (identical(other.plaing, plaing) || other.plaing == plaing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plaing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleStateCopyWith<_$ToggleState> get copyWith =>
      __$$ToggleStateCopyWithImpl<_$ToggleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String url) load,
    required TResult Function(bool plaing) toggle,
  }) {
    return toggle(plaing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String url)? load,
    TResult? Function(bool plaing)? toggle,
  }) {
    return toggle?.call(plaing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String url)? load,
    TResult Function(bool plaing)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(plaing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadState value) load,
    required TResult Function(ToggleState value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadState value)? load,
    TResult? Function(ToggleState value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadState value)? load,
    TResult Function(ToggleState value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class ToggleState implements MyPlayerState {
  const factory ToggleState(final bool plaing) = _$ToggleState;

  bool get plaing;
  @JsonKey(ignore: true)
  _$$ToggleStateCopyWith<_$ToggleState> get copyWith =>
      throw _privateConstructorUsedError;
}
