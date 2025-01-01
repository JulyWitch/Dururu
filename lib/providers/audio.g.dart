// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPlayingHash() => r'dbe2ac7d6c1af80e9746e9cc939bddb698a2dec1';

/// See also [isPlaying].
@ProviderFor(isPlaying)
final isPlayingProvider = AutoDisposeProvider<bool>.internal(
  isPlaying,
  name: r'isPlayingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isPlayingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsPlayingRef = AutoDisposeProviderRef<bool>;
String _$isLoadingHash() => r'9448cc0af7df6dec7221c33a02c592c7f9df08c7';

/// See also [isLoading].
@ProviderFor(isLoading)
final isLoadingProvider = AutoDisposeProvider<bool>.internal(
  isLoading,
  name: r'isLoadingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isLoadingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsLoadingRef = AutoDisposeProviderRef<bool>;
String _$currentSongHash() => r'589167902d7a35a340a3aeb4d980873c95cd8452';

/// See also [currentSong].
@ProviderFor(currentSong)
final currentSongProvider = AutoDisposeProvider<Child?>.internal(
  currentSong,
  name: r'currentSongProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentSongHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentSongRef = AutoDisposeProviderRef<Child?>;
String _$queueHash() => r'84da7964224186013c1a71425bd97f08211e4bc3';

/// See also [queue].
@ProviderFor(queue)
final queueProvider = AutoDisposeProvider<List<Child>>.internal(
  queue,
  name: r'queueProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$queueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef QueueRef = AutoDisposeProviderRef<List<Child>>;
String _$positionHash() => r'fde82ee7b1d07346d6cb33983130744364af8fc7';

/// See also [position].
@ProviderFor(position)
final positionProvider = AutoDisposeProvider<Duration>.internal(
  position,
  name: r'positionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$positionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PositionRef = AutoDisposeProviderRef<Duration>;
String _$durationHash() => r'539bc40b6653f4492e542012ef41de6d1e058e52';

/// See also [duration].
@ProviderFor(duration)
final durationProvider = AutoDisposeProvider<Duration>.internal(
  duration,
  name: r'durationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$durationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DurationRef = AutoDisposeProviderRef<Duration>;
String _$audioHash() => r'99d6e2ca06754c833a028a115e87dcef7aa3f116';

/// See also [Audio].
@ProviderFor(Audio)
final audioProvider = NotifierProvider<Audio, AudioState>.internal(
  Audio.new,
  name: r'audioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Audio = Notifier<AudioState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
