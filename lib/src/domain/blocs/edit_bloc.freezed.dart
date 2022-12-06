// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(EntityFritter fritter) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(EntityFritter fritter)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(EntityFritter fritter)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(AddEvent value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(AddEvent value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(AddEvent value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res, EditEvent>;
}

/// @nodoc
class _$EditEventCopyWithImpl<$Res, $Val extends EditEvent>
    implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(this._value, this._then);

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
    extends _$EditEventCopyWithImpl<$Res, _$InitEvent>
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
    return 'EditEvent.init()';
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
    required TResult Function() load,
    required TResult Function(EntityFritter fritter) add,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(EntityFritter fritter)? add,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(EntityFritter fritter)? add,
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
    required TResult Function(AddEvent value) add,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(AddEvent value)? add,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(AddEvent value)? add,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements EditEvent {
  const factory InitEvent() = _$InitEvent;
}

/// @nodoc
abstract class _$$LoadEventCopyWith<$Res> {
  factory _$$LoadEventCopyWith(
          _$LoadEvent value, $Res Function(_$LoadEvent) then) =
      __$$LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$LoadEvent>
    implements _$$LoadEventCopyWith<$Res> {
  __$$LoadEventCopyWithImpl(
      _$LoadEvent _value, $Res Function(_$LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadEvent implements LoadEvent {
  const _$LoadEvent();

  @override
  String toString() {
    return 'EditEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(EntityFritter fritter) add,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(EntityFritter fritter)? add,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(EntityFritter fritter)? add,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(AddEvent value) add,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(AddEvent value)? add,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(AddEvent value)? add,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadEvent implements EditEvent {
  const factory LoadEvent() = _$LoadEvent;
}

/// @nodoc
abstract class _$$AddEventCopyWith<$Res> {
  factory _$$AddEventCopyWith(
          _$AddEvent value, $Res Function(_$AddEvent) then) =
      __$$AddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EntityFritter fritter});
}

/// @nodoc
class __$$AddEventCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$AddEvent>
    implements _$$AddEventCopyWith<$Res> {
  __$$AddEventCopyWithImpl(_$AddEvent _value, $Res Function(_$AddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fritter = null,
  }) {
    return _then(_$AddEvent(
      null == fritter
          ? _value.fritter
          : fritter // ignore: cast_nullable_to_non_nullable
              as EntityFritter,
    ));
  }
}

/// @nodoc

class _$AddEvent implements AddEvent {
  const _$AddEvent(this.fritter);

  @override
  final EntityFritter fritter;

  @override
  String toString() {
    return 'EditEvent.add(fritter: $fritter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEvent &&
            (identical(other.fritter, fritter) || other.fritter == fritter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fritter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventCopyWith<_$AddEvent> get copyWith =>
      __$$AddEventCopyWithImpl<_$AddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(EntityFritter fritter) add,
  }) {
    return add(fritter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(EntityFritter fritter)? add,
  }) {
    return add?.call(fritter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(EntityFritter fritter)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(fritter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadEvent value) load,
    required TResult Function(AddEvent value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadEvent value)? load,
    TResult? Function(AddEvent value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadEvent value)? load,
    TResult Function(AddEvent value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddEvent implements EditEvent {
  const factory AddEvent(final EntityFritter fritter) = _$AddEvent;

  EntityFritter get fritter;
  @JsonKey(ignore: true)
  _$$AddEventCopyWith<_$AddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(EntitySynopsys synopsys) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(EntitySynopsys synopsys)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(EntitySynopsys synopsys)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ReadyState value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(ReadyState value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ReadyState value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res, EditState>;
}

/// @nodoc
class _$EditStateCopyWithImpl<$Res, $Val extends EditState>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

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
    extends _$EditStateCopyWithImpl<$Res, _$InitState>
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
    return 'EditState.init()';
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
    required TResult Function(EntitySynopsys synopsys) ready,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(EntitySynopsys synopsys)? ready,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(EntitySynopsys synopsys)? ready,
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
    required TResult Function(ReadyState value) ready,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(ReadyState value)? ready,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ReadyState value)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements EditState {
  const factory InitState() = _$InitState;
}

/// @nodoc
abstract class _$$ReadyStateCopyWith<$Res> {
  factory _$$ReadyStateCopyWith(
          _$ReadyState value, $Res Function(_$ReadyState) then) =
      __$$ReadyStateCopyWithImpl<$Res>;
  @useResult
  $Res call({EntitySynopsys synopsys});
}

/// @nodoc
class __$$ReadyStateCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$ReadyState>
    implements _$$ReadyStateCopyWith<$Res> {
  __$$ReadyStateCopyWithImpl(
      _$ReadyState _value, $Res Function(_$ReadyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? synopsys = null,
  }) {
    return _then(_$ReadyState(
      null == synopsys
          ? _value.synopsys
          : synopsys // ignore: cast_nullable_to_non_nullable
              as EntitySynopsys,
    ));
  }
}

/// @nodoc

class _$ReadyState implements ReadyState {
  const _$ReadyState(this.synopsys);

  @override
  final EntitySynopsys synopsys;

  @override
  String toString() {
    return 'EditState.ready(synopsys: $synopsys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyState &&
            (identical(other.synopsys, synopsys) ||
                other.synopsys == synopsys));
  }

  @override
  int get hashCode => Object.hash(runtimeType, synopsys);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyStateCopyWith<_$ReadyState> get copyWith =>
      __$$ReadyStateCopyWithImpl<_$ReadyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(EntitySynopsys synopsys) ready,
  }) {
    return ready(synopsys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(EntitySynopsys synopsys)? ready,
  }) {
    return ready?.call(synopsys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(EntitySynopsys synopsys)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(synopsys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ReadyState value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(ReadyState value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ReadyState value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ReadyState implements EditState {
  const factory ReadyState(final EntitySynopsys synopsys) = _$ReadyState;

  EntitySynopsys get synopsys;
  @JsonKey(ignore: true)
  _$$ReadyStateCopyWith<_$ReadyState> get copyWith =>
      throw _privateConstructorUsedError;
}
