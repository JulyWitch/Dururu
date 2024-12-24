import 'package:freezed_annotation/freezed_annotation.dart';

part 'subsonic.g.dart';
part 'subsonic.freezed.dart';

@JsonEnum()
enum ResponseStatus {
  @JsonValue('ok')
  responseStatusOk,
  @JsonValue('failed')
  responseStatusFailed,
}


typedef Version = String;


@JsonEnum()
enum MediaType {
  @JsonValue('music')
  mediaTypeMusic,
  @JsonValue('podcast')
  mediaTypePodcast,
  @JsonValue('audiobook')
  mediaTypeAudiobook,
  @JsonValue('video')
  mediaTypeVideo,
}


/// Numeric type with constraints:
/// - Minimum value: 1
/// - Maximum value: 5
typedef UserRating = int;


/// Numeric type with constraints:
/// - Minimum value: 1.0
/// - Maximum value: 5.0
typedef AverageRating = double;


@JsonEnum()
enum PodcastStatus {
  @JsonValue('new')
  podcastStatusNew,
  @JsonValue('downloading')
  podcastStatusDownloading,
  @JsonValue('completed')
  podcastStatusCompleted,
  @JsonValue('error')
  podcastStatusError,
  @JsonValue('deleted')
  podcastStatusDeleted,
  @JsonValue('skipped')
  podcastStatusSkipped,
}


@freezed
class Response with _$Response {
  const factory Response({
    @JsonKey(name: 'status')
    required ResponseStatus status,
    @JsonKey(name: 'version')
    required Version version,
    @JsonKey(name: 'musicFolders')
    MusicFolders? musicFolders,
    @JsonKey(name: 'indexes')
    Indexes? indexes,
    @JsonKey(name: 'directory')
    Directory? directory,
    @JsonKey(name: 'genres')
    Genres? genres,
    @JsonKey(name: 'artists')
    ArtistsId3? artists,
    @JsonKey(name: 'artist')
    ArtistWithAlbumsId3? artist,
    @JsonKey(name: 'album')
    AlbumWithSongsId3? album,
    @JsonKey(name: 'song')
    Child? song,
    @JsonKey(name: 'videos')
    Videos? videos,
    @JsonKey(name: 'videoInfo')
    VideoInfo? videoInfo,
    @JsonKey(name: 'nowPlaying')
    NowPlaying? nowPlaying,
    @JsonKey(name: 'searchResult')
    SearchResult? searchResult,
    @JsonKey(name: 'searchResult2')
    SearchResult2? searchResult2,
    @JsonKey(name: 'searchResult3')
    SearchResult3? searchResult3,
    @JsonKey(name: 'playlists')
    Playlists? playlists,
    @JsonKey(name: 'playlist')
    PlaylistWithSongs? playlist,
    @JsonKey(name: 'jukeboxStatus')
    JukeboxStatus? jukeboxStatus,
    @JsonKey(name: 'jukeboxPlaylist')
    JukeboxPlaylist? jukeboxPlaylist,
    @JsonKey(name: 'license')
    License? license,
    @JsonKey(name: 'users')
    Users? users,
    @JsonKey(name: 'user')
    User? user,
    @JsonKey(name: 'chatMessages')
    ChatMessages? chatMessages,
    @JsonKey(name: 'albumList')
    AlbumList? albumList,
    @JsonKey(name: 'albumList2')
    AlbumList2? albumList2,
    @JsonKey(name: 'randomSongs')
    Songs? randomSongs,
    @JsonKey(name: 'songsByGenre')
    Songs? songsByGenre,
    @JsonKey(name: 'lyrics')
    Lyrics? lyrics,
    @JsonKey(name: 'podcasts')
    Podcasts? podcasts,
    @JsonKey(name: 'newestPodcasts')
    NewestPodcasts? newestPodcasts,
    @JsonKey(name: 'internetRadioStations')
    InternetRadioStations? internetRadioStations,
    @JsonKey(name: 'bookmarks')
    Bookmarks? bookmarks,
    @JsonKey(name: 'playQueue')
    PlayQueue? playQueue,
    @JsonKey(name: 'shares')
    Shares? shares,
    @JsonKey(name: 'starred')
    Starred? starred,
    @JsonKey(name: 'starred2')
    Starred2? starred2,
    @JsonKey(name: 'albumInfo')
    AlbumInfo? albumInfo,
    @JsonKey(name: 'artistInfo')
    ArtistInfo? artistInfo,
    @JsonKey(name: 'artistInfo2')
    ArtistInfo2? artistInfo2,
    @JsonKey(name: 'similarSongs')
    SimilarSongs? similarSongs,
    @JsonKey(name: 'similarSongs2')
    SimilarSongs2? similarSongs2,
    @JsonKey(name: 'topSongs')
    TopSongs? topSongs,
    @JsonKey(name: 'scanStatus')
    ScanStatus? scanStatus,
    @JsonKey(name: 'error')
    Error? error,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}


@freezed
class MusicFolders with _$MusicFolders {
  const factory MusicFolders({
    @JsonKey(name: 'musicFolder')
    List<MusicFolder>? musicFolder,
  }) = _MusicFolders;

  factory MusicFolders.fromJson(Map<String, dynamic> json) =>
      _$MusicFoldersFromJson(json);
}


@freezed
class MusicFolder with _$MusicFolder {
  const factory MusicFolder({
    @JsonKey(name: 'id')
    required int id,
    @JsonKey(name: 'name')
    String? name,
  }) = _MusicFolder;

  factory MusicFolder.fromJson(Map<String, dynamic> json) =>
      _$MusicFolderFromJson(json);
}


@freezed
class Indexes with _$Indexes {
  const factory Indexes({
    @JsonKey(name: 'lastModified')
    required int lastModified,
    @JsonKey(name: 'ignoredArticles')
    required String ignoredArticles,
    @JsonKey(name: 'shortcut')
    List<Artist>? shortcut,
    @JsonKey(name: 'index')
    List<Index>? index,
    @JsonKey(name: 'child')
    List<Child>? child,
  }) = _Indexes;

  factory Indexes.fromJson(Map<String, dynamic> json) =>
      _$IndexesFromJson(json);
}


@freezed
class Index with _$Index {
  const factory Index({
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'artist')
    List<Artist>? artist,
  }) = _Index;

  factory Index.fromJson(Map<String, dynamic> json) =>
      _$IndexFromJson(json);
}


@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'artistImageUrl')
    String? artistImageUrl,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'userRating')
    UserRating? userRating,
    @JsonKey(name: 'averageRating')
    AverageRating? averageRating,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) =>
      _$ArtistFromJson(json);
}


@freezed
class Genres with _$Genres {
  const factory Genres({
    @JsonKey(name: 'genre')
    List<Genre>? genre,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) =>
      _$GenresFromJson(json);
}


@freezed
class Genre with _$Genre {
  const factory Genre({
    @JsonKey(name: 'songCount')
    required int songCount,
    @JsonKey(name: 'albumCount')
    required int albumCount,
    @JsonKey(name: 'value')
    required String value,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) =>
      _$GenreFromJson(json);
}


@freezed
class ArtistsId3 with _$ArtistsId3 {
  const factory ArtistsId3({
    @JsonKey(name: 'ignoredArticles')
    required String ignoredArticles,
    @JsonKey(name: 'index')
    List<IndexId3>? index,
  }) = _ArtistsId3;

  factory ArtistsId3.fromJson(Map<String, dynamic> json) =>
      _$ArtistsId3FromJson(json);
}


@freezed
class IndexId3 with _$IndexId3 {
  const factory IndexId3({
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'artist')
    List<ArtistId3>? artist,
  }) = _IndexId3;

  factory IndexId3.fromJson(Map<String, dynamic> json) =>
      _$IndexId3FromJson(json);
}


@freezed
class ArtistId3 with _$ArtistId3 {
  const factory ArtistId3({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'artistImageUrl')
    String? artistImageUrl,
    @JsonKey(name: 'albumCount')
    required int albumCount,
    @JsonKey(name: 'starred')
    DateTime? starred,
  }) = _ArtistId3;

  factory ArtistId3.fromJson(Map<String, dynamic> json) =>
      _$ArtistId3FromJson(json);
}


@freezed
class ArtistWithAlbumsId3 with _$ArtistWithAlbumsId3 {
  const factory ArtistWithAlbumsId3({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'artistImageUrl')
    String? artistImageUrl,
    @JsonKey(name: 'albumCount')
    required int albumCount,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'album')
    List<AlbumId3>? album,
  }) = _ArtistWithAlbumsId3;

  factory ArtistWithAlbumsId3.fromJson(Map<String, dynamic> json) =>
      _$ArtistWithAlbumsId3FromJson(json);
}


@freezed
class AlbumId3 with _$AlbumId3 {
  const factory AlbumId3({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'artistId')
    String? artistId,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'songCount')
    required int songCount,
    @JsonKey(name: 'duration')
    required int duration,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'year')
    int? year,
    @JsonKey(name: 'genre')
    String? genre,
  }) = _AlbumId3;

  factory AlbumId3.fromJson(Map<String, dynamic> json) =>
      _$AlbumId3FromJson(json);
}


@freezed
class AlbumWithSongsId3 with _$AlbumWithSongsId3 {
  const factory AlbumWithSongsId3({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'artistId')
    String? artistId,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'songCount')
    required int songCount,
    @JsonKey(name: 'duration')
    required int duration,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'year')
    int? year,
    @JsonKey(name: 'genre')
    String? genre,
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _AlbumWithSongsId3;

  factory AlbumWithSongsId3.fromJson(Map<String, dynamic> json) =>
      _$AlbumWithSongsId3FromJson(json);
}


@freezed
class Videos with _$Videos {
  const factory Videos({
    @JsonKey(name: 'video')
    List<Child>? video,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) =>
      _$VideosFromJson(json);
}


@freezed
class VideoInfo with _$VideoInfo {
  const factory VideoInfo({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'captions')
    List<Captions>? captions,
    @JsonKey(name: 'audioTrack')
    List<AudioTrack>? audioTrack,
    @JsonKey(name: 'conversion')
    List<VideoConversion>? conversion,
  }) = _VideoInfo;

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);
}


@freezed
class Captions with _$Captions {
  const factory Captions({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    String? name,
  }) = _Captions;

  factory Captions.fromJson(Map<String, dynamic> json) =>
      _$CaptionsFromJson(json);
}


@freezed
class AudioTrack with _$AudioTrack {
  const factory AudioTrack({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    String? name,
    @JsonKey(name: 'languageCode')
    String? languageCode,
  }) = _AudioTrack;

  factory AudioTrack.fromJson(Map<String, dynamic> json) =>
      _$AudioTrackFromJson(json);
}


@freezed
class VideoConversion with _$VideoConversion {
  const factory VideoConversion({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'bitRate')
    int? bitRate,
    @JsonKey(name: 'audioTrackId')
    int? audioTrackId,
  }) = _VideoConversion;

  factory VideoConversion.fromJson(Map<String, dynamic> json) =>
      _$VideoConversionFromJson(json);
}


@freezed
class Directory with _$Directory {
  const factory Directory({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'parent')
    String? parent,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'userRating')
    UserRating? userRating,
    @JsonKey(name: 'averageRating')
    AverageRating? averageRating,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'child')
    List<Child>? child,
  }) = _Directory;

  factory Directory.fromJson(Map<String, dynamic> json) =>
      _$DirectoryFromJson(json);
}


@freezed
class Child with _$Child {
  const factory Child({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'parent')
    String? parent,
    @JsonKey(name: 'isDir')
    required bool isDir,
    @JsonKey(name: 'title')
    required String title,
    @JsonKey(name: 'album')
    String? album,
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'track')
    int? track,
    @JsonKey(name: 'year')
    int? year,
    @JsonKey(name: 'genre')
    String? genre,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'size')
    int? size,
    @JsonKey(name: 'contentType')
    String? contentType,
    @JsonKey(name: 'suffix')
    String? suffix,
    @JsonKey(name: 'transcodedContentType')
    String? transcodedContentType,
    @JsonKey(name: 'transcodedSuffix')
    String? transcodedSuffix,
    @JsonKey(name: 'duration')
    int? duration,
    @JsonKey(name: 'bitRate')
    int? bitRate,
    @JsonKey(name: 'path')
    String? path,
    @JsonKey(name: 'isVideo')
    bool? isVideo,
    @JsonKey(name: 'userRating')
    UserRating? userRating,
    @JsonKey(name: 'averageRating')
    AverageRating? averageRating,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'discNumber')
    int? discNumber,
    @JsonKey(name: 'created')
    DateTime? created,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'albumId')
    String? albumId,
    @JsonKey(name: 'artistId')
    String? artistId,
    @JsonKey(name: 'type')
    MediaType? type,
    @JsonKey(name: 'bookmarkPosition')
    int? bookmarkPosition,
    @JsonKey(name: 'originalWidth')
    int? originalWidth,
    @JsonKey(name: 'originalHeight')
    int? originalHeight,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) =>
      _$ChildFromJson(json);
}


@freezed
class NowPlaying with _$NowPlaying {
  const factory NowPlaying({
    @JsonKey(name: 'entry')
    List<NowPlayingEntry>? entry,
  }) = _NowPlaying;

  factory NowPlaying.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingFromJson(json);
}


@freezed
class NowPlayingEntry with _$NowPlayingEntry {
  const factory NowPlayingEntry({
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'minutesAgo')
    required int minutesAgo,
    @JsonKey(name: 'playerId')
    required int playerId,
    @JsonKey(name: 'playerName')
    String? playerName,
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'parent')
    String? parent,
    @JsonKey(name: 'isDir')
    required bool isDir,
    @JsonKey(name: 'title')
    required String title,
    @JsonKey(name: 'album')
    String? album,
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'track')
    int? track,
    @JsonKey(name: 'year')
    int? year,
    @JsonKey(name: 'genre')
    String? genre,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'size')
    int? size,
    @JsonKey(name: 'contentType')
    String? contentType,
    @JsonKey(name: 'suffix')
    String? suffix,
    @JsonKey(name: 'transcodedContentType')
    String? transcodedContentType,
    @JsonKey(name: 'transcodedSuffix')
    String? transcodedSuffix,
    @JsonKey(name: 'duration')
    int? duration,
    @JsonKey(name: 'bitRate')
    int? bitRate,
    @JsonKey(name: 'path')
    String? path,
    @JsonKey(name: 'isVideo')
    bool? isVideo,
    @JsonKey(name: 'userRating')
    UserRating? userRating,
    @JsonKey(name: 'averageRating')
    AverageRating? averageRating,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'discNumber')
    int? discNumber,
    @JsonKey(name: 'created')
    DateTime? created,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'albumId')
    String? albumId,
    @JsonKey(name: 'artistId')
    String? artistId,
    @JsonKey(name: 'type')
    MediaType? type,
    @JsonKey(name: 'bookmarkPosition')
    int? bookmarkPosition,
    @JsonKey(name: 'originalWidth')
    int? originalWidth,
    @JsonKey(name: 'originalHeight')
    int? originalHeight,
  }) = _NowPlayingEntry;

  factory NowPlayingEntry.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingEntryFromJson(json);
}


@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: 'offset')
    required int offset,
    @JsonKey(name: 'totalHits')
    required int totalHits,
    @JsonKey(name: 'match')
    List<Child>? match,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}


@freezed
class SearchResult2 with _$SearchResult2 {
  const factory SearchResult2({
    @JsonKey(name: 'artist')
    List<Artist>? artist,
    @JsonKey(name: 'album')
    List<Child>? album,
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _SearchResult2;

  factory SearchResult2.fromJson(Map<String, dynamic> json) =>
      _$SearchResult2FromJson(json);
}


@freezed
class SearchResult3 with _$SearchResult3 {
  const factory SearchResult3({
    @JsonKey(name: 'artist')
    List<ArtistId3>? artist,
    @JsonKey(name: 'album')
    List<AlbumId3>? album,
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _SearchResult3;

  factory SearchResult3.fromJson(Map<String, dynamic> json) =>
      _$SearchResult3FromJson(json);
}


@freezed
class Playlists with _$Playlists {
  const factory Playlists({
    @JsonKey(name: 'playlist')
    List<Playlist>? playlist,
  }) = _Playlists;

  factory Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);
}


@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'comment')
    String? comment,
    @JsonKey(name: 'owner')
    String? owner,
    @JsonKey(name: 'public')
    bool? public,
    @JsonKey(name: 'songCount')
    required int songCount,
    @JsonKey(name: 'duration')
    required int duration,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'changed')
    required DateTime changed,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'allowedUser')
    List<String>? allowedUser,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}


@freezed
class PlaylistWithSongs with _$PlaylistWithSongs {
  const factory PlaylistWithSongs({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'comment')
    String? comment,
    @JsonKey(name: 'owner')
    String? owner,
    @JsonKey(name: 'public')
    bool? public,
    @JsonKey(name: 'songCount')
    required int songCount,
    @JsonKey(name: 'duration')
    required int duration,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'changed')
    required DateTime changed,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'entry')
    List<Child>? entry,
  }) = _PlaylistWithSongs;

  factory PlaylistWithSongs.fromJson(Map<String, dynamic> json) =>
      _$PlaylistWithSongsFromJson(json);
}


@freezed
class JukeboxStatus with _$JukeboxStatus {
  const factory JukeboxStatus({
    @JsonKey(name: 'currentIndex')
    required int currentIndex,
    @JsonKey(name: 'playing')
    required bool playing,
    @JsonKey(name: 'gain')
    required double gain,
    @JsonKey(name: 'position')
    int? position,
  }) = _JukeboxStatus;

  factory JukeboxStatus.fromJson(Map<String, dynamic> json) =>
      _$JukeboxStatusFromJson(json);
}


@freezed
class JukeboxPlaylist with _$JukeboxPlaylist {
  const factory JukeboxPlaylist({
    @JsonKey(name: 'currentIndex')
    required int currentIndex,
    @JsonKey(name: 'playing')
    required bool playing,
    @JsonKey(name: 'gain')
    required double gain,
    @JsonKey(name: 'position')
    int? position,
    @JsonKey(name: 'entry')
    List<Child>? entry,
  }) = _JukeboxPlaylist;

  factory JukeboxPlaylist.fromJson(Map<String, dynamic> json) =>
      _$JukeboxPlaylistFromJson(json);
}


@freezed
class ChatMessages with _$ChatMessages {
  const factory ChatMessages({
    @JsonKey(name: 'chatMessage')
    List<ChatMessage>? chatMessage,
  }) = _ChatMessages;

  factory ChatMessages.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesFromJson(json);
}


@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'time')
    required int time,
    @JsonKey(name: 'message')
    required String message,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}


@freezed
class AlbumList with _$AlbumList {
  const factory AlbumList({
    @JsonKey(name: 'album')
    List<Child>? album,
  }) = _AlbumList;

  factory AlbumList.fromJson(Map<String, dynamic> json) =>
      _$AlbumListFromJson(json);
}


@freezed
class AlbumList2 with _$AlbumList2 {
  const factory AlbumList2({
    @JsonKey(name: 'album')
    List<AlbumId3>? album,
  }) = _AlbumList2;

  factory AlbumList2.fromJson(Map<String, dynamic> json) =>
      _$AlbumList2FromJson(json);
}


@freezed
class Songs with _$Songs {
  const factory Songs({
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _Songs;

  factory Songs.fromJson(Map<String, dynamic> json) =>
      _$SongsFromJson(json);
}


@freezed
class Lyrics with _$Lyrics {
  const factory Lyrics({
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'title')
    String? title,
  }) = _Lyrics;

  factory Lyrics.fromJson(Map<String, dynamic> json) =>
      _$LyricsFromJson(json);
}


@freezed
class Podcasts with _$Podcasts {
  const factory Podcasts({
    @JsonKey(name: 'channel')
    List<PodcastChannel>? channel,
  }) = _Podcasts;

  factory Podcasts.fromJson(Map<String, dynamic> json) =>
      _$PodcastsFromJson(json);
}


@freezed
class PodcastChannel with _$PodcastChannel {
  const factory PodcastChannel({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'url')
    required String url,
    @JsonKey(name: 'title')
    String? title,
    @JsonKey(name: 'description')
    String? description,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'originalImageUrl')
    String? originalImageUrl,
    @JsonKey(name: 'status')
    required PodcastStatus status,
    @JsonKey(name: 'errorMessage')
    String? errorMessage,
    @JsonKey(name: 'episode')
    List<PodcastEpisode>? episode,
  }) = _PodcastChannel;

  factory PodcastChannel.fromJson(Map<String, dynamic> json) =>
      _$PodcastChannelFromJson(json);
}


@freezed
class NewestPodcasts with _$NewestPodcasts {
  const factory NewestPodcasts({
    @JsonKey(name: 'episode')
    List<PodcastEpisode>? episode,
  }) = _NewestPodcasts;

  factory NewestPodcasts.fromJson(Map<String, dynamic> json) =>
      _$NewestPodcastsFromJson(json);
}


@freezed
class PodcastEpisode with _$PodcastEpisode {
  const factory PodcastEpisode({
    @JsonKey(name: 'streamId')
    String? streamId,
    @JsonKey(name: 'channelId')
    required String channelId,
    @JsonKey(name: 'description')
    String? description,
    @JsonKey(name: 'status')
    required PodcastStatus status,
    @JsonKey(name: 'publishDate')
    DateTime? publishDate,
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'parent')
    String? parent,
    @JsonKey(name: 'isDir')
    required bool isDir,
    @JsonKey(name: 'title')
    required String title,
    @JsonKey(name: 'album')
    String? album,
    @JsonKey(name: 'artist')
    String? artist,
    @JsonKey(name: 'track')
    int? track,
    @JsonKey(name: 'year')
    int? year,
    @JsonKey(name: 'genre')
    String? genre,
    @JsonKey(name: 'coverArt')
    String? coverArt,
    @JsonKey(name: 'size')
    int? size,
    @JsonKey(name: 'contentType')
    String? contentType,
    @JsonKey(name: 'suffix')
    String? suffix,
    @JsonKey(name: 'transcodedContentType')
    String? transcodedContentType,
    @JsonKey(name: 'transcodedSuffix')
    String? transcodedSuffix,
    @JsonKey(name: 'duration')
    int? duration,
    @JsonKey(name: 'bitRate')
    int? bitRate,
    @JsonKey(name: 'path')
    String? path,
    @JsonKey(name: 'isVideo')
    bool? isVideo,
    @JsonKey(name: 'userRating')
    UserRating? userRating,
    @JsonKey(name: 'averageRating')
    AverageRating? averageRating,
    @JsonKey(name: 'playCount')
    int? playCount,
    @JsonKey(name: 'discNumber')
    int? discNumber,
    @JsonKey(name: 'created')
    DateTime? created,
    @JsonKey(name: 'starred')
    DateTime? starred,
    @JsonKey(name: 'albumId')
    String? albumId,
    @JsonKey(name: 'artistId')
    String? artistId,
    @JsonKey(name: 'type')
    MediaType? type,
    @JsonKey(name: 'bookmarkPosition')
    int? bookmarkPosition,
    @JsonKey(name: 'originalWidth')
    int? originalWidth,
    @JsonKey(name: 'originalHeight')
    int? originalHeight,
  }) = _PodcastEpisode;

  factory PodcastEpisode.fromJson(Map<String, dynamic> json) =>
      _$PodcastEpisodeFromJson(json);
}


@freezed
class InternetRadioStations with _$InternetRadioStations {
  const factory InternetRadioStations({
    @JsonKey(name: 'internetRadioStation')
    List<InternetRadioStation>? internetRadioStation,
  }) = _InternetRadioStations;

  factory InternetRadioStations.fromJson(Map<String, dynamic> json) =>
      _$InternetRadioStationsFromJson(json);
}


@freezed
class InternetRadioStation with _$InternetRadioStation {
  const factory InternetRadioStation({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'streamUrl')
    required String streamUrl,
    @JsonKey(name: 'homePageUrl')
    String? homePageUrl,
  }) = _InternetRadioStation;

  factory InternetRadioStation.fromJson(Map<String, dynamic> json) =>
      _$InternetRadioStationFromJson(json);
}


@freezed
class Bookmarks with _$Bookmarks {
  const factory Bookmarks({
    @JsonKey(name: 'bookmark')
    List<Bookmark>? bookmark,
  }) = _Bookmarks;

  factory Bookmarks.fromJson(Map<String, dynamic> json) =>
      _$BookmarksFromJson(json);
}


@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    @JsonKey(name: 'position')
    required int position,
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'comment')
    String? comment,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'changed')
    required DateTime changed,
    @JsonKey(name: 'entry')
    required Child entry,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
}


@freezed
class PlayQueue with _$PlayQueue {
  const factory PlayQueue({
    @JsonKey(name: 'current')
    int? current,
    @JsonKey(name: 'position')
    int? position,
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'changed')
    required DateTime changed,
    @JsonKey(name: 'changedBy')
    required String changedBy,
    @JsonKey(name: 'entry')
    List<Child>? entry,
  }) = _PlayQueue;

  factory PlayQueue.fromJson(Map<String, dynamic> json) =>
      _$PlayQueueFromJson(json);
}


@freezed
class Shares with _$Shares {
  const factory Shares({
    @JsonKey(name: 'share')
    List<Share>? share,
  }) = _Shares;

  factory Shares.fromJson(Map<String, dynamic> json) =>
      _$SharesFromJson(json);
}


@freezed
class Share with _$Share {
  const factory Share({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'url')
    required String url,
    @JsonKey(name: 'description')
    String? description,
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'created')
    required DateTime created,
    @JsonKey(name: 'expires')
    DateTime? expires,
    @JsonKey(name: 'lastVisited')
    DateTime? lastVisited,
    @JsonKey(name: 'visitCount')
    required int visitCount,
    @JsonKey(name: 'entry')
    List<Child>? entry,
  }) = _Share;

  factory Share.fromJson(Map<String, dynamic> json) =>
      _$ShareFromJson(json);
}


@freezed
class Starred with _$Starred {
  const factory Starred({
    @JsonKey(name: 'artist')
    List<Artist>? artist,
    @JsonKey(name: 'album')
    List<Child>? album,
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _Starred;

  factory Starred.fromJson(Map<String, dynamic> json) =>
      _$StarredFromJson(json);
}


@freezed
class AlbumInfo with _$AlbumInfo {
  const factory AlbumInfo({
    @JsonKey(name: 'notes')
    String? notes,
    @JsonKey(name: 'musicBrainzId')
    String? musicBrainzId,
    @JsonKey(name: 'lastFmUrl')
    String? lastFmUrl,
    @JsonKey(name: 'smallImageUrl')
    String? smallImageUrl,
    @JsonKey(name: 'mediumImageUrl')
    String? mediumImageUrl,
    @JsonKey(name: 'largeImageUrl')
    String? largeImageUrl,
  }) = _AlbumInfo;

  factory AlbumInfo.fromJson(Map<String, dynamic> json) =>
      _$AlbumInfoFromJson(json);
}


@freezed
class ArtistInfoBase with _$ArtistInfoBase {
  const factory ArtistInfoBase({
    @JsonKey(name: 'biography')
    String? biography,
    @JsonKey(name: 'musicBrainzId')
    String? musicBrainzId,
    @JsonKey(name: 'lastFmUrl')
    String? lastFmUrl,
    @JsonKey(name: 'smallImageUrl')
    String? smallImageUrl,
    @JsonKey(name: 'mediumImageUrl')
    String? mediumImageUrl,
    @JsonKey(name: 'largeImageUrl')
    String? largeImageUrl,
  }) = _ArtistInfoBase;

  factory ArtistInfoBase.fromJson(Map<String, dynamic> json) =>
      _$ArtistInfoBaseFromJson(json);
}


@freezed
class ArtistInfo with _$ArtistInfo {
  const factory ArtistInfo({
    @JsonKey(name: 'similarArtist')
    List<Artist>? similarArtist,
  }) = _ArtistInfo;

  factory ArtistInfo.fromJson(Map<String, dynamic> json) =>
      _$ArtistInfoFromJson(json);
}


@freezed
class ArtistInfo2 with _$ArtistInfo2 {
  const factory ArtistInfo2({
    @JsonKey(name: 'similarArtist')
    List<ArtistId3>? similarArtist,
  }) = _ArtistInfo2;

  factory ArtistInfo2.fromJson(Map<String, dynamic> json) =>
      _$ArtistInfo2FromJson(json);
}


@freezed
class SimilarSongs with _$SimilarSongs {
  const factory SimilarSongs({
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _SimilarSongs;

  factory SimilarSongs.fromJson(Map<String, dynamic> json) =>
      _$SimilarSongsFromJson(json);
}


@freezed
class SimilarSongs2 with _$SimilarSongs2 {
  const factory SimilarSongs2({
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _SimilarSongs2;

  factory SimilarSongs2.fromJson(Map<String, dynamic> json) =>
      _$SimilarSongs2FromJson(json);
}


@freezed
class TopSongs with _$TopSongs {
  const factory TopSongs({
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _TopSongs;

  factory TopSongs.fromJson(Map<String, dynamic> json) =>
      _$TopSongsFromJson(json);
}


@freezed
class Starred2 with _$Starred2 {
  const factory Starred2({
    @JsonKey(name: 'artist')
    List<ArtistId3>? artist,
    @JsonKey(name: 'album')
    List<AlbumId3>? album,
    @JsonKey(name: 'song')
    List<Child>? song,
  }) = _Starred2;

  factory Starred2.fromJson(Map<String, dynamic> json) =>
      _$Starred2FromJson(json);
}


@freezed
class License with _$License {
  const factory License({
    @JsonKey(name: 'valid')
    required bool valid,
    @JsonKey(name: 'email')
    String? email,
    @JsonKey(name: 'licenseExpires')
    DateTime? licenseExpires,
    @JsonKey(name: 'trialExpires')
    DateTime? trialExpires,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}


@freezed
class ScanStatus with _$ScanStatus {
  const factory ScanStatus({
    @JsonKey(name: 'scanning')
    required bool scanning,
    @JsonKey(name: 'count')
    int? count,
  }) = _ScanStatus;

  factory ScanStatus.fromJson(Map<String, dynamic> json) =>
      _$ScanStatusFromJson(json);
}


@freezed
class Users with _$Users {
  const factory Users({
    @JsonKey(name: 'user')
    List<User>? user,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);
}


@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'username')
    required String username,
    @JsonKey(name: 'email')
    String? email,
    @JsonKey(name: 'scrobblingEnabled')
    required bool scrobblingEnabled,
    @JsonKey(name: 'maxBitRate')
    int? maxBitRate,
    @JsonKey(name: 'adminRole')
    required bool adminRole,
    @JsonKey(name: 'settingsRole')
    required bool settingsRole,
    @JsonKey(name: 'downloadRole')
    required bool downloadRole,
    @JsonKey(name: 'uploadRole')
    required bool uploadRole,
    @JsonKey(name: 'playlistRole')
    required bool playlistRole,
    @JsonKey(name: 'coverArtRole')
    required bool coverArtRole,
    @JsonKey(name: 'commentRole')
    required bool commentRole,
    @JsonKey(name: 'podcastRole')
    required bool podcastRole,
    @JsonKey(name: 'streamRole')
    required bool streamRole,
    @JsonKey(name: 'jukeboxRole')
    required bool jukeboxRole,
    @JsonKey(name: 'shareRole')
    required bool shareRole,
    @JsonKey(name: 'videoConversionRole')
    required bool videoConversionRole,
    @JsonKey(name: 'avatarLastChanged')
    DateTime? avatarLastChanged,
    @JsonKey(name: 'folder')
    List<int>? folder,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}


@freezed
class Error with _$Error {
  const factory Error({
    @JsonKey(name: 'code')
    required int code,
    @JsonKey(name: 'message')
    String? message,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) =>
      _$ErrorFromJson(json);
}


