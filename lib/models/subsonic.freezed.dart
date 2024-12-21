// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subsonic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  @JsonKey(name: 'status')
  ResponseStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'musicFolders')
  MusicFolders? get musicFolders => throw _privateConstructorUsedError;
  @JsonKey(name: 'indexes')
  Indexes? get indexes => throw _privateConstructorUsedError;
  @JsonKey(name: 'directory')
  Directory? get directory => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  Genres? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'artists')
  ArtistsId3? get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  ArtistWithAlbumsId3? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  AlbumWithSongsId3? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'song')
  Child? get song => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  Videos? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoInfo')
  VideoInfo? get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'nowPlaying')
  NowPlaying? get nowPlaying => throw _privateConstructorUsedError;
  @JsonKey(name: 'searchResult')
  SearchResult? get searchResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'searchResult2')
  SearchResult2? get searchResult2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'searchResult3')
  SearchResult3? get searchResult3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlists')
  Playlists? get playlists => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlist')
  PlaylistWithSongs? get playlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'jukeboxStatus')
  JukeboxStatus? get jukeboxStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'jukeboxPlaylist')
  JukeboxPlaylist? get jukeboxPlaylist => throw _privateConstructorUsedError;
  @JsonKey(name: 'license')
  License? get license => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  Users? get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatMessages')
  ChatMessages? get chatMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumList')
  AlbumList? get albumList => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumList2')
  AlbumList2? get albumList2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'randomSongs')
  Songs? get randomSongs => throw _privateConstructorUsedError;
  @JsonKey(name: 'songsByGenre')
  Songs? get songsByGenre => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyrics')
  Lyrics? get lyrics => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcasts')
  Podcasts? get podcasts => throw _privateConstructorUsedError;
  @JsonKey(name: 'newestPodcasts')
  NewestPodcasts? get newestPodcasts => throw _privateConstructorUsedError;
  @JsonKey(name: 'internetRadioStations')
  InternetRadioStations? get internetRadioStations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'bookmarks')
  Bookmarks? get bookmarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'playQueue')
  PlayQueue? get playQueue => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares')
  Shares? get shares => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  Starred? get starred => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred2')
  Starred2? get starred2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumInfo')
  AlbumInfo? get albumInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistInfo')
  ArtistInfo? get artistInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistInfo2')
  ArtistInfo2? get artistInfo2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarSongs')
  SimilarSongs? get similarSongs => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarSongs2')
  SimilarSongs2? get similarSongs2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'topSongs')
  TopSongs? get topSongs => throw _privateConstructorUsedError;
  @JsonKey(name: 'scanStatus')
  ScanStatus? get scanStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  Error? get error => throw _privateConstructorUsedError;

  /// Serializes this Response to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ResponseStatus status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'musicFolders') MusicFolders? musicFolders,
      @JsonKey(name: 'indexes') Indexes? indexes,
      @JsonKey(name: 'directory') Directory? directory,
      @JsonKey(name: 'genres') Genres? genres,
      @JsonKey(name: 'artists') ArtistsId3? artists,
      @JsonKey(name: 'artist') ArtistWithAlbumsId3? artist,
      @JsonKey(name: 'album') AlbumWithSongsId3? album,
      @JsonKey(name: 'song') Child? song,
      @JsonKey(name: 'videos') Videos? videos,
      @JsonKey(name: 'videoInfo') VideoInfo? videoInfo,
      @JsonKey(name: 'nowPlaying') NowPlaying? nowPlaying,
      @JsonKey(name: 'searchResult') SearchResult? searchResult,
      @JsonKey(name: 'searchResult2') SearchResult2? searchResult2,
      @JsonKey(name: 'searchResult3') SearchResult3? searchResult3,
      @JsonKey(name: 'playlists') Playlists? playlists,
      @JsonKey(name: 'playlist') PlaylistWithSongs? playlist,
      @JsonKey(name: 'jukeboxStatus') JukeboxStatus? jukeboxStatus,
      @JsonKey(name: 'jukeboxPlaylist') JukeboxPlaylist? jukeboxPlaylist,
      @JsonKey(name: 'license') License? license,
      @JsonKey(name: 'users') Users? users,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'chatMessages') ChatMessages? chatMessages,
      @JsonKey(name: 'albumList') AlbumList? albumList,
      @JsonKey(name: 'albumList2') AlbumList2? albumList2,
      @JsonKey(name: 'randomSongs') Songs? randomSongs,
      @JsonKey(name: 'songsByGenre') Songs? songsByGenre,
      @JsonKey(name: 'lyrics') Lyrics? lyrics,
      @JsonKey(name: 'podcasts') Podcasts? podcasts,
      @JsonKey(name: 'newestPodcasts') NewestPodcasts? newestPodcasts,
      @JsonKey(name: 'internetRadioStations')
      InternetRadioStations? internetRadioStations,
      @JsonKey(name: 'bookmarks') Bookmarks? bookmarks,
      @JsonKey(name: 'playQueue') PlayQueue? playQueue,
      @JsonKey(name: 'shares') Shares? shares,
      @JsonKey(name: 'starred') Starred? starred,
      @JsonKey(name: 'starred2') Starred2? starred2,
      @JsonKey(name: 'albumInfo') AlbumInfo? albumInfo,
      @JsonKey(name: 'artistInfo') ArtistInfo? artistInfo,
      @JsonKey(name: 'artistInfo2') ArtistInfo2? artistInfo2,
      @JsonKey(name: 'similarSongs') SimilarSongs? similarSongs,
      @JsonKey(name: 'similarSongs2') SimilarSongs2? similarSongs2,
      @JsonKey(name: 'topSongs') TopSongs? topSongs,
      @JsonKey(name: 'scanStatus') ScanStatus? scanStatus,
      @JsonKey(name: 'error') Error? error});

  $MusicFoldersCopyWith<$Res>? get musicFolders;
  $IndexesCopyWith<$Res>? get indexes;
  $DirectoryCopyWith<$Res>? get directory;
  $GenresCopyWith<$Res>? get genres;
  $ArtistsId3CopyWith<$Res>? get artists;
  $ArtistWithAlbumsId3CopyWith<$Res>? get artist;
  $AlbumWithSongsId3CopyWith<$Res>? get album;
  $ChildCopyWith<$Res>? get song;
  $VideosCopyWith<$Res>? get videos;
  $VideoInfoCopyWith<$Res>? get videoInfo;
  $NowPlayingCopyWith<$Res>? get nowPlaying;
  $SearchResultCopyWith<$Res>? get searchResult;
  $SearchResult2CopyWith<$Res>? get searchResult2;
  $SearchResult3CopyWith<$Res>? get searchResult3;
  $PlaylistsCopyWith<$Res>? get playlists;
  $PlaylistWithSongsCopyWith<$Res>? get playlist;
  $JukeboxStatusCopyWith<$Res>? get jukeboxStatus;
  $JukeboxPlaylistCopyWith<$Res>? get jukeboxPlaylist;
  $LicenseCopyWith<$Res>? get license;
  $UsersCopyWith<$Res>? get users;
  $UserCopyWith<$Res>? get user;
  $ChatMessagesCopyWith<$Res>? get chatMessages;
  $AlbumListCopyWith<$Res>? get albumList;
  $AlbumList2CopyWith<$Res>? get albumList2;
  $SongsCopyWith<$Res>? get randomSongs;
  $SongsCopyWith<$Res>? get songsByGenre;
  $LyricsCopyWith<$Res>? get lyrics;
  $PodcastsCopyWith<$Res>? get podcasts;
  $NewestPodcastsCopyWith<$Res>? get newestPodcasts;
  $InternetRadioStationsCopyWith<$Res>? get internetRadioStations;
  $BookmarksCopyWith<$Res>? get bookmarks;
  $PlayQueueCopyWith<$Res>? get playQueue;
  $SharesCopyWith<$Res>? get shares;
  $StarredCopyWith<$Res>? get starred;
  $Starred2CopyWith<$Res>? get starred2;
  $AlbumInfoCopyWith<$Res>? get albumInfo;
  $ArtistInfoCopyWith<$Res>? get artistInfo;
  $ArtistInfo2CopyWith<$Res>? get artistInfo2;
  $SimilarSongsCopyWith<$Res>? get similarSongs;
  $SimilarSongs2CopyWith<$Res>? get similarSongs2;
  $TopSongsCopyWith<$Res>? get topSongs;
  $ScanStatusCopyWith<$Res>? get scanStatus;
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? version = null,
    Object? musicFolders = freezed,
    Object? indexes = freezed,
    Object? directory = freezed,
    Object? genres = freezed,
    Object? artists = freezed,
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
    Object? videos = freezed,
    Object? videoInfo = freezed,
    Object? nowPlaying = freezed,
    Object? searchResult = freezed,
    Object? searchResult2 = freezed,
    Object? searchResult3 = freezed,
    Object? playlists = freezed,
    Object? playlist = freezed,
    Object? jukeboxStatus = freezed,
    Object? jukeboxPlaylist = freezed,
    Object? license = freezed,
    Object? users = freezed,
    Object? user = freezed,
    Object? chatMessages = freezed,
    Object? albumList = freezed,
    Object? albumList2 = freezed,
    Object? randomSongs = freezed,
    Object? songsByGenre = freezed,
    Object? lyrics = freezed,
    Object? podcasts = freezed,
    Object? newestPodcasts = freezed,
    Object? internetRadioStations = freezed,
    Object? bookmarks = freezed,
    Object? playQueue = freezed,
    Object? shares = freezed,
    Object? starred = freezed,
    Object? starred2 = freezed,
    Object? albumInfo = freezed,
    Object? artistInfo = freezed,
    Object? artistInfo2 = freezed,
    Object? similarSongs = freezed,
    Object? similarSongs2 = freezed,
    Object? topSongs = freezed,
    Object? scanStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      musicFolders: freezed == musicFolders
          ? _value.musicFolders
          : musicFolders // ignore: cast_nullable_to_non_nullable
              as MusicFolders?,
      indexes: freezed == indexes
          ? _value.indexes
          : indexes // ignore: cast_nullable_to_non_nullable
              as Indexes?,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Genres?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as ArtistsId3?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistWithAlbumsId3?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumWithSongsId3?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Child?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      videoInfo: freezed == videoInfo
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo?,
      nowPlaying: freezed == nowPlaying
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as NowPlaying?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult?,
      searchResult2: freezed == searchResult2
          ? _value.searchResult2
          : searchResult2 // ignore: cast_nullable_to_non_nullable
              as SearchResult2?,
      searchResult3: freezed == searchResult3
          ? _value.searchResult3
          : searchResult3 // ignore: cast_nullable_to_non_nullable
              as SearchResult3?,
      playlists: freezed == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistWithSongs?,
      jukeboxStatus: freezed == jukeboxStatus
          ? _value.jukeboxStatus
          : jukeboxStatus // ignore: cast_nullable_to_non_nullable
              as JukeboxStatus?,
      jukeboxPlaylist: freezed == jukeboxPlaylist
          ? _value.jukeboxPlaylist
          : jukeboxPlaylist // ignore: cast_nullable_to_non_nullable
              as JukeboxPlaylist?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Users?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      chatMessages: freezed == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as ChatMessages?,
      albumList: freezed == albumList
          ? _value.albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as AlbumList?,
      albumList2: freezed == albumList2
          ? _value.albumList2
          : albumList2 // ignore: cast_nullable_to_non_nullable
              as AlbumList2?,
      randomSongs: freezed == randomSongs
          ? _value.randomSongs
          : randomSongs // ignore: cast_nullable_to_non_nullable
              as Songs?,
      songsByGenre: freezed == songsByGenre
          ? _value.songsByGenre
          : songsByGenre // ignore: cast_nullable_to_non_nullable
              as Songs?,
      lyrics: freezed == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as Lyrics?,
      podcasts: freezed == podcasts
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as Podcasts?,
      newestPodcasts: freezed == newestPodcasts
          ? _value.newestPodcasts
          : newestPodcasts // ignore: cast_nullable_to_non_nullable
              as NewestPodcasts?,
      internetRadioStations: freezed == internetRadioStations
          ? _value.internetRadioStations
          : internetRadioStations // ignore: cast_nullable_to_non_nullable
              as InternetRadioStations?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as Bookmarks?,
      playQueue: freezed == playQueue
          ? _value.playQueue
          : playQueue // ignore: cast_nullable_to_non_nullable
              as PlayQueue?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Shares?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as Starred?,
      starred2: freezed == starred2
          ? _value.starred2
          : starred2 // ignore: cast_nullable_to_non_nullable
              as Starred2?,
      albumInfo: freezed == albumInfo
          ? _value.albumInfo
          : albumInfo // ignore: cast_nullable_to_non_nullable
              as AlbumInfo?,
      artistInfo: freezed == artistInfo
          ? _value.artistInfo
          : artistInfo // ignore: cast_nullable_to_non_nullable
              as ArtistInfo?,
      artistInfo2: freezed == artistInfo2
          ? _value.artistInfo2
          : artistInfo2 // ignore: cast_nullable_to_non_nullable
              as ArtistInfo2?,
      similarSongs: freezed == similarSongs
          ? _value.similarSongs
          : similarSongs // ignore: cast_nullable_to_non_nullable
              as SimilarSongs?,
      similarSongs2: freezed == similarSongs2
          ? _value.similarSongs2
          : similarSongs2 // ignore: cast_nullable_to_non_nullable
              as SimilarSongs2?,
      topSongs: freezed == topSongs
          ? _value.topSongs
          : topSongs // ignore: cast_nullable_to_non_nullable
              as TopSongs?,
      scanStatus: freezed == scanStatus
          ? _value.scanStatus
          : scanStatus // ignore: cast_nullable_to_non_nullable
              as ScanStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MusicFoldersCopyWith<$Res>? get musicFolders {
    if (_value.musicFolders == null) {
      return null;
    }

    return $MusicFoldersCopyWith<$Res>(_value.musicFolders!, (value) {
      return _then(_value.copyWith(musicFolders: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IndexesCopyWith<$Res>? get indexes {
    if (_value.indexes == null) {
      return null;
    }

    return $IndexesCopyWith<$Res>(_value.indexes!, (value) {
      return _then(_value.copyWith(indexes: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectoryCopyWith<$Res>? get directory {
    if (_value.directory == null) {
      return null;
    }

    return $DirectoryCopyWith<$Res>(_value.directory!, (value) {
      return _then(_value.copyWith(directory: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenresCopyWith<$Res>? get genres {
    if (_value.genres == null) {
      return null;
    }

    return $GenresCopyWith<$Res>(_value.genres!, (value) {
      return _then(_value.copyWith(genres: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistsId3CopyWith<$Res>? get artists {
    if (_value.artists == null) {
      return null;
    }

    return $ArtistsId3CopyWith<$Res>(_value.artists!, (value) {
      return _then(_value.copyWith(artists: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistWithAlbumsId3CopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistWithAlbumsId3CopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumWithSongsId3CopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumWithSongsId3CopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildCopyWith<$Res>? get song {
    if (_value.song == null) {
      return null;
    }

    return $ChildCopyWith<$Res>(_value.song!, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $VideosCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoInfoCopyWith<$Res>? get videoInfo {
    if (_value.videoInfo == null) {
      return null;
    }

    return $VideoInfoCopyWith<$Res>(_value.videoInfo!, (value) {
      return _then(_value.copyWith(videoInfo: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NowPlayingCopyWith<$Res>? get nowPlaying {
    if (_value.nowPlaying == null) {
      return null;
    }

    return $NowPlayingCopyWith<$Res>(_value.nowPlaying!, (value) {
      return _then(_value.copyWith(nowPlaying: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResultCopyWith<$Res>? get searchResult {
    if (_value.searchResult == null) {
      return null;
    }

    return $SearchResultCopyWith<$Res>(_value.searchResult!, (value) {
      return _then(_value.copyWith(searchResult: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResult2CopyWith<$Res>? get searchResult2 {
    if (_value.searchResult2 == null) {
      return null;
    }

    return $SearchResult2CopyWith<$Res>(_value.searchResult2!, (value) {
      return _then(_value.copyWith(searchResult2: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResult3CopyWith<$Res>? get searchResult3 {
    if (_value.searchResult3 == null) {
      return null;
    }

    return $SearchResult3CopyWith<$Res>(_value.searchResult3!, (value) {
      return _then(_value.copyWith(searchResult3: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaylistsCopyWith<$Res>? get playlists {
    if (_value.playlists == null) {
      return null;
    }

    return $PlaylistsCopyWith<$Res>(_value.playlists!, (value) {
      return _then(_value.copyWith(playlists: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaylistWithSongsCopyWith<$Res>? get playlist {
    if (_value.playlist == null) {
      return null;
    }

    return $PlaylistWithSongsCopyWith<$Res>(_value.playlist!, (value) {
      return _then(_value.copyWith(playlist: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JukeboxStatusCopyWith<$Res>? get jukeboxStatus {
    if (_value.jukeboxStatus == null) {
      return null;
    }

    return $JukeboxStatusCopyWith<$Res>(_value.jukeboxStatus!, (value) {
      return _then(_value.copyWith(jukeboxStatus: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JukeboxPlaylistCopyWith<$Res>? get jukeboxPlaylist {
    if (_value.jukeboxPlaylist == null) {
      return null;
    }

    return $JukeboxPlaylistCopyWith<$Res>(_value.jukeboxPlaylist!, (value) {
      return _then(_value.copyWith(jukeboxPlaylist: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $LicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsersCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $UsersCopyWith<$Res>(_value.users!, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessagesCopyWith<$Res>? get chatMessages {
    if (_value.chatMessages == null) {
      return null;
    }

    return $ChatMessagesCopyWith<$Res>(_value.chatMessages!, (value) {
      return _then(_value.copyWith(chatMessages: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumListCopyWith<$Res>? get albumList {
    if (_value.albumList == null) {
      return null;
    }

    return $AlbumListCopyWith<$Res>(_value.albumList!, (value) {
      return _then(_value.copyWith(albumList: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumList2CopyWith<$Res>? get albumList2 {
    if (_value.albumList2 == null) {
      return null;
    }

    return $AlbumList2CopyWith<$Res>(_value.albumList2!, (value) {
      return _then(_value.copyWith(albumList2: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongsCopyWith<$Res>? get randomSongs {
    if (_value.randomSongs == null) {
      return null;
    }

    return $SongsCopyWith<$Res>(_value.randomSongs!, (value) {
      return _then(_value.copyWith(randomSongs: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SongsCopyWith<$Res>? get songsByGenre {
    if (_value.songsByGenre == null) {
      return null;
    }

    return $SongsCopyWith<$Res>(_value.songsByGenre!, (value) {
      return _then(_value.copyWith(songsByGenre: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LyricsCopyWith<$Res>? get lyrics {
    if (_value.lyrics == null) {
      return null;
    }

    return $LyricsCopyWith<$Res>(_value.lyrics!, (value) {
      return _then(_value.copyWith(lyrics: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PodcastsCopyWith<$Res>? get podcasts {
    if (_value.podcasts == null) {
      return null;
    }

    return $PodcastsCopyWith<$Res>(_value.podcasts!, (value) {
      return _then(_value.copyWith(podcasts: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewestPodcastsCopyWith<$Res>? get newestPodcasts {
    if (_value.newestPodcasts == null) {
      return null;
    }

    return $NewestPodcastsCopyWith<$Res>(_value.newestPodcasts!, (value) {
      return _then(_value.copyWith(newestPodcasts: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InternetRadioStationsCopyWith<$Res>? get internetRadioStations {
    if (_value.internetRadioStations == null) {
      return null;
    }

    return $InternetRadioStationsCopyWith<$Res>(_value.internetRadioStations!,
        (value) {
      return _then(_value.copyWith(internetRadioStations: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookmarksCopyWith<$Res>? get bookmarks {
    if (_value.bookmarks == null) {
      return null;
    }

    return $BookmarksCopyWith<$Res>(_value.bookmarks!, (value) {
      return _then(_value.copyWith(bookmarks: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayQueueCopyWith<$Res>? get playQueue {
    if (_value.playQueue == null) {
      return null;
    }

    return $PlayQueueCopyWith<$Res>(_value.playQueue!, (value) {
      return _then(_value.copyWith(playQueue: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SharesCopyWith<$Res>? get shares {
    if (_value.shares == null) {
      return null;
    }

    return $SharesCopyWith<$Res>(_value.shares!, (value) {
      return _then(_value.copyWith(shares: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StarredCopyWith<$Res>? get starred {
    if (_value.starred == null) {
      return null;
    }

    return $StarredCopyWith<$Res>(_value.starred!, (value) {
      return _then(_value.copyWith(starred: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Starred2CopyWith<$Res>? get starred2 {
    if (_value.starred2 == null) {
      return null;
    }

    return $Starred2CopyWith<$Res>(_value.starred2!, (value) {
      return _then(_value.copyWith(starred2: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumInfoCopyWith<$Res>? get albumInfo {
    if (_value.albumInfo == null) {
      return null;
    }

    return $AlbumInfoCopyWith<$Res>(_value.albumInfo!, (value) {
      return _then(_value.copyWith(albumInfo: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistInfoCopyWith<$Res>? get artistInfo {
    if (_value.artistInfo == null) {
      return null;
    }

    return $ArtistInfoCopyWith<$Res>(_value.artistInfo!, (value) {
      return _then(_value.copyWith(artistInfo: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistInfo2CopyWith<$Res>? get artistInfo2 {
    if (_value.artistInfo2 == null) {
      return null;
    }

    return $ArtistInfo2CopyWith<$Res>(_value.artistInfo2!, (value) {
      return _then(_value.copyWith(artistInfo2: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimilarSongsCopyWith<$Res>? get similarSongs {
    if (_value.similarSongs == null) {
      return null;
    }

    return $SimilarSongsCopyWith<$Res>(_value.similarSongs!, (value) {
      return _then(_value.copyWith(similarSongs: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimilarSongs2CopyWith<$Res>? get similarSongs2 {
    if (_value.similarSongs2 == null) {
      return null;
    }

    return $SimilarSongs2CopyWith<$Res>(_value.similarSongs2!, (value) {
      return _then(_value.copyWith(similarSongs2: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopSongsCopyWith<$Res>? get topSongs {
    if (_value.topSongs == null) {
      return null;
    }

    return $TopSongsCopyWith<$Res>(_value.topSongs!, (value) {
      return _then(_value.copyWith(topSongs: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScanStatusCopyWith<$Res>? get scanStatus {
    if (_value.scanStatus == null) {
      return null;
    }

    return $ScanStatusCopyWith<$Res>(_value.scanStatus!, (value) {
      return _then(_value.copyWith(scanStatus: value) as $Val);
    });
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseImplCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory _$$ResponseImplCopyWith(
          _$ResponseImpl value, $Res Function(_$ResponseImpl) then) =
      __$$ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ResponseStatus status,
      @JsonKey(name: 'version') String version,
      @JsonKey(name: 'musicFolders') MusicFolders? musicFolders,
      @JsonKey(name: 'indexes') Indexes? indexes,
      @JsonKey(name: 'directory') Directory? directory,
      @JsonKey(name: 'genres') Genres? genres,
      @JsonKey(name: 'artists') ArtistsId3? artists,
      @JsonKey(name: 'artist') ArtistWithAlbumsId3? artist,
      @JsonKey(name: 'album') AlbumWithSongsId3? album,
      @JsonKey(name: 'song') Child? song,
      @JsonKey(name: 'videos') Videos? videos,
      @JsonKey(name: 'videoInfo') VideoInfo? videoInfo,
      @JsonKey(name: 'nowPlaying') NowPlaying? nowPlaying,
      @JsonKey(name: 'searchResult') SearchResult? searchResult,
      @JsonKey(name: 'searchResult2') SearchResult2? searchResult2,
      @JsonKey(name: 'searchResult3') SearchResult3? searchResult3,
      @JsonKey(name: 'playlists') Playlists? playlists,
      @JsonKey(name: 'playlist') PlaylistWithSongs? playlist,
      @JsonKey(name: 'jukeboxStatus') JukeboxStatus? jukeboxStatus,
      @JsonKey(name: 'jukeboxPlaylist') JukeboxPlaylist? jukeboxPlaylist,
      @JsonKey(name: 'license') License? license,
      @JsonKey(name: 'users') Users? users,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'chatMessages') ChatMessages? chatMessages,
      @JsonKey(name: 'albumList') AlbumList? albumList,
      @JsonKey(name: 'albumList2') AlbumList2? albumList2,
      @JsonKey(name: 'randomSongs') Songs? randomSongs,
      @JsonKey(name: 'songsByGenre') Songs? songsByGenre,
      @JsonKey(name: 'lyrics') Lyrics? lyrics,
      @JsonKey(name: 'podcasts') Podcasts? podcasts,
      @JsonKey(name: 'newestPodcasts') NewestPodcasts? newestPodcasts,
      @JsonKey(name: 'internetRadioStations')
      InternetRadioStations? internetRadioStations,
      @JsonKey(name: 'bookmarks') Bookmarks? bookmarks,
      @JsonKey(name: 'playQueue') PlayQueue? playQueue,
      @JsonKey(name: 'shares') Shares? shares,
      @JsonKey(name: 'starred') Starred? starred,
      @JsonKey(name: 'starred2') Starred2? starred2,
      @JsonKey(name: 'albumInfo') AlbumInfo? albumInfo,
      @JsonKey(name: 'artistInfo') ArtistInfo? artistInfo,
      @JsonKey(name: 'artistInfo2') ArtistInfo2? artistInfo2,
      @JsonKey(name: 'similarSongs') SimilarSongs? similarSongs,
      @JsonKey(name: 'similarSongs2') SimilarSongs2? similarSongs2,
      @JsonKey(name: 'topSongs') TopSongs? topSongs,
      @JsonKey(name: 'scanStatus') ScanStatus? scanStatus,
      @JsonKey(name: 'error') Error? error});

  @override
  $MusicFoldersCopyWith<$Res>? get musicFolders;
  @override
  $IndexesCopyWith<$Res>? get indexes;
  @override
  $DirectoryCopyWith<$Res>? get directory;
  @override
  $GenresCopyWith<$Res>? get genres;
  @override
  $ArtistsId3CopyWith<$Res>? get artists;
  @override
  $ArtistWithAlbumsId3CopyWith<$Res>? get artist;
  @override
  $AlbumWithSongsId3CopyWith<$Res>? get album;
  @override
  $ChildCopyWith<$Res>? get song;
  @override
  $VideosCopyWith<$Res>? get videos;
  @override
  $VideoInfoCopyWith<$Res>? get videoInfo;
  @override
  $NowPlayingCopyWith<$Res>? get nowPlaying;
  @override
  $SearchResultCopyWith<$Res>? get searchResult;
  @override
  $SearchResult2CopyWith<$Res>? get searchResult2;
  @override
  $SearchResult3CopyWith<$Res>? get searchResult3;
  @override
  $PlaylistsCopyWith<$Res>? get playlists;
  @override
  $PlaylistWithSongsCopyWith<$Res>? get playlist;
  @override
  $JukeboxStatusCopyWith<$Res>? get jukeboxStatus;
  @override
  $JukeboxPlaylistCopyWith<$Res>? get jukeboxPlaylist;
  @override
  $LicenseCopyWith<$Res>? get license;
  @override
  $UsersCopyWith<$Res>? get users;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ChatMessagesCopyWith<$Res>? get chatMessages;
  @override
  $AlbumListCopyWith<$Res>? get albumList;
  @override
  $AlbumList2CopyWith<$Res>? get albumList2;
  @override
  $SongsCopyWith<$Res>? get randomSongs;
  @override
  $SongsCopyWith<$Res>? get songsByGenre;
  @override
  $LyricsCopyWith<$Res>? get lyrics;
  @override
  $PodcastsCopyWith<$Res>? get podcasts;
  @override
  $NewestPodcastsCopyWith<$Res>? get newestPodcasts;
  @override
  $InternetRadioStationsCopyWith<$Res>? get internetRadioStations;
  @override
  $BookmarksCopyWith<$Res>? get bookmarks;
  @override
  $PlayQueueCopyWith<$Res>? get playQueue;
  @override
  $SharesCopyWith<$Res>? get shares;
  @override
  $StarredCopyWith<$Res>? get starred;
  @override
  $Starred2CopyWith<$Res>? get starred2;
  @override
  $AlbumInfoCopyWith<$Res>? get albumInfo;
  @override
  $ArtistInfoCopyWith<$Res>? get artistInfo;
  @override
  $ArtistInfo2CopyWith<$Res>? get artistInfo2;
  @override
  $SimilarSongsCopyWith<$Res>? get similarSongs;
  @override
  $SimilarSongs2CopyWith<$Res>? get similarSongs2;
  @override
  $TopSongsCopyWith<$Res>? get topSongs;
  @override
  $ScanStatusCopyWith<$Res>? get scanStatus;
  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ResponseImplCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$ResponseImpl>
    implements _$$ResponseImplCopyWith<$Res> {
  __$$ResponseImplCopyWithImpl(
      _$ResponseImpl _value, $Res Function(_$ResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? version = null,
    Object? musicFolders = freezed,
    Object? indexes = freezed,
    Object? directory = freezed,
    Object? genres = freezed,
    Object? artists = freezed,
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
    Object? videos = freezed,
    Object? videoInfo = freezed,
    Object? nowPlaying = freezed,
    Object? searchResult = freezed,
    Object? searchResult2 = freezed,
    Object? searchResult3 = freezed,
    Object? playlists = freezed,
    Object? playlist = freezed,
    Object? jukeboxStatus = freezed,
    Object? jukeboxPlaylist = freezed,
    Object? license = freezed,
    Object? users = freezed,
    Object? user = freezed,
    Object? chatMessages = freezed,
    Object? albumList = freezed,
    Object? albumList2 = freezed,
    Object? randomSongs = freezed,
    Object? songsByGenre = freezed,
    Object? lyrics = freezed,
    Object? podcasts = freezed,
    Object? newestPodcasts = freezed,
    Object? internetRadioStations = freezed,
    Object? bookmarks = freezed,
    Object? playQueue = freezed,
    Object? shares = freezed,
    Object? starred = freezed,
    Object? starred2 = freezed,
    Object? albumInfo = freezed,
    Object? artistInfo = freezed,
    Object? artistInfo2 = freezed,
    Object? similarSongs = freezed,
    Object? similarSongs2 = freezed,
    Object? topSongs = freezed,
    Object? scanStatus = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      musicFolders: freezed == musicFolders
          ? _value.musicFolders
          : musicFolders // ignore: cast_nullable_to_non_nullable
              as MusicFolders?,
      indexes: freezed == indexes
          ? _value.indexes
          : indexes // ignore: cast_nullable_to_non_nullable
              as Indexes?,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Genres?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as ArtistsId3?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistWithAlbumsId3?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumWithSongsId3?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Child?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      videoInfo: freezed == videoInfo
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo?,
      nowPlaying: freezed == nowPlaying
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as NowPlaying?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult?,
      searchResult2: freezed == searchResult2
          ? _value.searchResult2
          : searchResult2 // ignore: cast_nullable_to_non_nullable
              as SearchResult2?,
      searchResult3: freezed == searchResult3
          ? _value.searchResult3
          : searchResult3 // ignore: cast_nullable_to_non_nullable
              as SearchResult3?,
      playlists: freezed == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistWithSongs?,
      jukeboxStatus: freezed == jukeboxStatus
          ? _value.jukeboxStatus
          : jukeboxStatus // ignore: cast_nullable_to_non_nullable
              as JukeboxStatus?,
      jukeboxPlaylist: freezed == jukeboxPlaylist
          ? _value.jukeboxPlaylist
          : jukeboxPlaylist // ignore: cast_nullable_to_non_nullable
              as JukeboxPlaylist?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Users?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      chatMessages: freezed == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as ChatMessages?,
      albumList: freezed == albumList
          ? _value.albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as AlbumList?,
      albumList2: freezed == albumList2
          ? _value.albumList2
          : albumList2 // ignore: cast_nullable_to_non_nullable
              as AlbumList2?,
      randomSongs: freezed == randomSongs
          ? _value.randomSongs
          : randomSongs // ignore: cast_nullable_to_non_nullable
              as Songs?,
      songsByGenre: freezed == songsByGenre
          ? _value.songsByGenre
          : songsByGenre // ignore: cast_nullable_to_non_nullable
              as Songs?,
      lyrics: freezed == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as Lyrics?,
      podcasts: freezed == podcasts
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as Podcasts?,
      newestPodcasts: freezed == newestPodcasts
          ? _value.newestPodcasts
          : newestPodcasts // ignore: cast_nullable_to_non_nullable
              as NewestPodcasts?,
      internetRadioStations: freezed == internetRadioStations
          ? _value.internetRadioStations
          : internetRadioStations // ignore: cast_nullable_to_non_nullable
              as InternetRadioStations?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as Bookmarks?,
      playQueue: freezed == playQueue
          ? _value.playQueue
          : playQueue // ignore: cast_nullable_to_non_nullable
              as PlayQueue?,
      shares: freezed == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as Shares?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as Starred?,
      starred2: freezed == starred2
          ? _value.starred2
          : starred2 // ignore: cast_nullable_to_non_nullable
              as Starred2?,
      albumInfo: freezed == albumInfo
          ? _value.albumInfo
          : albumInfo // ignore: cast_nullable_to_non_nullable
              as AlbumInfo?,
      artistInfo: freezed == artistInfo
          ? _value.artistInfo
          : artistInfo // ignore: cast_nullable_to_non_nullable
              as ArtistInfo?,
      artistInfo2: freezed == artistInfo2
          ? _value.artistInfo2
          : artistInfo2 // ignore: cast_nullable_to_non_nullable
              as ArtistInfo2?,
      similarSongs: freezed == similarSongs
          ? _value.similarSongs
          : similarSongs // ignore: cast_nullable_to_non_nullable
              as SimilarSongs?,
      similarSongs2: freezed == similarSongs2
          ? _value.similarSongs2
          : similarSongs2 // ignore: cast_nullable_to_non_nullable
              as SimilarSongs2?,
      topSongs: freezed == topSongs
          ? _value.topSongs
          : topSongs // ignore: cast_nullable_to_non_nullable
              as TopSongs?,
      scanStatus: freezed == scanStatus
          ? _value.scanStatus
          : scanStatus // ignore: cast_nullable_to_non_nullable
              as ScanStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseImpl implements _Response {
  const _$ResponseImpl(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'musicFolders') this.musicFolders,
      @JsonKey(name: 'indexes') this.indexes,
      @JsonKey(name: 'directory') this.directory,
      @JsonKey(name: 'genres') this.genres,
      @JsonKey(name: 'artists') this.artists,
      @JsonKey(name: 'artist') this.artist,
      @JsonKey(name: 'album') this.album,
      @JsonKey(name: 'song') this.song,
      @JsonKey(name: 'videos') this.videos,
      @JsonKey(name: 'videoInfo') this.videoInfo,
      @JsonKey(name: 'nowPlaying') this.nowPlaying,
      @JsonKey(name: 'searchResult') this.searchResult,
      @JsonKey(name: 'searchResult2') this.searchResult2,
      @JsonKey(name: 'searchResult3') this.searchResult3,
      @JsonKey(name: 'playlists') this.playlists,
      @JsonKey(name: 'playlist') this.playlist,
      @JsonKey(name: 'jukeboxStatus') this.jukeboxStatus,
      @JsonKey(name: 'jukeboxPlaylist') this.jukeboxPlaylist,
      @JsonKey(name: 'license') this.license,
      @JsonKey(name: 'users') this.users,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'chatMessages') this.chatMessages,
      @JsonKey(name: 'albumList') this.albumList,
      @JsonKey(name: 'albumList2') this.albumList2,
      @JsonKey(name: 'randomSongs') this.randomSongs,
      @JsonKey(name: 'songsByGenre') this.songsByGenre,
      @JsonKey(name: 'lyrics') this.lyrics,
      @JsonKey(name: 'podcasts') this.podcasts,
      @JsonKey(name: 'newestPodcasts') this.newestPodcasts,
      @JsonKey(name: 'internetRadioStations') this.internetRadioStations,
      @JsonKey(name: 'bookmarks') this.bookmarks,
      @JsonKey(name: 'playQueue') this.playQueue,
      @JsonKey(name: 'shares') this.shares,
      @JsonKey(name: 'starred') this.starred,
      @JsonKey(name: 'starred2') this.starred2,
      @JsonKey(name: 'albumInfo') this.albumInfo,
      @JsonKey(name: 'artistInfo') this.artistInfo,
      @JsonKey(name: 'artistInfo2') this.artistInfo2,
      @JsonKey(name: 'similarSongs') this.similarSongs,
      @JsonKey(name: 'similarSongs2') this.similarSongs2,
      @JsonKey(name: 'topSongs') this.topSongs,
      @JsonKey(name: 'scanStatus') this.scanStatus,
      @JsonKey(name: 'error') this.error});

  factory _$ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final ResponseStatus status;
  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'musicFolders')
  final MusicFolders? musicFolders;
  @override
  @JsonKey(name: 'indexes')
  final Indexes? indexes;
  @override
  @JsonKey(name: 'directory')
  final Directory? directory;
  @override
  @JsonKey(name: 'genres')
  final Genres? genres;
  @override
  @JsonKey(name: 'artists')
  final ArtistsId3? artists;
  @override
  @JsonKey(name: 'artist')
  final ArtistWithAlbumsId3? artist;
  @override
  @JsonKey(name: 'album')
  final AlbumWithSongsId3? album;
  @override
  @JsonKey(name: 'song')
  final Child? song;
  @override
  @JsonKey(name: 'videos')
  final Videos? videos;
  @override
  @JsonKey(name: 'videoInfo')
  final VideoInfo? videoInfo;
  @override
  @JsonKey(name: 'nowPlaying')
  final NowPlaying? nowPlaying;
  @override
  @JsonKey(name: 'searchResult')
  final SearchResult? searchResult;
  @override
  @JsonKey(name: 'searchResult2')
  final SearchResult2? searchResult2;
  @override
  @JsonKey(name: 'searchResult3')
  final SearchResult3? searchResult3;
  @override
  @JsonKey(name: 'playlists')
  final Playlists? playlists;
  @override
  @JsonKey(name: 'playlist')
  final PlaylistWithSongs? playlist;
  @override
  @JsonKey(name: 'jukeboxStatus')
  final JukeboxStatus? jukeboxStatus;
  @override
  @JsonKey(name: 'jukeboxPlaylist')
  final JukeboxPlaylist? jukeboxPlaylist;
  @override
  @JsonKey(name: 'license')
  final License? license;
  @override
  @JsonKey(name: 'users')
  final Users? users;
  @override
  @JsonKey(name: 'user')
  final User? user;
  @override
  @JsonKey(name: 'chatMessages')
  final ChatMessages? chatMessages;
  @override
  @JsonKey(name: 'albumList')
  final AlbumList? albumList;
  @override
  @JsonKey(name: 'albumList2')
  final AlbumList2? albumList2;
  @override
  @JsonKey(name: 'randomSongs')
  final Songs? randomSongs;
  @override
  @JsonKey(name: 'songsByGenre')
  final Songs? songsByGenre;
  @override
  @JsonKey(name: 'lyrics')
  final Lyrics? lyrics;
  @override
  @JsonKey(name: 'podcasts')
  final Podcasts? podcasts;
  @override
  @JsonKey(name: 'newestPodcasts')
  final NewestPodcasts? newestPodcasts;
  @override
  @JsonKey(name: 'internetRadioStations')
  final InternetRadioStations? internetRadioStations;
  @override
  @JsonKey(name: 'bookmarks')
  final Bookmarks? bookmarks;
  @override
  @JsonKey(name: 'playQueue')
  final PlayQueue? playQueue;
  @override
  @JsonKey(name: 'shares')
  final Shares? shares;
  @override
  @JsonKey(name: 'starred')
  final Starred? starred;
  @override
  @JsonKey(name: 'starred2')
  final Starred2? starred2;
  @override
  @JsonKey(name: 'albumInfo')
  final AlbumInfo? albumInfo;
  @override
  @JsonKey(name: 'artistInfo')
  final ArtistInfo? artistInfo;
  @override
  @JsonKey(name: 'artistInfo2')
  final ArtistInfo2? artistInfo2;
  @override
  @JsonKey(name: 'similarSongs')
  final SimilarSongs? similarSongs;
  @override
  @JsonKey(name: 'similarSongs2')
  final SimilarSongs2? similarSongs2;
  @override
  @JsonKey(name: 'topSongs')
  final TopSongs? topSongs;
  @override
  @JsonKey(name: 'scanStatus')
  final ScanStatus? scanStatus;
  @override
  @JsonKey(name: 'error')
  final Error? error;

  @override
  String toString() {
    return 'Response(status: $status, version: $version, musicFolders: $musicFolders, indexes: $indexes, directory: $directory, genres: $genres, artists: $artists, artist: $artist, album: $album, song: $song, videos: $videos, videoInfo: $videoInfo, nowPlaying: $nowPlaying, searchResult: $searchResult, searchResult2: $searchResult2, searchResult3: $searchResult3, playlists: $playlists, playlist: $playlist, jukeboxStatus: $jukeboxStatus, jukeboxPlaylist: $jukeboxPlaylist, license: $license, users: $users, user: $user, chatMessages: $chatMessages, albumList: $albumList, albumList2: $albumList2, randomSongs: $randomSongs, songsByGenre: $songsByGenre, lyrics: $lyrics, podcasts: $podcasts, newestPodcasts: $newestPodcasts, internetRadioStations: $internetRadioStations, bookmarks: $bookmarks, playQueue: $playQueue, shares: $shares, starred: $starred, starred2: $starred2, albumInfo: $albumInfo, artistInfo: $artistInfo, artistInfo2: $artistInfo2, similarSongs: $similarSongs, similarSongs2: $similarSongs2, topSongs: $topSongs, scanStatus: $scanStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.musicFolders, musicFolders) ||
                other.musicFolders == musicFolders) &&
            (identical(other.indexes, indexes) || other.indexes == indexes) &&
            (identical(other.directory, directory) ||
                other.directory == directory) &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.artists, artists) || other.artists == artists) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.videoInfo, videoInfo) ||
                other.videoInfo == videoInfo) &&
            (identical(other.nowPlaying, nowPlaying) ||
                other.nowPlaying == nowPlaying) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            (identical(other.searchResult2, searchResult2) ||
                other.searchResult2 == searchResult2) &&
            (identical(other.searchResult3, searchResult3) ||
                other.searchResult3 == searchResult3) &&
            (identical(other.playlists, playlists) ||
                other.playlists == playlists) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.jukeboxStatus, jukeboxStatus) ||
                other.jukeboxStatus == jukeboxStatus) &&
            (identical(other.jukeboxPlaylist, jukeboxPlaylist) ||
                other.jukeboxPlaylist == jukeboxPlaylist) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.chatMessages, chatMessages) ||
                other.chatMessages == chatMessages) &&
            (identical(other.albumList, albumList) ||
                other.albumList == albumList) &&
            (identical(other.albumList2, albumList2) ||
                other.albumList2 == albumList2) &&
            (identical(other.randomSongs, randomSongs) ||
                other.randomSongs == randomSongs) &&
            (identical(other.songsByGenre, songsByGenre) ||
                other.songsByGenre == songsByGenre) &&
            (identical(other.lyrics, lyrics) || other.lyrics == lyrics) &&
            (identical(other.podcasts, podcasts) ||
                other.podcasts == podcasts) &&
            (identical(other.newestPodcasts, newestPodcasts) ||
                other.newestPodcasts == newestPodcasts) &&
            (identical(other.internetRadioStations, internetRadioStations) ||
                other.internetRadioStations == internetRadioStations) &&
            (identical(other.bookmarks, bookmarks) ||
                other.bookmarks == bookmarks) &&
            (identical(other.playQueue, playQueue) ||
                other.playQueue == playQueue) &&
            (identical(other.shares, shares) || other.shares == shares) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.starred2, starred2) ||
                other.starred2 == starred2) &&
            (identical(other.albumInfo, albumInfo) ||
                other.albumInfo == albumInfo) &&
            (identical(other.artistInfo, artistInfo) ||
                other.artistInfo == artistInfo) &&
            (identical(other.artistInfo2, artistInfo2) ||
                other.artistInfo2 == artistInfo2) &&
            (identical(other.similarSongs, similarSongs) ||
                other.similarSongs == similarSongs) &&
            (identical(other.similarSongs2, similarSongs2) ||
                other.similarSongs2 == similarSongs2) &&
            (identical(other.topSongs, topSongs) ||
                other.topSongs == topSongs) &&
            (identical(other.scanStatus, scanStatus) ||
                other.scanStatus == scanStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        status,
        version,
        musicFolders,
        indexes,
        directory,
        genres,
        artists,
        artist,
        album,
        song,
        videos,
        videoInfo,
        nowPlaying,
        searchResult,
        searchResult2,
        searchResult3,
        playlists,
        playlist,
        jukeboxStatus,
        jukeboxPlaylist,
        license,
        users,
        user,
        chatMessages,
        albumList,
        albumList2,
        randomSongs,
        songsByGenre,
        lyrics,
        podcasts,
        newestPodcasts,
        internetRadioStations,
        bookmarks,
        playQueue,
        shares,
        starred,
        starred2,
        albumInfo,
        artistInfo,
        artistInfo2,
        similarSongs,
        similarSongs2,
        topSongs,
        scanStatus,
        error
      ]);

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      __$$ResponseImplCopyWithImpl<_$ResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseImplToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {@JsonKey(name: 'status') required final ResponseStatus status,
      @JsonKey(name: 'version') required final String version,
      @JsonKey(name: 'musicFolders') final MusicFolders? musicFolders,
      @JsonKey(name: 'indexes') final Indexes? indexes,
      @JsonKey(name: 'directory') final Directory? directory,
      @JsonKey(name: 'genres') final Genres? genres,
      @JsonKey(name: 'artists') final ArtistsId3? artists,
      @JsonKey(name: 'artist') final ArtistWithAlbumsId3? artist,
      @JsonKey(name: 'album') final AlbumWithSongsId3? album,
      @JsonKey(name: 'song') final Child? song,
      @JsonKey(name: 'videos') final Videos? videos,
      @JsonKey(name: 'videoInfo') final VideoInfo? videoInfo,
      @JsonKey(name: 'nowPlaying') final NowPlaying? nowPlaying,
      @JsonKey(name: 'searchResult') final SearchResult? searchResult,
      @JsonKey(name: 'searchResult2') final SearchResult2? searchResult2,
      @JsonKey(name: 'searchResult3') final SearchResult3? searchResult3,
      @JsonKey(name: 'playlists') final Playlists? playlists,
      @JsonKey(name: 'playlist') final PlaylistWithSongs? playlist,
      @JsonKey(name: 'jukeboxStatus') final JukeboxStatus? jukeboxStatus,
      @JsonKey(name: 'jukeboxPlaylist') final JukeboxPlaylist? jukeboxPlaylist,
      @JsonKey(name: 'license') final License? license,
      @JsonKey(name: 'users') final Users? users,
      @JsonKey(name: 'user') final User? user,
      @JsonKey(name: 'chatMessages') final ChatMessages? chatMessages,
      @JsonKey(name: 'albumList') final AlbumList? albumList,
      @JsonKey(name: 'albumList2') final AlbumList2? albumList2,
      @JsonKey(name: 'randomSongs') final Songs? randomSongs,
      @JsonKey(name: 'songsByGenre') final Songs? songsByGenre,
      @JsonKey(name: 'lyrics') final Lyrics? lyrics,
      @JsonKey(name: 'podcasts') final Podcasts? podcasts,
      @JsonKey(name: 'newestPodcasts') final NewestPodcasts? newestPodcasts,
      @JsonKey(name: 'internetRadioStations')
      final InternetRadioStations? internetRadioStations,
      @JsonKey(name: 'bookmarks') final Bookmarks? bookmarks,
      @JsonKey(name: 'playQueue') final PlayQueue? playQueue,
      @JsonKey(name: 'shares') final Shares? shares,
      @JsonKey(name: 'starred') final Starred? starred,
      @JsonKey(name: 'starred2') final Starred2? starred2,
      @JsonKey(name: 'albumInfo') final AlbumInfo? albumInfo,
      @JsonKey(name: 'artistInfo') final ArtistInfo? artistInfo,
      @JsonKey(name: 'artistInfo2') final ArtistInfo2? artistInfo2,
      @JsonKey(name: 'similarSongs') final SimilarSongs? similarSongs,
      @JsonKey(name: 'similarSongs2') final SimilarSongs2? similarSongs2,
      @JsonKey(name: 'topSongs') final TopSongs? topSongs,
      @JsonKey(name: 'scanStatus') final ScanStatus? scanStatus,
      @JsonKey(name: 'error') final Error? error}) = _$ResponseImpl;

  factory _Response.fromJson(Map<String, dynamic> json) =
      _$ResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  ResponseStatus get status;
  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'musicFolders')
  MusicFolders? get musicFolders;
  @override
  @JsonKey(name: 'indexes')
  Indexes? get indexes;
  @override
  @JsonKey(name: 'directory')
  Directory? get directory;
  @override
  @JsonKey(name: 'genres')
  Genres? get genres;
  @override
  @JsonKey(name: 'artists')
  ArtistsId3? get artists;
  @override
  @JsonKey(name: 'artist')
  ArtistWithAlbumsId3? get artist;
  @override
  @JsonKey(name: 'album')
  AlbumWithSongsId3? get album;
  @override
  @JsonKey(name: 'song')
  Child? get song;
  @override
  @JsonKey(name: 'videos')
  Videos? get videos;
  @override
  @JsonKey(name: 'videoInfo')
  VideoInfo? get videoInfo;
  @override
  @JsonKey(name: 'nowPlaying')
  NowPlaying? get nowPlaying;
  @override
  @JsonKey(name: 'searchResult')
  SearchResult? get searchResult;
  @override
  @JsonKey(name: 'searchResult2')
  SearchResult2? get searchResult2;
  @override
  @JsonKey(name: 'searchResult3')
  SearchResult3? get searchResult3;
  @override
  @JsonKey(name: 'playlists')
  Playlists? get playlists;
  @override
  @JsonKey(name: 'playlist')
  PlaylistWithSongs? get playlist;
  @override
  @JsonKey(name: 'jukeboxStatus')
  JukeboxStatus? get jukeboxStatus;
  @override
  @JsonKey(name: 'jukeboxPlaylist')
  JukeboxPlaylist? get jukeboxPlaylist;
  @override
  @JsonKey(name: 'license')
  License? get license;
  @override
  @JsonKey(name: 'users')
  Users? get users;
  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'chatMessages')
  ChatMessages? get chatMessages;
  @override
  @JsonKey(name: 'albumList')
  AlbumList? get albumList;
  @override
  @JsonKey(name: 'albumList2')
  AlbumList2? get albumList2;
  @override
  @JsonKey(name: 'randomSongs')
  Songs? get randomSongs;
  @override
  @JsonKey(name: 'songsByGenre')
  Songs? get songsByGenre;
  @override
  @JsonKey(name: 'lyrics')
  Lyrics? get lyrics;
  @override
  @JsonKey(name: 'podcasts')
  Podcasts? get podcasts;
  @override
  @JsonKey(name: 'newestPodcasts')
  NewestPodcasts? get newestPodcasts;
  @override
  @JsonKey(name: 'internetRadioStations')
  InternetRadioStations? get internetRadioStations;
  @override
  @JsonKey(name: 'bookmarks')
  Bookmarks? get bookmarks;
  @override
  @JsonKey(name: 'playQueue')
  PlayQueue? get playQueue;
  @override
  @JsonKey(name: 'shares')
  Shares? get shares;
  @override
  @JsonKey(name: 'starred')
  Starred? get starred;
  @override
  @JsonKey(name: 'starred2')
  Starred2? get starred2;
  @override
  @JsonKey(name: 'albumInfo')
  AlbumInfo? get albumInfo;
  @override
  @JsonKey(name: 'artistInfo')
  ArtistInfo? get artistInfo;
  @override
  @JsonKey(name: 'artistInfo2')
  ArtistInfo2? get artistInfo2;
  @override
  @JsonKey(name: 'similarSongs')
  SimilarSongs? get similarSongs;
  @override
  @JsonKey(name: 'similarSongs2')
  SimilarSongs2? get similarSongs2;
  @override
  @JsonKey(name: 'topSongs')
  TopSongs? get topSongs;
  @override
  @JsonKey(name: 'scanStatus')
  ScanStatus? get scanStatus;
  @override
  @JsonKey(name: 'error')
  Error? get error;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MusicFolders _$MusicFoldersFromJson(Map<String, dynamic> json) {
  return _MusicFolders.fromJson(json);
}

/// @nodoc
mixin _$MusicFolders {
  @JsonKey(name: 'musicFolder')
  List<MusicFolder>? get musicFolder => throw _privateConstructorUsedError;

  /// Serializes this MusicFolders to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MusicFolders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MusicFoldersCopyWith<MusicFolders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicFoldersCopyWith<$Res> {
  factory $MusicFoldersCopyWith(
          MusicFolders value, $Res Function(MusicFolders) then) =
      _$MusicFoldersCopyWithImpl<$Res, MusicFolders>;
  @useResult
  $Res call({@JsonKey(name: 'musicFolder') List<MusicFolder>? musicFolder});
}

/// @nodoc
class _$MusicFoldersCopyWithImpl<$Res, $Val extends MusicFolders>
    implements $MusicFoldersCopyWith<$Res> {
  _$MusicFoldersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MusicFolders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicFolder = freezed,
  }) {
    return _then(_value.copyWith(
      musicFolder: freezed == musicFolder
          ? _value.musicFolder
          : musicFolder // ignore: cast_nullable_to_non_nullable
              as List<MusicFolder>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicFoldersImplCopyWith<$Res>
    implements $MusicFoldersCopyWith<$Res> {
  factory _$$MusicFoldersImplCopyWith(
          _$MusicFoldersImpl value, $Res Function(_$MusicFoldersImpl) then) =
      __$$MusicFoldersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'musicFolder') List<MusicFolder>? musicFolder});
}

/// @nodoc
class __$$MusicFoldersImplCopyWithImpl<$Res>
    extends _$MusicFoldersCopyWithImpl<$Res, _$MusicFoldersImpl>
    implements _$$MusicFoldersImplCopyWith<$Res> {
  __$$MusicFoldersImplCopyWithImpl(
      _$MusicFoldersImpl _value, $Res Function(_$MusicFoldersImpl) _then)
      : super(_value, _then);

  /// Create a copy of MusicFolders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicFolder = freezed,
  }) {
    return _then(_$MusicFoldersImpl(
      musicFolder: freezed == musicFolder
          ? _value._musicFolder
          : musicFolder // ignore: cast_nullable_to_non_nullable
              as List<MusicFolder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicFoldersImpl implements _MusicFolders {
  const _$MusicFoldersImpl(
      {@JsonKey(name: 'musicFolder') final List<MusicFolder>? musicFolder})
      : _musicFolder = musicFolder;

  factory _$MusicFoldersImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicFoldersImplFromJson(json);

  final List<MusicFolder>? _musicFolder;
  @override
  @JsonKey(name: 'musicFolder')
  List<MusicFolder>? get musicFolder {
    final value = _musicFolder;
    if (value == null) return null;
    if (_musicFolder is EqualUnmodifiableListView) return _musicFolder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MusicFolders(musicFolder: $musicFolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicFoldersImpl &&
            const DeepCollectionEquality()
                .equals(other._musicFolder, _musicFolder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_musicFolder));

  /// Create a copy of MusicFolders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicFoldersImplCopyWith<_$MusicFoldersImpl> get copyWith =>
      __$$MusicFoldersImplCopyWithImpl<_$MusicFoldersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicFoldersImplToJson(
      this,
    );
  }
}

abstract class _MusicFolders implements MusicFolders {
  const factory _MusicFolders(
      {@JsonKey(name: 'musicFolder')
      final List<MusicFolder>? musicFolder}) = _$MusicFoldersImpl;

  factory _MusicFolders.fromJson(Map<String, dynamic> json) =
      _$MusicFoldersImpl.fromJson;

  @override
  @JsonKey(name: 'musicFolder')
  List<MusicFolder>? get musicFolder;

  /// Create a copy of MusicFolders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MusicFoldersImplCopyWith<_$MusicFoldersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MusicFolder _$MusicFolderFromJson(Map<String, dynamic> json) {
  return _MusicFolder.fromJson(json);
}

/// @nodoc
mixin _$MusicFolder {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this MusicFolder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MusicFolder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MusicFolderCopyWith<MusicFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicFolderCopyWith<$Res> {
  factory $MusicFolderCopyWith(
          MusicFolder value, $Res Function(MusicFolder) then) =
      _$MusicFolderCopyWithImpl<$Res, MusicFolder>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MusicFolderCopyWithImpl<$Res, $Val extends MusicFolder>
    implements $MusicFolderCopyWith<$Res> {
  _$MusicFolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MusicFolder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicFolderImplCopyWith<$Res>
    implements $MusicFolderCopyWith<$Res> {
  factory _$$MusicFolderImplCopyWith(
          _$MusicFolderImpl value, $Res Function(_$MusicFolderImpl) then) =
      __$$MusicFolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MusicFolderImplCopyWithImpl<$Res>
    extends _$MusicFolderCopyWithImpl<$Res, _$MusicFolderImpl>
    implements _$$MusicFolderImplCopyWith<$Res> {
  __$$MusicFolderImplCopyWithImpl(
      _$MusicFolderImpl _value, $Res Function(_$MusicFolderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MusicFolder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$MusicFolderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicFolderImpl implements _MusicFolder {
  const _$MusicFolderImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name});

  factory _$MusicFolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicFolderImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'MusicFolder(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicFolderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MusicFolder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicFolderImplCopyWith<_$MusicFolderImpl> get copyWith =>
      __$$MusicFolderImplCopyWithImpl<_$MusicFolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicFolderImplToJson(
      this,
    );
  }
}

abstract class _MusicFolder implements MusicFolder {
  const factory _MusicFolder(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') final String? name}) = _$MusicFolderImpl;

  factory _MusicFolder.fromJson(Map<String, dynamic> json) =
      _$MusicFolderImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of MusicFolder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MusicFolderImplCopyWith<_$MusicFolderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Indexes _$IndexesFromJson(Map<String, dynamic> json) {
  return _Indexes.fromJson(json);
}

/// @nodoc
mixin _$Indexes {
  @JsonKey(name: 'lastModified')
  int get lastModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'ignoredArticles')
  String get ignoredArticles => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortcut')
  List<Artist>? get shortcut => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  List<Index>? get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'child')
  List<Child>? get child => throw _privateConstructorUsedError;

  /// Serializes this Indexes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Indexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexesCopyWith<Indexes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexesCopyWith<$Res> {
  factory $IndexesCopyWith(Indexes value, $Res Function(Indexes) then) =
      _$IndexesCopyWithImpl<$Res, Indexes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lastModified') int lastModified,
      @JsonKey(name: 'ignoredArticles') String ignoredArticles,
      @JsonKey(name: 'shortcut') List<Artist>? shortcut,
      @JsonKey(name: 'index') List<Index>? index,
      @JsonKey(name: 'child') List<Child>? child});
}

/// @nodoc
class _$IndexesCopyWithImpl<$Res, $Val extends Indexes>
    implements $IndexesCopyWith<$Res> {
  _$IndexesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Indexes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastModified = null,
    Object? ignoredArticles = null,
    Object? shortcut = freezed,
    Object? index = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      ignoredArticles: null == ignoredArticles
          ? _value.ignoredArticles
          : ignoredArticles // ignore: cast_nullable_to_non_nullable
              as String,
      shortcut: freezed == shortcut
          ? _value.shortcut
          : shortcut // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as List<Index>?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexesImplCopyWith<$Res> implements $IndexesCopyWith<$Res> {
  factory _$$IndexesImplCopyWith(
          _$IndexesImpl value, $Res Function(_$IndexesImpl) then) =
      __$$IndexesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lastModified') int lastModified,
      @JsonKey(name: 'ignoredArticles') String ignoredArticles,
      @JsonKey(name: 'shortcut') List<Artist>? shortcut,
      @JsonKey(name: 'index') List<Index>? index,
      @JsonKey(name: 'child') List<Child>? child});
}

/// @nodoc
class __$$IndexesImplCopyWithImpl<$Res>
    extends _$IndexesCopyWithImpl<$Res, _$IndexesImpl>
    implements _$$IndexesImplCopyWith<$Res> {
  __$$IndexesImplCopyWithImpl(
      _$IndexesImpl _value, $Res Function(_$IndexesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Indexes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastModified = null,
    Object? ignoredArticles = null,
    Object? shortcut = freezed,
    Object? index = freezed,
    Object? child = freezed,
  }) {
    return _then(_$IndexesImpl(
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      ignoredArticles: null == ignoredArticles
          ? _value.ignoredArticles
          : ignoredArticles // ignore: cast_nullable_to_non_nullable
              as String,
      shortcut: freezed == shortcut
          ? _value._shortcut
          : shortcut // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      index: freezed == index
          ? _value._index
          : index // ignore: cast_nullable_to_non_nullable
              as List<Index>?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexesImpl implements _Indexes {
  const _$IndexesImpl(
      {@JsonKey(name: 'lastModified') required this.lastModified,
      @JsonKey(name: 'ignoredArticles') required this.ignoredArticles,
      @JsonKey(name: 'shortcut') final List<Artist>? shortcut,
      @JsonKey(name: 'index') final List<Index>? index,
      @JsonKey(name: 'child') final List<Child>? child})
      : _shortcut = shortcut,
        _index = index,
        _child = child;

  factory _$IndexesImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexesImplFromJson(json);

  @override
  @JsonKey(name: 'lastModified')
  final int lastModified;
  @override
  @JsonKey(name: 'ignoredArticles')
  final String ignoredArticles;
  final List<Artist>? _shortcut;
  @override
  @JsonKey(name: 'shortcut')
  List<Artist>? get shortcut {
    final value = _shortcut;
    if (value == null) return null;
    if (_shortcut is EqualUnmodifiableListView) return _shortcut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Index>? _index;
  @override
  @JsonKey(name: 'index')
  List<Index>? get index {
    final value = _index;
    if (value == null) return null;
    if (_index is EqualUnmodifiableListView) return _index;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _child;
  @override
  @JsonKey(name: 'child')
  List<Child>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableListView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Indexes(lastModified: $lastModified, ignoredArticles: $ignoredArticles, shortcut: $shortcut, index: $index, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexesImpl &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.ignoredArticles, ignoredArticles) ||
                other.ignoredArticles == ignoredArticles) &&
            const DeepCollectionEquality().equals(other._shortcut, _shortcut) &&
            const DeepCollectionEquality().equals(other._index, _index) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastModified,
      ignoredArticles,
      const DeepCollectionEquality().hash(_shortcut),
      const DeepCollectionEquality().hash(_index),
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of Indexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexesImplCopyWith<_$IndexesImpl> get copyWith =>
      __$$IndexesImplCopyWithImpl<_$IndexesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexesImplToJson(
      this,
    );
  }
}

abstract class _Indexes implements Indexes {
  const factory _Indexes(
      {@JsonKey(name: 'lastModified') required final int lastModified,
      @JsonKey(name: 'ignoredArticles') required final String ignoredArticles,
      @JsonKey(name: 'shortcut') final List<Artist>? shortcut,
      @JsonKey(name: 'index') final List<Index>? index,
      @JsonKey(name: 'child') final List<Child>? child}) = _$IndexesImpl;

  factory _Indexes.fromJson(Map<String, dynamic> json) = _$IndexesImpl.fromJson;

  @override
  @JsonKey(name: 'lastModified')
  int get lastModified;
  @override
  @JsonKey(name: 'ignoredArticles')
  String get ignoredArticles;
  @override
  @JsonKey(name: 'shortcut')
  List<Artist>? get shortcut;
  @override
  @JsonKey(name: 'index')
  List<Index>? get index;
  @override
  @JsonKey(name: 'child')
  List<Child>? get child;

  /// Create a copy of Indexes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexesImplCopyWith<_$IndexesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Index _$IndexFromJson(Map<String, dynamic> json) {
  return _Index.fromJson(json);
}

/// @nodoc
mixin _$Index {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  List<Artist>? get artist => throw _privateConstructorUsedError;

  /// Serializes this Index to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexCopyWith<Index> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexCopyWith<$Res> {
  factory $IndexCopyWith(Index value, $Res Function(Index) then) =
      _$IndexCopyWithImpl<$Res, Index>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') List<Artist>? artist});
}

/// @nodoc
class _$IndexCopyWithImpl<$Res, $Val extends Index>
    implements $IndexCopyWith<$Res> {
  _$IndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexImplCopyWith<$Res> implements $IndexCopyWith<$Res> {
  factory _$$IndexImplCopyWith(
          _$IndexImpl value, $Res Function(_$IndexImpl) then) =
      __$$IndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') List<Artist>? artist});
}

/// @nodoc
class __$$IndexImplCopyWithImpl<$Res>
    extends _$IndexCopyWithImpl<$Res, _$IndexImpl>
    implements _$$IndexImplCopyWith<$Res> {
  __$$IndexImplCopyWithImpl(
      _$IndexImpl _value, $Res Function(_$IndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? artist = freezed,
  }) {
    return _then(_$IndexImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexImpl implements _Index {
  const _$IndexImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'artist') final List<Artist>? artist})
      : _artist = artist;

  factory _$IndexImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  final List<Artist>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Index(name: $name, artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artist, _artist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_artist));

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      __$$IndexImplCopyWithImpl<_$IndexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexImplToJson(
      this,
    );
  }
}

abstract class _Index implements Index {
  const factory _Index(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'artist') final List<Artist>? artist}) = _$IndexImpl;

  factory _Index.fromJson(Map<String, dynamic> json) = _$IndexImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistImageUrl')
  String? get artistImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  DateTime? get starred => throw _privateConstructorUsedError;
  @JsonKey(name: 'userRating')
  int? get userRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double? get averageRating => throw _privateConstructorUsedError;

  /// Serializes this Artist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artistImageUrl') String? artistImageUrl,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artistImageUrl = freezed,
    Object? starred = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artistImageUrl: freezed == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artistImageUrl') String? artistImageUrl,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating});
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artistImageUrl = freezed,
    Object? starred = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
  }) {
    return _then(_$ArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artistImageUrl: freezed == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'artistImageUrl') this.artistImageUrl,
      @JsonKey(name: 'starred') this.starred,
      @JsonKey(name: 'userRating') this.userRating,
      @JsonKey(name: 'averageRating') this.averageRating});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'artistImageUrl')
  final String? artistImageUrl;
  @override
  @JsonKey(name: 'starred')
  final DateTime? starred;
  @override
  @JsonKey(name: 'userRating')
  final int? userRating;
  @override
  @JsonKey(name: 'averageRating')
  final double? averageRating;

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, artistImageUrl: $artistImageUrl, starred: $starred, userRating: $userRating, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artistImageUrl, artistImageUrl) ||
                other.artistImageUrl == artistImageUrl) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, artistImageUrl,
      starred, userRating, averageRating);

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'artistImageUrl') final String? artistImageUrl,
          @JsonKey(name: 'starred') final DateTime? starred,
          @JsonKey(name: 'userRating') final int? userRating,
          @JsonKey(name: 'averageRating') final double? averageRating}) =
      _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'artistImageUrl')
  String? get artistImageUrl;
  @override
  @JsonKey(name: 'starred')
  DateTime? get starred;
  @override
  @JsonKey(name: 'userRating')
  int? get userRating;
  @override
  @JsonKey(name: 'averageRating')
  double? get averageRating;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
mixin _$Genres {
  @JsonKey(name: 'genre')
  List<Genre>? get genre => throw _privateConstructorUsedError;

  /// Serializes this Genres to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res, Genres>;
  @useResult
  $Res call({@JsonKey(name: 'genre') List<Genre>? genre});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res, $Val extends Genres>
    implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_value.copyWith(
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresImplCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$$GenresImplCopyWith(
          _$GenresImpl value, $Res Function(_$GenresImpl) then) =
      __$$GenresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'genre') List<Genre>? genre});
}

/// @nodoc
class __$$GenresImplCopyWithImpl<$Res>
    extends _$GenresCopyWithImpl<$Res, _$GenresImpl>
    implements _$$GenresImplCopyWith<$Res> {
  __$$GenresImplCopyWithImpl(
      _$GenresImpl _value, $Res Function(_$GenresImpl) _then)
      : super(_value, _then);

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_$GenresImpl(
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenresImpl implements _Genres {
  const _$GenresImpl({@JsonKey(name: 'genre') final List<Genre>? genre})
      : _genre = genre;

  factory _$GenresImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenresImplFromJson(json);

  final List<Genre>? _genre;
  @override
  @JsonKey(name: 'genre')
  List<Genre>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Genres(genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresImpl &&
            const DeepCollectionEquality().equals(other._genre, _genre));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genre));

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresImplCopyWith<_$GenresImpl> get copyWith =>
      __$$GenresImplCopyWithImpl<_$GenresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenresImplToJson(
      this,
    );
  }
}

abstract class _Genres implements Genres {
  const factory _Genres({@JsonKey(name: 'genre') final List<Genre>? genre}) =
      _$GenresImpl;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$GenresImpl.fromJson;

  @override
  @JsonKey(name: 'genre')
  List<Genre>? get genre;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenresImplCopyWith<_$GenresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  @JsonKey(name: 'songCount')
  int get songCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumCount')
  int get albumCount => throw _privateConstructorUsedError;

  /// Serializes this Genre to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call(
      {@JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'albumCount') int albumCount});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songCount = null,
    Object? albumCount = null,
  }) {
    return _then(_value.copyWith(
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'albumCount') int albumCount});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songCount = null,
    Object? albumCount = null,
  }) {
    return _then(_$GenreImpl(
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreImpl implements _Genre {
  const _$GenreImpl(
      {@JsonKey(name: 'songCount') required this.songCount,
      @JsonKey(name: 'albumCount') required this.albumCount});

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  @JsonKey(name: 'songCount')
  final int songCount;
  @override
  @JsonKey(name: 'albumCount')
  final int albumCount;

  @override
  String toString() {
    return 'Genre(songCount: $songCount, albumCount: $albumCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreImpl &&
            (identical(other.songCount, songCount) ||
                other.songCount == songCount) &&
            (identical(other.albumCount, albumCount) ||
                other.albumCount == albumCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, songCount, albumCount);

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre(
          {@JsonKey(name: 'songCount') required final int songCount,
          @JsonKey(name: 'albumCount') required final int albumCount}) =
      _$GenreImpl;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  @JsonKey(name: 'songCount')
  int get songCount;
  @override
  @JsonKey(name: 'albumCount')
  int get albumCount;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistsId3 _$ArtistsId3FromJson(Map<String, dynamic> json) {
  return _ArtistsId3.fromJson(json);
}

/// @nodoc
mixin _$ArtistsId3 {
  @JsonKey(name: 'ignoredArticles')
  String get ignoredArticles => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  List<IndexId3>? get index => throw _privateConstructorUsedError;

  /// Serializes this ArtistsId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistsId3CopyWith<ArtistsId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsId3CopyWith<$Res> {
  factory $ArtistsId3CopyWith(
          ArtistsId3 value, $Res Function(ArtistsId3) then) =
      _$ArtistsId3CopyWithImpl<$Res, ArtistsId3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ignoredArticles') String ignoredArticles,
      @JsonKey(name: 'index') List<IndexId3>? index});
}

/// @nodoc
class _$ArtistsId3CopyWithImpl<$Res, $Val extends ArtistsId3>
    implements $ArtistsId3CopyWith<$Res> {
  _$ArtistsId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoredArticles = null,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      ignoredArticles: null == ignoredArticles
          ? _value.ignoredArticles
          : ignoredArticles // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as List<IndexId3>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistsId3ImplCopyWith<$Res>
    implements $ArtistsId3CopyWith<$Res> {
  factory _$$ArtistsId3ImplCopyWith(
          _$ArtistsId3Impl value, $Res Function(_$ArtistsId3Impl) then) =
      __$$ArtistsId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ignoredArticles') String ignoredArticles,
      @JsonKey(name: 'index') List<IndexId3>? index});
}

/// @nodoc
class __$$ArtistsId3ImplCopyWithImpl<$Res>
    extends _$ArtistsId3CopyWithImpl<$Res, _$ArtistsId3Impl>
    implements _$$ArtistsId3ImplCopyWith<$Res> {
  __$$ArtistsId3ImplCopyWithImpl(
      _$ArtistsId3Impl _value, $Res Function(_$ArtistsId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoredArticles = null,
    Object? index = freezed,
  }) {
    return _then(_$ArtistsId3Impl(
      ignoredArticles: null == ignoredArticles
          ? _value.ignoredArticles
          : ignoredArticles // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value._index
          : index // ignore: cast_nullable_to_non_nullable
              as List<IndexId3>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistsId3Impl implements _ArtistsId3 {
  const _$ArtistsId3Impl(
      {@JsonKey(name: 'ignoredArticles') required this.ignoredArticles,
      @JsonKey(name: 'index') final List<IndexId3>? index})
      : _index = index;

  factory _$ArtistsId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsId3ImplFromJson(json);

  @override
  @JsonKey(name: 'ignoredArticles')
  final String ignoredArticles;
  final List<IndexId3>? _index;
  @override
  @JsonKey(name: 'index')
  List<IndexId3>? get index {
    final value = _index;
    if (value == null) return null;
    if (_index is EqualUnmodifiableListView) return _index;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistsId3(ignoredArticles: $ignoredArticles, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsId3Impl &&
            (identical(other.ignoredArticles, ignoredArticles) ||
                other.ignoredArticles == ignoredArticles) &&
            const DeepCollectionEquality().equals(other._index, _index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ignoredArticles,
      const DeepCollectionEquality().hash(_index));

  /// Create a copy of ArtistsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsId3ImplCopyWith<_$ArtistsId3Impl> get copyWith =>
      __$$ArtistsId3ImplCopyWithImpl<_$ArtistsId3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistsId3ImplToJson(
      this,
    );
  }
}

abstract class _ArtistsId3 implements ArtistsId3 {
  const factory _ArtistsId3(
      {@JsonKey(name: 'ignoredArticles') required final String ignoredArticles,
      @JsonKey(name: 'index') final List<IndexId3>? index}) = _$ArtistsId3Impl;

  factory _ArtistsId3.fromJson(Map<String, dynamic> json) =
      _$ArtistsId3Impl.fromJson;

  @override
  @JsonKey(name: 'ignoredArticles')
  String get ignoredArticles;
  @override
  @JsonKey(name: 'index')
  List<IndexId3>? get index;

  /// Create a copy of ArtistsId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistsId3ImplCopyWith<_$ArtistsId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexId3 _$IndexId3FromJson(Map<String, dynamic> json) {
  return _IndexId3.fromJson(json);
}

/// @nodoc
mixin _$IndexId3 {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist => throw _privateConstructorUsedError;

  /// Serializes this IndexId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndexId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexId3CopyWith<IndexId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexId3CopyWith<$Res> {
  factory $IndexId3CopyWith(IndexId3 value, $Res Function(IndexId3) then) =
      _$IndexId3CopyWithImpl<$Res, IndexId3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') List<ArtistId3>? artist});
}

/// @nodoc
class _$IndexId3CopyWithImpl<$Res, $Val extends IndexId3>
    implements $IndexId3CopyWith<$Res> {
  _$IndexId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndexId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexId3ImplCopyWith<$Res>
    implements $IndexId3CopyWith<$Res> {
  factory _$$IndexId3ImplCopyWith(
          _$IndexId3Impl value, $Res Function(_$IndexId3Impl) then) =
      __$$IndexId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') List<ArtistId3>? artist});
}

/// @nodoc
class __$$IndexId3ImplCopyWithImpl<$Res>
    extends _$IndexId3CopyWithImpl<$Res, _$IndexId3Impl>
    implements _$$IndexId3ImplCopyWith<$Res> {
  __$$IndexId3ImplCopyWithImpl(
      _$IndexId3Impl _value, $Res Function(_$IndexId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of IndexId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? artist = freezed,
  }) {
    return _then(_$IndexId3Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexId3Impl implements _IndexId3 {
  const _$IndexId3Impl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'artist') final List<ArtistId3>? artist})
      : _artist = artist;

  factory _$IndexId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$IndexId3ImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  final List<ArtistId3>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IndexId3(name: $name, artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexId3Impl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artist, _artist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_artist));

  /// Create a copy of IndexId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexId3ImplCopyWith<_$IndexId3Impl> get copyWith =>
      __$$IndexId3ImplCopyWithImpl<_$IndexId3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexId3ImplToJson(
      this,
    );
  }
}

abstract class _IndexId3 implements IndexId3 {
  const factory _IndexId3(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'artist') final List<ArtistId3>? artist}) = _$IndexId3Impl;

  factory _IndexId3.fromJson(Map<String, dynamic> json) =
      _$IndexId3Impl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist;

  /// Create a copy of IndexId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexId3ImplCopyWith<_$IndexId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistId3 _$ArtistId3FromJson(Map<String, dynamic> json) {
  return _ArtistId3.fromJson(json);
}

/// @nodoc
mixin _$ArtistId3 {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArt')
  String? get coverArt => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistImageUrl')
  String? get artistImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumCount')
  int get albumCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  DateTime? get starred => throw _privateConstructorUsedError;

  /// Serializes this ArtistId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistId3CopyWith<ArtistId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistId3CopyWith<$Res> {
  factory $ArtistId3CopyWith(ArtistId3 value, $Res Function(ArtistId3) then) =
      _$ArtistId3CopyWithImpl<$Res, ArtistId3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'artistImageUrl') String? artistImageUrl,
      @JsonKey(name: 'albumCount') int albumCount,
      @JsonKey(name: 'starred') DateTime? starred});
}

/// @nodoc
class _$ArtistId3CopyWithImpl<$Res, $Val extends ArtistId3>
    implements $ArtistId3CopyWith<$Res> {
  _$ArtistId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverArt = freezed,
    Object? artistImageUrl = freezed,
    Object? albumCount = null,
    Object? starred = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      artistImageUrl: freezed == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistId3ImplCopyWith<$Res>
    implements $ArtistId3CopyWith<$Res> {
  factory _$$ArtistId3ImplCopyWith(
          _$ArtistId3Impl value, $Res Function(_$ArtistId3Impl) then) =
      __$$ArtistId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'artistImageUrl') String? artistImageUrl,
      @JsonKey(name: 'albumCount') int albumCount,
      @JsonKey(name: 'starred') DateTime? starred});
}

/// @nodoc
class __$$ArtistId3ImplCopyWithImpl<$Res>
    extends _$ArtistId3CopyWithImpl<$Res, _$ArtistId3Impl>
    implements _$$ArtistId3ImplCopyWith<$Res> {
  __$$ArtistId3ImplCopyWithImpl(
      _$ArtistId3Impl _value, $Res Function(_$ArtistId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coverArt = freezed,
    Object? artistImageUrl = freezed,
    Object? albumCount = null,
    Object? starred = freezed,
  }) {
    return _then(_$ArtistId3Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      artistImageUrl: freezed == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      albumCount: null == albumCount
          ? _value.albumCount
          : albumCount // ignore: cast_nullable_to_non_nullable
              as int,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistId3Impl implements _ArtistId3 {
  const _$ArtistId3Impl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'coverArt') this.coverArt,
      @JsonKey(name: 'artistImageUrl') this.artistImageUrl,
      @JsonKey(name: 'albumCount') required this.albumCount,
      @JsonKey(name: 'starred') this.starred});

  factory _$ArtistId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistId3ImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'coverArt')
  final String? coverArt;
  @override
  @JsonKey(name: 'artistImageUrl')
  final String? artistImageUrl;
  @override
  @JsonKey(name: 'albumCount')
  final int albumCount;
  @override
  @JsonKey(name: 'starred')
  final DateTime? starred;

  @override
  String toString() {
    return 'ArtistId3(id: $id, name: $name, coverArt: $coverArt, artistImageUrl: $artistImageUrl, albumCount: $albumCount, starred: $starred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistId3Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            (identical(other.artistImageUrl, artistImageUrl) ||
                other.artistImageUrl == artistImageUrl) &&
            (identical(other.albumCount, albumCount) ||
                other.albumCount == albumCount) &&
            (identical(other.starred, starred) || other.starred == starred));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, coverArt, artistImageUrl, albumCount, starred);

  /// Create a copy of ArtistId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistId3ImplCopyWith<_$ArtistId3Impl> get copyWith =>
      __$$ArtistId3ImplCopyWithImpl<_$ArtistId3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistId3ImplToJson(
      this,
    );
  }
}

abstract class _ArtistId3 implements ArtistId3 {
  const factory _ArtistId3(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'coverArt') final String? coverArt,
      @JsonKey(name: 'artistImageUrl') final String? artistImageUrl,
      @JsonKey(name: 'albumCount') required final int albumCount,
      @JsonKey(name: 'starred') final DateTime? starred}) = _$ArtistId3Impl;

  factory _ArtistId3.fromJson(Map<String, dynamic> json) =
      _$ArtistId3Impl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'coverArt')
  String? get coverArt;
  @override
  @JsonKey(name: 'artistImageUrl')
  String? get artistImageUrl;
  @override
  @JsonKey(name: 'albumCount')
  int get albumCount;
  @override
  @JsonKey(name: 'starred')
  DateTime? get starred;

  /// Create a copy of ArtistId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistId3ImplCopyWith<_$ArtistId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistWithAlbumsId3 _$ArtistWithAlbumsId3FromJson(Map<String, dynamic> json) {
  return _ArtistWithAlbumsId3.fromJson(json);
}

/// @nodoc
mixin _$ArtistWithAlbumsId3 {
  @JsonKey(name: 'album')
  List<AlbumId3>? get album => throw _privateConstructorUsedError;

  /// Serializes this ArtistWithAlbumsId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistWithAlbumsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistWithAlbumsId3CopyWith<ArtistWithAlbumsId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistWithAlbumsId3CopyWith<$Res> {
  factory $ArtistWithAlbumsId3CopyWith(
          ArtistWithAlbumsId3 value, $Res Function(ArtistWithAlbumsId3) then) =
      _$ArtistWithAlbumsId3CopyWithImpl<$Res, ArtistWithAlbumsId3>;
  @useResult
  $Res call({@JsonKey(name: 'album') List<AlbumId3>? album});
}

/// @nodoc
class _$ArtistWithAlbumsId3CopyWithImpl<$Res, $Val extends ArtistWithAlbumsId3>
    implements $ArtistWithAlbumsId3CopyWith<$Res> {
  _$ArtistWithAlbumsId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistWithAlbumsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistWithAlbumsId3ImplCopyWith<$Res>
    implements $ArtistWithAlbumsId3CopyWith<$Res> {
  factory _$$ArtistWithAlbumsId3ImplCopyWith(_$ArtistWithAlbumsId3Impl value,
          $Res Function(_$ArtistWithAlbumsId3Impl) then) =
      __$$ArtistWithAlbumsId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'album') List<AlbumId3>? album});
}

/// @nodoc
class __$$ArtistWithAlbumsId3ImplCopyWithImpl<$Res>
    extends _$ArtistWithAlbumsId3CopyWithImpl<$Res, _$ArtistWithAlbumsId3Impl>
    implements _$$ArtistWithAlbumsId3ImplCopyWith<$Res> {
  __$$ArtistWithAlbumsId3ImplCopyWithImpl(_$ArtistWithAlbumsId3Impl _value,
      $Res Function(_$ArtistWithAlbumsId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistWithAlbumsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_$ArtistWithAlbumsId3Impl(
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistWithAlbumsId3Impl implements _ArtistWithAlbumsId3 {
  const _$ArtistWithAlbumsId3Impl(
      {@JsonKey(name: 'album') final List<AlbumId3>? album})
      : _album = album;

  factory _$ArtistWithAlbumsId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistWithAlbumsId3ImplFromJson(json);

  final List<AlbumId3>? _album;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistWithAlbumsId3(album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistWithAlbumsId3Impl &&
            const DeepCollectionEquality().equals(other._album, _album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_album));

  /// Create a copy of ArtistWithAlbumsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistWithAlbumsId3ImplCopyWith<_$ArtistWithAlbumsId3Impl> get copyWith =>
      __$$ArtistWithAlbumsId3ImplCopyWithImpl<_$ArtistWithAlbumsId3Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistWithAlbumsId3ImplToJson(
      this,
    );
  }
}

abstract class _ArtistWithAlbumsId3 implements ArtistWithAlbumsId3 {
  const factory _ArtistWithAlbumsId3(
          {@JsonKey(name: 'album') final List<AlbumId3>? album}) =
      _$ArtistWithAlbumsId3Impl;

  factory _ArtistWithAlbumsId3.fromJson(Map<String, dynamic> json) =
      _$ArtistWithAlbumsId3Impl.fromJson;

  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album;

  /// Create a copy of ArtistWithAlbumsId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistWithAlbumsId3ImplCopyWith<_$ArtistWithAlbumsId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumId3 _$AlbumId3FromJson(Map<String, dynamic> json) {
  return _AlbumId3.fromJson(json);
}

/// @nodoc
mixin _$AlbumId3 {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  String? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistId')
  String? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArt')
  String? get coverArt => throw _privateConstructorUsedError;
  @JsonKey(name: 'songCount')
  int get songCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'playCount')
  int? get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  DateTime? get starred => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  String? get genre => throw _privateConstructorUsedError;

  /// Serializes this AlbumId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumId3CopyWith<AlbumId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumId3CopyWith<$Res> {
  factory $AlbumId3CopyWith(AlbumId3 value, $Res Function(AlbumId3) then) =
      _$AlbumId3CopyWithImpl<$Res, AlbumId3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'artistId') String? artistId,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'genre') String? genre});
}

/// @nodoc
class _$AlbumId3CopyWithImpl<$Res, $Val extends AlbumId3>
    implements $AlbumId3CopyWith<$Res> {
  _$AlbumId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artist = freezed,
    Object? artistId = freezed,
    Object? coverArt = freezed,
    Object? songCount = null,
    Object? duration = null,
    Object? playCount = freezed,
    Object? created = null,
    Object? starred = freezed,
    Object? year = freezed,
    Object? genre = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumId3ImplCopyWith<$Res>
    implements $AlbumId3CopyWith<$Res> {
  factory _$$AlbumId3ImplCopyWith(
          _$AlbumId3Impl value, $Res Function(_$AlbumId3Impl) then) =
      __$$AlbumId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'artistId') String? artistId,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'genre') String? genre});
}

/// @nodoc
class __$$AlbumId3ImplCopyWithImpl<$Res>
    extends _$AlbumId3CopyWithImpl<$Res, _$AlbumId3Impl>
    implements _$$AlbumId3ImplCopyWith<$Res> {
  __$$AlbumId3ImplCopyWithImpl(
      _$AlbumId3Impl _value, $Res Function(_$AlbumId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artist = freezed,
    Object? artistId = freezed,
    Object? coverArt = freezed,
    Object? songCount = null,
    Object? duration = null,
    Object? playCount = freezed,
    Object? created = null,
    Object? starred = freezed,
    Object? year = freezed,
    Object? genre = freezed,
  }) {
    return _then(_$AlbumId3Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumId3Impl implements _AlbumId3 {
  const _$AlbumId3Impl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'artist') this.artist,
      @JsonKey(name: 'artistId') this.artistId,
      @JsonKey(name: 'coverArt') this.coverArt,
      @JsonKey(name: 'songCount') required this.songCount,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'playCount') this.playCount,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'starred') this.starred,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'genre') this.genre});

  factory _$AlbumId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumId3ImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'artist')
  final String? artist;
  @override
  @JsonKey(name: 'artistId')
  final String? artistId;
  @override
  @JsonKey(name: 'coverArt')
  final String? coverArt;
  @override
  @JsonKey(name: 'songCount')
  final int songCount;
  @override
  @JsonKey(name: 'duration')
  final int duration;
  @override
  @JsonKey(name: 'playCount')
  final int? playCount;
  @override
  @JsonKey(name: 'created')
  final DateTime created;
  @override
  @JsonKey(name: 'starred')
  final DateTime? starred;
  @override
  @JsonKey(name: 'year')
  final int? year;
  @override
  @JsonKey(name: 'genre')
  final String? genre;

  @override
  String toString() {
    return 'AlbumId3(id: $id, name: $name, artist: $artist, artistId: $artistId, coverArt: $coverArt, songCount: $songCount, duration: $duration, playCount: $playCount, created: $created, starred: $starred, year: $year, genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumId3Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            (identical(other.songCount, songCount) ||
                other.songCount == songCount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, artist, artistId,
      coverArt, songCount, duration, playCount, created, starred, year, genre);

  /// Create a copy of AlbumId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumId3ImplCopyWith<_$AlbumId3Impl> get copyWith =>
      __$$AlbumId3ImplCopyWithImpl<_$AlbumId3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumId3ImplToJson(
      this,
    );
  }
}

abstract class _AlbumId3 implements AlbumId3 {
  const factory _AlbumId3(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'artist') final String? artist,
      @JsonKey(name: 'artistId') final String? artistId,
      @JsonKey(name: 'coverArt') final String? coverArt,
      @JsonKey(name: 'songCount') required final int songCount,
      @JsonKey(name: 'duration') required final int duration,
      @JsonKey(name: 'playCount') final int? playCount,
      @JsonKey(name: 'created') required final DateTime created,
      @JsonKey(name: 'starred') final DateTime? starred,
      @JsonKey(name: 'year') final int? year,
      @JsonKey(name: 'genre') final String? genre}) = _$AlbumId3Impl;

  factory _AlbumId3.fromJson(Map<String, dynamic> json) =
      _$AlbumId3Impl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'artist')
  String? get artist;
  @override
  @JsonKey(name: 'artistId')
  String? get artistId;
  @override
  @JsonKey(name: 'coverArt')
  String? get coverArt;
  @override
  @JsonKey(name: 'songCount')
  int get songCount;
  @override
  @JsonKey(name: 'duration')
  int get duration;
  @override
  @JsonKey(name: 'playCount')
  int? get playCount;
  @override
  @JsonKey(name: 'created')
  DateTime get created;
  @override
  @JsonKey(name: 'starred')
  DateTime? get starred;
  @override
  @JsonKey(name: 'year')
  int? get year;
  @override
  @JsonKey(name: 'genre')
  String? get genre;

  /// Create a copy of AlbumId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumId3ImplCopyWith<_$AlbumId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumWithSongsId3 _$AlbumWithSongsId3FromJson(Map<String, dynamic> json) {
  return _AlbumWithSongsId3.fromJson(json);
}

/// @nodoc
mixin _$AlbumWithSongsId3 {
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this AlbumWithSongsId3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumWithSongsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumWithSongsId3CopyWith<AlbumWithSongsId3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumWithSongsId3CopyWith<$Res> {
  factory $AlbumWithSongsId3CopyWith(
          AlbumWithSongsId3 value, $Res Function(AlbumWithSongsId3) then) =
      _$AlbumWithSongsId3CopyWithImpl<$Res, AlbumWithSongsId3>;
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$AlbumWithSongsId3CopyWithImpl<$Res, $Val extends AlbumWithSongsId3>
    implements $AlbumWithSongsId3CopyWith<$Res> {
  _$AlbumWithSongsId3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumWithSongsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumWithSongsId3ImplCopyWith<$Res>
    implements $AlbumWithSongsId3CopyWith<$Res> {
  factory _$$AlbumWithSongsId3ImplCopyWith(_$AlbumWithSongsId3Impl value,
          $Res Function(_$AlbumWithSongsId3Impl) then) =
      __$$AlbumWithSongsId3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$AlbumWithSongsId3ImplCopyWithImpl<$Res>
    extends _$AlbumWithSongsId3CopyWithImpl<$Res, _$AlbumWithSongsId3Impl>
    implements _$$AlbumWithSongsId3ImplCopyWith<$Res> {
  __$$AlbumWithSongsId3ImplCopyWithImpl(_$AlbumWithSongsId3Impl _value,
      $Res Function(_$AlbumWithSongsId3Impl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumWithSongsId3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$AlbumWithSongsId3Impl(
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumWithSongsId3Impl implements _AlbumWithSongsId3 {
  const _$AlbumWithSongsId3Impl(
      {@JsonKey(name: 'song') final List<Child>? song})
      : _song = song;

  factory _$AlbumWithSongsId3Impl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumWithSongsId3ImplFromJson(json);

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlbumWithSongsId3(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumWithSongsId3Impl &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_song));

  /// Create a copy of AlbumWithSongsId3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumWithSongsId3ImplCopyWith<_$AlbumWithSongsId3Impl> get copyWith =>
      __$$AlbumWithSongsId3ImplCopyWithImpl<_$AlbumWithSongsId3Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumWithSongsId3ImplToJson(
      this,
    );
  }
}

abstract class _AlbumWithSongsId3 implements AlbumWithSongsId3 {
  const factory _AlbumWithSongsId3(
          {@JsonKey(name: 'song') final List<Child>? song}) =
      _$AlbumWithSongsId3Impl;

  factory _AlbumWithSongsId3.fromJson(Map<String, dynamic> json) =
      _$AlbumWithSongsId3Impl.fromJson;

  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of AlbumWithSongsId3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumWithSongsId3ImplCopyWith<_$AlbumWithSongsId3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  @JsonKey(name: 'video')
  List<Child>? get video => throw _privateConstructorUsedError;

  /// Serializes this Videos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Videos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call({@JsonKey(name: 'video') List<Child>? video});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Videos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideosImplCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$VideosImplCopyWith(
          _$VideosImpl value, $Res Function(_$VideosImpl) then) =
      __$$VideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'video') List<Child>? video});
}

/// @nodoc
class __$$VideosImplCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$VideosImpl>
    implements _$$VideosImplCopyWith<$Res> {
  __$$VideosImplCopyWithImpl(
      _$VideosImpl _value, $Res Function(_$VideosImpl) _then)
      : super(_value, _then);

  /// Create a copy of Videos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_$VideosImpl(
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosImpl implements _Videos {
  const _$VideosImpl({@JsonKey(name: 'video') final List<Child>? video})
      : _video = video;

  factory _$VideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosImplFromJson(json);

  final List<Child>? _video;
  @override
  @JsonKey(name: 'video')
  List<Child>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Videos(video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosImpl &&
            const DeepCollectionEquality().equals(other._video, _video));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_video));

  /// Create a copy of Videos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      __$$VideosImplCopyWithImpl<_$VideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosImplToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos({@JsonKey(name: 'video') final List<Child>? video}) =
      _$VideosImpl;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$VideosImpl.fromJson;

  @override
  @JsonKey(name: 'video')
  List<Child>? get video;

  /// Create a copy of Videos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideosImplCopyWith<_$VideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoInfo _$VideoInfoFromJson(Map<String, dynamic> json) {
  return _VideoInfo.fromJson(json);
}

/// @nodoc
mixin _$VideoInfo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'captions')
  List<Captions>? get captions => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioTrack')
  List<AudioTrack>? get audioTrack => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversion')
  List<VideoConversion>? get conversion => throw _privateConstructorUsedError;

  /// Serializes this VideoInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoInfoCopyWith<VideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoCopyWith<$Res> {
  factory $VideoInfoCopyWith(VideoInfo value, $Res Function(VideoInfo) then) =
      _$VideoInfoCopyWithImpl<$Res, VideoInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'captions') List<Captions>? captions,
      @JsonKey(name: 'audioTrack') List<AudioTrack>? audioTrack,
      @JsonKey(name: 'conversion') List<VideoConversion>? conversion});
}

/// @nodoc
class _$VideoInfoCopyWithImpl<$Res, $Val extends VideoInfo>
    implements $VideoInfoCopyWith<$Res> {
  _$VideoInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? captions = freezed,
    Object? audioTrack = freezed,
    Object? conversion = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<Captions>?,
      audioTrack: freezed == audioTrack
          ? _value.audioTrack
          : audioTrack // ignore: cast_nullable_to_non_nullable
              as List<AudioTrack>?,
      conversion: freezed == conversion
          ? _value.conversion
          : conversion // ignore: cast_nullable_to_non_nullable
              as List<VideoConversion>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoInfoImplCopyWith<$Res>
    implements $VideoInfoCopyWith<$Res> {
  factory _$$VideoInfoImplCopyWith(
          _$VideoInfoImpl value, $Res Function(_$VideoInfoImpl) then) =
      __$$VideoInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'captions') List<Captions>? captions,
      @JsonKey(name: 'audioTrack') List<AudioTrack>? audioTrack,
      @JsonKey(name: 'conversion') List<VideoConversion>? conversion});
}

/// @nodoc
class __$$VideoInfoImplCopyWithImpl<$Res>
    extends _$VideoInfoCopyWithImpl<$Res, _$VideoInfoImpl>
    implements _$$VideoInfoImplCopyWith<$Res> {
  __$$VideoInfoImplCopyWithImpl(
      _$VideoInfoImpl _value, $Res Function(_$VideoInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? captions = freezed,
    Object? audioTrack = freezed,
    Object? conversion = freezed,
  }) {
    return _then(_$VideoInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      captions: freezed == captions
          ? _value._captions
          : captions // ignore: cast_nullable_to_non_nullable
              as List<Captions>?,
      audioTrack: freezed == audioTrack
          ? _value._audioTrack
          : audioTrack // ignore: cast_nullable_to_non_nullable
              as List<AudioTrack>?,
      conversion: freezed == conversion
          ? _value._conversion
          : conversion // ignore: cast_nullable_to_non_nullable
              as List<VideoConversion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoInfoImpl implements _VideoInfo {
  const _$VideoInfoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'captions') final List<Captions>? captions,
      @JsonKey(name: 'audioTrack') final List<AudioTrack>? audioTrack,
      @JsonKey(name: 'conversion') final List<VideoConversion>? conversion})
      : _captions = captions,
        _audioTrack = audioTrack,
        _conversion = conversion;

  factory _$VideoInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoInfoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  final List<Captions>? _captions;
  @override
  @JsonKey(name: 'captions')
  List<Captions>? get captions {
    final value = _captions;
    if (value == null) return null;
    if (_captions is EqualUnmodifiableListView) return _captions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AudioTrack>? _audioTrack;
  @override
  @JsonKey(name: 'audioTrack')
  List<AudioTrack>? get audioTrack {
    final value = _audioTrack;
    if (value == null) return null;
    if (_audioTrack is EqualUnmodifiableListView) return _audioTrack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideoConversion>? _conversion;
  @override
  @JsonKey(name: 'conversion')
  List<VideoConversion>? get conversion {
    final value = _conversion;
    if (value == null) return null;
    if (_conversion is EqualUnmodifiableListView) return _conversion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoInfo(id: $id, captions: $captions, audioTrack: $audioTrack, conversion: $conversion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._captions, _captions) &&
            const DeepCollectionEquality()
                .equals(other._audioTrack, _audioTrack) &&
            const DeepCollectionEquality()
                .equals(other._conversion, _conversion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_captions),
      const DeepCollectionEquality().hash(_audioTrack),
      const DeepCollectionEquality().hash(_conversion));

  /// Create a copy of VideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoInfoImplCopyWith<_$VideoInfoImpl> get copyWith =>
      __$$VideoInfoImplCopyWithImpl<_$VideoInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoInfoImplToJson(
      this,
    );
  }
}

abstract class _VideoInfo implements VideoInfo {
  const factory _VideoInfo(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'captions') final List<Captions>? captions,
      @JsonKey(name: 'audioTrack') final List<AudioTrack>? audioTrack,
      @JsonKey(name: 'conversion')
      final List<VideoConversion>? conversion}) = _$VideoInfoImpl;

  factory _VideoInfo.fromJson(Map<String, dynamic> json) =
      _$VideoInfoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'captions')
  List<Captions>? get captions;
  @override
  @JsonKey(name: 'audioTrack')
  List<AudioTrack>? get audioTrack;
  @override
  @JsonKey(name: 'conversion')
  List<VideoConversion>? get conversion;

  /// Create a copy of VideoInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoInfoImplCopyWith<_$VideoInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Captions _$CaptionsFromJson(Map<String, dynamic> json) {
  return _Captions.fromJson(json);
}

/// @nodoc
mixin _$Captions {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Captions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Captions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaptionsCopyWith<Captions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptionsCopyWith<$Res> {
  factory $CaptionsCopyWith(Captions value, $Res Function(Captions) then) =
      _$CaptionsCopyWithImpl<$Res, Captions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CaptionsCopyWithImpl<$Res, $Val extends Captions>
    implements $CaptionsCopyWith<$Res> {
  _$CaptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Captions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaptionsImplCopyWith<$Res>
    implements $CaptionsCopyWith<$Res> {
  factory _$$CaptionsImplCopyWith(
          _$CaptionsImpl value, $Res Function(_$CaptionsImpl) then) =
      __$$CaptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CaptionsImplCopyWithImpl<$Res>
    extends _$CaptionsCopyWithImpl<$Res, _$CaptionsImpl>
    implements _$$CaptionsImplCopyWith<$Res> {
  __$$CaptionsImplCopyWithImpl(
      _$CaptionsImpl _value, $Res Function(_$CaptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Captions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$CaptionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaptionsImpl implements _Captions {
  const _$CaptionsImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name});

  factory _$CaptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaptionsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Captions(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Captions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptionsImplCopyWith<_$CaptionsImpl> get copyWith =>
      __$$CaptionsImplCopyWithImpl<_$CaptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaptionsImplToJson(
      this,
    );
  }
}

abstract class _Captions implements Captions {
  const factory _Captions(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') final String? name}) = _$CaptionsImpl;

  factory _Captions.fromJson(Map<String, dynamic> json) =
      _$CaptionsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of Captions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptionsImplCopyWith<_$CaptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioTrack _$AudioTrackFromJson(Map<String, dynamic> json) {
  return _AudioTrack.fromJson(json);
}

/// @nodoc
mixin _$AudioTrack {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'languageCode')
  String? get languageCode => throw _privateConstructorUsedError;

  /// Serializes this AudioTrack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioTrackCopyWith<AudioTrack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioTrackCopyWith<$Res> {
  factory $AudioTrackCopyWith(
          AudioTrack value, $Res Function(AudioTrack) then) =
      _$AudioTrackCopyWithImpl<$Res, AudioTrack>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'languageCode') String? languageCode});
}

/// @nodoc
class _$AudioTrackCopyWithImpl<$Res, $Val extends AudioTrack>
    implements $AudioTrackCopyWith<$Res> {
  _$AudioTrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioTrackImplCopyWith<$Res>
    implements $AudioTrackCopyWith<$Res> {
  factory _$$AudioTrackImplCopyWith(
          _$AudioTrackImpl value, $Res Function(_$AudioTrackImpl) then) =
      __$$AudioTrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'languageCode') String? languageCode});
}

/// @nodoc
class __$$AudioTrackImplCopyWithImpl<$Res>
    extends _$AudioTrackCopyWithImpl<$Res, _$AudioTrackImpl>
    implements _$$AudioTrackImplCopyWith<$Res> {
  __$$AudioTrackImplCopyWithImpl(
      _$AudioTrackImpl _value, $Res Function(_$AudioTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_$AudioTrackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioTrackImpl implements _AudioTrack {
  const _$AudioTrackImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'languageCode') this.languageCode});

  factory _$AudioTrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioTrackImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'languageCode')
  final String? languageCode;

  @override
  String toString() {
    return 'AudioTrack(id: $id, name: $name, languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioTrackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, languageCode);

  /// Create a copy of AudioTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioTrackImplCopyWith<_$AudioTrackImpl> get copyWith =>
      __$$AudioTrackImplCopyWithImpl<_$AudioTrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioTrackImplToJson(
      this,
    );
  }
}

abstract class _AudioTrack implements AudioTrack {
  const factory _AudioTrack(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'languageCode') final String? languageCode}) =
      _$AudioTrackImpl;

  factory _AudioTrack.fromJson(Map<String, dynamic> json) =
      _$AudioTrackImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'languageCode')
  String? get languageCode;

  /// Create a copy of AudioTrack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioTrackImplCopyWith<_$AudioTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoConversion _$VideoConversionFromJson(Map<String, dynamic> json) {
  return _VideoConversion.fromJson(json);
}

/// @nodoc
mixin _$VideoConversion {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bitRate')
  int? get bitRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioTrackId')
  int? get audioTrackId => throw _privateConstructorUsedError;

  /// Serializes this VideoConversion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoConversion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoConversionCopyWith<VideoConversion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoConversionCopyWith<$Res> {
  factory $VideoConversionCopyWith(
          VideoConversion value, $Res Function(VideoConversion) then) =
      _$VideoConversionCopyWithImpl<$Res, VideoConversion>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'bitRate') int? bitRate,
      @JsonKey(name: 'audioTrackId') int? audioTrackId});
}

/// @nodoc
class _$VideoConversionCopyWithImpl<$Res, $Val extends VideoConversion>
    implements $VideoConversionCopyWith<$Res> {
  _$VideoConversionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoConversion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bitRate = freezed,
    Object? audioTrackId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioTrackId: freezed == audioTrackId
          ? _value.audioTrackId
          : audioTrackId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoConversionImplCopyWith<$Res>
    implements $VideoConversionCopyWith<$Res> {
  factory _$$VideoConversionImplCopyWith(_$VideoConversionImpl value,
          $Res Function(_$VideoConversionImpl) then) =
      __$$VideoConversionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'bitRate') int? bitRate,
      @JsonKey(name: 'audioTrackId') int? audioTrackId});
}

/// @nodoc
class __$$VideoConversionImplCopyWithImpl<$Res>
    extends _$VideoConversionCopyWithImpl<$Res, _$VideoConversionImpl>
    implements _$$VideoConversionImplCopyWith<$Res> {
  __$$VideoConversionImplCopyWithImpl(
      _$VideoConversionImpl _value, $Res Function(_$VideoConversionImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoConversion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bitRate = freezed,
    Object? audioTrackId = freezed,
  }) {
    return _then(_$VideoConversionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      audioTrackId: freezed == audioTrackId
          ? _value.audioTrackId
          : audioTrackId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoConversionImpl implements _VideoConversion {
  const _$VideoConversionImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'bitRate') this.bitRate,
      @JsonKey(name: 'audioTrackId') this.audioTrackId});

  factory _$VideoConversionImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoConversionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'bitRate')
  final int? bitRate;
  @override
  @JsonKey(name: 'audioTrackId')
  final int? audioTrackId;

  @override
  String toString() {
    return 'VideoConversion(id: $id, bitRate: $bitRate, audioTrackId: $audioTrackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoConversionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.audioTrackId, audioTrackId) ||
                other.audioTrackId == audioTrackId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, bitRate, audioTrackId);

  /// Create a copy of VideoConversion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoConversionImplCopyWith<_$VideoConversionImpl> get copyWith =>
      __$$VideoConversionImplCopyWithImpl<_$VideoConversionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoConversionImplToJson(
      this,
    );
  }
}

abstract class _VideoConversion implements VideoConversion {
  const factory _VideoConversion(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'bitRate') final int? bitRate,
          @JsonKey(name: 'audioTrackId') final int? audioTrackId}) =
      _$VideoConversionImpl;

  factory _VideoConversion.fromJson(Map<String, dynamic> json) =
      _$VideoConversionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'bitRate')
  int? get bitRate;
  @override
  @JsonKey(name: 'audioTrackId')
  int? get audioTrackId;

  /// Create a copy of VideoConversion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoConversionImplCopyWith<_$VideoConversionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Directory _$DirectoryFromJson(Map<String, dynamic> json) {
  return _Directory.fromJson(json);
}

/// @nodoc
mixin _$Directory {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  String? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  DateTime? get starred => throw _privateConstructorUsedError;
  @JsonKey(name: 'userRating')
  int? get userRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'playCount')
  int? get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'child')
  List<Child>? get child => throw _privateConstructorUsedError;

  /// Serializes this Directory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Directory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectoryCopyWith<Directory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectoryCopyWith<$Res> {
  factory $DirectoryCopyWith(Directory value, $Res Function(Directory) then) =
      _$DirectoryCopyWithImpl<$Res, Directory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'child') List<Child>? child});
}

/// @nodoc
class _$DirectoryCopyWithImpl<$Res, $Val extends Directory>
    implements $DirectoryCopyWith<$Res> {
  _$DirectoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Directory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parent = freezed,
    Object? name = null,
    Object? starred = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
    Object? playCount = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectoryImplCopyWith<$Res>
    implements $DirectoryCopyWith<$Res> {
  factory _$$DirectoryImplCopyWith(
          _$DirectoryImpl value, $Res Function(_$DirectoryImpl) then) =
      __$$DirectoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'child') List<Child>? child});
}

/// @nodoc
class __$$DirectoryImplCopyWithImpl<$Res>
    extends _$DirectoryCopyWithImpl<$Res, _$DirectoryImpl>
    implements _$$DirectoryImplCopyWith<$Res> {
  __$$DirectoryImplCopyWithImpl(
      _$DirectoryImpl _value, $Res Function(_$DirectoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Directory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parent = freezed,
    Object? name = null,
    Object? starred = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
    Object? playCount = freezed,
    Object? child = freezed,
  }) {
    return _then(_$DirectoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectoryImpl implements _Directory {
  const _$DirectoryImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'parent') this.parent,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'starred') this.starred,
      @JsonKey(name: 'userRating') this.userRating,
      @JsonKey(name: 'averageRating') this.averageRating,
      @JsonKey(name: 'playCount') this.playCount,
      @JsonKey(name: 'child') final List<Child>? child})
      : _child = child;

  factory _$DirectoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'parent')
  final String? parent;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'starred')
  final DateTime? starred;
  @override
  @JsonKey(name: 'userRating')
  final int? userRating;
  @override
  @JsonKey(name: 'averageRating')
  final double? averageRating;
  @override
  @JsonKey(name: 'playCount')
  final int? playCount;
  final List<Child>? _child;
  @override
  @JsonKey(name: 'child')
  List<Child>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableListView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Directory(id: $id, parent: $parent, name: $name, starred: $starred, userRating: $userRating, averageRating: $averageRating, playCount: $playCount, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      name,
      starred,
      userRating,
      averageRating,
      playCount,
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of Directory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectoryImplCopyWith<_$DirectoryImpl> get copyWith =>
      __$$DirectoryImplCopyWithImpl<_$DirectoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectoryImplToJson(
      this,
    );
  }
}

abstract class _Directory implements Directory {
  const factory _Directory(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'parent') final String? parent,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'starred') final DateTime? starred,
      @JsonKey(name: 'userRating') final int? userRating,
      @JsonKey(name: 'averageRating') final double? averageRating,
      @JsonKey(name: 'playCount') final int? playCount,
      @JsonKey(name: 'child') final List<Child>? child}) = _$DirectoryImpl;

  factory _Directory.fromJson(Map<String, dynamic> json) =
      _$DirectoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'parent')
  String? get parent;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'starred')
  DateTime? get starred;
  @override
  @JsonKey(name: 'userRating')
  int? get userRating;
  @override
  @JsonKey(name: 'averageRating')
  double? get averageRating;
  @override
  @JsonKey(name: 'playCount')
  int? get playCount;
  @override
  @JsonKey(name: 'child')
  List<Child>? get child;

  /// Create a copy of Directory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectoryImplCopyWith<_$DirectoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Child _$ChildFromJson(Map<String, dynamic> json) {
  return _Child.fromJson(json);
}

/// @nodoc
mixin _$Child {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  String? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDir')
  bool get isDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  String? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist')
  String? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'track')
  int? get track => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  String? get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArt')
  String? get coverArt => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentType')
  String? get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'suffix')
  String? get suffix => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcodedContentType')
  String? get transcodedContentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcodedSuffix')
  String? get transcodedSuffix => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'bitRate')
  int? get bitRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVideo')
  bool? get isVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'userRating')
  int? get userRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'playCount')
  int? get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discNumber')
  int? get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred')
  DateTime? get starred => throw _privateConstructorUsedError;
  @JsonKey(name: 'albumId')
  String? get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistId')
  String? get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  MediaType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookmarkPosition')
  int? get bookmarkPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalWidth')
  int? get originalWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalHeight')
  int? get originalHeight => throw _privateConstructorUsedError;

  /// Serializes this Child to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res, Child>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'isDir') bool isDir,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'album') String? album,
      @JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'track') int? track,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'genre') String? genre,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType,
      @JsonKey(name: 'suffix') String? suffix,
      @JsonKey(name: 'transcodedContentType') String? transcodedContentType,
      @JsonKey(name: 'transcodedSuffix') String? transcodedSuffix,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'bitRate') int? bitRate,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'discNumber') int? discNumber,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'albumId') String? albumId,
      @JsonKey(name: 'artistId') String? artistId,
      @JsonKey(name: 'type') MediaType? type,
      @JsonKey(name: 'bookmarkPosition') int? bookmarkPosition,
      @JsonKey(name: 'originalWidth') int? originalWidth,
      @JsonKey(name: 'originalHeight') int? originalHeight});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res, $Val extends Child>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parent = freezed,
    Object? isDir = null,
    Object? title = null,
    Object? album = freezed,
    Object? artist = freezed,
    Object? track = freezed,
    Object? year = freezed,
    Object? genre = freezed,
    Object? coverArt = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
    Object? suffix = freezed,
    Object? transcodedContentType = freezed,
    Object? transcodedSuffix = freezed,
    Object? duration = freezed,
    Object? bitRate = freezed,
    Object? path = freezed,
    Object? isVideo = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
    Object? playCount = freezed,
    Object? discNumber = freezed,
    Object? created = freezed,
    Object? starred = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? type = freezed,
    Object? bookmarkPosition = freezed,
    Object? originalWidth = freezed,
    Object? originalHeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      transcodedContentType: freezed == transcodedContentType
          ? _value.transcodedContentType
          : transcodedContentType // ignore: cast_nullable_to_non_nullable
              as String?,
      transcodedSuffix: freezed == transcodedSuffix
          ? _value.transcodedSuffix
          : transcodedSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      bookmarkPosition: freezed == bookmarkPosition
          ? _value.bookmarkPosition
          : bookmarkPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      originalWidth: freezed == originalWidth
          ? _value.originalWidth
          : originalWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      originalHeight: freezed == originalHeight
          ? _value.originalHeight
          : originalHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildImplCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$$ChildImplCopyWith(
          _$ChildImpl value, $Res Function(_$ChildImpl) then) =
      __$$ChildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parent') String? parent,
      @JsonKey(name: 'isDir') bool isDir,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'album') String? album,
      @JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'track') int? track,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: 'genre') String? genre,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'contentType') String? contentType,
      @JsonKey(name: 'suffix') String? suffix,
      @JsonKey(name: 'transcodedContentType') String? transcodedContentType,
      @JsonKey(name: 'transcodedSuffix') String? transcodedSuffix,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'bitRate') int? bitRate,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'isVideo') bool? isVideo,
      @JsonKey(name: 'userRating') int? userRating,
      @JsonKey(name: 'averageRating') double? averageRating,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'discNumber') int? discNumber,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'starred') DateTime? starred,
      @JsonKey(name: 'albumId') String? albumId,
      @JsonKey(name: 'artistId') String? artistId,
      @JsonKey(name: 'type') MediaType? type,
      @JsonKey(name: 'bookmarkPosition') int? bookmarkPosition,
      @JsonKey(name: 'originalWidth') int? originalWidth,
      @JsonKey(name: 'originalHeight') int? originalHeight});
}

/// @nodoc
class __$$ChildImplCopyWithImpl<$Res>
    extends _$ChildCopyWithImpl<$Res, _$ChildImpl>
    implements _$$ChildImplCopyWith<$Res> {
  __$$ChildImplCopyWithImpl(
      _$ChildImpl _value, $Res Function(_$ChildImpl) _then)
      : super(_value, _then);

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parent = freezed,
    Object? isDir = null,
    Object? title = null,
    Object? album = freezed,
    Object? artist = freezed,
    Object? track = freezed,
    Object? year = freezed,
    Object? genre = freezed,
    Object? coverArt = freezed,
    Object? size = freezed,
    Object? contentType = freezed,
    Object? suffix = freezed,
    Object? transcodedContentType = freezed,
    Object? transcodedSuffix = freezed,
    Object? duration = freezed,
    Object? bitRate = freezed,
    Object? path = freezed,
    Object? isVideo = freezed,
    Object? userRating = freezed,
    Object? averageRating = freezed,
    Object? playCount = freezed,
    Object? discNumber = freezed,
    Object? created = freezed,
    Object? starred = freezed,
    Object? albumId = freezed,
    Object? artistId = freezed,
    Object? type = freezed,
    Object? bookmarkPosition = freezed,
    Object? originalWidth = freezed,
    Object? originalHeight = freezed,
  }) {
    return _then(_$ChildImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      isDir: null == isDir
          ? _value.isDir
          : isDir // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      transcodedContentType: freezed == transcodedContentType
          ? _value.transcodedContentType
          : transcodedContentType // ignore: cast_nullable_to_non_nullable
              as String?,
      transcodedSuffix: freezed == transcodedSuffix
          ? _value.transcodedSuffix
          : transcodedSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      isVideo: freezed == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starred: freezed == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      albumId: freezed == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      bookmarkPosition: freezed == bookmarkPosition
          ? _value.bookmarkPosition
          : bookmarkPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      originalWidth: freezed == originalWidth
          ? _value.originalWidth
          : originalWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      originalHeight: freezed == originalHeight
          ? _value.originalHeight
          : originalHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildImpl implements _Child {
  const _$ChildImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'parent') this.parent,
      @JsonKey(name: 'isDir') required this.isDir,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'album') this.album,
      @JsonKey(name: 'artist') this.artist,
      @JsonKey(name: 'track') this.track,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'genre') this.genre,
      @JsonKey(name: 'coverArt') this.coverArt,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'contentType') this.contentType,
      @JsonKey(name: 'suffix') this.suffix,
      @JsonKey(name: 'transcodedContentType') this.transcodedContentType,
      @JsonKey(name: 'transcodedSuffix') this.transcodedSuffix,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'bitRate') this.bitRate,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'isVideo') this.isVideo,
      @JsonKey(name: 'userRating') this.userRating,
      @JsonKey(name: 'averageRating') this.averageRating,
      @JsonKey(name: 'playCount') this.playCount,
      @JsonKey(name: 'discNumber') this.discNumber,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'starred') this.starred,
      @JsonKey(name: 'albumId') this.albumId,
      @JsonKey(name: 'artistId') this.artistId,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'bookmarkPosition') this.bookmarkPosition,
      @JsonKey(name: 'originalWidth') this.originalWidth,
      @JsonKey(name: 'originalHeight') this.originalHeight});

  factory _$ChildImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'parent')
  final String? parent;
  @override
  @JsonKey(name: 'isDir')
  final bool isDir;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'album')
  final String? album;
  @override
  @JsonKey(name: 'artist')
  final String? artist;
  @override
  @JsonKey(name: 'track')
  final int? track;
  @override
  @JsonKey(name: 'year')
  final int? year;
  @override
  @JsonKey(name: 'genre')
  final String? genre;
  @override
  @JsonKey(name: 'coverArt')
  final String? coverArt;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'contentType')
  final String? contentType;
  @override
  @JsonKey(name: 'suffix')
  final String? suffix;
  @override
  @JsonKey(name: 'transcodedContentType')
  final String? transcodedContentType;
  @override
  @JsonKey(name: 'transcodedSuffix')
  final String? transcodedSuffix;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'bitRate')
  final int? bitRate;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'isVideo')
  final bool? isVideo;
  @override
  @JsonKey(name: 'userRating')
  final int? userRating;
  @override
  @JsonKey(name: 'averageRating')
  final double? averageRating;
  @override
  @JsonKey(name: 'playCount')
  final int? playCount;
  @override
  @JsonKey(name: 'discNumber')
  final int? discNumber;
  @override
  @JsonKey(name: 'created')
  final DateTime? created;
  @override
  @JsonKey(name: 'starred')
  final DateTime? starred;
  @override
  @JsonKey(name: 'albumId')
  final String? albumId;
  @override
  @JsonKey(name: 'artistId')
  final String? artistId;
  @override
  @JsonKey(name: 'type')
  final MediaType? type;
  @override
  @JsonKey(name: 'bookmarkPosition')
  final int? bookmarkPosition;
  @override
  @JsonKey(name: 'originalWidth')
  final int? originalWidth;
  @override
  @JsonKey(name: 'originalHeight')
  final int? originalHeight;

  @override
  String toString() {
    return 'Child(id: $id, parent: $parent, isDir: $isDir, title: $title, album: $album, artist: $artist, track: $track, year: $year, genre: $genre, coverArt: $coverArt, size: $size, contentType: $contentType, suffix: $suffix, transcodedContentType: $transcodedContentType, transcodedSuffix: $transcodedSuffix, duration: $duration, bitRate: $bitRate, path: $path, isVideo: $isVideo, userRating: $userRating, averageRating: $averageRating, playCount: $playCount, discNumber: $discNumber, created: $created, starred: $starred, albumId: $albumId, artistId: $artistId, type: $type, bookmarkPosition: $bookmarkPosition, originalWidth: $originalWidth, originalHeight: $originalHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.isDir, isDir) || other.isDir == isDir) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.transcodedContentType, transcodedContentType) ||
                other.transcodedContentType == transcodedContentType) &&
            (identical(other.transcodedSuffix, transcodedSuffix) ||
                other.transcodedSuffix == transcodedSuffix) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.starred, starred) || other.starred == starred) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bookmarkPosition, bookmarkPosition) ||
                other.bookmarkPosition == bookmarkPosition) &&
            (identical(other.originalWidth, originalWidth) ||
                other.originalWidth == originalWidth) &&
            (identical(other.originalHeight, originalHeight) ||
                other.originalHeight == originalHeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        parent,
        isDir,
        title,
        album,
        artist,
        track,
        year,
        genre,
        coverArt,
        size,
        contentType,
        suffix,
        transcodedContentType,
        transcodedSuffix,
        duration,
        bitRate,
        path,
        isVideo,
        userRating,
        averageRating,
        playCount,
        discNumber,
        created,
        starred,
        albumId,
        artistId,
        type,
        bookmarkPosition,
        originalWidth,
        originalHeight
      ]);

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      __$$ChildImplCopyWithImpl<_$ChildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildImplToJson(
      this,
    );
  }
}

abstract class _Child implements Child {
  const factory _Child(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'parent') final String? parent,
          @JsonKey(name: 'isDir') required final bool isDir,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'album') final String? album,
          @JsonKey(name: 'artist') final String? artist,
          @JsonKey(name: 'track') final int? track,
          @JsonKey(name: 'year') final int? year,
          @JsonKey(name: 'genre') final String? genre,
          @JsonKey(name: 'coverArt') final String? coverArt,
          @JsonKey(name: 'size') final int? size,
          @JsonKey(name: 'contentType') final String? contentType,
          @JsonKey(name: 'suffix') final String? suffix,
          @JsonKey(name: 'transcodedContentType')
          final String? transcodedContentType,
          @JsonKey(name: 'transcodedSuffix') final String? transcodedSuffix,
          @JsonKey(name: 'duration') final int? duration,
          @JsonKey(name: 'bitRate') final int? bitRate,
          @JsonKey(name: 'path') final String? path,
          @JsonKey(name: 'isVideo') final bool? isVideo,
          @JsonKey(name: 'userRating') final int? userRating,
          @JsonKey(name: 'averageRating') final double? averageRating,
          @JsonKey(name: 'playCount') final int? playCount,
          @JsonKey(name: 'discNumber') final int? discNumber,
          @JsonKey(name: 'created') final DateTime? created,
          @JsonKey(name: 'starred') final DateTime? starred,
          @JsonKey(name: 'albumId') final String? albumId,
          @JsonKey(name: 'artistId') final String? artistId,
          @JsonKey(name: 'type') final MediaType? type,
          @JsonKey(name: 'bookmarkPosition') final int? bookmarkPosition,
          @JsonKey(name: 'originalWidth') final int? originalWidth,
          @JsonKey(name: 'originalHeight') final int? originalHeight}) =
      _$ChildImpl;

  factory _Child.fromJson(Map<String, dynamic> json) = _$ChildImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'parent')
  String? get parent;
  @override
  @JsonKey(name: 'isDir')
  bool get isDir;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'album')
  String? get album;
  @override
  @JsonKey(name: 'artist')
  String? get artist;
  @override
  @JsonKey(name: 'track')
  int? get track;
  @override
  @JsonKey(name: 'year')
  int? get year;
  @override
  @JsonKey(name: 'genre')
  String? get genre;
  @override
  @JsonKey(name: 'coverArt')
  String? get coverArt;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'contentType')
  String? get contentType;
  @override
  @JsonKey(name: 'suffix')
  String? get suffix;
  @override
  @JsonKey(name: 'transcodedContentType')
  String? get transcodedContentType;
  @override
  @JsonKey(name: 'transcodedSuffix')
  String? get transcodedSuffix;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'bitRate')
  int? get bitRate;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'isVideo')
  bool? get isVideo;
  @override
  @JsonKey(name: 'userRating')
  int? get userRating;
  @override
  @JsonKey(name: 'averageRating')
  double? get averageRating;
  @override
  @JsonKey(name: 'playCount')
  int? get playCount;
  @override
  @JsonKey(name: 'discNumber')
  int? get discNumber;
  @override
  @JsonKey(name: 'created')
  DateTime? get created;
  @override
  @JsonKey(name: 'starred')
  DateTime? get starred;
  @override
  @JsonKey(name: 'albumId')
  String? get albumId;
  @override
  @JsonKey(name: 'artistId')
  String? get artistId;
  @override
  @JsonKey(name: 'type')
  MediaType? get type;
  @override
  @JsonKey(name: 'bookmarkPosition')
  int? get bookmarkPosition;
  @override
  @JsonKey(name: 'originalWidth')
  int? get originalWidth;
  @override
  @JsonKey(name: 'originalHeight')
  int? get originalHeight;

  /// Create a copy of Child
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildImplCopyWith<_$ChildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlaying _$NowPlayingFromJson(Map<String, dynamic> json) {
  return _NowPlaying.fromJson(json);
}

/// @nodoc
mixin _$NowPlaying {
  @JsonKey(name: 'entry')
  List<NowPlayingEntry>? get entry => throw _privateConstructorUsedError;

  /// Serializes this NowPlaying to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
  $Res call({@JsonKey(name: 'entry') List<NowPlayingEntry>? entry});
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingEntry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingImplCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$NowPlayingImplCopyWith(
          _$NowPlayingImpl value, $Res Function(_$NowPlayingImpl) then) =
      __$$NowPlayingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'entry') List<NowPlayingEntry>? entry});
}

/// @nodoc
class __$$NowPlayingImplCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$NowPlayingImpl>
    implements _$$NowPlayingImplCopyWith<$Res> {
  __$$NowPlayingImplCopyWithImpl(
      _$NowPlayingImpl _value, $Res Function(_$NowPlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$NowPlayingImpl(
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingImpl implements _NowPlaying {
  const _$NowPlayingImpl(
      {@JsonKey(name: 'entry') final List<NowPlayingEntry>? entry})
      : _entry = entry;

  factory _$NowPlayingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingImplFromJson(json);

  final List<NowPlayingEntry>? _entry;
  @override
  @JsonKey(name: 'entry')
  List<NowPlayingEntry>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NowPlaying(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingImpl &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entry));

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      __$$NowPlayingImplCopyWithImpl<_$NowPlayingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingImplToJson(
      this,
    );
  }
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
          {@JsonKey(name: 'entry') final List<NowPlayingEntry>? entry}) =
      _$NowPlayingImpl;

  factory _NowPlaying.fromJson(Map<String, dynamic> json) =
      _$NowPlayingImpl.fromJson;

  @override
  @JsonKey(name: 'entry')
  List<NowPlayingEntry>? get entry;

  /// Create a copy of NowPlaying
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlayingEntry _$NowPlayingEntryFromJson(Map<String, dynamic> json) {
  return _NowPlayingEntry.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingEntry {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'minutesAgo')
  int get minutesAgo => throw _privateConstructorUsedError;
  @JsonKey(name: 'playerId')
  int get playerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'playerName')
  String? get playerName => throw _privateConstructorUsedError;

  /// Serializes this NowPlayingEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NowPlayingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingEntryCopyWith<NowPlayingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingEntryCopyWith<$Res> {
  factory $NowPlayingEntryCopyWith(
          NowPlayingEntry value, $Res Function(NowPlayingEntry) then) =
      _$NowPlayingEntryCopyWithImpl<$Res, NowPlayingEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'minutesAgo') int minutesAgo,
      @JsonKey(name: 'playerId') int playerId,
      @JsonKey(name: 'playerName') String? playerName});
}

/// @nodoc
class _$NowPlayingEntryCopyWithImpl<$Res, $Val extends NowPlayingEntry>
    implements $NowPlayingEntryCopyWith<$Res> {
  _$NowPlayingEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? minutesAgo = null,
    Object? playerId = null,
    Object? playerName = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      minutesAgo: null == minutesAgo
          ? _value.minutesAgo
          : minutesAgo // ignore: cast_nullable_to_non_nullable
              as int,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingEntryImplCopyWith<$Res>
    implements $NowPlayingEntryCopyWith<$Res> {
  factory _$$NowPlayingEntryImplCopyWith(_$NowPlayingEntryImpl value,
          $Res Function(_$NowPlayingEntryImpl) then) =
      __$$NowPlayingEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'minutesAgo') int minutesAgo,
      @JsonKey(name: 'playerId') int playerId,
      @JsonKey(name: 'playerName') String? playerName});
}

/// @nodoc
class __$$NowPlayingEntryImplCopyWithImpl<$Res>
    extends _$NowPlayingEntryCopyWithImpl<$Res, _$NowPlayingEntryImpl>
    implements _$$NowPlayingEntryImplCopyWith<$Res> {
  __$$NowPlayingEntryImplCopyWithImpl(
      _$NowPlayingEntryImpl _value, $Res Function(_$NowPlayingEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowPlayingEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? minutesAgo = null,
    Object? playerId = null,
    Object? playerName = freezed,
  }) {
    return _then(_$NowPlayingEntryImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      minutesAgo: null == minutesAgo
          ? _value.minutesAgo
          : minutesAgo // ignore: cast_nullable_to_non_nullable
              as int,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as int,
      playerName: freezed == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingEntryImpl implements _NowPlayingEntry {
  const _$NowPlayingEntryImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'minutesAgo') required this.minutesAgo,
      @JsonKey(name: 'playerId') required this.playerId,
      @JsonKey(name: 'playerName') this.playerName});

  factory _$NowPlayingEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingEntryImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'minutesAgo')
  final int minutesAgo;
  @override
  @JsonKey(name: 'playerId')
  final int playerId;
  @override
  @JsonKey(name: 'playerName')
  final String? playerName;

  @override
  String toString() {
    return 'NowPlayingEntry(username: $username, minutesAgo: $minutesAgo, playerId: $playerId, playerName: $playerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingEntryImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.minutesAgo, minutesAgo) ||
                other.minutesAgo == minutesAgo) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, minutesAgo, playerId, playerName);

  /// Create a copy of NowPlayingEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingEntryImplCopyWith<_$NowPlayingEntryImpl> get copyWith =>
      __$$NowPlayingEntryImplCopyWithImpl<_$NowPlayingEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingEntryImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingEntry implements NowPlayingEntry {
  const factory _NowPlayingEntry(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'minutesAgo') required final int minutesAgo,
          @JsonKey(name: 'playerId') required final int playerId,
          @JsonKey(name: 'playerName') final String? playerName}) =
      _$NowPlayingEntryImpl;

  factory _NowPlayingEntry.fromJson(Map<String, dynamic> json) =
      _$NowPlayingEntryImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'minutesAgo')
  int get minutesAgo;
  @override
  @JsonKey(name: 'playerId')
  int get playerId;
  @override
  @JsonKey(name: 'playerName')
  String? get playerName;

  /// Create a copy of NowPlayingEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingEntryImplCopyWith<_$NowPlayingEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: 'offset')
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalHits')
  int get totalHits => throw _privateConstructorUsedError;
  @JsonKey(name: 'match')
  List<Child>? get match => throw _privateConstructorUsedError;

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'totalHits') int totalHits,
      @JsonKey(name: 'match') List<Child>? match});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? totalHits = null,
    Object? match = freezed,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'totalHits') int totalHits,
      @JsonKey(name: 'match') List<Child>? match});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? totalHits = null,
    Object? match = freezed,
  }) {
    return _then(_$SearchResultImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      match: freezed == match
          ? _value._match
          : match // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl(
      {@JsonKey(name: 'offset') required this.offset,
      @JsonKey(name: 'totalHits') required this.totalHits,
      @JsonKey(name: 'match') final List<Child>? match})
      : _match = match;

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  @override
  @JsonKey(name: 'offset')
  final int offset;
  @override
  @JsonKey(name: 'totalHits')
  final int totalHits;
  final List<Child>? _match;
  @override
  @JsonKey(name: 'match')
  List<Child>? get match {
    final value = _match;
    if (value == null) return null;
    if (_match is EqualUnmodifiableListView) return _match;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResult(offset: $offset, totalHits: $totalHits, match: $match)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._match, _match));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, totalHits,
      const DeepCollectionEquality().hash(_match));

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {@JsonKey(name: 'offset') required final int offset,
      @JsonKey(name: 'totalHits') required final int totalHits,
      @JsonKey(name: 'match') final List<Child>? match}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(name: 'totalHits')
  int get totalHits;
  @override
  @JsonKey(name: 'match')
  List<Child>? get match;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResult2 _$SearchResult2FromJson(Map<String, dynamic> json) {
  return _SearchResult2.fromJson(json);
}

/// @nodoc
mixin _$SearchResult2 {
  @JsonKey(name: 'artist')
  List<Artist>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  List<Child>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this SearchResult2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResult2CopyWith<SearchResult2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResult2CopyWith<$Res> {
  factory $SearchResult2CopyWith(
          SearchResult2 value, $Res Function(SearchResult2) then) =
      _$SearchResult2CopyWithImpl<$Res, SearchResult2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<Artist>? artist,
      @JsonKey(name: 'album') List<Child>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$SearchResult2CopyWithImpl<$Res, $Val extends SearchResult2>
    implements $SearchResult2CopyWith<$Res> {
  _$SearchResult2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResult2ImplCopyWith<$Res>
    implements $SearchResult2CopyWith<$Res> {
  factory _$$SearchResult2ImplCopyWith(
          _$SearchResult2Impl value, $Res Function(_$SearchResult2Impl) then) =
      __$$SearchResult2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<Artist>? artist,
      @JsonKey(name: 'album') List<Child>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$SearchResult2ImplCopyWithImpl<$Res>
    extends _$SearchResult2CopyWithImpl<$Res, _$SearchResult2Impl>
    implements _$$SearchResult2ImplCopyWith<$Res> {
  __$$SearchResult2ImplCopyWithImpl(
      _$SearchResult2Impl _value, $Res Function(_$SearchResult2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_$SearchResult2Impl(
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResult2Impl implements _SearchResult2 {
  const _$SearchResult2Impl(
      {@JsonKey(name: 'artist') final List<Artist>? artist,
      @JsonKey(name: 'album') final List<Child>? album,
      @JsonKey(name: 'song') final List<Child>? song})
      : _artist = artist,
        _album = album,
        _song = song;

  factory _$SearchResult2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResult2ImplFromJson(json);

  final List<Artist>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _album;
  @override
  @JsonKey(name: 'album')
  List<Child>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResult2(artist: $artist, album: $album, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResult2Impl &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_song));

  /// Create a copy of SearchResult2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResult2ImplCopyWith<_$SearchResult2Impl> get copyWith =>
      __$$SearchResult2ImplCopyWithImpl<_$SearchResult2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResult2ImplToJson(
      this,
    );
  }
}

abstract class _SearchResult2 implements SearchResult2 {
  const factory _SearchResult2(
      {@JsonKey(name: 'artist') final List<Artist>? artist,
      @JsonKey(name: 'album') final List<Child>? album,
      @JsonKey(name: 'song') final List<Child>? song}) = _$SearchResult2Impl;

  factory _SearchResult2.fromJson(Map<String, dynamic> json) =
      _$SearchResult2Impl.fromJson;

  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist;
  @override
  @JsonKey(name: 'album')
  List<Child>? get album;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of SearchResult2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResult2ImplCopyWith<_$SearchResult2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResult3 _$SearchResult3FromJson(Map<String, dynamic> json) {
  return _SearchResult3.fromJson(json);
}

/// @nodoc
mixin _$SearchResult3 {
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  List<AlbumId3>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this SearchResult3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResult3CopyWith<SearchResult3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResult3CopyWith<$Res> {
  factory $SearchResult3CopyWith(
          SearchResult3 value, $Res Function(SearchResult3) then) =
      _$SearchResult3CopyWithImpl<$Res, SearchResult3>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<ArtistId3>? artist,
      @JsonKey(name: 'album') List<AlbumId3>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$SearchResult3CopyWithImpl<$Res, $Val extends SearchResult3>
    implements $SearchResult3CopyWith<$Res> {
  _$SearchResult3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResult3ImplCopyWith<$Res>
    implements $SearchResult3CopyWith<$Res> {
  factory _$$SearchResult3ImplCopyWith(
          _$SearchResult3Impl value, $Res Function(_$SearchResult3Impl) then) =
      __$$SearchResult3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<ArtistId3>? artist,
      @JsonKey(name: 'album') List<AlbumId3>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$SearchResult3ImplCopyWithImpl<$Res>
    extends _$SearchResult3CopyWithImpl<$Res, _$SearchResult3Impl>
    implements _$$SearchResult3ImplCopyWith<$Res> {
  __$$SearchResult3ImplCopyWithImpl(
      _$SearchResult3Impl _value, $Res Function(_$SearchResult3Impl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResult3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_$SearchResult3Impl(
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResult3Impl implements _SearchResult3 {
  const _$SearchResult3Impl(
      {@JsonKey(name: 'artist') final List<ArtistId3>? artist,
      @JsonKey(name: 'album') final List<AlbumId3>? album,
      @JsonKey(name: 'song') final List<Child>? song})
      : _artist = artist,
        _album = album,
        _song = song;

  factory _$SearchResult3Impl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResult3ImplFromJson(json);

  final List<ArtistId3>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AlbumId3>? _album;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResult3(artist: $artist, album: $album, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResult3Impl &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_song));

  /// Create a copy of SearchResult3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResult3ImplCopyWith<_$SearchResult3Impl> get copyWith =>
      __$$SearchResult3ImplCopyWithImpl<_$SearchResult3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResult3ImplToJson(
      this,
    );
  }
}

abstract class _SearchResult3 implements SearchResult3 {
  const factory _SearchResult3(
      {@JsonKey(name: 'artist') final List<ArtistId3>? artist,
      @JsonKey(name: 'album') final List<AlbumId3>? album,
      @JsonKey(name: 'song') final List<Child>? song}) = _$SearchResult3Impl;

  factory _SearchResult3.fromJson(Map<String, dynamic> json) =
      _$SearchResult3Impl.fromJson;

  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of SearchResult3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResult3ImplCopyWith<_$SearchResult3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return _Playlists.fromJson(json);
}

/// @nodoc
mixin _$Playlists {
  @JsonKey(name: 'playlist')
  List<Playlist>? get playlist => throw _privateConstructorUsedError;

  /// Serializes this Playlists to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistsCopyWith<Playlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) then) =
      _$PlaylistsCopyWithImpl<$Res, Playlists>;
  @useResult
  $Res call({@JsonKey(name: 'playlist') List<Playlist>? playlist});
}

/// @nodoc
class _$PlaylistsCopyWithImpl<$Res, $Val extends Playlists>
    implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = freezed,
  }) {
    return _then(_value.copyWith(
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<Playlist>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistsImplCopyWith<$Res>
    implements $PlaylistsCopyWith<$Res> {
  factory _$$PlaylistsImplCopyWith(
          _$PlaylistsImpl value, $Res Function(_$PlaylistsImpl) then) =
      __$$PlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'playlist') List<Playlist>? playlist});
}

/// @nodoc
class __$$PlaylistsImplCopyWithImpl<$Res>
    extends _$PlaylistsCopyWithImpl<$Res, _$PlaylistsImpl>
    implements _$$PlaylistsImplCopyWith<$Res> {
  __$$PlaylistsImplCopyWithImpl(
      _$PlaylistsImpl _value, $Res Function(_$PlaylistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = freezed,
  }) {
    return _then(_$PlaylistsImpl(
      playlist: freezed == playlist
          ? _value._playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<Playlist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistsImpl implements _Playlists {
  const _$PlaylistsImpl(
      {@JsonKey(name: 'playlist') final List<Playlist>? playlist})
      : _playlist = playlist;

  factory _$PlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistsImplFromJson(json);

  final List<Playlist>? _playlist;
  @override
  @JsonKey(name: 'playlist')
  List<Playlist>? get playlist {
    final value = _playlist;
    if (value == null) return null;
    if (_playlist is EqualUnmodifiableListView) return _playlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Playlists(playlist: $playlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsImpl &&
            const DeepCollectionEquality().equals(other._playlist, _playlist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlist));

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      __$$PlaylistsImplCopyWithImpl<_$PlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistsImplToJson(
      this,
    );
  }
}

abstract class _Playlists implements Playlists {
  const factory _Playlists(
          {@JsonKey(name: 'playlist') final List<Playlist>? playlist}) =
      _$PlaylistsImpl;

  factory _Playlists.fromJson(Map<String, dynamic> json) =
      _$PlaylistsImpl.fromJson;

  @override
  @JsonKey(name: 'playlist')
  List<Playlist>? get playlist;

  /// Create a copy of Playlists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return _Playlist.fromJson(json);
}

/// @nodoc
mixin _$Playlist {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'public')
  bool? get public => throw _privateConstructorUsedError;
  @JsonKey(name: 'songCount')
  int get songCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'changed')
  DateTime get changed => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArt')
  String? get coverArt => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowedUser')
  List<String>? get allowedUser => throw _privateConstructorUsedError;

  /// Serializes this Playlist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res, Playlist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'public') bool? public,
      @JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'allowedUser') List<String>? allowedUser});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res, $Val extends Playlist>
    implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? songCount = null,
    Object? duration = null,
    Object? created = null,
    Object? changed = null,
    Object? coverArt = freezed,
    Object? allowedUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedUser: freezed == allowedUser
          ? _value.allowedUser
          : allowedUser // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistImplCopyWith<$Res>
    implements $PlaylistCopyWith<$Res> {
  factory _$$PlaylistImplCopyWith(
          _$PlaylistImpl value, $Res Function(_$PlaylistImpl) then) =
      __$$PlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'public') bool? public,
      @JsonKey(name: 'songCount') int songCount,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'allowedUser') List<String>? allowedUser});
}

/// @nodoc
class __$$PlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistCopyWithImpl<$Res, _$PlaylistImpl>
    implements _$$PlaylistImplCopyWith<$Res> {
  __$$PlaylistImplCopyWithImpl(
      _$PlaylistImpl _value, $Res Function(_$PlaylistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? songCount = null,
    Object? duration = null,
    Object? created = null,
    Object? changed = null,
    Object? coverArt = freezed,
    Object? allowedUser = freezed,
  }) {
    return _then(_$PlaylistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      songCount: null == songCount
          ? _value.songCount
          : songCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedUser: freezed == allowedUser
          ? _value._allowedUser
          : allowedUser // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistImpl implements _Playlist {
  const _$PlaylistImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'public') this.public,
      @JsonKey(name: 'songCount') required this.songCount,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'changed') required this.changed,
      @JsonKey(name: 'coverArt') this.coverArt,
      @JsonKey(name: 'allowedUser') final List<String>? allowedUser})
      : _allowedUser = allowedUser;

  factory _$PlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'owner')
  final String? owner;
  @override
  @JsonKey(name: 'public')
  final bool? public;
  @override
  @JsonKey(name: 'songCount')
  final int songCount;
  @override
  @JsonKey(name: 'duration')
  final int duration;
  @override
  @JsonKey(name: 'created')
  final DateTime created;
  @override
  @JsonKey(name: 'changed')
  final DateTime changed;
  @override
  @JsonKey(name: 'coverArt')
  final String? coverArt;
  final List<String>? _allowedUser;
  @override
  @JsonKey(name: 'allowedUser')
  List<String>? get allowedUser {
    final value = _allowedUser;
    if (value == null) return null;
    if (_allowedUser is EqualUnmodifiableListView) return _allowedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Playlist(id: $id, name: $name, comment: $comment, owner: $owner, public: $public, songCount: $songCount, duration: $duration, created: $created, changed: $changed, coverArt: $coverArt, allowedUser: $allowedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.songCount, songCount) ||
                other.songCount == songCount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.changed, changed) || other.changed == changed) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            const DeepCollectionEquality()
                .equals(other._allowedUser, _allowedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      comment,
      owner,
      public,
      songCount,
      duration,
      created,
      changed,
      coverArt,
      const DeepCollectionEquality().hash(_allowedUser));

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      __$$PlaylistImplCopyWithImpl<_$PlaylistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistImplToJson(
      this,
    );
  }
}

abstract class _Playlist implements Playlist {
  const factory _Playlist(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'comment') final String? comment,
          @JsonKey(name: 'owner') final String? owner,
          @JsonKey(name: 'public') final bool? public,
          @JsonKey(name: 'songCount') required final int songCount,
          @JsonKey(name: 'duration') required final int duration,
          @JsonKey(name: 'created') required final DateTime created,
          @JsonKey(name: 'changed') required final DateTime changed,
          @JsonKey(name: 'coverArt') final String? coverArt,
          @JsonKey(name: 'allowedUser') final List<String>? allowedUser}) =
      _$PlaylistImpl;

  factory _Playlist.fromJson(Map<String, dynamic> json) =
      _$PlaylistImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'owner')
  String? get owner;
  @override
  @JsonKey(name: 'public')
  bool? get public;
  @override
  @JsonKey(name: 'songCount')
  int get songCount;
  @override
  @JsonKey(name: 'duration')
  int get duration;
  @override
  @JsonKey(name: 'created')
  DateTime get created;
  @override
  @JsonKey(name: 'changed')
  DateTime get changed;
  @override
  @JsonKey(name: 'coverArt')
  String? get coverArt;
  @override
  @JsonKey(name: 'allowedUser')
  List<String>? get allowedUser;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaylistWithSongs _$PlaylistWithSongsFromJson(Map<String, dynamic> json) {
  return _PlaylistWithSongs.fromJson(json);
}

/// @nodoc
mixin _$PlaylistWithSongs {
  @JsonKey(name: 'entry')
  List<Child>? get entry => throw _privateConstructorUsedError;

  /// Serializes this PlaylistWithSongs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistWithSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistWithSongsCopyWith<PlaylistWithSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistWithSongsCopyWith<$Res> {
  factory $PlaylistWithSongsCopyWith(
          PlaylistWithSongs value, $Res Function(PlaylistWithSongs) then) =
      _$PlaylistWithSongsCopyWithImpl<$Res, PlaylistWithSongs>;
  @useResult
  $Res call({@JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class _$PlaylistWithSongsCopyWithImpl<$Res, $Val extends PlaylistWithSongs>
    implements $PlaylistWithSongsCopyWith<$Res> {
  _$PlaylistWithSongsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistWithSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistWithSongsImplCopyWith<$Res>
    implements $PlaylistWithSongsCopyWith<$Res> {
  factory _$$PlaylistWithSongsImplCopyWith(_$PlaylistWithSongsImpl value,
          $Res Function(_$PlaylistWithSongsImpl) then) =
      __$$PlaylistWithSongsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class __$$PlaylistWithSongsImplCopyWithImpl<$Res>
    extends _$PlaylistWithSongsCopyWithImpl<$Res, _$PlaylistWithSongsImpl>
    implements _$$PlaylistWithSongsImplCopyWith<$Res> {
  __$$PlaylistWithSongsImplCopyWithImpl(_$PlaylistWithSongsImpl _value,
      $Res Function(_$PlaylistWithSongsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistWithSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$PlaylistWithSongsImpl(
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistWithSongsImpl implements _PlaylistWithSongs {
  const _$PlaylistWithSongsImpl(
      {@JsonKey(name: 'entry') final List<Child>? entry})
      : _entry = entry;

  factory _$PlaylistWithSongsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistWithSongsImplFromJson(json);

  final List<Child>? _entry;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaylistWithSongs(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistWithSongsImpl &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entry));

  /// Create a copy of PlaylistWithSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistWithSongsImplCopyWith<_$PlaylistWithSongsImpl> get copyWith =>
      __$$PlaylistWithSongsImplCopyWithImpl<_$PlaylistWithSongsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistWithSongsImplToJson(
      this,
    );
  }
}

abstract class _PlaylistWithSongs implements PlaylistWithSongs {
  const factory _PlaylistWithSongs(
          {@JsonKey(name: 'entry') final List<Child>? entry}) =
      _$PlaylistWithSongsImpl;

  factory _PlaylistWithSongs.fromJson(Map<String, dynamic> json) =
      _$PlaylistWithSongsImpl.fromJson;

  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry;

  /// Create a copy of PlaylistWithSongs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistWithSongsImplCopyWith<_$PlaylistWithSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JukeboxStatus _$JukeboxStatusFromJson(Map<String, dynamic> json) {
  return _JukeboxStatus.fromJson(json);
}

/// @nodoc
mixin _$JukeboxStatus {
  @JsonKey(name: 'currentIndex')
  int get currentIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'playing')
  bool get playing => throw _privateConstructorUsedError;
  @JsonKey(name: 'gain')
  double get gain => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  int? get position => throw _privateConstructorUsedError;

  /// Serializes this JukeboxStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JukeboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JukeboxStatusCopyWith<JukeboxStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JukeboxStatusCopyWith<$Res> {
  factory $JukeboxStatusCopyWith(
          JukeboxStatus value, $Res Function(JukeboxStatus) then) =
      _$JukeboxStatusCopyWithImpl<$Res, JukeboxStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentIndex') int currentIndex,
      @JsonKey(name: 'playing') bool playing,
      @JsonKey(name: 'gain') double gain,
      @JsonKey(name: 'position') int? position});
}

/// @nodoc
class _$JukeboxStatusCopyWithImpl<$Res, $Val extends JukeboxStatus>
    implements $JukeboxStatusCopyWith<$Res> {
  _$JukeboxStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JukeboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? playing = null,
    Object? gain = null,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
      gain: null == gain
          ? _value.gain
          : gain // ignore: cast_nullable_to_non_nullable
              as double,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JukeboxStatusImplCopyWith<$Res>
    implements $JukeboxStatusCopyWith<$Res> {
  factory _$$JukeboxStatusImplCopyWith(
          _$JukeboxStatusImpl value, $Res Function(_$JukeboxStatusImpl) then) =
      __$$JukeboxStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentIndex') int currentIndex,
      @JsonKey(name: 'playing') bool playing,
      @JsonKey(name: 'gain') double gain,
      @JsonKey(name: 'position') int? position});
}

/// @nodoc
class __$$JukeboxStatusImplCopyWithImpl<$Res>
    extends _$JukeboxStatusCopyWithImpl<$Res, _$JukeboxStatusImpl>
    implements _$$JukeboxStatusImplCopyWith<$Res> {
  __$$JukeboxStatusImplCopyWithImpl(
      _$JukeboxStatusImpl _value, $Res Function(_$JukeboxStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of JukeboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? playing = null,
    Object? gain = null,
    Object? position = freezed,
  }) {
    return _then(_$JukeboxStatusImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
      gain: null == gain
          ? _value.gain
          : gain // ignore: cast_nullable_to_non_nullable
              as double,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JukeboxStatusImpl implements _JukeboxStatus {
  const _$JukeboxStatusImpl(
      {@JsonKey(name: 'currentIndex') required this.currentIndex,
      @JsonKey(name: 'playing') required this.playing,
      @JsonKey(name: 'gain') required this.gain,
      @JsonKey(name: 'position') this.position});

  factory _$JukeboxStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$JukeboxStatusImplFromJson(json);

  @override
  @JsonKey(name: 'currentIndex')
  final int currentIndex;
  @override
  @JsonKey(name: 'playing')
  final bool playing;
  @override
  @JsonKey(name: 'gain')
  final double gain;
  @override
  @JsonKey(name: 'position')
  final int? position;

  @override
  String toString() {
    return 'JukeboxStatus(currentIndex: $currentIndex, playing: $playing, gain: $gain, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JukeboxStatusImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.playing, playing) || other.playing == playing) &&
            (identical(other.gain, gain) || other.gain == gain) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentIndex, playing, gain, position);

  /// Create a copy of JukeboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JukeboxStatusImplCopyWith<_$JukeboxStatusImpl> get copyWith =>
      __$$JukeboxStatusImplCopyWithImpl<_$JukeboxStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JukeboxStatusImplToJson(
      this,
    );
  }
}

abstract class _JukeboxStatus implements JukeboxStatus {
  const factory _JukeboxStatus(
      {@JsonKey(name: 'currentIndex') required final int currentIndex,
      @JsonKey(name: 'playing') required final bool playing,
      @JsonKey(name: 'gain') required final double gain,
      @JsonKey(name: 'position') final int? position}) = _$JukeboxStatusImpl;

  factory _JukeboxStatus.fromJson(Map<String, dynamic> json) =
      _$JukeboxStatusImpl.fromJson;

  @override
  @JsonKey(name: 'currentIndex')
  int get currentIndex;
  @override
  @JsonKey(name: 'playing')
  bool get playing;
  @override
  @JsonKey(name: 'gain')
  double get gain;
  @override
  @JsonKey(name: 'position')
  int? get position;

  /// Create a copy of JukeboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JukeboxStatusImplCopyWith<_$JukeboxStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JukeboxPlaylist _$JukeboxPlaylistFromJson(Map<String, dynamic> json) {
  return _JukeboxPlaylist.fromJson(json);
}

/// @nodoc
mixin _$JukeboxPlaylist {
  @JsonKey(name: 'entry')
  List<Child>? get entry => throw _privateConstructorUsedError;

  /// Serializes this JukeboxPlaylist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JukeboxPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JukeboxPlaylistCopyWith<JukeboxPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JukeboxPlaylistCopyWith<$Res> {
  factory $JukeboxPlaylistCopyWith(
          JukeboxPlaylist value, $Res Function(JukeboxPlaylist) then) =
      _$JukeboxPlaylistCopyWithImpl<$Res, JukeboxPlaylist>;
  @useResult
  $Res call({@JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class _$JukeboxPlaylistCopyWithImpl<$Res, $Val extends JukeboxPlaylist>
    implements $JukeboxPlaylistCopyWith<$Res> {
  _$JukeboxPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JukeboxPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JukeboxPlaylistImplCopyWith<$Res>
    implements $JukeboxPlaylistCopyWith<$Res> {
  factory _$$JukeboxPlaylistImplCopyWith(_$JukeboxPlaylistImpl value,
          $Res Function(_$JukeboxPlaylistImpl) then) =
      __$$JukeboxPlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class __$$JukeboxPlaylistImplCopyWithImpl<$Res>
    extends _$JukeboxPlaylistCopyWithImpl<$Res, _$JukeboxPlaylistImpl>
    implements _$$JukeboxPlaylistImplCopyWith<$Res> {
  __$$JukeboxPlaylistImplCopyWithImpl(
      _$JukeboxPlaylistImpl _value, $Res Function(_$JukeboxPlaylistImpl) _then)
      : super(_value, _then);

  /// Create a copy of JukeboxPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$JukeboxPlaylistImpl(
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JukeboxPlaylistImpl implements _JukeboxPlaylist {
  const _$JukeboxPlaylistImpl(
      {@JsonKey(name: 'entry') final List<Child>? entry})
      : _entry = entry;

  factory _$JukeboxPlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$JukeboxPlaylistImplFromJson(json);

  final List<Child>? _entry;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JukeboxPlaylist(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JukeboxPlaylistImpl &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entry));

  /// Create a copy of JukeboxPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JukeboxPlaylistImplCopyWith<_$JukeboxPlaylistImpl> get copyWith =>
      __$$JukeboxPlaylistImplCopyWithImpl<_$JukeboxPlaylistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JukeboxPlaylistImplToJson(
      this,
    );
  }
}

abstract class _JukeboxPlaylist implements JukeboxPlaylist {
  const factory _JukeboxPlaylist(
          {@JsonKey(name: 'entry') final List<Child>? entry}) =
      _$JukeboxPlaylistImpl;

  factory _JukeboxPlaylist.fromJson(Map<String, dynamic> json) =
      _$JukeboxPlaylistImpl.fromJson;

  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry;

  /// Create a copy of JukeboxPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JukeboxPlaylistImplCopyWith<_$JukeboxPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessages _$ChatMessagesFromJson(Map<String, dynamic> json) {
  return _ChatMessages.fromJson(json);
}

/// @nodoc
mixin _$ChatMessages {
  @JsonKey(name: 'chatMessage')
  List<ChatMessage>? get chatMessage => throw _privateConstructorUsedError;

  /// Serializes this ChatMessages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagesCopyWith<ChatMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesCopyWith<$Res> {
  factory $ChatMessagesCopyWith(
          ChatMessages value, $Res Function(ChatMessages) then) =
      _$ChatMessagesCopyWithImpl<$Res, ChatMessages>;
  @useResult
  $Res call({@JsonKey(name: 'chatMessage') List<ChatMessage>? chatMessage});
}

/// @nodoc
class _$ChatMessagesCopyWithImpl<$Res, $Val extends ChatMessages>
    implements $ChatMessagesCopyWith<$Res> {
  _$ChatMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessage = freezed,
  }) {
    return _then(_value.copyWith(
      chatMessage: freezed == chatMessage
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessagesImplCopyWith<$Res>
    implements $ChatMessagesCopyWith<$Res> {
  factory _$$ChatMessagesImplCopyWith(
          _$ChatMessagesImpl value, $Res Function(_$ChatMessagesImpl) then) =
      __$$ChatMessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'chatMessage') List<ChatMessage>? chatMessage});
}

/// @nodoc
class __$$ChatMessagesImplCopyWithImpl<$Res>
    extends _$ChatMessagesCopyWithImpl<$Res, _$ChatMessagesImpl>
    implements _$$ChatMessagesImplCopyWith<$Res> {
  __$$ChatMessagesImplCopyWithImpl(
      _$ChatMessagesImpl _value, $Res Function(_$ChatMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessage = freezed,
  }) {
    return _then(_$ChatMessagesImpl(
      chatMessage: freezed == chatMessage
          ? _value._chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessagesImpl implements _ChatMessages {
  const _$ChatMessagesImpl(
      {@JsonKey(name: 'chatMessage') final List<ChatMessage>? chatMessage})
      : _chatMessage = chatMessage;

  factory _$ChatMessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessagesImplFromJson(json);

  final List<ChatMessage>? _chatMessage;
  @override
  @JsonKey(name: 'chatMessage')
  List<ChatMessage>? get chatMessage {
    final value = _chatMessage;
    if (value == null) return null;
    if (_chatMessage is EqualUnmodifiableListView) return _chatMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessages(chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesImpl &&
            const DeepCollectionEquality()
                .equals(other._chatMessage, _chatMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatMessage));

  /// Create a copy of ChatMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesImplCopyWith<_$ChatMessagesImpl> get copyWith =>
      __$$ChatMessagesImplCopyWithImpl<_$ChatMessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessagesImplToJson(
      this,
    );
  }
}

abstract class _ChatMessages implements ChatMessages {
  const factory _ChatMessages(
      {@JsonKey(name: 'chatMessage')
      final List<ChatMessage>? chatMessage}) = _$ChatMessagesImpl;

  factory _ChatMessages.fromJson(Map<String, dynamic> json) =
      _$ChatMessagesImpl.fromJson;

  @override
  @JsonKey(name: 'chatMessage')
  List<ChatMessage>? get chatMessage;

  /// Create a copy of ChatMessages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagesImplCopyWith<_$ChatMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  int get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'time') int time,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? time = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'time') int time,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? time = null,
    Object? message = null,
  }) {
    return _then(_$ChatMessageImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'time') required this.time,
      @JsonKey(name: 'message') required this.message});

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'time')
  final int time;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ChatMessage(username: $username, time: $time, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, time, message);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'time') required final int time,
          @JsonKey(name: 'message') required final String message}) =
      _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'time')
  int get time;
  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumList _$AlbumListFromJson(Map<String, dynamic> json) {
  return _AlbumList.fromJson(json);
}

/// @nodoc
mixin _$AlbumList {
  @JsonKey(name: 'album')
  List<Child>? get album => throw _privateConstructorUsedError;

  /// Serializes this AlbumList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumListCopyWith<AlbumList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumListCopyWith<$Res> {
  factory $AlbumListCopyWith(AlbumList value, $Res Function(AlbumList) then) =
      _$AlbumListCopyWithImpl<$Res, AlbumList>;
  @useResult
  $Res call({@JsonKey(name: 'album') List<Child>? album});
}

/// @nodoc
class _$AlbumListCopyWithImpl<$Res, $Val extends AlbumList>
    implements $AlbumListCopyWith<$Res> {
  _$AlbumListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumListImplCopyWith<$Res>
    implements $AlbumListCopyWith<$Res> {
  factory _$$AlbumListImplCopyWith(
          _$AlbumListImpl value, $Res Function(_$AlbumListImpl) then) =
      __$$AlbumListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'album') List<Child>? album});
}

/// @nodoc
class __$$AlbumListImplCopyWithImpl<$Res>
    extends _$AlbumListCopyWithImpl<$Res, _$AlbumListImpl>
    implements _$$AlbumListImplCopyWith<$Res> {
  __$$AlbumListImplCopyWithImpl(
      _$AlbumListImpl _value, $Res Function(_$AlbumListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_$AlbumListImpl(
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumListImpl implements _AlbumList {
  const _$AlbumListImpl({@JsonKey(name: 'album') final List<Child>? album})
      : _album = album;

  factory _$AlbumListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumListImplFromJson(json);

  final List<Child>? _album;
  @override
  @JsonKey(name: 'album')
  List<Child>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlbumList(album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumListImpl &&
            const DeepCollectionEquality().equals(other._album, _album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_album));

  /// Create a copy of AlbumList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumListImplCopyWith<_$AlbumListImpl> get copyWith =>
      __$$AlbumListImplCopyWithImpl<_$AlbumListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumListImplToJson(
      this,
    );
  }
}

abstract class _AlbumList implements AlbumList {
  const factory _AlbumList({@JsonKey(name: 'album') final List<Child>? album}) =
      _$AlbumListImpl;

  factory _AlbumList.fromJson(Map<String, dynamic> json) =
      _$AlbumListImpl.fromJson;

  @override
  @JsonKey(name: 'album')
  List<Child>? get album;

  /// Create a copy of AlbumList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumListImplCopyWith<_$AlbumListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumList2 _$AlbumList2FromJson(Map<String, dynamic> json) {
  return _AlbumList2.fromJson(json);
}

/// @nodoc
mixin _$AlbumList2 {
  @JsonKey(name: 'album')
  List<AlbumId3>? get album => throw _privateConstructorUsedError;

  /// Serializes this AlbumList2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumList2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumList2CopyWith<AlbumList2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumList2CopyWith<$Res> {
  factory $AlbumList2CopyWith(
          AlbumList2 value, $Res Function(AlbumList2) then) =
      _$AlbumList2CopyWithImpl<$Res, AlbumList2>;
  @useResult
  $Res call({@JsonKey(name: 'album') List<AlbumId3>? album});
}

/// @nodoc
class _$AlbumList2CopyWithImpl<$Res, $Val extends AlbumList2>
    implements $AlbumList2CopyWith<$Res> {
  _$AlbumList2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumList2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumList2ImplCopyWith<$Res>
    implements $AlbumList2CopyWith<$Res> {
  factory _$$AlbumList2ImplCopyWith(
          _$AlbumList2Impl value, $Res Function(_$AlbumList2Impl) then) =
      __$$AlbumList2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'album') List<AlbumId3>? album});
}

/// @nodoc
class __$$AlbumList2ImplCopyWithImpl<$Res>
    extends _$AlbumList2CopyWithImpl<$Res, _$AlbumList2Impl>
    implements _$$AlbumList2ImplCopyWith<$Res> {
  __$$AlbumList2ImplCopyWithImpl(
      _$AlbumList2Impl _value, $Res Function(_$AlbumList2Impl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumList2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_$AlbumList2Impl(
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumList2Impl implements _AlbumList2 {
  const _$AlbumList2Impl({@JsonKey(name: 'album') final List<AlbumId3>? album})
      : _album = album;

  factory _$AlbumList2Impl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumList2ImplFromJson(json);

  final List<AlbumId3>? _album;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlbumList2(album: $album)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumList2Impl &&
            const DeepCollectionEquality().equals(other._album, _album));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_album));

  /// Create a copy of AlbumList2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumList2ImplCopyWith<_$AlbumList2Impl> get copyWith =>
      __$$AlbumList2ImplCopyWithImpl<_$AlbumList2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumList2ImplToJson(
      this,
    );
  }
}

abstract class _AlbumList2 implements AlbumList2 {
  const factory _AlbumList2(
      {@JsonKey(name: 'album') final List<AlbumId3>? album}) = _$AlbumList2Impl;

  factory _AlbumList2.fromJson(Map<String, dynamic> json) =
      _$AlbumList2Impl.fromJson;

  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album;

  /// Create a copy of AlbumList2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumList2ImplCopyWith<_$AlbumList2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Songs _$SongsFromJson(Map<String, dynamic> json) {
  return _Songs.fromJson(json);
}

/// @nodoc
mixin _$Songs {
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this Songs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Songs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongsCopyWith<Songs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsCopyWith<$Res> {
  factory $SongsCopyWith(Songs value, $Res Function(Songs) then) =
      _$SongsCopyWithImpl<$Res, Songs>;
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$SongsCopyWithImpl<$Res, $Val extends Songs>
    implements $SongsCopyWith<$Res> {
  _$SongsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Songs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongsImplCopyWith<$Res> implements $SongsCopyWith<$Res> {
  factory _$$SongsImplCopyWith(
          _$SongsImpl value, $Res Function(_$SongsImpl) then) =
      __$$SongsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$SongsImplCopyWithImpl<$Res>
    extends _$SongsCopyWithImpl<$Res, _$SongsImpl>
    implements _$$SongsImplCopyWith<$Res> {
  __$$SongsImplCopyWithImpl(
      _$SongsImpl _value, $Res Function(_$SongsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Songs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$SongsImpl(
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongsImpl implements _Songs {
  const _$SongsImpl({@JsonKey(name: 'song') final List<Child>? song})
      : _song = song;

  factory _$SongsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongsImplFromJson(json);

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Songs(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongsImpl &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_song));

  /// Create a copy of Songs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongsImplCopyWith<_$SongsImpl> get copyWith =>
      __$$SongsImplCopyWithImpl<_$SongsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongsImplToJson(
      this,
    );
  }
}

abstract class _Songs implements Songs {
  const factory _Songs({@JsonKey(name: 'song') final List<Child>? song}) =
      _$SongsImpl;

  factory _Songs.fromJson(Map<String, dynamic> json) = _$SongsImpl.fromJson;

  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of Songs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongsImplCopyWith<_$SongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lyrics _$LyricsFromJson(Map<String, dynamic> json) {
  return _Lyrics.fromJson(json);
}

/// @nodoc
mixin _$Lyrics {
  @JsonKey(name: 'artist')
  String? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this Lyrics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lyrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LyricsCopyWith<Lyrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsCopyWith<$Res> {
  factory $LyricsCopyWith(Lyrics value, $Res Function(Lyrics) then) =
      _$LyricsCopyWithImpl<$Res, Lyrics>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$LyricsCopyWithImpl<$Res, $Val extends Lyrics>
    implements $LyricsCopyWith<$Res> {
  _$LyricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lyrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LyricsImplCopyWith<$Res> implements $LyricsCopyWith<$Res> {
  factory _$$LyricsImplCopyWith(
          _$LyricsImpl value, $Res Function(_$LyricsImpl) then) =
      __$$LyricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') String? artist,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$LyricsImplCopyWithImpl<$Res>
    extends _$LyricsCopyWithImpl<$Res, _$LyricsImpl>
    implements _$$LyricsImplCopyWith<$Res> {
  __$$LyricsImplCopyWithImpl(
      _$LyricsImpl _value, $Res Function(_$LyricsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lyrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? title = freezed,
  }) {
    return _then(_$LyricsImpl(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsImpl implements _Lyrics {
  const _$LyricsImpl(
      {@JsonKey(name: 'artist') this.artist,
      @JsonKey(name: 'title') this.title});

  factory _$LyricsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsImplFromJson(json);

  @override
  @JsonKey(name: 'artist')
  final String? artist;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'Lyrics(artist: $artist, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, artist, title);

  /// Create a copy of Lyrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsImplCopyWith<_$LyricsImpl> get copyWith =>
      __$$LyricsImplCopyWithImpl<_$LyricsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsImplToJson(
      this,
    );
  }
}

abstract class _Lyrics implements Lyrics {
  const factory _Lyrics(
      {@JsonKey(name: 'artist') final String? artist,
      @JsonKey(name: 'title') final String? title}) = _$LyricsImpl;

  factory _Lyrics.fromJson(Map<String, dynamic> json) = _$LyricsImpl.fromJson;

  @override
  @JsonKey(name: 'artist')
  String? get artist;
  @override
  @JsonKey(name: 'title')
  String? get title;

  /// Create a copy of Lyrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LyricsImplCopyWith<_$LyricsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Podcasts _$PodcastsFromJson(Map<String, dynamic> json) {
  return _Podcasts.fromJson(json);
}

/// @nodoc
mixin _$Podcasts {
  @JsonKey(name: 'channel')
  List<PodcastChannel>? get channel => throw _privateConstructorUsedError;

  /// Serializes this Podcasts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Podcasts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PodcastsCopyWith<Podcasts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastsCopyWith<$Res> {
  factory $PodcastsCopyWith(Podcasts value, $Res Function(Podcasts) then) =
      _$PodcastsCopyWithImpl<$Res, Podcasts>;
  @useResult
  $Res call({@JsonKey(name: 'channel') List<PodcastChannel>? channel});
}

/// @nodoc
class _$PodcastsCopyWithImpl<$Res, $Val extends Podcasts>
    implements $PodcastsCopyWith<$Res> {
  _$PodcastsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Podcasts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = freezed,
  }) {
    return _then(_value.copyWith(
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<PodcastChannel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastsImplCopyWith<$Res>
    implements $PodcastsCopyWith<$Res> {
  factory _$$PodcastsImplCopyWith(
          _$PodcastsImpl value, $Res Function(_$PodcastsImpl) then) =
      __$$PodcastsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'channel') List<PodcastChannel>? channel});
}

/// @nodoc
class __$$PodcastsImplCopyWithImpl<$Res>
    extends _$PodcastsCopyWithImpl<$Res, _$PodcastsImpl>
    implements _$$PodcastsImplCopyWith<$Res> {
  __$$PodcastsImplCopyWithImpl(
      _$PodcastsImpl _value, $Res Function(_$PodcastsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Podcasts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = freezed,
  }) {
    return _then(_$PodcastsImpl(
      channel: freezed == channel
          ? _value._channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<PodcastChannel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastsImpl implements _Podcasts {
  const _$PodcastsImpl(
      {@JsonKey(name: 'channel') final List<PodcastChannel>? channel})
      : _channel = channel;

  factory _$PodcastsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastsImplFromJson(json);

  final List<PodcastChannel>? _channel;
  @override
  @JsonKey(name: 'channel')
  List<PodcastChannel>? get channel {
    final value = _channel;
    if (value == null) return null;
    if (_channel is EqualUnmodifiableListView) return _channel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Podcasts(channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastsImpl &&
            const DeepCollectionEquality().equals(other._channel, _channel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_channel));

  /// Create a copy of Podcasts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastsImplCopyWith<_$PodcastsImpl> get copyWith =>
      __$$PodcastsImplCopyWithImpl<_$PodcastsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastsImplToJson(
      this,
    );
  }
}

abstract class _Podcasts implements Podcasts {
  const factory _Podcasts(
          {@JsonKey(name: 'channel') final List<PodcastChannel>? channel}) =
      _$PodcastsImpl;

  factory _Podcasts.fromJson(Map<String, dynamic> json) =
      _$PodcastsImpl.fromJson;

  @override
  @JsonKey(name: 'channel')
  List<PodcastChannel>? get channel;

  /// Create a copy of Podcasts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PodcastsImplCopyWith<_$PodcastsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastChannel _$PodcastChannelFromJson(Map<String, dynamic> json) {
  return _PodcastChannel.fromJson(json);
}

/// @nodoc
mixin _$PodcastChannel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArt')
  String? get coverArt => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalImageUrl')
  String? get originalImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PodcastStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'errorMessage')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode => throw _privateConstructorUsedError;

  /// Serializes this PodcastChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PodcastChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PodcastChannelCopyWith<PodcastChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastChannelCopyWith<$Res> {
  factory $PodcastChannelCopyWith(
          PodcastChannel value, $Res Function(PodcastChannel) then) =
      _$PodcastChannelCopyWithImpl<$Res, PodcastChannel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'originalImageUrl') String? originalImageUrl,
      @JsonKey(name: 'status') PodcastStatus status,
      @JsonKey(name: 'errorMessage') String? errorMessage,
      @JsonKey(name: 'episode') List<PodcastEpisode>? episode});
}

/// @nodoc
class _$PodcastChannelCopyWithImpl<$Res, $Val extends PodcastChannel>
    implements $PodcastChannelCopyWith<$Res> {
  _$PodcastChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PodcastChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? coverArt = freezed,
    Object? originalImageUrl = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      originalImageUrl: freezed == originalImageUrl
          ? _value.originalImageUrl
          : originalImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PodcastStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastChannelImplCopyWith<$Res>
    implements $PodcastChannelCopyWith<$Res> {
  factory _$$PodcastChannelImplCopyWith(_$PodcastChannelImpl value,
          $Res Function(_$PodcastChannelImpl) then) =
      __$$PodcastChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'coverArt') String? coverArt,
      @JsonKey(name: 'originalImageUrl') String? originalImageUrl,
      @JsonKey(name: 'status') PodcastStatus status,
      @JsonKey(name: 'errorMessage') String? errorMessage,
      @JsonKey(name: 'episode') List<PodcastEpisode>? episode});
}

/// @nodoc
class __$$PodcastChannelImplCopyWithImpl<$Res>
    extends _$PodcastChannelCopyWithImpl<$Res, _$PodcastChannelImpl>
    implements _$$PodcastChannelImplCopyWith<$Res> {
  __$$PodcastChannelImplCopyWithImpl(
      _$PodcastChannelImpl _value, $Res Function(_$PodcastChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PodcastChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? coverArt = freezed,
    Object? originalImageUrl = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$PodcastChannelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverArt: freezed == coverArt
          ? _value.coverArt
          : coverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      originalImageUrl: freezed == originalImageUrl
          ? _value.originalImageUrl
          : originalImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PodcastStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastChannelImpl implements _PodcastChannel {
  const _$PodcastChannelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'coverArt') this.coverArt,
      @JsonKey(name: 'originalImageUrl') this.originalImageUrl,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'errorMessage') this.errorMessage,
      @JsonKey(name: 'episode') final List<PodcastEpisode>? episode})
      : _episode = episode;

  factory _$PodcastChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastChannelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'coverArt')
  final String? coverArt;
  @override
  @JsonKey(name: 'originalImageUrl')
  final String? originalImageUrl;
  @override
  @JsonKey(name: 'status')
  final PodcastStatus status;
  @override
  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  final List<PodcastEpisode>? _episode;
  @override
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PodcastChannel(id: $id, url: $url, title: $title, description: $description, coverArt: $coverArt, originalImageUrl: $originalImageUrl, status: $status, errorMessage: $errorMessage, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverArt, coverArt) ||
                other.coverArt == coverArt) &&
            (identical(other.originalImageUrl, originalImageUrl) ||
                other.originalImageUrl == originalImageUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      title,
      description,
      coverArt,
      originalImageUrl,
      status,
      errorMessage,
      const DeepCollectionEquality().hash(_episode));

  /// Create a copy of PodcastChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastChannelImplCopyWith<_$PodcastChannelImpl> get copyWith =>
      __$$PodcastChannelImplCopyWithImpl<_$PodcastChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastChannelImplToJson(
      this,
    );
  }
}

abstract class _PodcastChannel implements PodcastChannel {
  const factory _PodcastChannel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'url') required final String url,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'coverArt') final String? coverArt,
          @JsonKey(name: 'originalImageUrl') final String? originalImageUrl,
          @JsonKey(name: 'status') required final PodcastStatus status,
          @JsonKey(name: 'errorMessage') final String? errorMessage,
          @JsonKey(name: 'episode') final List<PodcastEpisode>? episode}) =
      _$PodcastChannelImpl;

  factory _PodcastChannel.fromJson(Map<String, dynamic> json) =
      _$PodcastChannelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'coverArt')
  String? get coverArt;
  @override
  @JsonKey(name: 'originalImageUrl')
  String? get originalImageUrl;
  @override
  @JsonKey(name: 'status')
  PodcastStatus get status;
  @override
  @JsonKey(name: 'errorMessage')
  String? get errorMessage;
  @override
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode;

  /// Create a copy of PodcastChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PodcastChannelImplCopyWith<_$PodcastChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewestPodcasts _$NewestPodcastsFromJson(Map<String, dynamic> json) {
  return _NewestPodcasts.fromJson(json);
}

/// @nodoc
mixin _$NewestPodcasts {
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode => throw _privateConstructorUsedError;

  /// Serializes this NewestPodcasts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewestPodcasts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewestPodcastsCopyWith<NewestPodcasts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewestPodcastsCopyWith<$Res> {
  factory $NewestPodcastsCopyWith(
          NewestPodcasts value, $Res Function(NewestPodcasts) then) =
      _$NewestPodcastsCopyWithImpl<$Res, NewestPodcasts>;
  @useResult
  $Res call({@JsonKey(name: 'episode') List<PodcastEpisode>? episode});
}

/// @nodoc
class _$NewestPodcastsCopyWithImpl<$Res, $Val extends NewestPodcasts>
    implements $NewestPodcastsCopyWith<$Res> {
  _$NewestPodcastsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewestPodcasts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewestPodcastsImplCopyWith<$Res>
    implements $NewestPodcastsCopyWith<$Res> {
  factory _$$NewestPodcastsImplCopyWith(_$NewestPodcastsImpl value,
          $Res Function(_$NewestPodcastsImpl) then) =
      __$$NewestPodcastsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'episode') List<PodcastEpisode>? episode});
}

/// @nodoc
class __$$NewestPodcastsImplCopyWithImpl<$Res>
    extends _$NewestPodcastsCopyWithImpl<$Res, _$NewestPodcastsImpl>
    implements _$$NewestPodcastsImplCopyWith<$Res> {
  __$$NewestPodcastsImplCopyWithImpl(
      _$NewestPodcastsImpl _value, $Res Function(_$NewestPodcastsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewestPodcasts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episode = freezed,
  }) {
    return _then(_$NewestPodcastsImpl(
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewestPodcastsImpl implements _NewestPodcasts {
  const _$NewestPodcastsImpl(
      {@JsonKey(name: 'episode') final List<PodcastEpisode>? episode})
      : _episode = episode;

  factory _$NewestPodcastsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewestPodcastsImplFromJson(json);

  final List<PodcastEpisode>? _episode;
  @override
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewestPodcasts(episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewestPodcastsImpl &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_episode));

  /// Create a copy of NewestPodcasts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewestPodcastsImplCopyWith<_$NewestPodcastsImpl> get copyWith =>
      __$$NewestPodcastsImplCopyWithImpl<_$NewestPodcastsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewestPodcastsImplToJson(
      this,
    );
  }
}

abstract class _NewestPodcasts implements NewestPodcasts {
  const factory _NewestPodcasts(
          {@JsonKey(name: 'episode') final List<PodcastEpisode>? episode}) =
      _$NewestPodcastsImpl;

  factory _NewestPodcasts.fromJson(Map<String, dynamic> json) =
      _$NewestPodcastsImpl.fromJson;

  @override
  @JsonKey(name: 'episode')
  List<PodcastEpisode>? get episode;

  /// Create a copy of NewestPodcasts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewestPodcastsImplCopyWith<_$NewestPodcastsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PodcastEpisode _$PodcastEpisodeFromJson(Map<String, dynamic> json) {
  return _PodcastEpisode.fromJson(json);
}

/// @nodoc
mixin _$PodcastEpisode {
  @JsonKey(name: 'streamId')
  String? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'channelId')
  String get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  PodcastStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishDate')
  DateTime? get publishDate => throw _privateConstructorUsedError;

  /// Serializes this PodcastEpisode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PodcastEpisode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PodcastEpisodeCopyWith<PodcastEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastEpisodeCopyWith<$Res> {
  factory $PodcastEpisodeCopyWith(
          PodcastEpisode value, $Res Function(PodcastEpisode) then) =
      _$PodcastEpisodeCopyWithImpl<$Res, PodcastEpisode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'streamId') String? streamId,
      @JsonKey(name: 'channelId') String channelId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') PodcastStatus status,
      @JsonKey(name: 'publishDate') DateTime? publishDate});
}

/// @nodoc
class _$PodcastEpisodeCopyWithImpl<$Res, $Val extends PodcastEpisode>
    implements $PodcastEpisodeCopyWith<$Res> {
  _$PodcastEpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PodcastEpisode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? channelId = null,
    Object? description = freezed,
    Object? status = null,
    Object? publishDate = freezed,
  }) {
    return _then(_value.copyWith(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PodcastStatus,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastEpisodeImplCopyWith<$Res>
    implements $PodcastEpisodeCopyWith<$Res> {
  factory _$$PodcastEpisodeImplCopyWith(_$PodcastEpisodeImpl value,
          $Res Function(_$PodcastEpisodeImpl) then) =
      __$$PodcastEpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'streamId') String? streamId,
      @JsonKey(name: 'channelId') String channelId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') PodcastStatus status,
      @JsonKey(name: 'publishDate') DateTime? publishDate});
}

/// @nodoc
class __$$PodcastEpisodeImplCopyWithImpl<$Res>
    extends _$PodcastEpisodeCopyWithImpl<$Res, _$PodcastEpisodeImpl>
    implements _$$PodcastEpisodeImplCopyWith<$Res> {
  __$$PodcastEpisodeImplCopyWithImpl(
      _$PodcastEpisodeImpl _value, $Res Function(_$PodcastEpisodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PodcastEpisode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamId = freezed,
    Object? channelId = null,
    Object? description = freezed,
    Object? status = null,
    Object? publishDate = freezed,
  }) {
    return _then(_$PodcastEpisodeImpl(
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PodcastStatus,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastEpisodeImpl implements _PodcastEpisode {
  const _$PodcastEpisodeImpl(
      {@JsonKey(name: 'streamId') this.streamId,
      @JsonKey(name: 'channelId') required this.channelId,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'publishDate') this.publishDate});

  factory _$PodcastEpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastEpisodeImplFromJson(json);

  @override
  @JsonKey(name: 'streamId')
  final String? streamId;
  @override
  @JsonKey(name: 'channelId')
  final String channelId;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final PodcastStatus status;
  @override
  @JsonKey(name: 'publishDate')
  final DateTime? publishDate;

  @override
  String toString() {
    return 'PodcastEpisode(streamId: $streamId, channelId: $channelId, description: $description, status: $status, publishDate: $publishDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastEpisodeImpl &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, streamId, channelId, description, status, publishDate);

  /// Create a copy of PodcastEpisode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastEpisodeImplCopyWith<_$PodcastEpisodeImpl> get copyWith =>
      __$$PodcastEpisodeImplCopyWithImpl<_$PodcastEpisodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastEpisodeImplToJson(
      this,
    );
  }
}

abstract class _PodcastEpisode implements PodcastEpisode {
  const factory _PodcastEpisode(
          {@JsonKey(name: 'streamId') final String? streamId,
          @JsonKey(name: 'channelId') required final String channelId,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'status') required final PodcastStatus status,
          @JsonKey(name: 'publishDate') final DateTime? publishDate}) =
      _$PodcastEpisodeImpl;

  factory _PodcastEpisode.fromJson(Map<String, dynamic> json) =
      _$PodcastEpisodeImpl.fromJson;

  @override
  @JsonKey(name: 'streamId')
  String? get streamId;
  @override
  @JsonKey(name: 'channelId')
  String get channelId;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  PodcastStatus get status;
  @override
  @JsonKey(name: 'publishDate')
  DateTime? get publishDate;

  /// Create a copy of PodcastEpisode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PodcastEpisodeImplCopyWith<_$PodcastEpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InternetRadioStations _$InternetRadioStationsFromJson(
    Map<String, dynamic> json) {
  return _InternetRadioStations.fromJson(json);
}

/// @nodoc
mixin _$InternetRadioStations {
  @JsonKey(name: 'internetRadioStation')
  List<InternetRadioStation>? get internetRadioStation =>
      throw _privateConstructorUsedError;

  /// Serializes this InternetRadioStations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternetRadioStations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetRadioStationsCopyWith<InternetRadioStations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetRadioStationsCopyWith<$Res> {
  factory $InternetRadioStationsCopyWith(InternetRadioStations value,
          $Res Function(InternetRadioStations) then) =
      _$InternetRadioStationsCopyWithImpl<$Res, InternetRadioStations>;
  @useResult
  $Res call(
      {@JsonKey(name: 'internetRadioStation')
      List<InternetRadioStation>? internetRadioStation});
}

/// @nodoc
class _$InternetRadioStationsCopyWithImpl<$Res,
        $Val extends InternetRadioStations>
    implements $InternetRadioStationsCopyWith<$Res> {
  _$InternetRadioStationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetRadioStations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetRadioStation = freezed,
  }) {
    return _then(_value.copyWith(
      internetRadioStation: freezed == internetRadioStation
          ? _value.internetRadioStation
          : internetRadioStation // ignore: cast_nullable_to_non_nullable
              as List<InternetRadioStation>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetRadioStationsImplCopyWith<$Res>
    implements $InternetRadioStationsCopyWith<$Res> {
  factory _$$InternetRadioStationsImplCopyWith(
          _$InternetRadioStationsImpl value,
          $Res Function(_$InternetRadioStationsImpl) then) =
      __$$InternetRadioStationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'internetRadioStation')
      List<InternetRadioStation>? internetRadioStation});
}

/// @nodoc
class __$$InternetRadioStationsImplCopyWithImpl<$Res>
    extends _$InternetRadioStationsCopyWithImpl<$Res,
        _$InternetRadioStationsImpl>
    implements _$$InternetRadioStationsImplCopyWith<$Res> {
  __$$InternetRadioStationsImplCopyWithImpl(_$InternetRadioStationsImpl _value,
      $Res Function(_$InternetRadioStationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetRadioStations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetRadioStation = freezed,
  }) {
    return _then(_$InternetRadioStationsImpl(
      internetRadioStation: freezed == internetRadioStation
          ? _value._internetRadioStation
          : internetRadioStation // ignore: cast_nullable_to_non_nullable
              as List<InternetRadioStation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternetRadioStationsImpl implements _InternetRadioStations {
  const _$InternetRadioStationsImpl(
      {@JsonKey(name: 'internetRadioStation')
      final List<InternetRadioStation>? internetRadioStation})
      : _internetRadioStation = internetRadioStation;

  factory _$InternetRadioStationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternetRadioStationsImplFromJson(json);

  final List<InternetRadioStation>? _internetRadioStation;
  @override
  @JsonKey(name: 'internetRadioStation')
  List<InternetRadioStation>? get internetRadioStation {
    final value = _internetRadioStation;
    if (value == null) return null;
    if (_internetRadioStation is EqualUnmodifiableListView)
      return _internetRadioStation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InternetRadioStations(internetRadioStation: $internetRadioStation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetRadioStationsImpl &&
            const DeepCollectionEquality()
                .equals(other._internetRadioStation, _internetRadioStation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_internetRadioStation));

  /// Create a copy of InternetRadioStations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetRadioStationsImplCopyWith<_$InternetRadioStationsImpl>
      get copyWith => __$$InternetRadioStationsImplCopyWithImpl<
          _$InternetRadioStationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternetRadioStationsImplToJson(
      this,
    );
  }
}

abstract class _InternetRadioStations implements InternetRadioStations {
  const factory _InternetRadioStations(
          {@JsonKey(name: 'internetRadioStation')
          final List<InternetRadioStation>? internetRadioStation}) =
      _$InternetRadioStationsImpl;

  factory _InternetRadioStations.fromJson(Map<String, dynamic> json) =
      _$InternetRadioStationsImpl.fromJson;

  @override
  @JsonKey(name: 'internetRadioStation')
  List<InternetRadioStation>? get internetRadioStation;

  /// Create a copy of InternetRadioStations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternetRadioStationsImplCopyWith<_$InternetRadioStationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InternetRadioStation _$InternetRadioStationFromJson(Map<String, dynamic> json) {
  return _InternetRadioStation.fromJson(json);
}

/// @nodoc
mixin _$InternetRadioStation {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'streamUrl')
  String get streamUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'homePageUrl')
  String? get homePageUrl => throw _privateConstructorUsedError;

  /// Serializes this InternetRadioStation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternetRadioStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetRadioStationCopyWith<InternetRadioStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetRadioStationCopyWith<$Res> {
  factory $InternetRadioStationCopyWith(InternetRadioStation value,
          $Res Function(InternetRadioStation) then) =
      _$InternetRadioStationCopyWithImpl<$Res, InternetRadioStation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'streamUrl') String streamUrl,
      @JsonKey(name: 'homePageUrl') String? homePageUrl});
}

/// @nodoc
class _$InternetRadioStationCopyWithImpl<$Res,
        $Val extends InternetRadioStation>
    implements $InternetRadioStationCopyWith<$Res> {
  _$InternetRadioStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetRadioStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? streamUrl = null,
    Object? homePageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
      homePageUrl: freezed == homePageUrl
          ? _value.homePageUrl
          : homePageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternetRadioStationImplCopyWith<$Res>
    implements $InternetRadioStationCopyWith<$Res> {
  factory _$$InternetRadioStationImplCopyWith(_$InternetRadioStationImpl value,
          $Res Function(_$InternetRadioStationImpl) then) =
      __$$InternetRadioStationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'streamUrl') String streamUrl,
      @JsonKey(name: 'homePageUrl') String? homePageUrl});
}

/// @nodoc
class __$$InternetRadioStationImplCopyWithImpl<$Res>
    extends _$InternetRadioStationCopyWithImpl<$Res, _$InternetRadioStationImpl>
    implements _$$InternetRadioStationImplCopyWith<$Res> {
  __$$InternetRadioStationImplCopyWithImpl(_$InternetRadioStationImpl _value,
      $Res Function(_$InternetRadioStationImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetRadioStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? streamUrl = null,
    Object? homePageUrl = freezed,
  }) {
    return _then(_$InternetRadioStationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streamUrl: null == streamUrl
          ? _value.streamUrl
          : streamUrl // ignore: cast_nullable_to_non_nullable
              as String,
      homePageUrl: freezed == homePageUrl
          ? _value.homePageUrl
          : homePageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternetRadioStationImpl implements _InternetRadioStation {
  const _$InternetRadioStationImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'streamUrl') required this.streamUrl,
      @JsonKey(name: 'homePageUrl') this.homePageUrl});

  factory _$InternetRadioStationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternetRadioStationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'streamUrl')
  final String streamUrl;
  @override
  @JsonKey(name: 'homePageUrl')
  final String? homePageUrl;

  @override
  String toString() {
    return 'InternetRadioStation(id: $id, name: $name, streamUrl: $streamUrl, homePageUrl: $homePageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetRadioStationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.streamUrl, streamUrl) ||
                other.streamUrl == streamUrl) &&
            (identical(other.homePageUrl, homePageUrl) ||
                other.homePageUrl == homePageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, streamUrl, homePageUrl);

  /// Create a copy of InternetRadioStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetRadioStationImplCopyWith<_$InternetRadioStationImpl>
      get copyWith =>
          __$$InternetRadioStationImplCopyWithImpl<_$InternetRadioStationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternetRadioStationImplToJson(
      this,
    );
  }
}

abstract class _InternetRadioStation implements InternetRadioStation {
  const factory _InternetRadioStation(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'streamUrl') required final String streamUrl,
          @JsonKey(name: 'homePageUrl') final String? homePageUrl}) =
      _$InternetRadioStationImpl;

  factory _InternetRadioStation.fromJson(Map<String, dynamic> json) =
      _$InternetRadioStationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'streamUrl')
  String get streamUrl;
  @override
  @JsonKey(name: 'homePageUrl')
  String? get homePageUrl;

  /// Create a copy of InternetRadioStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternetRadioStationImplCopyWith<_$InternetRadioStationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Bookmarks _$BookmarksFromJson(Map<String, dynamic> json) {
  return _Bookmarks.fromJson(json);
}

/// @nodoc
mixin _$Bookmarks {
  @JsonKey(name: 'bookmark')
  List<Bookmark>? get bookmark => throw _privateConstructorUsedError;

  /// Serializes this Bookmarks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bookmarks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarksCopyWith<Bookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksCopyWith<$Res> {
  factory $BookmarksCopyWith(Bookmarks value, $Res Function(Bookmarks) then) =
      _$BookmarksCopyWithImpl<$Res, Bookmarks>;
  @useResult
  $Res call({@JsonKey(name: 'bookmark') List<Bookmark>? bookmark});
}

/// @nodoc
class _$BookmarksCopyWithImpl<$Res, $Val extends Bookmarks>
    implements $BookmarksCopyWith<$Res> {
  _$BookmarksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bookmarks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = freezed,
  }) {
    return _then(_value.copyWith(
      bookmark: freezed == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarksImplCopyWith<$Res>
    implements $BookmarksCopyWith<$Res> {
  factory _$$BookmarksImplCopyWith(
          _$BookmarksImpl value, $Res Function(_$BookmarksImpl) then) =
      __$$BookmarksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'bookmark') List<Bookmark>? bookmark});
}

/// @nodoc
class __$$BookmarksImplCopyWithImpl<$Res>
    extends _$BookmarksCopyWithImpl<$Res, _$BookmarksImpl>
    implements _$$BookmarksImplCopyWith<$Res> {
  __$$BookmarksImplCopyWithImpl(
      _$BookmarksImpl _value, $Res Function(_$BookmarksImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bookmarks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = freezed,
  }) {
    return _then(_$BookmarksImpl(
      bookmark: freezed == bookmark
          ? _value._bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksImpl implements _Bookmarks {
  const _$BookmarksImpl(
      {@JsonKey(name: 'bookmark') final List<Bookmark>? bookmark})
      : _bookmark = bookmark;

  factory _$BookmarksImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksImplFromJson(json);

  final List<Bookmark>? _bookmark;
  @override
  @JsonKey(name: 'bookmark')
  List<Bookmark>? get bookmark {
    final value = _bookmark;
    if (value == null) return null;
    if (_bookmark is EqualUnmodifiableListView) return _bookmark;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Bookmarks(bookmark: $bookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksImpl &&
            const DeepCollectionEquality().equals(other._bookmark, _bookmark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmark));

  /// Create a copy of Bookmarks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksImplCopyWith<_$BookmarksImpl> get copyWith =>
      __$$BookmarksImplCopyWithImpl<_$BookmarksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksImplToJson(
      this,
    );
  }
}

abstract class _Bookmarks implements Bookmarks {
  const factory _Bookmarks(
          {@JsonKey(name: 'bookmark') final List<Bookmark>? bookmark}) =
      _$BookmarksImpl;

  factory _Bookmarks.fromJson(Map<String, dynamic> json) =
      _$BookmarksImpl.fromJson;

  @override
  @JsonKey(name: 'bookmark')
  List<Bookmark>? get bookmark;

  /// Create a copy of Bookmarks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarksImplCopyWith<_$BookmarksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) {
  return _Bookmark.fromJson(json);
}

/// @nodoc
mixin _$Bookmark {
  @JsonKey(name: 'position')
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'changed')
  DateTime get changed => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry')
  Child get entry => throw _privateConstructorUsedError;

  /// Serializes this Bookmark to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res, Bookmark>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int position,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'entry') Child entry});

  $ChildCopyWith<$Res> get entry;
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res, $Val extends Bookmark>
    implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? username = null,
    Object? comment = freezed,
    Object? created = null,
    Object? changed = null,
    Object? entry = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Child,
    ) as $Val);
  }

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildCopyWith<$Res> get entry {
    return $ChildCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarkImplCopyWith<$Res>
    implements $BookmarkCopyWith<$Res> {
  factory _$$BookmarkImplCopyWith(
          _$BookmarkImpl value, $Res Function(_$BookmarkImpl) then) =
      __$$BookmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int position,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'entry') Child entry});

  @override
  $ChildCopyWith<$Res> get entry;
}

/// @nodoc
class __$$BookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkCopyWithImpl<$Res, _$BookmarkImpl>
    implements _$$BookmarkImplCopyWith<$Res> {
  __$$BookmarkImplCopyWithImpl(
      _$BookmarkImpl _value, $Res Function(_$BookmarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? username = null,
    Object? comment = freezed,
    Object? created = null,
    Object? changed = null,
    Object? entry = null,
  }) {
    return _then(_$BookmarkImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Child,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkImpl implements _Bookmark {
  const _$BookmarkImpl(
      {@JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'changed') required this.changed,
      @JsonKey(name: 'entry') required this.entry});

  factory _$BookmarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkImplFromJson(json);

  @override
  @JsonKey(name: 'position')
  final int position;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'created')
  final DateTime created;
  @override
  @JsonKey(name: 'changed')
  final DateTime changed;
  @override
  @JsonKey(name: 'entry')
  final Child entry;

  @override
  String toString() {
    return 'Bookmark(position: $position, username: $username, comment: $comment, created: $created, changed: $changed, entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.changed, changed) || other.changed == changed) &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, position, username, comment, created, changed, entry);

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      __$$BookmarkImplCopyWithImpl<_$BookmarkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkImplToJson(
      this,
    );
  }
}

abstract class _Bookmark implements Bookmark {
  const factory _Bookmark(
      {@JsonKey(name: 'position') required final int position,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'comment') final String? comment,
      @JsonKey(name: 'created') required final DateTime created,
      @JsonKey(name: 'changed') required final DateTime changed,
      @JsonKey(name: 'entry') required final Child entry}) = _$BookmarkImpl;

  factory _Bookmark.fromJson(Map<String, dynamic> json) =
      _$BookmarkImpl.fromJson;

  @override
  @JsonKey(name: 'position')
  int get position;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'created')
  DateTime get created;
  @override
  @JsonKey(name: 'changed')
  DateTime get changed;
  @override
  @JsonKey(name: 'entry')
  Child get entry;

  /// Create a copy of Bookmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayQueue _$PlayQueueFromJson(Map<String, dynamic> json) {
  return _PlayQueue.fromJson(json);
}

/// @nodoc
mixin _$PlayQueue {
  @JsonKey(name: 'current')
  int? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  int? get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'changed')
  DateTime get changed => throw _privateConstructorUsedError;
  @JsonKey(name: 'changedBy')
  String get changedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry')
  List<Child>? get entry => throw _privateConstructorUsedError;

  /// Serializes this PlayQueue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayQueueCopyWith<PlayQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayQueueCopyWith<$Res> {
  factory $PlayQueueCopyWith(PlayQueue value, $Res Function(PlayQueue) then) =
      _$PlayQueueCopyWithImpl<$Res, PlayQueue>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current') int? current,
      @JsonKey(name: 'position') int? position,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'changedBy') String changedBy,
      @JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class _$PlayQueueCopyWithImpl<$Res, $Val extends PlayQueue>
    implements $PlayQueueCopyWith<$Res> {
  _$PlayQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? position = freezed,
    Object? username = null,
    Object? changed = null,
    Object? changedBy = null,
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as String,
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayQueueImplCopyWith<$Res>
    implements $PlayQueueCopyWith<$Res> {
  factory _$$PlayQueueImplCopyWith(
          _$PlayQueueImpl value, $Res Function(_$PlayQueueImpl) then) =
      __$$PlayQueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current') int? current,
      @JsonKey(name: 'position') int? position,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'changed') DateTime changed,
      @JsonKey(name: 'changedBy') String changedBy,
      @JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class __$$PlayQueueImplCopyWithImpl<$Res>
    extends _$PlayQueueCopyWithImpl<$Res, _$PlayQueueImpl>
    implements _$$PlayQueueImplCopyWith<$Res> {
  __$$PlayQueueImplCopyWithImpl(
      _$PlayQueueImpl _value, $Res Function(_$PlayQueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayQueue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? position = freezed,
    Object? username = null,
    Object? changed = null,
    Object? changedBy = null,
    Object? entry = freezed,
  }) {
    return _then(_$PlayQueueImpl(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      changed: null == changed
          ? _value.changed
          : changed // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as String,
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayQueueImpl implements _PlayQueue {
  const _$PlayQueueImpl(
      {@JsonKey(name: 'current') this.current,
      @JsonKey(name: 'position') this.position,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'changed') required this.changed,
      @JsonKey(name: 'changedBy') required this.changedBy,
      @JsonKey(name: 'entry') final List<Child>? entry})
      : _entry = entry;

  factory _$PlayQueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayQueueImplFromJson(json);

  @override
  @JsonKey(name: 'current')
  final int? current;
  @override
  @JsonKey(name: 'position')
  final int? position;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'changed')
  final DateTime changed;
  @override
  @JsonKey(name: 'changedBy')
  final String changedBy;
  final List<Child>? _entry;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlayQueue(current: $current, position: $position, username: $username, changed: $changed, changedBy: $changedBy, entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayQueueImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.changed, changed) || other.changed == changed) &&
            (identical(other.changedBy, changedBy) ||
                other.changedBy == changedBy) &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, position, username,
      changed, changedBy, const DeepCollectionEquality().hash(_entry));

  /// Create a copy of PlayQueue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayQueueImplCopyWith<_$PlayQueueImpl> get copyWith =>
      __$$PlayQueueImplCopyWithImpl<_$PlayQueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayQueueImplToJson(
      this,
    );
  }
}

abstract class _PlayQueue implements PlayQueue {
  const factory _PlayQueue(
      {@JsonKey(name: 'current') final int? current,
      @JsonKey(name: 'position') final int? position,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'changed') required final DateTime changed,
      @JsonKey(name: 'changedBy') required final String changedBy,
      @JsonKey(name: 'entry') final List<Child>? entry}) = _$PlayQueueImpl;

  factory _PlayQueue.fromJson(Map<String, dynamic> json) =
      _$PlayQueueImpl.fromJson;

  @override
  @JsonKey(name: 'current')
  int? get current;
  @override
  @JsonKey(name: 'position')
  int? get position;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'changed')
  DateTime get changed;
  @override
  @JsonKey(name: 'changedBy')
  String get changedBy;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry;

  /// Create a copy of PlayQueue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayQueueImplCopyWith<_$PlayQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shares _$SharesFromJson(Map<String, dynamic> json) {
  return _Shares.fromJson(json);
}

/// @nodoc
mixin _$Shares {
  @JsonKey(name: 'share')
  List<Share>? get share => throw _privateConstructorUsedError;

  /// Serializes this Shares to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shares
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharesCopyWith<Shares> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharesCopyWith<$Res> {
  factory $SharesCopyWith(Shares value, $Res Function(Shares) then) =
      _$SharesCopyWithImpl<$Res, Shares>;
  @useResult
  $Res call({@JsonKey(name: 'share') List<Share>? share});
}

/// @nodoc
class _$SharesCopyWithImpl<$Res, $Val extends Shares>
    implements $SharesCopyWith<$Res> {
  _$SharesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shares
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? share = freezed,
  }) {
    return _then(_value.copyWith(
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as List<Share>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharesImplCopyWith<$Res> implements $SharesCopyWith<$Res> {
  factory _$$SharesImplCopyWith(
          _$SharesImpl value, $Res Function(_$SharesImpl) then) =
      __$$SharesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'share') List<Share>? share});
}

/// @nodoc
class __$$SharesImplCopyWithImpl<$Res>
    extends _$SharesCopyWithImpl<$Res, _$SharesImpl>
    implements _$$SharesImplCopyWith<$Res> {
  __$$SharesImplCopyWithImpl(
      _$SharesImpl _value, $Res Function(_$SharesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shares
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? share = freezed,
  }) {
    return _then(_$SharesImpl(
      share: freezed == share
          ? _value._share
          : share // ignore: cast_nullable_to_non_nullable
              as List<Share>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharesImpl implements _Shares {
  const _$SharesImpl({@JsonKey(name: 'share') final List<Share>? share})
      : _share = share;

  factory _$SharesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharesImplFromJson(json);

  final List<Share>? _share;
  @override
  @JsonKey(name: 'share')
  List<Share>? get share {
    final value = _share;
    if (value == null) return null;
    if (_share is EqualUnmodifiableListView) return _share;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Shares(share: $share)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharesImpl &&
            const DeepCollectionEquality().equals(other._share, _share));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_share));

  /// Create a copy of Shares
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharesImplCopyWith<_$SharesImpl> get copyWith =>
      __$$SharesImplCopyWithImpl<_$SharesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharesImplToJson(
      this,
    );
  }
}

abstract class _Shares implements Shares {
  const factory _Shares({@JsonKey(name: 'share') final List<Share>? share}) =
      _$SharesImpl;

  factory _Shares.fromJson(Map<String, dynamic> json) = _$SharesImpl.fromJson;

  @override
  @JsonKey(name: 'share')
  List<Share>? get share;

  /// Create a copy of Shares
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharesImplCopyWith<_$SharesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Share _$ShareFromJson(Map<String, dynamic> json) {
  return _Share.fromJson(json);
}

/// @nodoc
mixin _$Share {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires')
  DateTime? get expires => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastVisited')
  DateTime? get lastVisited => throw _privateConstructorUsedError;
  @JsonKey(name: 'visitCount')
  int get visitCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry')
  List<Child>? get entry => throw _privateConstructorUsedError;

  /// Serializes this Share to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Share
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res, Share>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'expires') DateTime? expires,
      @JsonKey(name: 'lastVisited') DateTime? lastVisited,
      @JsonKey(name: 'visitCount') int visitCount,
      @JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class _$ShareCopyWithImpl<$Res, $Val extends Share>
    implements $ShareCopyWith<$Res> {
  _$ShareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Share
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? description = freezed,
    Object? username = null,
    Object? created = null,
    Object? expires = freezed,
    Object? lastVisited = freezed,
    Object? visitCount = null,
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastVisited: freezed == lastVisited
          ? _value.lastVisited
          : lastVisited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visitCount: null == visitCount
          ? _value.visitCount
          : visitCount // ignore: cast_nullable_to_non_nullable
              as int,
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareImplCopyWith<$Res> implements $ShareCopyWith<$Res> {
  factory _$$ShareImplCopyWith(
          _$ShareImpl value, $Res Function(_$ShareImpl) then) =
      __$$ShareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'expires') DateTime? expires,
      @JsonKey(name: 'lastVisited') DateTime? lastVisited,
      @JsonKey(name: 'visitCount') int visitCount,
      @JsonKey(name: 'entry') List<Child>? entry});
}

/// @nodoc
class __$$ShareImplCopyWithImpl<$Res>
    extends _$ShareCopyWithImpl<$Res, _$ShareImpl>
    implements _$$ShareImplCopyWith<$Res> {
  __$$ShareImplCopyWithImpl(
      _$ShareImpl _value, $Res Function(_$ShareImpl) _then)
      : super(_value, _then);

  /// Create a copy of Share
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? description = freezed,
    Object? username = null,
    Object? created = null,
    Object? expires = freezed,
    Object? lastVisited = freezed,
    Object? visitCount = null,
    Object? entry = freezed,
  }) {
    return _then(_$ShareImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastVisited: freezed == lastVisited
          ? _value.lastVisited
          : lastVisited // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      visitCount: null == visitCount
          ? _value.visitCount
          : visitCount // ignore: cast_nullable_to_non_nullable
              as int,
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareImpl implements _Share {
  const _$ShareImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'expires') this.expires,
      @JsonKey(name: 'lastVisited') this.lastVisited,
      @JsonKey(name: 'visitCount') required this.visitCount,
      @JsonKey(name: 'entry') final List<Child>? entry})
      : _entry = entry;

  factory _$ShareImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'created')
  final DateTime created;
  @override
  @JsonKey(name: 'expires')
  final DateTime? expires;
  @override
  @JsonKey(name: 'lastVisited')
  final DateTime? lastVisited;
  @override
  @JsonKey(name: 'visitCount')
  final int visitCount;
  final List<Child>? _entry;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Share(id: $id, url: $url, description: $description, username: $username, created: $created, expires: $expires, lastVisited: $lastVisited, visitCount: $visitCount, entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.expires, expires) || other.expires == expires) &&
            (identical(other.lastVisited, lastVisited) ||
                other.lastVisited == lastVisited) &&
            (identical(other.visitCount, visitCount) ||
                other.visitCount == visitCount) &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      description,
      username,
      created,
      expires,
      lastVisited,
      visitCount,
      const DeepCollectionEquality().hash(_entry));

  /// Create a copy of Share
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      __$$ShareImplCopyWithImpl<_$ShareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareImplToJson(
      this,
    );
  }
}

abstract class _Share implements Share {
  const factory _Share(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'url') required final String url,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'created') required final DateTime created,
      @JsonKey(name: 'expires') final DateTime? expires,
      @JsonKey(name: 'lastVisited') final DateTime? lastVisited,
      @JsonKey(name: 'visitCount') required final int visitCount,
      @JsonKey(name: 'entry') final List<Child>? entry}) = _$ShareImpl;

  factory _Share.fromJson(Map<String, dynamic> json) = _$ShareImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'created')
  DateTime get created;
  @override
  @JsonKey(name: 'expires')
  DateTime? get expires;
  @override
  @JsonKey(name: 'lastVisited')
  DateTime? get lastVisited;
  @override
  @JsonKey(name: 'visitCount')
  int get visitCount;
  @override
  @JsonKey(name: 'entry')
  List<Child>? get entry;

  /// Create a copy of Share
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Starred _$StarredFromJson(Map<String, dynamic> json) {
  return _Starred.fromJson(json);
}

/// @nodoc
mixin _$Starred {
  @JsonKey(name: 'artist')
  List<Artist>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  List<Child>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this Starred to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Starred
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StarredCopyWith<Starred> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarredCopyWith<$Res> {
  factory $StarredCopyWith(Starred value, $Res Function(Starred) then) =
      _$StarredCopyWithImpl<$Res, Starred>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<Artist>? artist,
      @JsonKey(name: 'album') List<Child>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$StarredCopyWithImpl<$Res, $Val extends Starred>
    implements $StarredCopyWith<$Res> {
  _$StarredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Starred
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StarredImplCopyWith<$Res> implements $StarredCopyWith<$Res> {
  factory _$$StarredImplCopyWith(
          _$StarredImpl value, $Res Function(_$StarredImpl) then) =
      __$$StarredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<Artist>? artist,
      @JsonKey(name: 'album') List<Child>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$StarredImplCopyWithImpl<$Res>
    extends _$StarredCopyWithImpl<$Res, _$StarredImpl>
    implements _$$StarredImplCopyWith<$Res> {
  __$$StarredImplCopyWithImpl(
      _$StarredImpl _value, $Res Function(_$StarredImpl) _then)
      : super(_value, _then);

  /// Create a copy of Starred
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_$StarredImpl(
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StarredImpl implements _Starred {
  const _$StarredImpl(
      {@JsonKey(name: 'artist') final List<Artist>? artist,
      @JsonKey(name: 'album') final List<Child>? album,
      @JsonKey(name: 'song') final List<Child>? song})
      : _artist = artist,
        _album = album,
        _song = song;

  factory _$StarredImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarredImplFromJson(json);

  final List<Artist>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _album;
  @override
  @JsonKey(name: 'album')
  List<Child>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Starred(artist: $artist, album: $album, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StarredImpl &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_song));

  /// Create a copy of Starred
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StarredImplCopyWith<_$StarredImpl> get copyWith =>
      __$$StarredImplCopyWithImpl<_$StarredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarredImplToJson(
      this,
    );
  }
}

abstract class _Starred implements Starred {
  const factory _Starred(
      {@JsonKey(name: 'artist') final List<Artist>? artist,
      @JsonKey(name: 'album') final List<Child>? album,
      @JsonKey(name: 'song') final List<Child>? song}) = _$StarredImpl;

  factory _Starred.fromJson(Map<String, dynamic> json) = _$StarredImpl.fromJson;

  @override
  @JsonKey(name: 'artist')
  List<Artist>? get artist;
  @override
  @JsonKey(name: 'album')
  List<Child>? get album;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of Starred
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StarredImplCopyWith<_$StarredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumInfo _$AlbumInfoFromJson(Map<String, dynamic> json) {
  return _AlbumInfo.fromJson(json);
}

/// @nodoc
mixin _$AlbumInfo {
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'musicBrainzId')
  String? get musicBrainzId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastFmUrl')
  String? get lastFmUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallImageUrl')
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumImageUrl')
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeImageUrl')
  String? get largeImageUrl => throw _privateConstructorUsedError;

  /// Serializes this AlbumInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumInfoCopyWith<AlbumInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumInfoCopyWith<$Res> {
  factory $AlbumInfoCopyWith(AlbumInfo value, $Res Function(AlbumInfo) then) =
      _$AlbumInfoCopyWithImpl<$Res, AlbumInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'musicBrainzId') String? musicBrainzId,
      @JsonKey(name: 'lastFmUrl') String? lastFmUrl,
      @JsonKey(name: 'smallImageUrl') String? smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') String? mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') String? largeImageUrl});
}

/// @nodoc
class _$AlbumInfoCopyWithImpl<$Res, $Val extends AlbumInfo>
    implements $AlbumInfoCopyWith<$Res> {
  _$AlbumInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? musicBrainzId = freezed,
    Object? lastFmUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      musicBrainzId: freezed == musicBrainzId
          ? _value.musicBrainzId
          : musicBrainzId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFmUrl: freezed == lastFmUrl
          ? _value.lastFmUrl
          : lastFmUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumInfoImplCopyWith<$Res>
    implements $AlbumInfoCopyWith<$Res> {
  factory _$$AlbumInfoImplCopyWith(
          _$AlbumInfoImpl value, $Res Function(_$AlbumInfoImpl) then) =
      __$$AlbumInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'musicBrainzId') String? musicBrainzId,
      @JsonKey(name: 'lastFmUrl') String? lastFmUrl,
      @JsonKey(name: 'smallImageUrl') String? smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') String? mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') String? largeImageUrl});
}

/// @nodoc
class __$$AlbumInfoImplCopyWithImpl<$Res>
    extends _$AlbumInfoCopyWithImpl<$Res, _$AlbumInfoImpl>
    implements _$$AlbumInfoImplCopyWith<$Res> {
  __$$AlbumInfoImplCopyWithImpl(
      _$AlbumInfoImpl _value, $Res Function(_$AlbumInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
    Object? musicBrainzId = freezed,
    Object? lastFmUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_$AlbumInfoImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      musicBrainzId: freezed == musicBrainzId
          ? _value.musicBrainzId
          : musicBrainzId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFmUrl: freezed == lastFmUrl
          ? _value.lastFmUrl
          : lastFmUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumInfoImpl implements _AlbumInfo {
  const _$AlbumInfoImpl(
      {@JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'musicBrainzId') this.musicBrainzId,
      @JsonKey(name: 'lastFmUrl') this.lastFmUrl,
      @JsonKey(name: 'smallImageUrl') this.smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') this.mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') this.largeImageUrl});

  factory _$AlbumInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumInfoImplFromJson(json);

  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'musicBrainzId')
  final String? musicBrainzId;
  @override
  @JsonKey(name: 'lastFmUrl')
  final String? lastFmUrl;
  @override
  @JsonKey(name: 'smallImageUrl')
  final String? smallImageUrl;
  @override
  @JsonKey(name: 'mediumImageUrl')
  final String? mediumImageUrl;
  @override
  @JsonKey(name: 'largeImageUrl')
  final String? largeImageUrl;

  @override
  String toString() {
    return 'AlbumInfo(notes: $notes, musicBrainzId: $musicBrainzId, lastFmUrl: $lastFmUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumInfoImpl &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.musicBrainzId, musicBrainzId) ||
                other.musicBrainzId == musicBrainzId) &&
            (identical(other.lastFmUrl, lastFmUrl) ||
                other.lastFmUrl == lastFmUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes, musicBrainzId, lastFmUrl,
      smallImageUrl, mediumImageUrl, largeImageUrl);

  /// Create a copy of AlbumInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumInfoImplCopyWith<_$AlbumInfoImpl> get copyWith =>
      __$$AlbumInfoImplCopyWithImpl<_$AlbumInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumInfoImplToJson(
      this,
    );
  }
}

abstract class _AlbumInfo implements AlbumInfo {
  const factory _AlbumInfo(
          {@JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'musicBrainzId') final String? musicBrainzId,
          @JsonKey(name: 'lastFmUrl') final String? lastFmUrl,
          @JsonKey(name: 'smallImageUrl') final String? smallImageUrl,
          @JsonKey(name: 'mediumImageUrl') final String? mediumImageUrl,
          @JsonKey(name: 'largeImageUrl') final String? largeImageUrl}) =
      _$AlbumInfoImpl;

  factory _AlbumInfo.fromJson(Map<String, dynamic> json) =
      _$AlbumInfoImpl.fromJson;

  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'musicBrainzId')
  String? get musicBrainzId;
  @override
  @JsonKey(name: 'lastFmUrl')
  String? get lastFmUrl;
  @override
  @JsonKey(name: 'smallImageUrl')
  String? get smallImageUrl;
  @override
  @JsonKey(name: 'mediumImageUrl')
  String? get mediumImageUrl;
  @override
  @JsonKey(name: 'largeImageUrl')
  String? get largeImageUrl;

  /// Create a copy of AlbumInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumInfoImplCopyWith<_$AlbumInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistInfoBase _$ArtistInfoBaseFromJson(Map<String, dynamic> json) {
  return _ArtistInfoBase.fromJson(json);
}

/// @nodoc
mixin _$ArtistInfoBase {
  @JsonKey(name: 'biography')
  String? get biography => throw _privateConstructorUsedError;
  @JsonKey(name: 'musicBrainzId')
  String? get musicBrainzId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastFmUrl')
  String? get lastFmUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallImageUrl')
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'mediumImageUrl')
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'largeImageUrl')
  String? get largeImageUrl => throw _privateConstructorUsedError;

  /// Serializes this ArtistInfoBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistInfoBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistInfoBaseCopyWith<ArtistInfoBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistInfoBaseCopyWith<$Res> {
  factory $ArtistInfoBaseCopyWith(
          ArtistInfoBase value, $Res Function(ArtistInfoBase) then) =
      _$ArtistInfoBaseCopyWithImpl<$Res, ArtistInfoBase>;
  @useResult
  $Res call(
      {@JsonKey(name: 'biography') String? biography,
      @JsonKey(name: 'musicBrainzId') String? musicBrainzId,
      @JsonKey(name: 'lastFmUrl') String? lastFmUrl,
      @JsonKey(name: 'smallImageUrl') String? smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') String? mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') String? largeImageUrl});
}

/// @nodoc
class _$ArtistInfoBaseCopyWithImpl<$Res, $Val extends ArtistInfoBase>
    implements $ArtistInfoBaseCopyWith<$Res> {
  _$ArtistInfoBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistInfoBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biography = freezed,
    Object? musicBrainzId = freezed,
    Object? lastFmUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      musicBrainzId: freezed == musicBrainzId
          ? _value.musicBrainzId
          : musicBrainzId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFmUrl: freezed == lastFmUrl
          ? _value.lastFmUrl
          : lastFmUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistInfoBaseImplCopyWith<$Res>
    implements $ArtistInfoBaseCopyWith<$Res> {
  factory _$$ArtistInfoBaseImplCopyWith(_$ArtistInfoBaseImpl value,
          $Res Function(_$ArtistInfoBaseImpl) then) =
      __$$ArtistInfoBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'biography') String? biography,
      @JsonKey(name: 'musicBrainzId') String? musicBrainzId,
      @JsonKey(name: 'lastFmUrl') String? lastFmUrl,
      @JsonKey(name: 'smallImageUrl') String? smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') String? mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') String? largeImageUrl});
}

/// @nodoc
class __$$ArtistInfoBaseImplCopyWithImpl<$Res>
    extends _$ArtistInfoBaseCopyWithImpl<$Res, _$ArtistInfoBaseImpl>
    implements _$$ArtistInfoBaseImplCopyWith<$Res> {
  __$$ArtistInfoBaseImplCopyWithImpl(
      _$ArtistInfoBaseImpl _value, $Res Function(_$ArtistInfoBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistInfoBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biography = freezed,
    Object? musicBrainzId = freezed,
    Object? lastFmUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_$ArtistInfoBaseImpl(
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      musicBrainzId: freezed == musicBrainzId
          ? _value.musicBrainzId
          : musicBrainzId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFmUrl: freezed == lastFmUrl
          ? _value.lastFmUrl
          : lastFmUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistInfoBaseImpl implements _ArtistInfoBase {
  const _$ArtistInfoBaseImpl(
      {@JsonKey(name: 'biography') this.biography,
      @JsonKey(name: 'musicBrainzId') this.musicBrainzId,
      @JsonKey(name: 'lastFmUrl') this.lastFmUrl,
      @JsonKey(name: 'smallImageUrl') this.smallImageUrl,
      @JsonKey(name: 'mediumImageUrl') this.mediumImageUrl,
      @JsonKey(name: 'largeImageUrl') this.largeImageUrl});

  factory _$ArtistInfoBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistInfoBaseImplFromJson(json);

  @override
  @JsonKey(name: 'biography')
  final String? biography;
  @override
  @JsonKey(name: 'musicBrainzId')
  final String? musicBrainzId;
  @override
  @JsonKey(name: 'lastFmUrl')
  final String? lastFmUrl;
  @override
  @JsonKey(name: 'smallImageUrl')
  final String? smallImageUrl;
  @override
  @JsonKey(name: 'mediumImageUrl')
  final String? mediumImageUrl;
  @override
  @JsonKey(name: 'largeImageUrl')
  final String? largeImageUrl;

  @override
  String toString() {
    return 'ArtistInfoBase(biography: $biography, musicBrainzId: $musicBrainzId, lastFmUrl: $lastFmUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistInfoBaseImpl &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.musicBrainzId, musicBrainzId) ||
                other.musicBrainzId == musicBrainzId) &&
            (identical(other.lastFmUrl, lastFmUrl) ||
                other.lastFmUrl == lastFmUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, biography, musicBrainzId,
      lastFmUrl, smallImageUrl, mediumImageUrl, largeImageUrl);

  /// Create a copy of ArtistInfoBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistInfoBaseImplCopyWith<_$ArtistInfoBaseImpl> get copyWith =>
      __$$ArtistInfoBaseImplCopyWithImpl<_$ArtistInfoBaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistInfoBaseImplToJson(
      this,
    );
  }
}

abstract class _ArtistInfoBase implements ArtistInfoBase {
  const factory _ArtistInfoBase(
          {@JsonKey(name: 'biography') final String? biography,
          @JsonKey(name: 'musicBrainzId') final String? musicBrainzId,
          @JsonKey(name: 'lastFmUrl') final String? lastFmUrl,
          @JsonKey(name: 'smallImageUrl') final String? smallImageUrl,
          @JsonKey(name: 'mediumImageUrl') final String? mediumImageUrl,
          @JsonKey(name: 'largeImageUrl') final String? largeImageUrl}) =
      _$ArtistInfoBaseImpl;

  factory _ArtistInfoBase.fromJson(Map<String, dynamic> json) =
      _$ArtistInfoBaseImpl.fromJson;

  @override
  @JsonKey(name: 'biography')
  String? get biography;
  @override
  @JsonKey(name: 'musicBrainzId')
  String? get musicBrainzId;
  @override
  @JsonKey(name: 'lastFmUrl')
  String? get lastFmUrl;
  @override
  @JsonKey(name: 'smallImageUrl')
  String? get smallImageUrl;
  @override
  @JsonKey(name: 'mediumImageUrl')
  String? get mediumImageUrl;
  @override
  @JsonKey(name: 'largeImageUrl')
  String? get largeImageUrl;

  /// Create a copy of ArtistInfoBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistInfoBaseImplCopyWith<_$ArtistInfoBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistInfo _$ArtistInfoFromJson(Map<String, dynamic> json) {
  return _ArtistInfo.fromJson(json);
}

/// @nodoc
mixin _$ArtistInfo {
  @JsonKey(name: 'similarArtist')
  List<Artist>? get similarArtist => throw _privateConstructorUsedError;

  /// Serializes this ArtistInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistInfoCopyWith<ArtistInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistInfoCopyWith<$Res> {
  factory $ArtistInfoCopyWith(
          ArtistInfo value, $Res Function(ArtistInfo) then) =
      _$ArtistInfoCopyWithImpl<$Res, ArtistInfo>;
  @useResult
  $Res call({@JsonKey(name: 'similarArtist') List<Artist>? similarArtist});
}

/// @nodoc
class _$ArtistInfoCopyWithImpl<$Res, $Val extends ArtistInfo>
    implements $ArtistInfoCopyWith<$Res> {
  _$ArtistInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? similarArtist = freezed,
  }) {
    return _then(_value.copyWith(
      similarArtist: freezed == similarArtist
          ? _value.similarArtist
          : similarArtist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistInfoImplCopyWith<$Res>
    implements $ArtistInfoCopyWith<$Res> {
  factory _$$ArtistInfoImplCopyWith(
          _$ArtistInfoImpl value, $Res Function(_$ArtistInfoImpl) then) =
      __$$ArtistInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'similarArtist') List<Artist>? similarArtist});
}

/// @nodoc
class __$$ArtistInfoImplCopyWithImpl<$Res>
    extends _$ArtistInfoCopyWithImpl<$Res, _$ArtistInfoImpl>
    implements _$$ArtistInfoImplCopyWith<$Res> {
  __$$ArtistInfoImplCopyWithImpl(
      _$ArtistInfoImpl _value, $Res Function(_$ArtistInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? similarArtist = freezed,
  }) {
    return _then(_$ArtistInfoImpl(
      similarArtist: freezed == similarArtist
          ? _value._similarArtist
          : similarArtist // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistInfoImpl implements _ArtistInfo {
  const _$ArtistInfoImpl(
      {@JsonKey(name: 'similarArtist') final List<Artist>? similarArtist})
      : _similarArtist = similarArtist;

  factory _$ArtistInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistInfoImplFromJson(json);

  final List<Artist>? _similarArtist;
  @override
  @JsonKey(name: 'similarArtist')
  List<Artist>? get similarArtist {
    final value = _similarArtist;
    if (value == null) return null;
    if (_similarArtist is EqualUnmodifiableListView) return _similarArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistInfo(similarArtist: $similarArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._similarArtist, _similarArtist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_similarArtist));

  /// Create a copy of ArtistInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistInfoImplCopyWith<_$ArtistInfoImpl> get copyWith =>
      __$$ArtistInfoImplCopyWithImpl<_$ArtistInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistInfoImplToJson(
      this,
    );
  }
}

abstract class _ArtistInfo implements ArtistInfo {
  const factory _ArtistInfo(
          {@JsonKey(name: 'similarArtist') final List<Artist>? similarArtist}) =
      _$ArtistInfoImpl;

  factory _ArtistInfo.fromJson(Map<String, dynamic> json) =
      _$ArtistInfoImpl.fromJson;

  @override
  @JsonKey(name: 'similarArtist')
  List<Artist>? get similarArtist;

  /// Create a copy of ArtistInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistInfoImplCopyWith<_$ArtistInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistInfo2 _$ArtistInfo2FromJson(Map<String, dynamic> json) {
  return _ArtistInfo2.fromJson(json);
}

/// @nodoc
mixin _$ArtistInfo2 {
  @JsonKey(name: 'similarArtist')
  List<ArtistId3>? get similarArtist => throw _privateConstructorUsedError;

  /// Serializes this ArtistInfo2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistInfo2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistInfo2CopyWith<ArtistInfo2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistInfo2CopyWith<$Res> {
  factory $ArtistInfo2CopyWith(
          ArtistInfo2 value, $Res Function(ArtistInfo2) then) =
      _$ArtistInfo2CopyWithImpl<$Res, ArtistInfo2>;
  @useResult
  $Res call({@JsonKey(name: 'similarArtist') List<ArtistId3>? similarArtist});
}

/// @nodoc
class _$ArtistInfo2CopyWithImpl<$Res, $Val extends ArtistInfo2>
    implements $ArtistInfo2CopyWith<$Res> {
  _$ArtistInfo2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistInfo2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? similarArtist = freezed,
  }) {
    return _then(_value.copyWith(
      similarArtist: freezed == similarArtist
          ? _value.similarArtist
          : similarArtist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistInfo2ImplCopyWith<$Res>
    implements $ArtistInfo2CopyWith<$Res> {
  factory _$$ArtistInfo2ImplCopyWith(
          _$ArtistInfo2Impl value, $Res Function(_$ArtistInfo2Impl) then) =
      __$$ArtistInfo2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'similarArtist') List<ArtistId3>? similarArtist});
}

/// @nodoc
class __$$ArtistInfo2ImplCopyWithImpl<$Res>
    extends _$ArtistInfo2CopyWithImpl<$Res, _$ArtistInfo2Impl>
    implements _$$ArtistInfo2ImplCopyWith<$Res> {
  __$$ArtistInfo2ImplCopyWithImpl(
      _$ArtistInfo2Impl _value, $Res Function(_$ArtistInfo2Impl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistInfo2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? similarArtist = freezed,
  }) {
    return _then(_$ArtistInfo2Impl(
      similarArtist: freezed == similarArtist
          ? _value._similarArtist
          : similarArtist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistInfo2Impl implements _ArtistInfo2 {
  const _$ArtistInfo2Impl(
      {@JsonKey(name: 'similarArtist') final List<ArtistId3>? similarArtist})
      : _similarArtist = similarArtist;

  factory _$ArtistInfo2Impl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistInfo2ImplFromJson(json);

  final List<ArtistId3>? _similarArtist;
  @override
  @JsonKey(name: 'similarArtist')
  List<ArtistId3>? get similarArtist {
    final value = _similarArtist;
    if (value == null) return null;
    if (_similarArtist is EqualUnmodifiableListView) return _similarArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArtistInfo2(similarArtist: $similarArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistInfo2Impl &&
            const DeepCollectionEquality()
                .equals(other._similarArtist, _similarArtist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_similarArtist));

  /// Create a copy of ArtistInfo2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistInfo2ImplCopyWith<_$ArtistInfo2Impl> get copyWith =>
      __$$ArtistInfo2ImplCopyWithImpl<_$ArtistInfo2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistInfo2ImplToJson(
      this,
    );
  }
}

abstract class _ArtistInfo2 implements ArtistInfo2 {
  const factory _ArtistInfo2(
      {@JsonKey(name: 'similarArtist')
      final List<ArtistId3>? similarArtist}) = _$ArtistInfo2Impl;

  factory _ArtistInfo2.fromJson(Map<String, dynamic> json) =
      _$ArtistInfo2Impl.fromJson;

  @override
  @JsonKey(name: 'similarArtist')
  List<ArtistId3>? get similarArtist;

  /// Create a copy of ArtistInfo2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistInfo2ImplCopyWith<_$ArtistInfo2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarSongs _$SimilarSongsFromJson(Map<String, dynamic> json) {
  return _SimilarSongs.fromJson(json);
}

/// @nodoc
mixin _$SimilarSongs {
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this SimilarSongs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimilarSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimilarSongsCopyWith<SimilarSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarSongsCopyWith<$Res> {
  factory $SimilarSongsCopyWith(
          SimilarSongs value, $Res Function(SimilarSongs) then) =
      _$SimilarSongsCopyWithImpl<$Res, SimilarSongs>;
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$SimilarSongsCopyWithImpl<$Res, $Val extends SimilarSongs>
    implements $SimilarSongsCopyWith<$Res> {
  _$SimilarSongsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarSongsImplCopyWith<$Res>
    implements $SimilarSongsCopyWith<$Res> {
  factory _$$SimilarSongsImplCopyWith(
          _$SimilarSongsImpl value, $Res Function(_$SimilarSongsImpl) then) =
      __$$SimilarSongsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$SimilarSongsImplCopyWithImpl<$Res>
    extends _$SimilarSongsCopyWithImpl<$Res, _$SimilarSongsImpl>
    implements _$$SimilarSongsImplCopyWith<$Res> {
  __$$SimilarSongsImplCopyWithImpl(
      _$SimilarSongsImpl _value, $Res Function(_$SimilarSongsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimilarSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$SimilarSongsImpl(
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarSongsImpl implements _SimilarSongs {
  const _$SimilarSongsImpl({@JsonKey(name: 'song') final List<Child>? song})
      : _song = song;

  factory _$SimilarSongsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarSongsImplFromJson(json);

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SimilarSongs(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarSongsImpl &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_song));

  /// Create a copy of SimilarSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarSongsImplCopyWith<_$SimilarSongsImpl> get copyWith =>
      __$$SimilarSongsImplCopyWithImpl<_$SimilarSongsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarSongsImplToJson(
      this,
    );
  }
}

abstract class _SimilarSongs implements SimilarSongs {
  const factory _SimilarSongs(
      {@JsonKey(name: 'song') final List<Child>? song}) = _$SimilarSongsImpl;

  factory _SimilarSongs.fromJson(Map<String, dynamic> json) =
      _$SimilarSongsImpl.fromJson;

  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of SimilarSongs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimilarSongsImplCopyWith<_$SimilarSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarSongs2 _$SimilarSongs2FromJson(Map<String, dynamic> json) {
  return _SimilarSongs2.fromJson(json);
}

/// @nodoc
mixin _$SimilarSongs2 {
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this SimilarSongs2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimilarSongs2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimilarSongs2CopyWith<SimilarSongs2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarSongs2CopyWith<$Res> {
  factory $SimilarSongs2CopyWith(
          SimilarSongs2 value, $Res Function(SimilarSongs2) then) =
      _$SimilarSongs2CopyWithImpl<$Res, SimilarSongs2>;
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$SimilarSongs2CopyWithImpl<$Res, $Val extends SimilarSongs2>
    implements $SimilarSongs2CopyWith<$Res> {
  _$SimilarSongs2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarSongs2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarSongs2ImplCopyWith<$Res>
    implements $SimilarSongs2CopyWith<$Res> {
  factory _$$SimilarSongs2ImplCopyWith(
          _$SimilarSongs2Impl value, $Res Function(_$SimilarSongs2Impl) then) =
      __$$SimilarSongs2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$SimilarSongs2ImplCopyWithImpl<$Res>
    extends _$SimilarSongs2CopyWithImpl<$Res, _$SimilarSongs2Impl>
    implements _$$SimilarSongs2ImplCopyWith<$Res> {
  __$$SimilarSongs2ImplCopyWithImpl(
      _$SimilarSongs2Impl _value, $Res Function(_$SimilarSongs2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SimilarSongs2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$SimilarSongs2Impl(
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarSongs2Impl implements _SimilarSongs2 {
  const _$SimilarSongs2Impl({@JsonKey(name: 'song') final List<Child>? song})
      : _song = song;

  factory _$SimilarSongs2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarSongs2ImplFromJson(json);

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SimilarSongs2(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarSongs2Impl &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_song));

  /// Create a copy of SimilarSongs2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarSongs2ImplCopyWith<_$SimilarSongs2Impl> get copyWith =>
      __$$SimilarSongs2ImplCopyWithImpl<_$SimilarSongs2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarSongs2ImplToJson(
      this,
    );
  }
}

abstract class _SimilarSongs2 implements SimilarSongs2 {
  const factory _SimilarSongs2(
      {@JsonKey(name: 'song') final List<Child>? song}) = _$SimilarSongs2Impl;

  factory _SimilarSongs2.fromJson(Map<String, dynamic> json) =
      _$SimilarSongs2Impl.fromJson;

  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of SimilarSongs2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimilarSongs2ImplCopyWith<_$SimilarSongs2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopSongs _$TopSongsFromJson(Map<String, dynamic> json) {
  return _TopSongs.fromJson(json);
}

/// @nodoc
mixin _$TopSongs {
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this TopSongs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopSongsCopyWith<TopSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSongsCopyWith<$Res> {
  factory $TopSongsCopyWith(TopSongs value, $Res Function(TopSongs) then) =
      _$TopSongsCopyWithImpl<$Res, TopSongs>;
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$TopSongsCopyWithImpl<$Res, $Val extends TopSongs>
    implements $TopSongsCopyWith<$Res> {
  _$TopSongsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopSongsImplCopyWith<$Res>
    implements $TopSongsCopyWith<$Res> {
  factory _$$TopSongsImplCopyWith(
          _$TopSongsImpl value, $Res Function(_$TopSongsImpl) then) =
      __$$TopSongsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$TopSongsImplCopyWithImpl<$Res>
    extends _$TopSongsCopyWithImpl<$Res, _$TopSongsImpl>
    implements _$$TopSongsImplCopyWith<$Res> {
  __$$TopSongsImplCopyWithImpl(
      _$TopSongsImpl _value, $Res Function(_$TopSongsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopSongs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$TopSongsImpl(
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSongsImpl implements _TopSongs {
  const _$TopSongsImpl({@JsonKey(name: 'song') final List<Child>? song})
      : _song = song;

  factory _$TopSongsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopSongsImplFromJson(json);

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopSongs(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopSongsImpl &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_song));

  /// Create a copy of TopSongs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopSongsImplCopyWith<_$TopSongsImpl> get copyWith =>
      __$$TopSongsImplCopyWithImpl<_$TopSongsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopSongsImplToJson(
      this,
    );
  }
}

abstract class _TopSongs implements TopSongs {
  const factory _TopSongs({@JsonKey(name: 'song') final List<Child>? song}) =
      _$TopSongsImpl;

  factory _TopSongs.fromJson(Map<String, dynamic> json) =
      _$TopSongsImpl.fromJson;

  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of TopSongs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopSongsImplCopyWith<_$TopSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Starred2 _$Starred2FromJson(Map<String, dynamic> json) {
  return _Starred2.fromJson(json);
}

/// @nodoc
mixin _$Starred2 {
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  List<AlbumId3>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'song')
  List<Child>? get song => throw _privateConstructorUsedError;

  /// Serializes this Starred2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Starred2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Starred2CopyWith<Starred2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Starred2CopyWith<$Res> {
  factory $Starred2CopyWith(Starred2 value, $Res Function(Starred2) then) =
      _$Starred2CopyWithImpl<$Res, Starred2>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<ArtistId3>? artist,
      @JsonKey(name: 'album') List<AlbumId3>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class _$Starred2CopyWithImpl<$Res, $Val extends Starred2>
    implements $Starred2CopyWith<$Res> {
  _$Starred2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Starred2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Starred2ImplCopyWith<$Res>
    implements $Starred2CopyWith<$Res> {
  factory _$$Starred2ImplCopyWith(
          _$Starred2Impl value, $Res Function(_$Starred2Impl) then) =
      __$$Starred2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artist') List<ArtistId3>? artist,
      @JsonKey(name: 'album') List<AlbumId3>? album,
      @JsonKey(name: 'song') List<Child>? song});
}

/// @nodoc
class __$$Starred2ImplCopyWithImpl<$Res>
    extends _$Starred2CopyWithImpl<$Res, _$Starred2Impl>
    implements _$$Starred2ImplCopyWith<$Res> {
  __$$Starred2ImplCopyWithImpl(
      _$Starred2Impl _value, $Res Function(_$Starred2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Starred2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
    Object? album = freezed,
    Object? song = freezed,
  }) {
    return _then(_$Starred2Impl(
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<ArtistId3>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumId3>?,
      song: freezed == song
          ? _value._song
          : song // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Starred2Impl implements _Starred2 {
  const _$Starred2Impl(
      {@JsonKey(name: 'artist') final List<ArtistId3>? artist,
      @JsonKey(name: 'album') final List<AlbumId3>? album,
      @JsonKey(name: 'song') final List<Child>? song})
      : _artist = artist,
        _album = album,
        _song = song;

  factory _$Starred2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Starred2ImplFromJson(json);

  final List<ArtistId3>? _artist;
  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AlbumId3>? _album;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _song;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song {
    final value = _song;
    if (value == null) return null;
    if (_song is EqualUnmodifiableListView) return _song;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Starred2(artist: $artist, album: $album, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Starred2Impl &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._song, _song));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_song));

  /// Create a copy of Starred2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Starred2ImplCopyWith<_$Starred2Impl> get copyWith =>
      __$$Starred2ImplCopyWithImpl<_$Starred2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Starred2ImplToJson(
      this,
    );
  }
}

abstract class _Starred2 implements Starred2 {
  const factory _Starred2(
      {@JsonKey(name: 'artist') final List<ArtistId3>? artist,
      @JsonKey(name: 'album') final List<AlbumId3>? album,
      @JsonKey(name: 'song') final List<Child>? song}) = _$Starred2Impl;

  factory _Starred2.fromJson(Map<String, dynamic> json) =
      _$Starred2Impl.fromJson;

  @override
  @JsonKey(name: 'artist')
  List<ArtistId3>? get artist;
  @override
  @JsonKey(name: 'album')
  List<AlbumId3>? get album;
  @override
  @JsonKey(name: 'song')
  List<Child>? get song;

  /// Create a copy of Starred2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Starred2ImplCopyWith<_$Starred2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
mixin _$License {
  @JsonKey(name: 'valid')
  bool get valid => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'licenseExpires')
  DateTime? get licenseExpires => throw _privateConstructorUsedError;
  @JsonKey(name: 'trialExpires')
  DateTime? get trialExpires => throw _privateConstructorUsedError;

  /// Serializes this License to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res, License>;
  @useResult
  $Res call(
      {@JsonKey(name: 'valid') bool valid,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'licenseExpires') DateTime? licenseExpires,
      @JsonKey(name: 'trialExpires') DateTime? trialExpires});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res, $Val extends License>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? email = freezed,
    Object? licenseExpires = freezed,
    Object? trialExpires = freezed,
  }) {
    return _then(_value.copyWith(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseExpires: freezed == licenseExpires
          ? _value.licenseExpires
          : licenseExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trialExpires: freezed == trialExpires
          ? _value.trialExpires
          : trialExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseImplCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$$LicenseImplCopyWith(
          _$LicenseImpl value, $Res Function(_$LicenseImpl) then) =
      __$$LicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'valid') bool valid,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'licenseExpires') DateTime? licenseExpires,
      @JsonKey(name: 'trialExpires') DateTime? trialExpires});
}

/// @nodoc
class __$$LicenseImplCopyWithImpl<$Res>
    extends _$LicenseCopyWithImpl<$Res, _$LicenseImpl>
    implements _$$LicenseImplCopyWith<$Res> {
  __$$LicenseImplCopyWithImpl(
      _$LicenseImpl _value, $Res Function(_$LicenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valid = null,
    Object? email = freezed,
    Object? licenseExpires = freezed,
    Object? trialExpires = freezed,
  }) {
    return _then(_$LicenseImpl(
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseExpires: freezed == licenseExpires
          ? _value.licenseExpires
          : licenseExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trialExpires: freezed == trialExpires
          ? _value.trialExpires
          : trialExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicenseImpl implements _License {
  const _$LicenseImpl(
      {@JsonKey(name: 'valid') required this.valid,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'licenseExpires') this.licenseExpires,
      @JsonKey(name: 'trialExpires') this.trialExpires});

  factory _$LicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicenseImplFromJson(json);

  @override
  @JsonKey(name: 'valid')
  final bool valid;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'licenseExpires')
  final DateTime? licenseExpires;
  @override
  @JsonKey(name: 'trialExpires')
  final DateTime? trialExpires;

  @override
  String toString() {
    return 'License(valid: $valid, email: $email, licenseExpires: $licenseExpires, trialExpires: $trialExpires)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseImpl &&
            (identical(other.valid, valid) || other.valid == valid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.licenseExpires, licenseExpires) ||
                other.licenseExpires == licenseExpires) &&
            (identical(other.trialExpires, trialExpires) ||
                other.trialExpires == trialExpires));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, valid, email, licenseExpires, trialExpires);

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      __$$LicenseImplCopyWithImpl<_$LicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicenseImplToJson(
      this,
    );
  }
}

abstract class _License implements License {
  const factory _License(
          {@JsonKey(name: 'valid') required final bool valid,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'licenseExpires') final DateTime? licenseExpires,
          @JsonKey(name: 'trialExpires') final DateTime? trialExpires}) =
      _$LicenseImpl;

  factory _License.fromJson(Map<String, dynamic> json) = _$LicenseImpl.fromJson;

  @override
  @JsonKey(name: 'valid')
  bool get valid;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'licenseExpires')
  DateTime? get licenseExpires;
  @override
  @JsonKey(name: 'trialExpires')
  DateTime? get trialExpires;

  /// Create a copy of License
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScanStatus _$ScanStatusFromJson(Map<String, dynamic> json) {
  return _ScanStatus.fromJson(json);
}

/// @nodoc
mixin _$ScanStatus {
  @JsonKey(name: 'scanning')
  bool get scanning => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;

  /// Serializes this ScanStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScanStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanStatusCopyWith<ScanStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStatusCopyWith<$Res> {
  factory $ScanStatusCopyWith(
          ScanStatus value, $Res Function(ScanStatus) then) =
      _$ScanStatusCopyWithImpl<$Res, ScanStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'scanning') bool scanning,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class _$ScanStatusCopyWithImpl<$Res, $Val extends ScanStatus>
    implements $ScanStatusCopyWith<$Res> {
  _$ScanStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scanning = null,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      scanning: null == scanning
          ? _value.scanning
          : scanning // ignore: cast_nullable_to_non_nullable
              as bool,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanStatusImplCopyWith<$Res>
    implements $ScanStatusCopyWith<$Res> {
  factory _$$ScanStatusImplCopyWith(
          _$ScanStatusImpl value, $Res Function(_$ScanStatusImpl) then) =
      __$$ScanStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'scanning') bool scanning,
      @JsonKey(name: 'count') int? count});
}

/// @nodoc
class __$$ScanStatusImplCopyWithImpl<$Res>
    extends _$ScanStatusCopyWithImpl<$Res, _$ScanStatusImpl>
    implements _$$ScanStatusImplCopyWith<$Res> {
  __$$ScanStatusImplCopyWithImpl(
      _$ScanStatusImpl _value, $Res Function(_$ScanStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scanning = null,
    Object? count = freezed,
  }) {
    return _then(_$ScanStatusImpl(
      scanning: null == scanning
          ? _value.scanning
          : scanning // ignore: cast_nullable_to_non_nullable
              as bool,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanStatusImpl implements _ScanStatus {
  const _$ScanStatusImpl(
      {@JsonKey(name: 'scanning') required this.scanning,
      @JsonKey(name: 'count') this.count});

  factory _$ScanStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanStatusImplFromJson(json);

  @override
  @JsonKey(name: 'scanning')
  final bool scanning;
  @override
  @JsonKey(name: 'count')
  final int? count;

  @override
  String toString() {
    return 'ScanStatus(scanning: $scanning, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanStatusImpl &&
            (identical(other.scanning, scanning) ||
                other.scanning == scanning) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scanning, count);

  /// Create a copy of ScanStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanStatusImplCopyWith<_$ScanStatusImpl> get copyWith =>
      __$$ScanStatusImplCopyWithImpl<_$ScanStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanStatusImplToJson(
      this,
    );
  }
}

abstract class _ScanStatus implements ScanStatus {
  const factory _ScanStatus(
      {@JsonKey(name: 'scanning') required final bool scanning,
      @JsonKey(name: 'count') final int? count}) = _$ScanStatusImpl;

  factory _ScanStatus.fromJson(Map<String, dynamic> json) =
      _$ScanStatusImpl.fromJson;

  @override
  @JsonKey(name: 'scanning')
  bool get scanning;
  @override
  @JsonKey(name: 'count')
  int? get count;

  /// Create a copy of ScanStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanStatusImplCopyWith<_$ScanStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  @JsonKey(name: 'user')
  List<User>? get user => throw _privateConstructorUsedError;

  /// Serializes this Users to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call({@JsonKey(name: 'user') List<User>? user});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersImplCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$UsersImplCopyWith(
          _$UsersImpl value, $Res Function(_$UsersImpl) then) =
      __$$UsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user') List<User>? user});
}

/// @nodoc
class __$$UsersImplCopyWithImpl<$Res>
    extends _$UsersCopyWithImpl<$Res, _$UsersImpl>
    implements _$$UsersImplCopyWith<$Res> {
  __$$UsersImplCopyWithImpl(
      _$UsersImpl _value, $Res Function(_$UsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UsersImpl(
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersImpl implements _Users {
  const _$UsersImpl({@JsonKey(name: 'user') final List<User>? user})
      : _user = user;

  factory _$UsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersImplFromJson(json);

  final List<User>? _user;
  @override
  @JsonKey(name: 'user')
  List<User>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Users(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersImpl &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      __$$UsersImplCopyWithImpl<_$UsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersImplToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users({@JsonKey(name: 'user') final List<User>? user}) =
      _$UsersImpl;

  factory _Users.fromJson(Map<String, dynamic> json) = _$UsersImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  List<User>? get user;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersImplCopyWith<_$UsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'scrobblingEnabled')
  bool get scrobblingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxBitRate')
  int? get maxBitRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'adminRole')
  bool get adminRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'settingsRole')
  bool get settingsRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'downloadRole')
  bool get downloadRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploadRole')
  bool get uploadRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlistRole')
  bool get playlistRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArtRole')
  bool get coverArtRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentRole')
  bool get commentRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'podcastRole')
  bool get podcastRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'streamRole')
  bool get streamRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'jukeboxRole')
  bool get jukeboxRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'shareRole')
  bool get shareRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoConversionRole')
  bool get videoConversionRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarLastChanged')
  DateTime? get avatarLastChanged => throw _privateConstructorUsedError;
  @JsonKey(name: 'folder')
  List<int>? get folder => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scrobblingEnabled') bool scrobblingEnabled,
      @JsonKey(name: 'maxBitRate') int? maxBitRate,
      @JsonKey(name: 'adminRole') bool adminRole,
      @JsonKey(name: 'settingsRole') bool settingsRole,
      @JsonKey(name: 'downloadRole') bool downloadRole,
      @JsonKey(name: 'uploadRole') bool uploadRole,
      @JsonKey(name: 'playlistRole') bool playlistRole,
      @JsonKey(name: 'coverArtRole') bool coverArtRole,
      @JsonKey(name: 'commentRole') bool commentRole,
      @JsonKey(name: 'podcastRole') bool podcastRole,
      @JsonKey(name: 'streamRole') bool streamRole,
      @JsonKey(name: 'jukeboxRole') bool jukeboxRole,
      @JsonKey(name: 'shareRole') bool shareRole,
      @JsonKey(name: 'videoConversionRole') bool videoConversionRole,
      @JsonKey(name: 'avatarLastChanged') DateTime? avatarLastChanged,
      @JsonKey(name: 'folder') List<int>? folder});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = freezed,
    Object? scrobblingEnabled = null,
    Object? maxBitRate = freezed,
    Object? adminRole = null,
    Object? settingsRole = null,
    Object? downloadRole = null,
    Object? uploadRole = null,
    Object? playlistRole = null,
    Object? coverArtRole = null,
    Object? commentRole = null,
    Object? podcastRole = null,
    Object? streamRole = null,
    Object? jukeboxRole = null,
    Object? shareRole = null,
    Object? videoConversionRole = null,
    Object? avatarLastChanged = freezed,
    Object? folder = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      scrobblingEnabled: null == scrobblingEnabled
          ? _value.scrobblingEnabled
          : scrobblingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBitRate: freezed == maxBitRate
          ? _value.maxBitRate
          : maxBitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      adminRole: null == adminRole
          ? _value.adminRole
          : adminRole // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsRole: null == settingsRole
          ? _value.settingsRole
          : settingsRole // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadRole: null == downloadRole
          ? _value.downloadRole
          : downloadRole // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadRole: null == uploadRole
          ? _value.uploadRole
          : uploadRole // ignore: cast_nullable_to_non_nullable
              as bool,
      playlistRole: null == playlistRole
          ? _value.playlistRole
          : playlistRole // ignore: cast_nullable_to_non_nullable
              as bool,
      coverArtRole: null == coverArtRole
          ? _value.coverArtRole
          : coverArtRole // ignore: cast_nullable_to_non_nullable
              as bool,
      commentRole: null == commentRole
          ? _value.commentRole
          : commentRole // ignore: cast_nullable_to_non_nullable
              as bool,
      podcastRole: null == podcastRole
          ? _value.podcastRole
          : podcastRole // ignore: cast_nullable_to_non_nullable
              as bool,
      streamRole: null == streamRole
          ? _value.streamRole
          : streamRole // ignore: cast_nullable_to_non_nullable
              as bool,
      jukeboxRole: null == jukeboxRole
          ? _value.jukeboxRole
          : jukeboxRole // ignore: cast_nullable_to_non_nullable
              as bool,
      shareRole: null == shareRole
          ? _value.shareRole
          : shareRole // ignore: cast_nullable_to_non_nullable
              as bool,
      videoConversionRole: null == videoConversionRole
          ? _value.videoConversionRole
          : videoConversionRole // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarLastChanged: freezed == avatarLastChanged
          ? _value.avatarLastChanged
          : avatarLastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      folder: freezed == folder
          ? _value.folder
          : folder // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'scrobblingEnabled') bool scrobblingEnabled,
      @JsonKey(name: 'maxBitRate') int? maxBitRate,
      @JsonKey(name: 'adminRole') bool adminRole,
      @JsonKey(name: 'settingsRole') bool settingsRole,
      @JsonKey(name: 'downloadRole') bool downloadRole,
      @JsonKey(name: 'uploadRole') bool uploadRole,
      @JsonKey(name: 'playlistRole') bool playlistRole,
      @JsonKey(name: 'coverArtRole') bool coverArtRole,
      @JsonKey(name: 'commentRole') bool commentRole,
      @JsonKey(name: 'podcastRole') bool podcastRole,
      @JsonKey(name: 'streamRole') bool streamRole,
      @JsonKey(name: 'jukeboxRole') bool jukeboxRole,
      @JsonKey(name: 'shareRole') bool shareRole,
      @JsonKey(name: 'videoConversionRole') bool videoConversionRole,
      @JsonKey(name: 'avatarLastChanged') DateTime? avatarLastChanged,
      @JsonKey(name: 'folder') List<int>? folder});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = freezed,
    Object? scrobblingEnabled = null,
    Object? maxBitRate = freezed,
    Object? adminRole = null,
    Object? settingsRole = null,
    Object? downloadRole = null,
    Object? uploadRole = null,
    Object? playlistRole = null,
    Object? coverArtRole = null,
    Object? commentRole = null,
    Object? podcastRole = null,
    Object? streamRole = null,
    Object? jukeboxRole = null,
    Object? shareRole = null,
    Object? videoConversionRole = null,
    Object? avatarLastChanged = freezed,
    Object? folder = freezed,
  }) {
    return _then(_$UserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      scrobblingEnabled: null == scrobblingEnabled
          ? _value.scrobblingEnabled
          : scrobblingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxBitRate: freezed == maxBitRate
          ? _value.maxBitRate
          : maxBitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      adminRole: null == adminRole
          ? _value.adminRole
          : adminRole // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsRole: null == settingsRole
          ? _value.settingsRole
          : settingsRole // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadRole: null == downloadRole
          ? _value.downloadRole
          : downloadRole // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadRole: null == uploadRole
          ? _value.uploadRole
          : uploadRole // ignore: cast_nullable_to_non_nullable
              as bool,
      playlistRole: null == playlistRole
          ? _value.playlistRole
          : playlistRole // ignore: cast_nullable_to_non_nullable
              as bool,
      coverArtRole: null == coverArtRole
          ? _value.coverArtRole
          : coverArtRole // ignore: cast_nullable_to_non_nullable
              as bool,
      commentRole: null == commentRole
          ? _value.commentRole
          : commentRole // ignore: cast_nullable_to_non_nullable
              as bool,
      podcastRole: null == podcastRole
          ? _value.podcastRole
          : podcastRole // ignore: cast_nullable_to_non_nullable
              as bool,
      streamRole: null == streamRole
          ? _value.streamRole
          : streamRole // ignore: cast_nullable_to_non_nullable
              as bool,
      jukeboxRole: null == jukeboxRole
          ? _value.jukeboxRole
          : jukeboxRole // ignore: cast_nullable_to_non_nullable
              as bool,
      shareRole: null == shareRole
          ? _value.shareRole
          : shareRole // ignore: cast_nullable_to_non_nullable
              as bool,
      videoConversionRole: null == videoConversionRole
          ? _value.videoConversionRole
          : videoConversionRole // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarLastChanged: freezed == avatarLastChanged
          ? _value.avatarLastChanged
          : avatarLastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      folder: freezed == folder
          ? _value._folder
          : folder // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'scrobblingEnabled') required this.scrobblingEnabled,
      @JsonKey(name: 'maxBitRate') this.maxBitRate,
      @JsonKey(name: 'adminRole') required this.adminRole,
      @JsonKey(name: 'settingsRole') required this.settingsRole,
      @JsonKey(name: 'downloadRole') required this.downloadRole,
      @JsonKey(name: 'uploadRole') required this.uploadRole,
      @JsonKey(name: 'playlistRole') required this.playlistRole,
      @JsonKey(name: 'coverArtRole') required this.coverArtRole,
      @JsonKey(name: 'commentRole') required this.commentRole,
      @JsonKey(name: 'podcastRole') required this.podcastRole,
      @JsonKey(name: 'streamRole') required this.streamRole,
      @JsonKey(name: 'jukeboxRole') required this.jukeboxRole,
      @JsonKey(name: 'shareRole') required this.shareRole,
      @JsonKey(name: 'videoConversionRole') required this.videoConversionRole,
      @JsonKey(name: 'avatarLastChanged') this.avatarLastChanged,
      @JsonKey(name: 'folder') final List<int>? folder})
      : _folder = folder;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'scrobblingEnabled')
  final bool scrobblingEnabled;
  @override
  @JsonKey(name: 'maxBitRate')
  final int? maxBitRate;
  @override
  @JsonKey(name: 'adminRole')
  final bool adminRole;
  @override
  @JsonKey(name: 'settingsRole')
  final bool settingsRole;
  @override
  @JsonKey(name: 'downloadRole')
  final bool downloadRole;
  @override
  @JsonKey(name: 'uploadRole')
  final bool uploadRole;
  @override
  @JsonKey(name: 'playlistRole')
  final bool playlistRole;
  @override
  @JsonKey(name: 'coverArtRole')
  final bool coverArtRole;
  @override
  @JsonKey(name: 'commentRole')
  final bool commentRole;
  @override
  @JsonKey(name: 'podcastRole')
  final bool podcastRole;
  @override
  @JsonKey(name: 'streamRole')
  final bool streamRole;
  @override
  @JsonKey(name: 'jukeboxRole')
  final bool jukeboxRole;
  @override
  @JsonKey(name: 'shareRole')
  final bool shareRole;
  @override
  @JsonKey(name: 'videoConversionRole')
  final bool videoConversionRole;
  @override
  @JsonKey(name: 'avatarLastChanged')
  final DateTime? avatarLastChanged;
  final List<int>? _folder;
  @override
  @JsonKey(name: 'folder')
  List<int>? get folder {
    final value = _folder;
    if (value == null) return null;
    if (_folder is EqualUnmodifiableListView) return _folder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(username: $username, email: $email, scrobblingEnabled: $scrobblingEnabled, maxBitRate: $maxBitRate, adminRole: $adminRole, settingsRole: $settingsRole, downloadRole: $downloadRole, uploadRole: $uploadRole, playlistRole: $playlistRole, coverArtRole: $coverArtRole, commentRole: $commentRole, podcastRole: $podcastRole, streamRole: $streamRole, jukeboxRole: $jukeboxRole, shareRole: $shareRole, videoConversionRole: $videoConversionRole, avatarLastChanged: $avatarLastChanged, folder: $folder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.scrobblingEnabled, scrobblingEnabled) ||
                other.scrobblingEnabled == scrobblingEnabled) &&
            (identical(other.maxBitRate, maxBitRate) ||
                other.maxBitRate == maxBitRate) &&
            (identical(other.adminRole, adminRole) ||
                other.adminRole == adminRole) &&
            (identical(other.settingsRole, settingsRole) ||
                other.settingsRole == settingsRole) &&
            (identical(other.downloadRole, downloadRole) ||
                other.downloadRole == downloadRole) &&
            (identical(other.uploadRole, uploadRole) ||
                other.uploadRole == uploadRole) &&
            (identical(other.playlistRole, playlistRole) ||
                other.playlistRole == playlistRole) &&
            (identical(other.coverArtRole, coverArtRole) ||
                other.coverArtRole == coverArtRole) &&
            (identical(other.commentRole, commentRole) ||
                other.commentRole == commentRole) &&
            (identical(other.podcastRole, podcastRole) ||
                other.podcastRole == podcastRole) &&
            (identical(other.streamRole, streamRole) ||
                other.streamRole == streamRole) &&
            (identical(other.jukeboxRole, jukeboxRole) ||
                other.jukeboxRole == jukeboxRole) &&
            (identical(other.shareRole, shareRole) ||
                other.shareRole == shareRole) &&
            (identical(other.videoConversionRole, videoConversionRole) ||
                other.videoConversionRole == videoConversionRole) &&
            (identical(other.avatarLastChanged, avatarLastChanged) ||
                other.avatarLastChanged == avatarLastChanged) &&
            const DeepCollectionEquality().equals(other._folder, _folder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      email,
      scrobblingEnabled,
      maxBitRate,
      adminRole,
      settingsRole,
      downloadRole,
      uploadRole,
      playlistRole,
      coverArtRole,
      commentRole,
      podcastRole,
      streamRole,
      jukeboxRole,
      shareRole,
      videoConversionRole,
      avatarLastChanged,
      const DeepCollectionEquality().hash(_folder));

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'scrobblingEnabled') required final bool scrobblingEnabled,
      @JsonKey(name: 'maxBitRate') final int? maxBitRate,
      @JsonKey(name: 'adminRole') required final bool adminRole,
      @JsonKey(name: 'settingsRole') required final bool settingsRole,
      @JsonKey(name: 'downloadRole') required final bool downloadRole,
      @JsonKey(name: 'uploadRole') required final bool uploadRole,
      @JsonKey(name: 'playlistRole') required final bool playlistRole,
      @JsonKey(name: 'coverArtRole') required final bool coverArtRole,
      @JsonKey(name: 'commentRole') required final bool commentRole,
      @JsonKey(name: 'podcastRole') required final bool podcastRole,
      @JsonKey(name: 'streamRole') required final bool streamRole,
      @JsonKey(name: 'jukeboxRole') required final bool jukeboxRole,
      @JsonKey(name: 'shareRole') required final bool shareRole,
      @JsonKey(name: 'videoConversionRole')
      required final bool videoConversionRole,
      @JsonKey(name: 'avatarLastChanged') final DateTime? avatarLastChanged,
      @JsonKey(name: 'folder') final List<int>? folder}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'scrobblingEnabled')
  bool get scrobblingEnabled;
  @override
  @JsonKey(name: 'maxBitRate')
  int? get maxBitRate;
  @override
  @JsonKey(name: 'adminRole')
  bool get adminRole;
  @override
  @JsonKey(name: 'settingsRole')
  bool get settingsRole;
  @override
  @JsonKey(name: 'downloadRole')
  bool get downloadRole;
  @override
  @JsonKey(name: 'uploadRole')
  bool get uploadRole;
  @override
  @JsonKey(name: 'playlistRole')
  bool get playlistRole;
  @override
  @JsonKey(name: 'coverArtRole')
  bool get coverArtRole;
  @override
  @JsonKey(name: 'commentRole')
  bool get commentRole;
  @override
  @JsonKey(name: 'podcastRole')
  bool get podcastRole;
  @override
  @JsonKey(name: 'streamRole')
  bool get streamRole;
  @override
  @JsonKey(name: 'jukeboxRole')
  bool get jukeboxRole;
  @override
  @JsonKey(name: 'shareRole')
  bool get shareRole;
  @override
  @JsonKey(name: 'videoConversionRole')
  bool get videoConversionRole;
  @override
  @JsonKey(name: 'avatarLastChanged')
  DateTime? get avatarLastChanged;
  @override
  @JsonKey(name: 'folder')
  List<int>? get folder;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Error to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'message') this.message});

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'Error(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {@JsonKey(name: 'code') required final int code,
      @JsonKey(name: 'message') final String? message}) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int get code;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of Error
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
