// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsonic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      status: $enumDecode(_$ResponseStatusEnumMap, json['status']),
      version: json['version'] as String,
      musicFolders: json['musicFolders'] == null
          ? null
          : MusicFolders.fromJson(json['musicFolders'] as Map<String, dynamic>),
      indexes: json['indexes'] == null
          ? null
          : Indexes.fromJson(json['indexes'] as Map<String, dynamic>),
      directory: json['directory'] == null
          ? null
          : Directory.fromJson(json['directory'] as Map<String, dynamic>),
      genres: json['genres'] == null
          ? null
          : Genres.fromJson(json['genres'] as Map<String, dynamic>),
      artists: json['artists'] == null
          ? null
          : ArtistsId3.fromJson(json['artists'] as Map<String, dynamic>),
      artist: json['artist'] == null
          ? null
          : ArtistWithAlbumsId3.fromJson(
              json['artist'] as Map<String, dynamic>),
      album: json['album'] == null
          ? null
          : AlbumWithSongsId3.fromJson(json['album'] as Map<String, dynamic>),
      song: json['song'] == null
          ? null
          : Child.fromJson(json['song'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
      videoInfo: json['videoInfo'] == null
          ? null
          : VideoInfo.fromJson(json['videoInfo'] as Map<String, dynamic>),
      nowPlaying: json['nowPlaying'] == null
          ? null
          : NowPlaying.fromJson(json['nowPlaying'] as Map<String, dynamic>),
      searchResult: json['searchResult'] == null
          ? null
          : SearchResult.fromJson(json['searchResult'] as Map<String, dynamic>),
      searchResult2: json['searchResult2'] == null
          ? null
          : SearchResult2.fromJson(
              json['searchResult2'] as Map<String, dynamic>),
      searchResult3: json['searchResult3'] == null
          ? null
          : SearchResult3.fromJson(
              json['searchResult3'] as Map<String, dynamic>),
      playlists: json['playlists'] == null
          ? null
          : Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
      playlist: json['playlist'] == null
          ? null
          : PlaylistWithSongs.fromJson(
              json['playlist'] as Map<String, dynamic>),
      jukeboxStatus: json['jukeboxStatus'] == null
          ? null
          : JukeboxStatus.fromJson(
              json['jukeboxStatus'] as Map<String, dynamic>),
      jukeboxPlaylist: json['jukeboxPlaylist'] == null
          ? null
          : JukeboxPlaylist.fromJson(
              json['jukeboxPlaylist'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : Users.fromJson(json['users'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      chatMessages: json['chatMessages'] == null
          ? null
          : ChatMessages.fromJson(json['chatMessages'] as Map<String, dynamic>),
      albumList: json['albumList'] == null
          ? null
          : AlbumList.fromJson(json['albumList'] as Map<String, dynamic>),
      albumList2: json['albumList2'] == null
          ? null
          : AlbumList2.fromJson(json['albumList2'] as Map<String, dynamic>),
      randomSongs: json['randomSongs'] == null
          ? null
          : Songs.fromJson(json['randomSongs'] as Map<String, dynamic>),
      songsByGenre: json['songsByGenre'] == null
          ? null
          : Songs.fromJson(json['songsByGenre'] as Map<String, dynamic>),
      lyrics: json['lyrics'] == null
          ? null
          : Lyrics.fromJson(json['lyrics'] as Map<String, dynamic>),
      podcasts: json['podcasts'] == null
          ? null
          : Podcasts.fromJson(json['podcasts'] as Map<String, dynamic>),
      newestPodcasts: json['newestPodcasts'] == null
          ? null
          : NewestPodcasts.fromJson(
              json['newestPodcasts'] as Map<String, dynamic>),
      internetRadioStations: json['internetRadioStations'] == null
          ? null
          : InternetRadioStations.fromJson(
              json['internetRadioStations'] as Map<String, dynamic>),
      bookmarks: json['bookmarks'] == null
          ? null
          : Bookmarks.fromJson(json['bookmarks'] as Map<String, dynamic>),
      playQueue: json['playQueue'] == null
          ? null
          : PlayQueue.fromJson(json['playQueue'] as Map<String, dynamic>),
      shares: json['shares'] == null
          ? null
          : Shares.fromJson(json['shares'] as Map<String, dynamic>),
      starred: json['starred'] == null
          ? null
          : Starred.fromJson(json['starred'] as Map<String, dynamic>),
      starred2: json['starred2'] == null
          ? null
          : Starred2.fromJson(json['starred2'] as Map<String, dynamic>),
      albumInfo: json['albumInfo'] == null
          ? null
          : AlbumInfo.fromJson(json['albumInfo'] as Map<String, dynamic>),
      artistInfo: json['artistInfo'] == null
          ? null
          : ArtistInfo.fromJson(json['artistInfo'] as Map<String, dynamic>),
      artistInfo2: json['artistInfo2'] == null
          ? null
          : ArtistInfo2.fromJson(json['artistInfo2'] as Map<String, dynamic>),
      similarSongs: json['similarSongs'] == null
          ? null
          : SimilarSongs.fromJson(json['similarSongs'] as Map<String, dynamic>),
      similarSongs2: json['similarSongs2'] == null
          ? null
          : SimilarSongs2.fromJson(
              json['similarSongs2'] as Map<String, dynamic>),
      topSongs: json['topSongs'] == null
          ? null
          : TopSongs.fromJson(json['topSongs'] as Map<String, dynamic>),
      scanStatus: json['scanStatus'] == null
          ? null
          : ScanStatus.fromJson(json['scanStatus'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'version': instance.version,
      'musicFolders': instance.musicFolders,
      'indexes': instance.indexes,
      'directory': instance.directory,
      'genres': instance.genres,
      'artists': instance.artists,
      'artist': instance.artist,
      'album': instance.album,
      'song': instance.song,
      'videos': instance.videos,
      'videoInfo': instance.videoInfo,
      'nowPlaying': instance.nowPlaying,
      'searchResult': instance.searchResult,
      'searchResult2': instance.searchResult2,
      'searchResult3': instance.searchResult3,
      'playlists': instance.playlists,
      'playlist': instance.playlist,
      'jukeboxStatus': instance.jukeboxStatus,
      'jukeboxPlaylist': instance.jukeboxPlaylist,
      'license': instance.license,
      'users': instance.users,
      'user': instance.user,
      'chatMessages': instance.chatMessages,
      'albumList': instance.albumList,
      'albumList2': instance.albumList2,
      'randomSongs': instance.randomSongs,
      'songsByGenre': instance.songsByGenre,
      'lyrics': instance.lyrics,
      'podcasts': instance.podcasts,
      'newestPodcasts': instance.newestPodcasts,
      'internetRadioStations': instance.internetRadioStations,
      'bookmarks': instance.bookmarks,
      'playQueue': instance.playQueue,
      'shares': instance.shares,
      'starred': instance.starred,
      'starred2': instance.starred2,
      'albumInfo': instance.albumInfo,
      'artistInfo': instance.artistInfo,
      'artistInfo2': instance.artistInfo2,
      'similarSongs': instance.similarSongs,
      'similarSongs2': instance.similarSongs2,
      'topSongs': instance.topSongs,
      'scanStatus': instance.scanStatus,
      'error': instance.error,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.responseStatusOk: 'ok',
  ResponseStatus.responseStatusFailed: 'failed',
};

_$MusicFoldersImpl _$$MusicFoldersImplFromJson(Map<String, dynamic> json) =>
    _$MusicFoldersImpl(
      musicFolder: (json['musicFolder'] as List<dynamic>?)
          ?.map((e) => MusicFolder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MusicFoldersImplToJson(_$MusicFoldersImpl instance) =>
    <String, dynamic>{
      'musicFolder': instance.musicFolder,
    };

_$MusicFolderImpl _$$MusicFolderImplFromJson(Map<String, dynamic> json) =>
    _$MusicFolderImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MusicFolderImplToJson(_$MusicFolderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$IndexesImpl _$$IndexesImplFromJson(Map<String, dynamic> json) =>
    _$IndexesImpl(
      lastModified: (json['lastModified'] as num).toInt(),
      ignoredArticles: json['ignoredArticles'] as String,
      shortcut: (json['shortcut'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: (json['index'] as List<dynamic>?)
          ?.map((e) => Index.fromJson(e as Map<String, dynamic>))
          .toList(),
      child: (json['child'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndexesImplToJson(_$IndexesImpl instance) =>
    <String, dynamic>{
      'lastModified': instance.lastModified,
      'ignoredArticles': instance.ignoredArticles,
      'shortcut': instance.shortcut,
      'index': instance.index,
      'child': instance.child,
    };

_$IndexImpl _$$IndexImplFromJson(Map<String, dynamic> json) => _$IndexImpl(
      name: json['name'] as String,
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndexImplToJson(_$IndexImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artistImageUrl: json['artistImageUrl'] as String?,
      starred: json['starred'] == null
          ? null
          : DateTime.parse(json['starred'] as String),
      userRating: (json['userRating'] as num?)?.toInt(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artistImageUrl': instance.artistImageUrl,
      'starred': instance.starred?.toIso8601String(),
      'userRating': instance.userRating,
      'averageRating': instance.averageRating,
    };

_$GenresImpl _$$GenresImplFromJson(Map<String, dynamic> json) => _$GenresImpl(
      genre: (json['genre'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GenresImplToJson(_$GenresImpl instance) =>
    <String, dynamic>{
      'genre': instance.genre,
    };

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      songCount: (json['songCount'] as num).toInt(),
      albumCount: (json['albumCount'] as num).toInt(),
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'songCount': instance.songCount,
      'albumCount': instance.albumCount,
    };

_$ArtistsId3Impl _$$ArtistsId3ImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsId3Impl(
      ignoredArticles: json['ignoredArticles'] as String,
      index: (json['index'] as List<dynamic>?)
          ?.map((e) => IndexId3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistsId3ImplToJson(_$ArtistsId3Impl instance) =>
    <String, dynamic>{
      'ignoredArticles': instance.ignoredArticles,
      'index': instance.index,
    };

_$IndexId3Impl _$$IndexId3ImplFromJson(Map<String, dynamic> json) =>
    _$IndexId3Impl(
      name: json['name'] as String,
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => ArtistId3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndexId3ImplToJson(_$IndexId3Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
    };

_$ArtistId3Impl _$$ArtistId3ImplFromJson(Map<String, dynamic> json) =>
    _$ArtistId3Impl(
      id: json['id'] as String,
      name: json['name'] as String,
      coverArt: json['coverArt'] as String?,
      artistImageUrl: json['artistImageUrl'] as String?,
      albumCount: (json['albumCount'] as num).toInt(),
      starred: json['starred'] == null
          ? null
          : DateTime.parse(json['starred'] as String),
    );

Map<String, dynamic> _$$ArtistId3ImplToJson(_$ArtistId3Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coverArt': instance.coverArt,
      'artistImageUrl': instance.artistImageUrl,
      'albumCount': instance.albumCount,
      'starred': instance.starred?.toIso8601String(),
    };

_$ArtistWithAlbumsId3Impl _$$ArtistWithAlbumsId3ImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistWithAlbumsId3Impl(
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => AlbumId3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistWithAlbumsId3ImplToJson(
        _$ArtistWithAlbumsId3Impl instance) =>
    <String, dynamic>{
      'album': instance.album,
    };

_$AlbumId3Impl _$$AlbumId3ImplFromJson(Map<String, dynamic> json) =>
    _$AlbumId3Impl(
      id: json['id'] as String,
      name: json['name'] as String,
      artist: json['artist'] as String?,
      artistId: json['artistId'] as String?,
      coverArt: json['coverArt'] as String?,
      songCount: (json['songCount'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      playCount: (json['playCount'] as num?)?.toInt(),
      created: DateTime.parse(json['created'] as String),
      starred: json['starred'] == null
          ? null
          : DateTime.parse(json['starred'] as String),
      year: (json['year'] as num?)?.toInt(),
      genre: json['genre'] as String?,
    );

Map<String, dynamic> _$$AlbumId3ImplToJson(_$AlbumId3Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artist': instance.artist,
      'artistId': instance.artistId,
      'coverArt': instance.coverArt,
      'songCount': instance.songCount,
      'duration': instance.duration,
      'playCount': instance.playCount,
      'created': instance.created.toIso8601String(),
      'starred': instance.starred?.toIso8601String(),
      'year': instance.year,
      'genre': instance.genre,
    };

_$AlbumWithSongsId3Impl _$$AlbumWithSongsId3ImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumWithSongsId3Impl(
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumWithSongsId3ImplToJson(
        _$AlbumWithSongsId3Impl instance) =>
    <String, dynamic>{
      'song': instance.song,
    };

_$VideosImpl _$$VideosImplFromJson(Map<String, dynamic> json) => _$VideosImpl(
      video: (json['video'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideosImplToJson(_$VideosImpl instance) =>
    <String, dynamic>{
      'video': instance.video,
    };

_$VideoInfoImpl _$$VideoInfoImplFromJson(Map<String, dynamic> json) =>
    _$VideoInfoImpl(
      id: json['id'] as String,
      captions: (json['captions'] as List<dynamic>?)
          ?.map((e) => Captions.fromJson(e as Map<String, dynamic>))
          .toList(),
      audioTrack: (json['audioTrack'] as List<dynamic>?)
          ?.map((e) => AudioTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
      conversion: (json['conversion'] as List<dynamic>?)
          ?.map((e) => VideoConversion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoInfoImplToJson(_$VideoInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'captions': instance.captions,
      'audioTrack': instance.audioTrack,
      'conversion': instance.conversion,
    };

_$CaptionsImpl _$$CaptionsImplFromJson(Map<String, dynamic> json) =>
    _$CaptionsImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CaptionsImplToJson(_$CaptionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$AudioTrackImpl _$$AudioTrackImplFromJson(Map<String, dynamic> json) =>
    _$AudioTrackImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$AudioTrackImplToJson(_$AudioTrackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'languageCode': instance.languageCode,
    };

_$VideoConversionImpl _$$VideoConversionImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoConversionImpl(
      id: json['id'] as String,
      bitRate: (json['bitRate'] as num?)?.toInt(),
      audioTrackId: (json['audioTrackId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VideoConversionImplToJson(
        _$VideoConversionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bitRate': instance.bitRate,
      'audioTrackId': instance.audioTrackId,
    };

_$DirectoryImpl _$$DirectoryImplFromJson(Map<String, dynamic> json) =>
    _$DirectoryImpl(
      id: json['id'] as String,
      parent: json['parent'] as String?,
      name: json['name'] as String,
      starred: json['starred'] == null
          ? null
          : DateTime.parse(json['starred'] as String),
      userRating: (json['userRating'] as num?)?.toInt(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      playCount: (json['playCount'] as num?)?.toInt(),
      child: (json['child'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DirectoryImplToJson(_$DirectoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'name': instance.name,
      'starred': instance.starred?.toIso8601String(),
      'userRating': instance.userRating,
      'averageRating': instance.averageRating,
      'playCount': instance.playCount,
      'child': instance.child,
    };

_$ChildImpl _$$ChildImplFromJson(Map<String, dynamic> json) => _$ChildImpl(
      id: json['id'] as String,
      parent: json['parent'] as String?,
      isDir: json['isDir'] as bool,
      title: json['title'] as String,
      album: json['album'] as String?,
      artist: json['artist'] as String?,
      track: (json['track'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      genre: json['genre'] as String?,
      coverArt: json['coverArt'] as String?,
      size: (json['size'] as num?)?.toInt(),
      contentType: json['contentType'] as String?,
      suffix: json['suffix'] as String?,
      transcodedContentType: json['transcodedContentType'] as String?,
      transcodedSuffix: json['transcodedSuffix'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      bitRate: (json['bitRate'] as num?)?.toInt(),
      path: json['path'] as String?,
      isVideo: json['isVideo'] as bool?,
      userRating: (json['userRating'] as num?)?.toInt(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      playCount: (json['playCount'] as num?)?.toInt(),
      discNumber: (json['discNumber'] as num?)?.toInt(),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      starred: json['starred'] == null
          ? null
          : DateTime.parse(json['starred'] as String),
      albumId: json['albumId'] as String?,
      artistId: json['artistId'] as String?,
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      bookmarkPosition: (json['bookmarkPosition'] as num?)?.toInt(),
      originalWidth: (json['originalWidth'] as num?)?.toInt(),
      originalHeight: (json['originalHeight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChildImplToJson(_$ChildImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'isDir': instance.isDir,
      'title': instance.title,
      'album': instance.album,
      'artist': instance.artist,
      'track': instance.track,
      'year': instance.year,
      'genre': instance.genre,
      'coverArt': instance.coverArt,
      'size': instance.size,
      'contentType': instance.contentType,
      'suffix': instance.suffix,
      'transcodedContentType': instance.transcodedContentType,
      'transcodedSuffix': instance.transcodedSuffix,
      'duration': instance.duration,
      'bitRate': instance.bitRate,
      'path': instance.path,
      'isVideo': instance.isVideo,
      'userRating': instance.userRating,
      'averageRating': instance.averageRating,
      'playCount': instance.playCount,
      'discNumber': instance.discNumber,
      'created': instance.created?.toIso8601String(),
      'starred': instance.starred?.toIso8601String(),
      'albumId': instance.albumId,
      'artistId': instance.artistId,
      'type': _$MediaTypeEnumMap[instance.type],
      'bookmarkPosition': instance.bookmarkPosition,
      'originalWidth': instance.originalWidth,
      'originalHeight': instance.originalHeight,
    };

const _$MediaTypeEnumMap = {
  MediaType.mediaTypeMusic: 'music',
  MediaType.mediaTypePodcast: 'podcast',
  MediaType.mediaTypeAudiobook: 'audiobook',
  MediaType.mediaTypeVideo: 'video',
};

_$NowPlayingImpl _$$NowPlayingImplFromJson(Map<String, dynamic> json) =>
    _$NowPlayingImpl(
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => NowPlayingEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NowPlayingImplToJson(_$NowPlayingImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

_$NowPlayingEntryImpl _$$NowPlayingEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingEntryImpl(
      username: json['username'] as String,
      minutesAgo: (json['minutesAgo'] as num).toInt(),
      playerId: (json['playerId'] as num).toInt(),
      playerName: json['playerName'] as String?,
    );

Map<String, dynamic> _$$NowPlayingEntryImplToJson(
        _$NowPlayingEntryImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'minutesAgo': instance.minutesAgo,
      'playerId': instance.playerId,
      'playerName': instance.playerName,
    };

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      offset: (json['offset'] as num).toInt(),
      totalHits: (json['totalHits'] as num).toInt(),
      match: (json['match'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'totalHits': instance.totalHits,
      'match': instance.match,
    };

_$SearchResult2Impl _$$SearchResult2ImplFromJson(Map<String, dynamic> json) =>
    _$SearchResult2Impl(
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResult2ImplToJson(_$SearchResult2Impl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'album': instance.album,
      'song': instance.song,
    };

_$SearchResult3Impl _$$SearchResult3ImplFromJson(Map<String, dynamic> json) =>
    _$SearchResult3Impl(
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => ArtistId3.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => AlbumId3.fromJson(e as Map<String, dynamic>))
          .toList(),
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResult3ImplToJson(_$SearchResult3Impl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'album': instance.album,
      'song': instance.song,
    };

_$PlaylistsImpl _$$PlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistsImpl(
      playlist: (json['playlist'] as List<dynamic>?)
          ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistsImplToJson(_$PlaylistsImpl instance) =>
    <String, dynamic>{
      'playlist': instance.playlist,
    };

_$PlaylistImpl _$$PlaylistImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      comment: json['comment'] as String?,
      owner: json['owner'] as String?,
      public: json['public'] as bool?,
      songCount: (json['songCount'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      created: DateTime.parse(json['created'] as String),
      changed: DateTime.parse(json['changed'] as String),
      coverArt: json['coverArt'] as String?,
      allowedUser: (json['allowedUser'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PlaylistImplToJson(_$PlaylistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
      'owner': instance.owner,
      'public': instance.public,
      'songCount': instance.songCount,
      'duration': instance.duration,
      'created': instance.created.toIso8601String(),
      'changed': instance.changed.toIso8601String(),
      'coverArt': instance.coverArt,
      'allowedUser': instance.allowedUser,
    };

_$PlaylistWithSongsImpl _$$PlaylistWithSongsImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistWithSongsImpl(
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistWithSongsImplToJson(
        _$PlaylistWithSongsImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

_$JukeboxStatusImpl _$$JukeboxStatusImplFromJson(Map<String, dynamic> json) =>
    _$JukeboxStatusImpl(
      currentIndex: (json['currentIndex'] as num).toInt(),
      playing: json['playing'] as bool,
      gain: (json['gain'] as num).toDouble(),
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JukeboxStatusImplToJson(_$JukeboxStatusImpl instance) =>
    <String, dynamic>{
      'currentIndex': instance.currentIndex,
      'playing': instance.playing,
      'gain': instance.gain,
      'position': instance.position,
    };

_$JukeboxPlaylistImpl _$$JukeboxPlaylistImplFromJson(
        Map<String, dynamic> json) =>
    _$JukeboxPlaylistImpl(
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JukeboxPlaylistImplToJson(
        _$JukeboxPlaylistImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

_$ChatMessagesImpl _$$ChatMessagesImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessagesImpl(
      chatMessage: (json['chatMessage'] as List<dynamic>?)
          ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMessagesImplToJson(_$ChatMessagesImpl instance) =>
    <String, dynamic>{
      'chatMessage': instance.chatMessage,
    };

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      username: json['username'] as String,
      time: (json['time'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'time': instance.time,
      'message': instance.message,
    };

_$AlbumListImpl _$$AlbumListImplFromJson(Map<String, dynamic> json) =>
    _$AlbumListImpl(
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumListImplToJson(_$AlbumListImpl instance) =>
    <String, dynamic>{
      'album': instance.album,
    };

_$AlbumList2Impl _$$AlbumList2ImplFromJson(Map<String, dynamic> json) =>
    _$AlbumList2Impl(
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => AlbumId3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumList2ImplToJson(_$AlbumList2Impl instance) =>
    <String, dynamic>{
      'album': instance.album,
    };

_$SongsImpl _$$SongsImplFromJson(Map<String, dynamic> json) => _$SongsImpl(
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SongsImplToJson(_$SongsImpl instance) =>
    <String, dynamic>{
      'song': instance.song,
    };

_$LyricsImpl _$$LyricsImplFromJson(Map<String, dynamic> json) => _$LyricsImpl(
      artist: json['artist'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$LyricsImplToJson(_$LyricsImpl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'title': instance.title,
    };

_$PodcastsImpl _$$PodcastsImplFromJson(Map<String, dynamic> json) =>
    _$PodcastsImpl(
      channel: (json['channel'] as List<dynamic>?)
          ?.map((e) => PodcastChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PodcastsImplToJson(_$PodcastsImpl instance) =>
    <String, dynamic>{
      'channel': instance.channel,
    };

_$PodcastChannelImpl _$$PodcastChannelImplFromJson(Map<String, dynamic> json) =>
    _$PodcastChannelImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      coverArt: json['coverArt'] as String?,
      originalImageUrl: json['originalImageUrl'] as String?,
      status: $enumDecode(_$PodcastStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
      episode: (json['episode'] as List<dynamic>?)
          ?.map((e) => PodcastEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PodcastChannelImplToJson(
        _$PodcastChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'coverArt': instance.coverArt,
      'originalImageUrl': instance.originalImageUrl,
      'status': _$PodcastStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'episode': instance.episode,
    };

const _$PodcastStatusEnumMap = {
  PodcastStatus.podcastStatusNew: 'new',
  PodcastStatus.podcastStatusDownloading: 'downloading',
  PodcastStatus.podcastStatusCompleted: 'completed',
  PodcastStatus.podcastStatusError: 'error',
  PodcastStatus.podcastStatusDeleted: 'deleted',
  PodcastStatus.podcastStatusSkipped: 'skipped',
};

_$NewestPodcastsImpl _$$NewestPodcastsImplFromJson(Map<String, dynamic> json) =>
    _$NewestPodcastsImpl(
      episode: (json['episode'] as List<dynamic>?)
          ?.map((e) => PodcastEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewestPodcastsImplToJson(
        _$NewestPodcastsImpl instance) =>
    <String, dynamic>{
      'episode': instance.episode,
    };

_$PodcastEpisodeImpl _$$PodcastEpisodeImplFromJson(Map<String, dynamic> json) =>
    _$PodcastEpisodeImpl(
      streamId: json['streamId'] as String?,
      channelId: json['channelId'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$PodcastStatusEnumMap, json['status']),
      publishDate: json['publishDate'] == null
          ? null
          : DateTime.parse(json['publishDate'] as String),
    );

Map<String, dynamic> _$$PodcastEpisodeImplToJson(
        _$PodcastEpisodeImpl instance) =>
    <String, dynamic>{
      'streamId': instance.streamId,
      'channelId': instance.channelId,
      'description': instance.description,
      'status': _$PodcastStatusEnumMap[instance.status]!,
      'publishDate': instance.publishDate?.toIso8601String(),
    };

_$InternetRadioStationsImpl _$$InternetRadioStationsImplFromJson(
        Map<String, dynamic> json) =>
    _$InternetRadioStationsImpl(
      internetRadioStation: (json['internetRadioStation'] as List<dynamic>?)
          ?.map((e) => InternetRadioStation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InternetRadioStationsImplToJson(
        _$InternetRadioStationsImpl instance) =>
    <String, dynamic>{
      'internetRadioStation': instance.internetRadioStation,
    };

_$InternetRadioStationImpl _$$InternetRadioStationImplFromJson(
        Map<String, dynamic> json) =>
    _$InternetRadioStationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      streamUrl: json['streamUrl'] as String,
      homePageUrl: json['homePageUrl'] as String?,
    );

Map<String, dynamic> _$$InternetRadioStationImplToJson(
        _$InternetRadioStationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'streamUrl': instance.streamUrl,
      'homePageUrl': instance.homePageUrl,
    };

_$BookmarksImpl _$$BookmarksImplFromJson(Map<String, dynamic> json) =>
    _$BookmarksImpl(
      bookmark: (json['bookmark'] as List<dynamic>?)
          ?.map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookmarksImplToJson(_$BookmarksImpl instance) =>
    <String, dynamic>{
      'bookmark': instance.bookmark,
    };

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      position: (json['position'] as num).toInt(),
      username: json['username'] as String,
      comment: json['comment'] as String?,
      created: DateTime.parse(json['created'] as String),
      changed: DateTime.parse(json['changed'] as String),
      entry: Child.fromJson(json['entry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'username': instance.username,
      'comment': instance.comment,
      'created': instance.created.toIso8601String(),
      'changed': instance.changed.toIso8601String(),
      'entry': instance.entry,
    };

_$PlayQueueImpl _$$PlayQueueImplFromJson(Map<String, dynamic> json) =>
    _$PlayQueueImpl(
      current: (json['current'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      username: json['username'] as String,
      changed: DateTime.parse(json['changed'] as String),
      changedBy: json['changedBy'] as String,
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayQueueImplToJson(_$PlayQueueImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'position': instance.position,
      'username': instance.username,
      'changed': instance.changed.toIso8601String(),
      'changedBy': instance.changedBy,
      'entry': instance.entry,
    };

_$SharesImpl _$$SharesImplFromJson(Map<String, dynamic> json) => _$SharesImpl(
      share: (json['share'] as List<dynamic>?)
          ?.map((e) => Share.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SharesImplToJson(_$SharesImpl instance) =>
    <String, dynamic>{
      'share': instance.share,
    };

_$ShareImpl _$$ShareImplFromJson(Map<String, dynamic> json) => _$ShareImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      description: json['description'] as String?,
      username: json['username'] as String,
      created: DateTime.parse(json['created'] as String),
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String),
      lastVisited: json['lastVisited'] == null
          ? null
          : DateTime.parse(json['lastVisited'] as String),
      visitCount: (json['visitCount'] as num).toInt(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShareImplToJson(_$ShareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'description': instance.description,
      'username': instance.username,
      'created': instance.created.toIso8601String(),
      'expires': instance.expires?.toIso8601String(),
      'lastVisited': instance.lastVisited?.toIso8601String(),
      'visitCount': instance.visitCount,
      'entry': instance.entry,
    };

_$StarredImpl _$$StarredImplFromJson(Map<String, dynamic> json) =>
    _$StarredImpl(
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StarredImplToJson(_$StarredImpl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'album': instance.album,
      'song': instance.song,
    };

_$AlbumInfoImpl _$$AlbumInfoImplFromJson(Map<String, dynamic> json) =>
    _$AlbumInfoImpl(
      notes: json['notes'] as String?,
      musicBrainzId: json['musicBrainzId'] as String?,
      lastFmUrl: json['lastFmUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
    );

Map<String, dynamic> _$$AlbumInfoImplToJson(_$AlbumInfoImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'musicBrainzId': instance.musicBrainzId,
      'lastFmUrl': instance.lastFmUrl,
      'smallImageUrl': instance.smallImageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'largeImageUrl': instance.largeImageUrl,
    };

_$ArtistInfoBaseImpl _$$ArtistInfoBaseImplFromJson(Map<String, dynamic> json) =>
    _$ArtistInfoBaseImpl(
      biography: json['biography'] as String?,
      musicBrainzId: json['musicBrainzId'] as String?,
      lastFmUrl: json['lastFmUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
    );

Map<String, dynamic> _$$ArtistInfoBaseImplToJson(
        _$ArtistInfoBaseImpl instance) =>
    <String, dynamic>{
      'biography': instance.biography,
      'musicBrainzId': instance.musicBrainzId,
      'lastFmUrl': instance.lastFmUrl,
      'smallImageUrl': instance.smallImageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'largeImageUrl': instance.largeImageUrl,
    };

_$ArtistInfoImpl _$$ArtistInfoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistInfoImpl(
      similarArtist: (json['similarArtist'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistInfoImplToJson(_$ArtistInfoImpl instance) =>
    <String, dynamic>{
      'similarArtist': instance.similarArtist,
    };

_$ArtistInfo2Impl _$$ArtistInfo2ImplFromJson(Map<String, dynamic> json) =>
    _$ArtistInfo2Impl(
      similarArtist: (json['similarArtist'] as List<dynamic>?)
          ?.map((e) => ArtistId3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistInfo2ImplToJson(_$ArtistInfo2Impl instance) =>
    <String, dynamic>{
      'similarArtist': instance.similarArtist,
    };

_$SimilarSongsImpl _$$SimilarSongsImplFromJson(Map<String, dynamic> json) =>
    _$SimilarSongsImpl(
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SimilarSongsImplToJson(_$SimilarSongsImpl instance) =>
    <String, dynamic>{
      'song': instance.song,
    };

_$SimilarSongs2Impl _$$SimilarSongs2ImplFromJson(Map<String, dynamic> json) =>
    _$SimilarSongs2Impl(
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SimilarSongs2ImplToJson(_$SimilarSongs2Impl instance) =>
    <String, dynamic>{
      'song': instance.song,
    };

_$TopSongsImpl _$$TopSongsImplFromJson(Map<String, dynamic> json) =>
    _$TopSongsImpl(
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopSongsImplToJson(_$TopSongsImpl instance) =>
    <String, dynamic>{
      'song': instance.song,
    };

_$Starred2Impl _$$Starred2ImplFromJson(Map<String, dynamic> json) =>
    _$Starred2Impl(
      artist: (json['artist'] as List<dynamic>?)
          ?.map((e) => ArtistId3.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: (json['album'] as List<dynamic>?)
          ?.map((e) => AlbumId3.fromJson(e as Map<String, dynamic>))
          .toList(),
      song: (json['song'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$Starred2ImplToJson(_$Starred2Impl instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'album': instance.album,
      'song': instance.song,
    };

_$LicenseImpl _$$LicenseImplFromJson(Map<String, dynamic> json) =>
    _$LicenseImpl(
      valid: json['valid'] as bool,
      email: json['email'] as String?,
      licenseExpires: json['licenseExpires'] == null
          ? null
          : DateTime.parse(json['licenseExpires'] as String),
      trialExpires: json['trialExpires'] == null
          ? null
          : DateTime.parse(json['trialExpires'] as String),
    );

Map<String, dynamic> _$$LicenseImplToJson(_$LicenseImpl instance) =>
    <String, dynamic>{
      'valid': instance.valid,
      'email': instance.email,
      'licenseExpires': instance.licenseExpires?.toIso8601String(),
      'trialExpires': instance.trialExpires?.toIso8601String(),
    };

_$ScanStatusImpl _$$ScanStatusImplFromJson(Map<String, dynamic> json) =>
    _$ScanStatusImpl(
      scanning: json['scanning'] as bool,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ScanStatusImplToJson(_$ScanStatusImpl instance) =>
    <String, dynamic>{
      'scanning': instance.scanning,
      'count': instance.count,
    };

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['username'] as String,
      email: json['email'] as String?,
      scrobblingEnabled: json['scrobblingEnabled'] as bool,
      maxBitRate: (json['maxBitRate'] as num?)?.toInt(),
      adminRole: json['adminRole'] as bool,
      settingsRole: json['settingsRole'] as bool,
      downloadRole: json['downloadRole'] as bool,
      uploadRole: json['uploadRole'] as bool,
      playlistRole: json['playlistRole'] as bool,
      coverArtRole: json['coverArtRole'] as bool,
      commentRole: json['commentRole'] as bool,
      podcastRole: json['podcastRole'] as bool,
      streamRole: json['streamRole'] as bool,
      jukeboxRole: json['jukeboxRole'] as bool,
      shareRole: json['shareRole'] as bool,
      videoConversionRole: json['videoConversionRole'] as bool,
      avatarLastChanged: json['avatarLastChanged'] == null
          ? null
          : DateTime.parse(json['avatarLastChanged'] as String),
      folder: (json['folder'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'scrobblingEnabled': instance.scrobblingEnabled,
      'maxBitRate': instance.maxBitRate,
      'adminRole': instance.adminRole,
      'settingsRole': instance.settingsRole,
      'downloadRole': instance.downloadRole,
      'uploadRole': instance.uploadRole,
      'playlistRole': instance.playlistRole,
      'coverArtRole': instance.coverArtRole,
      'commentRole': instance.commentRole,
      'podcastRole': instance.podcastRole,
      'streamRole': instance.streamRole,
      'jukeboxRole': instance.jukeboxRole,
      'shareRole': instance.shareRole,
      'videoConversionRole': instance.videoConversionRole,
      'avatarLastChanged': instance.avatarLastChanged?.toIso8601String(),
      'folder': instance.folder,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
