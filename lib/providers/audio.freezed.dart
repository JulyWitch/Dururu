// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioState {
  Child? get currentSong => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Child> get queue => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  bool get isShuffle => throw _privateConstructorUsedError;
  LoopMode get loopMode => throw _privateConstructorUsedError;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res, AudioState>;
  @useResult
  $Res call(
      {Child? currentSong,
      bool isPlaying,
      bool isLoading,
      List<Child> queue,
      Duration position,
      Duration duration,
      double volume,
      bool isShuffle,
      LoopMode loopMode});

  $ChildCopyWith<$Res>? get currentSong;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState>
    implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = freezed,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? queue = null,
    Object? position = null,
    Object? duration = null,
    Object? volume = null,
    Object? isShuffle = null,
    Object? loopMode = null,
  }) {
    return _then(_value.copyWith(
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as Child?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      queue: null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isShuffle: null == isShuffle
          ? _value.isShuffle
          : isShuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      loopMode: null == loopMode
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as LoopMode,
    ) as $Val);
  }

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildCopyWith<$Res>? get currentSong {
    if (_value.currentSong == null) {
      return null;
    }

    return $ChildCopyWith<$Res>(_value.currentSong!, (value) {
      return _then(_value.copyWith(currentSong: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioStateImplCopyWith<$Res>
    implements $AudioStateCopyWith<$Res> {
  factory _$$AudioStateImplCopyWith(
          _$AudioStateImpl value, $Res Function(_$AudioStateImpl) then) =
      __$$AudioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Child? currentSong,
      bool isPlaying,
      bool isLoading,
      List<Child> queue,
      Duration position,
      Duration duration,
      double volume,
      bool isShuffle,
      LoopMode loopMode});

  @override
  $ChildCopyWith<$Res>? get currentSong;
}

/// @nodoc
class __$$AudioStateImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioStateImpl>
    implements _$$AudioStateImplCopyWith<$Res> {
  __$$AudioStateImplCopyWithImpl(
      _$AudioStateImpl _value, $Res Function(_$AudioStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSong = freezed,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? queue = null,
    Object? position = null,
    Object? duration = null,
    Object? volume = null,
    Object? isShuffle = null,
    Object? loopMode = null,
  }) {
    return _then(_$AudioStateImpl(
      currentSong: freezed == currentSong
          ? _value.currentSong
          : currentSong // ignore: cast_nullable_to_non_nullable
              as Child?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      queue: null == queue
          ? _value._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isShuffle: null == isShuffle
          ? _value.isShuffle
          : isShuffle // ignore: cast_nullable_to_non_nullable
              as bool,
      loopMode: null == loopMode
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as LoopMode,
    ));
  }
}

/// @nodoc

class _$AudioStateImpl with DiagnosticableTreeMixin implements _AudioState {
  const _$AudioStateImpl(
      {this.currentSong,
      this.isPlaying = false,
      this.isLoading = false,
      final List<Child> queue = const [],
      this.position = Duration.zero,
      this.duration = Duration.zero,
      this.volume = 1.0,
      this.isShuffle = false,
      this.loopMode = LoopMode.off})
      : _queue = queue;

  @override
  final Child? currentSong;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isLoading;
  final List<Child> _queue;
  @override
  @JsonKey()
  List<Child> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final bool isShuffle;
  @override
  @JsonKey()
  final LoopMode loopMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState(currentSong: $currentSong, isPlaying: $isPlaying, isLoading: $isLoading, queue: $queue, position: $position, duration: $duration, volume: $volume, isShuffle: $isShuffle, loopMode: $loopMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioState'))
      ..add(DiagnosticsProperty('currentSong', currentSong))
      ..add(DiagnosticsProperty('isPlaying', isPlaying))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('queue', queue))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('isShuffle', isShuffle))
      ..add(DiagnosticsProperty('loopMode', loopMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioStateImpl &&
            (identical(other.currentSong, currentSong) ||
                other.currentSong == currentSong) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._queue, _queue) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.isShuffle, isShuffle) ||
                other.isShuffle == isShuffle) &&
            (identical(other.loopMode, loopMode) ||
                other.loopMode == loopMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentSong,
      isPlaying,
      isLoading,
      const DeepCollectionEquality().hash(_queue),
      position,
      duration,
      volume,
      isShuffle,
      loopMode);

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      __$$AudioStateImplCopyWithImpl<_$AudioStateImpl>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
      {final Child? currentSong,
      final bool isPlaying,
      final bool isLoading,
      final List<Child> queue,
      final Duration position,
      final Duration duration,
      final double volume,
      final bool isShuffle,
      final LoopMode loopMode}) = _$AudioStateImpl;

  @override
  Child? get currentSong;
  @override
  bool get isPlaying;
  @override
  bool get isLoading;
  @override
  List<Child> get queue;
  @override
  Duration get position;
  @override
  Duration get duration;
  @override
  double get volume;
  @override
  bool get isShuffle;
  @override
  LoopMode get loopMode;

  /// Create a copy of AudioState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioStateImplCopyWith<_$AudioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
