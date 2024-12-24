import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:dururu/providers/auth.dart';
import 'package:dururu/providers/dio.dart';
import 'package:dururu/models/subsonic.dart';

part 'subsonic_apis.g.dart';
part 'subsonic_apis.freezed.dart';

@freezed
class IntroductionRequest with _$IntroductionRequest {
  const factory IntroductionRequest({
    required dynamic u,
    dynamic p,
    dynamic t,
    dynamic s,
    required dynamic v,
    required dynamic c,
@Default("xml")
    dynamic f,
  }) = _IntroductionRequest;
}


/// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
/// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
/// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
/// Please note that all methods take the following parameters:
/// *) Either p or both t and s must be specified.
/// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
/// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
/// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
/// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
/// This involves two steps:
/// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
/// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
/// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
/// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
/// The following error codes are defined:
/// This table shows the REST API version implemented in different Subsonic versions:
/// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
/// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
/// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
/// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
/// @param u The username.
/// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
/// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
/// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
/// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
/// @param c A unique string identifying the client application.
/// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
@riverpod
Future<Response> introduction(Ref ref, IntroductionRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/Introduction',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'u': request.u,
      if (request.p != null) 'p': request.p,
      if (request.t != null) 't': request.t,
      if (request.s != null) 's': request.s,
      'v': request.v,
      'c': request.c,
      if (request.f != null) 'f': request.f
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/ping Since 1.0.0
/// Used to test connectivity with the server. Takes no extra parameters.
/// Returns an empty <subsonic-response> element on success. Example.
@riverpod
Future<Response> ping(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/ping',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getLicense Since 1.0.0
/// Get details about the software license. Takes no extra parameters. Please note that access to the REST API requires that the server has a valid license (after a 30-day trial period). To get a license key you must upgrade to Subsonic Premium.
/// Returns a <subsonic-response> element with a nested <license> element on success. Example.
@riverpod
Future<Response> getLicense(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getLicense',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getMusicFolders Since 1.0.0
/// Returns all configured top-level music folders. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <musicFolders> element on success. Example.
@riverpod
Future<Response> getMusicFolders(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getMusicFolders',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetIndexesRequest with _$GetIndexesRequest {
  const factory GetIndexesRequest({
    dynamic musicFolderId,
    dynamic ifModifiedSince,
  }) = _GetIndexesRequest;
}


/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
@riverpod
Future<Response> getIndexes(Ref ref, GetIndexesRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getIndexes',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId,
      if (request.ifModifiedSince != null) 'ifModifiedSince': request.ifModifiedSince
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetMusicDirectoryRequest with _$GetMusicDirectoryRequest {
  const factory GetMusicDirectoryRequest({
    required dynamic id,
  }) = _GetMusicDirectoryRequest;
}


/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
@riverpod
Future<Response> getMusicDirectory(Ref ref, GetMusicDirectoryRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getMusicDirectory',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getGenres Since 1.9.0
/// Returns all genres.
/// Returns a <subsonic-response> element with a nested <genres> element on success. Example.
@riverpod
Future<Response> getGenres(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getGenres',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetArtistsRequest with _$GetArtistsRequest {
  const factory GetArtistsRequest({
    dynamic musicFolderId,
  }) = _GetArtistsRequest;
}


/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getArtists(Ref ref, GetArtistsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getArtists',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetArtistRequest with _$GetArtistRequest {
  const factory GetArtistRequest({
    required dynamic id,
  }) = _GetArtistRequest;
}


/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
@riverpod
Future<Response> getArtist(Ref ref, GetArtistRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getArtist',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAlbumRequest with _$GetAlbumRequest {
  const factory GetAlbumRequest({
    required dynamic id,
  }) = _GetAlbumRequest;
}


/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
@riverpod
Future<Response> getAlbum(Ref ref, GetAlbumRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAlbum',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetSongRequest with _$GetSongRequest {
  const factory GetSongRequest({
    required dynamic id,
  }) = _GetSongRequest;
}


/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
@riverpod
Future<Response> getSong(Ref ref, GetSongRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getSong',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getVideos Since 1.8.0
/// Returns all video files.
/// Returns a <subsonic-response> element with a nested <videos> element on success. Example.
@riverpod
Future<Response> getVideos(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getVideos',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetVideoInfoRequest with _$GetVideoInfoRequest {
  const factory GetVideoInfoRequest({
    required dynamic id,
  }) = _GetVideoInfoRequest;
}


/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
@riverpod
Future<Response> getVideoInfo(Ref ref, GetVideoInfoRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getVideoInfo',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetArtistInfoRequest with _$GetArtistInfoRequest {
  const factory GetArtistInfoRequest({
    required dynamic id,
@Default(20)
    dynamic count,
@Default(false)
    dynamic includeNotPresent,
  }) = _GetArtistInfoRequest;
}


/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
@riverpod
Future<Response> getArtistInfo(Ref ref, GetArtistInfoRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getArtistInfo',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.count != null) 'count': request.count,
      if (request.includeNotPresent != null) 'includeNotPresent': request.includeNotPresent
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetArtistInfo2Request with _$GetArtistInfo2Request {
  const factory GetArtistInfo2Request({
    required dynamic id,
@Default(20)
    dynamic count,
@Default(false)
    dynamic includeNotPresent,
  }) = _GetArtistInfo2Request;
}


/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
@riverpod
Future<Response> getArtistInfo2(Ref ref, GetArtistInfo2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getArtistInfo2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.count != null) 'count': request.count,
      if (request.includeNotPresent != null) 'includeNotPresent': request.includeNotPresent
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAlbumInfoRequest with _$GetAlbumInfoRequest {
  const factory GetAlbumInfoRequest({
    required dynamic id,
  }) = _GetAlbumInfoRequest;
}


/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
@riverpod
Future<Response> getAlbumInfo(Ref ref, GetAlbumInfoRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAlbumInfo',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAlbumInfo2Request with _$GetAlbumInfo2Request {
  const factory GetAlbumInfo2Request({
    required dynamic id,
  }) = _GetAlbumInfo2Request;
}


/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
@riverpod
Future<Response> getAlbumInfo2(Ref ref, GetAlbumInfo2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAlbumInfo2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetSimilarSongsRequest with _$GetSimilarSongsRequest {
  const factory GetSimilarSongsRequest({
    required dynamic id,
@Default(50)
    dynamic count,
  }) = _GetSimilarSongsRequest;
}


/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
@riverpod
Future<Response> getSimilarSongs(Ref ref, GetSimilarSongsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getSimilarSongs',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.count != null) 'count': request.count
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetSimilarSongs2Request with _$GetSimilarSongs2Request {
  const factory GetSimilarSongs2Request({
    required dynamic id,
@Default(50)
    dynamic count,
  }) = _GetSimilarSongs2Request;
}


/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
@riverpod
Future<Response> getSimilarSongs2(Ref ref, GetSimilarSongs2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getSimilarSongs2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.count != null) 'count': request.count
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetTopSongsRequest with _$GetTopSongsRequest {
  const factory GetTopSongsRequest({
    required dynamic artist,
@Default(50)
    dynamic count,
  }) = _GetTopSongsRequest;
}


/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
@riverpod
Future<Response> getTopSongs(Ref ref, GetTopSongsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getTopSongs',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'artist': request.artist,
      if (request.count != null) 'count': request.count
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAlbumListRequest with _$GetAlbumListRequest {
  const factory GetAlbumListRequest({
    required dynamic type,
@Default(10)
    dynamic size,
@Default(0)
    dynamic offset,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) = _GetAlbumListRequest;
}


/// http://your-server/rest/getAlbumList Since 1.2.0
/// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
/// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getAlbumList(Ref ref, GetAlbumListRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAlbumList',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'type': request.type,
      if (request.size != null) 'size': request.size,
      if (request.offset != null) 'offset': request.offset,
      if (request.fromYear != null) 'fromYear': request.fromYear,
      if (request.toYear != null) 'toYear': request.toYear,
      if (request.genre != null) 'genre': request.genre,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAlbumList2Request with _$GetAlbumList2Request {
  const factory GetAlbumList2Request({
    required dynamic type,
@Default(10)
    dynamic size,
@Default(0)
    dynamic offset,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) = _GetAlbumList2Request;
}


/// http://your-server/rest/getAlbumList2 Since 1.8.0
/// Similar to getAlbumList, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getAlbumList2(Ref ref, GetAlbumList2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAlbumList2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'type': request.type,
      if (request.size != null) 'size': request.size,
      if (request.offset != null) 'offset': request.offset,
      if (request.fromYear != null) 'fromYear': request.fromYear,
      if (request.toYear != null) 'toYear': request.toYear,
      if (request.genre != null) 'genre': request.genre,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetRandomSongsRequest with _$GetRandomSongsRequest {
  const factory GetRandomSongsRequest({
@Default(10)
    dynamic size,
    dynamic genre,
    dynamic fromYear,
    dynamic toYear,
    dynamic musicFolderId,
  }) = _GetRandomSongsRequest;
}


/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getRandomSongs(Ref ref, GetRandomSongsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getRandomSongs',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.size != null) 'size': request.size,
      if (request.genre != null) 'genre': request.genre,
      if (request.fromYear != null) 'fromYear': request.fromYear,
      if (request.toYear != null) 'toYear': request.toYear,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetSongsByGenreRequest with _$GetSongsByGenreRequest {
  const factory GetSongsByGenreRequest({
    required dynamic genre,
@Default(10)
    dynamic count,
@Default(0)
    dynamic offset,
    dynamic musicFolderId,
  }) = _GetSongsByGenreRequest;
}


/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getSongsByGenre(Ref ref, GetSongsByGenreRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getSongsByGenre',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'genre': request.genre,
      if (request.count != null) 'count': request.count,
      if (request.offset != null) 'offset': request.offset,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getNowPlaying Since 1.0.0
/// Returns what is currently being played by all users. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <nowPlaying> element on success. Example.
@riverpod
Future<Response> getNowPlaying(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getNowPlaying',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetStarredRequest with _$GetStarredRequest {
  const factory GetStarredRequest({
    dynamic musicFolderId,
  }) = _GetStarredRequest;
}


/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getStarred(Ref ref, GetStarredRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getStarred',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetStarred2Request with _$GetStarred2Request {
  const factory GetStarred2Request({
    dynamic musicFolderId,
  }) = _GetStarred2Request;
}


/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> getStarred2(Ref ref, GetStarred2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getStarred2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class SearchRequest with _$SearchRequest {
  const factory SearchRequest({
    dynamic artist,
    dynamic album,
    dynamic title,
    dynamic any,
@Default(20)
    dynamic count,
@Default(0)
    dynamic offset,
    dynamic newerThan,
  }) = _SearchRequest;
}


/// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
/// Returns a listing of files matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
/// @param artist Artist to search for.
/// @param album Album to searh for.
/// @param title Song title to search for.
/// @param any Searches all fields.
/// @param count Default(20) Maximum number of results to return.
/// @param offset Default(0) Search result offset. Used for paging.
/// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
@riverpod
Future<Response> search(Ref ref, SearchRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/search',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.artist != null) 'artist': request.artist,
      if (request.album != null) 'album': request.album,
      if (request.title != null) 'title': request.title,
      if (request.any != null) 'any': request.any,
      if (request.count != null) 'count': request.count,
      if (request.offset != null) 'offset': request.offset,
      if (request.newerThan != null) 'newerThan': request.newerThan
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class Search2Request with _$Search2Request {
  const factory Search2Request({
    required dynamic query,
@Default(20)
    dynamic artistCount,
@Default(0)
    dynamic artistOffset,
@Default(20)
    dynamic albumCount,
@Default(0)
    dynamic albumOffset,
@Default(20)
    dynamic songCount,
@Default(0)
    dynamic songOffset,
    dynamic musicFolderId,
  }) = _Search2Request;
}


/// http://your-server/rest/search2 Since 1.4.0
/// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> search2(Ref ref, Search2Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/search2',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'query': request.query,
      if (request.artistCount != null) 'artistCount': request.artistCount,
      if (request.artistOffset != null) 'artistOffset': request.artistOffset,
      if (request.albumCount != null) 'albumCount': request.albumCount,
      if (request.albumOffset != null) 'albumOffset': request.albumOffset,
      if (request.songCount != null) 'songCount': request.songCount,
      if (request.songOffset != null) 'songOffset': request.songOffset,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class Search3Request with _$Search3Request {
  const factory Search3Request({
    required dynamic query,
@Default(20)
    dynamic artistCount,
@Default(0)
    dynamic artistOffset,
@Default(20)
    dynamic albumCount,
@Default(0)
    dynamic albumOffset,
@Default(20)
    dynamic songCount,
@Default(0)
    dynamic songOffset,
    dynamic musicFolderId,
  }) = _Search3Request;
}


/// http://your-server/rest/search3 Since 1.8.0
/// Similar to search2, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
@riverpod
Future<Response> search3(Ref ref, Search3Request request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/search3',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'query': request.query,
      if (request.artistCount != null) 'artistCount': request.artistCount,
      if (request.artistOffset != null) 'artistOffset': request.artistOffset,
      if (request.albumCount != null) 'albumCount': request.albumCount,
      if (request.albumOffset != null) 'albumOffset': request.albumOffset,
      if (request.songCount != null) 'songCount': request.songCount,
      if (request.songOffset != null) 'songOffset': request.songOffset,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetPlaylistsRequest with _$GetPlaylistsRequest {
  const factory GetPlaylistsRequest({
    dynamic username,
  }) = _GetPlaylistsRequest;
}


/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
@riverpod
Future<Response> getPlaylists(Ref ref, GetPlaylistsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getPlaylists',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.username != null) 'username': request.username
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetPlaylistRequest with _$GetPlaylistRequest {
  const factory GetPlaylistRequest({
    required dynamic id,
  }) = _GetPlaylistRequest;
}


/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
@riverpod
Future<Response> getPlaylist(Ref ref, GetPlaylistRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getPlaylist',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreatePlaylistRequest with _$CreatePlaylistRequest {
  const factory CreatePlaylistRequest({
    dynamic playlistId,
    dynamic name,
    dynamic songId,
  }) = _CreatePlaylistRequest;
}


/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
@riverpod
Future<Response> createPlaylist(Ref ref, CreatePlaylistRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createPlaylist',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.playlistId != null) 'playlistId': request.playlistId,
      if (request.name != null) 'name': request.name,
      if (request.songId != null) 'songId': request.songId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class UpdatePlaylistRequest with _$UpdatePlaylistRequest {
  const factory UpdatePlaylistRequest({
    required dynamic playlistId,
    dynamic name,
    dynamic comment,
    dynamic public,
    dynamic songIdToAdd,
    dynamic songIndexToRemove,
  }) = _UpdatePlaylistRequest;
}


/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
@riverpod
Future<Response> updatePlaylist(Ref ref, UpdatePlaylistRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/updatePlaylist',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'playlistId': request.playlistId,
      if (request.name != null) 'name': request.name,
      if (request.comment != null) 'comment': request.comment,
      if (request.public != null) 'public': request.public,
      if (request.songIdToAdd != null) 'songIdToAdd': request.songIdToAdd,
      if (request.songIndexToRemove != null) 'songIndexToRemove': request.songIndexToRemove
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeletePlaylistRequest with _$DeletePlaylistRequest {
  const factory DeletePlaylistRequest({
    required dynamic id,
  }) = _DeletePlaylistRequest;
}


/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
@riverpod
Future<Response> deletePlaylist(Ref ref, DeletePlaylistRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deletePlaylist',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class StreamRequest with _$StreamRequest {
  const factory StreamRequest({
    required dynamic id,
    dynamic maxBitRate,
    dynamic format,
    dynamic timeOffset,
    dynamic size,
@Default(false)
    dynamic estimateContentLength,
@Default(false)
    dynamic converted,
  }) = _StreamRequest;
}


/// http://your-server/rest/stream Since 1.0.0
/// Streams a given media file.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
/// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
/// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
/// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
/// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
/// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
/// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
@riverpod
String stream(Ref ref, StreamRequest request) {
  final params = {
    ...ref.read(authProvider.notifier).getAuthorization(),
    'id': request.id,
      if (request.maxBitRate != null) 'maxBitRate': request.maxBitRate,
      if (request.format != null) 'format': request.format,
      if (request.timeOffset != null) 'timeOffset': request.timeOffset,
      if (request.size != null) 'size': request.size,
      if (request.estimateContentLength != null) 'estimateContentLength': request.estimateContentLength,
      if (request.converted != null) 'converted': request.converted
  };
  final url =
      '${ref.read(authProvider).value!.serverUrl}/rest/stream?${params.entries.map((entry) => '${entry.key}=${entry.value}').join('&')}';

  return Uri.encodeFull(url);

}

@freezed
class DownloadRequest with _$DownloadRequest {
  const factory DownloadRequest({
    required dynamic id,
  }) = _DownloadRequest;
}


/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
@riverpod
Future<Response> download(Ref ref, DownloadRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/download',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class HlsRequest with _$HlsRequest {
  const factory HlsRequest({
    required dynamic id,
    dynamic bitRate,
    dynamic audioTrack,
  }) = _HlsRequest;
}


/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
@riverpod
Future<Response> hls(Ref ref, HlsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/hls',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.bitRate != null) 'bitRate': request.bitRate,
      if (request.audioTrack != null) 'audioTrack': request.audioTrack
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetCaptionsRequest with _$GetCaptionsRequest {
  const factory GetCaptionsRequest({
    required dynamic id,
    dynamic format,
  }) = _GetCaptionsRequest;
}


/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
@riverpod
Future<Response> getCaptions(Ref ref, GetCaptionsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getCaptions',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.format != null) 'format': request.format
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetCoverArtRequest with _$GetCoverArtRequest {
  const factory GetCoverArtRequest({
    required dynamic id,
    dynamic size,
  }) = _GetCoverArtRequest;
}


/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
@riverpod
String getCoverArt(Ref ref, GetCoverArtRequest request) {
  final params = {
    ...ref.read(authProvider.notifier).getAuthorization(),
    'id': request.id,
      if (request.size != null) 'size': request.size
  };
  final url =
      '${ref.read(authProvider).value!.serverUrl}/rest/getCoverArt?${params.entries.map((entry) => '${entry.key}=${entry.value}').join('&')}';

  return Uri.encodeFull(url);

}

@freezed
class GetLyricsRequest with _$GetLyricsRequest {
  const factory GetLyricsRequest({
    dynamic artist,
    dynamic title,
  }) = _GetLyricsRequest;
}


/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
@riverpod
Future<Response> getLyrics(Ref ref, GetLyricsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getLyrics',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.artist != null) 'artist': request.artist,
      if (request.title != null) 'title': request.title
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetAvatarRequest with _$GetAvatarRequest {
  const factory GetAvatarRequest({
    required dynamic username,
  }) = _GetAvatarRequest;
}


/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
@riverpod
Future<Response> getAvatar(Ref ref, GetAvatarRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getAvatar',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class StarRequest with _$StarRequest {
  const factory StarRequest({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) = _StarRequest;
}


/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
@riverpod
Future<Response> star(Ref ref, StarRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/star',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.id != null) 'id': request.id,
      if (request.albumId != null) 'albumId': request.albumId,
      if (request.artistId != null) 'artistId': request.artistId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class UnstarRequest with _$UnstarRequest {
  const factory UnstarRequest({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) = _UnstarRequest;
}


/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
@riverpod
Future<Response> unstar(Ref ref, UnstarRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/unstar',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.id != null) 'id': request.id,
      if (request.albumId != null) 'albumId': request.albumId,
      if (request.artistId != null) 'artistId': request.artistId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class SetRatingRequest with _$SetRatingRequest {
  const factory SetRatingRequest({
    required dynamic id,
    required dynamic rating,
  }) = _SetRatingRequest;
}


/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
@riverpod
Future<Response> setRating(Ref ref, SetRatingRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/setRating',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      'rating': request.rating
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class ScrobbleRequest with _$ScrobbleRequest {
  const factory ScrobbleRequest({
    required dynamic id,
    dynamic time,
@Default("True")
    dynamic submission,
  }) = _ScrobbleRequest;
}


/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
@riverpod
Future<Response> scrobble(Ref ref, ScrobbleRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/scrobble',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.time != null) 'time': request.time,
      if (request.submission != null) 'submission': request.submission
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getShares Since 1.6.0
/// Returns information about shared media this user is allowed to manage. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <shares> element on success. Example.
@riverpod
Future<Response> getShares(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getShares',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreateShareRequest with _$CreateShareRequest {
  const factory CreateShareRequest({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) = _CreateShareRequest;
}


/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
@riverpod
Future<Response> createShare(Ref ref, CreateShareRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createShare',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.description != null) 'description': request.description,
      if (request.expires != null) 'expires': request.expires
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class UpdateShareRequest with _$UpdateShareRequest {
  const factory UpdateShareRequest({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) = _UpdateShareRequest;
}


/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
@riverpod
Future<Response> updateShare(Ref ref, UpdateShareRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/updateShare',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.description != null) 'description': request.description,
      if (request.expires != null) 'expires': request.expires
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeleteShareRequest with _$DeleteShareRequest {
  const factory DeleteShareRequest({
    required dynamic id,
  }) = _DeleteShareRequest;
}


/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
@riverpod
Future<Response> deleteShare(Ref ref, DeleteShareRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deleteShare',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetPodcastsRequest with _$GetPodcastsRequest {
  const factory GetPodcastsRequest({
@Default(true)
    dynamic includeEpisodes,
    dynamic id,
  }) = _GetPodcastsRequest;
}


/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
@riverpod
Future<Response> getPodcasts(Ref ref, GetPodcastsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getPodcasts',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.includeEpisodes != null) 'includeEpisodes': request.includeEpisodes,
      if (request.id != null) 'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetNewestPodcastsRequest with _$GetNewestPodcastsRequest {
  const factory GetNewestPodcastsRequest({
@Default(20)
    dynamic count,
  }) = _GetNewestPodcastsRequest;
}


/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
@riverpod
Future<Response> getNewestPodcasts(Ref ref, GetNewestPodcastsRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getNewestPodcasts',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.count != null) 'count': request.count
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/refreshPodcasts Since 1.9.0
/// Requests the server to check for new Podcast episodes. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
@riverpod
Future<Response> refreshPodcasts(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/refreshPodcasts',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreatePodcastChannelRequest with _$CreatePodcastChannelRequest {
  const factory CreatePodcastChannelRequest({
    required dynamic url,
  }) = _CreatePodcastChannelRequest;
}


/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
@riverpod
Future<Response> createPodcastChannel(Ref ref, CreatePodcastChannelRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createPodcastChannel',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'url': request.url
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeletePodcastChannelRequest with _$DeletePodcastChannelRequest {
  const factory DeletePodcastChannelRequest({
    required dynamic id,
  }) = _DeletePodcastChannelRequest;
}


/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
@riverpod
Future<Response> deletePodcastChannel(Ref ref, DeletePodcastChannelRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deletePodcastChannel',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeletePodcastEpisodeRequest with _$DeletePodcastEpisodeRequest {
  const factory DeletePodcastEpisodeRequest({
    required dynamic id,
  }) = _DeletePodcastEpisodeRequest;
}


/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
@riverpod
Future<Response> deletePodcastEpisode(Ref ref, DeletePodcastEpisodeRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deletePodcastEpisode',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DownloadPodcastEpisodeRequest with _$DownloadPodcastEpisodeRequest {
  const factory DownloadPodcastEpisodeRequest({
    required dynamic id,
  }) = _DownloadPodcastEpisodeRequest;
}


/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
@riverpod
Future<Response> downloadPodcastEpisode(Ref ref, DownloadPodcastEpisodeRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/downloadPodcastEpisode',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class JukeboxControlRequest with _$JukeboxControlRequest {
  const factory JukeboxControlRequest({
    required dynamic action,
    dynamic index,
    dynamic offset,
    dynamic id,
    dynamic gain,
  }) = _JukeboxControlRequest;
}


/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
@riverpod
Future<Response> jukeboxControl(Ref ref, JukeboxControlRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/jukeboxControl',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'action': request.action,
      if (request.index != null) 'index': request.index,
      if (request.offset != null) 'offset': request.offset,
      if (request.id != null) 'id': request.id,
      if (request.gain != null) 'gain': request.gain
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getInternetRadioStations Since 1.9.0
/// Returns all internet radio stations. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <internetRadioStations> element on success. Example.
@riverpod
Future<Response> getInternetRadioStations(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getInternetRadioStations',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreateInternetRadioStationRequest with _$CreateInternetRadioStationRequest {
  const factory CreateInternetRadioStationRequest({
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) = _CreateInternetRadioStationRequest;
}


/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
@riverpod
Future<Response> createInternetRadioStation(Ref ref, CreateInternetRadioStationRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createInternetRadioStation',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'streamUrl': request.streamUrl,
      'name': request.name,
      if (request.homepageUrl != null) 'homepageUrl': request.homepageUrl
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class UpdateInternetRadioStationRequest with _$UpdateInternetRadioStationRequest {
  const factory UpdateInternetRadioStationRequest({
    required dynamic id,
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) = _UpdateInternetRadioStationRequest;
}


/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
@riverpod
Future<Response> updateInternetRadioStation(Ref ref, UpdateInternetRadioStationRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/updateInternetRadioStation',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      'streamUrl': request.streamUrl,
      'name': request.name,
      if (request.homepageUrl != null) 'homepageUrl': request.homepageUrl
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeleteInternetRadioStationRequest with _$DeleteInternetRadioStationRequest {
  const factory DeleteInternetRadioStationRequest({
    required dynamic id,
  }) = _DeleteInternetRadioStationRequest;
}


/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
@riverpod
Future<Response> deleteInternetRadioStation(Ref ref, DeleteInternetRadioStationRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deleteInternetRadioStation',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetChatMessagesRequest with _$GetChatMessagesRequest {
  const factory GetChatMessagesRequest({
    dynamic since,
  }) = _GetChatMessagesRequest;
}


/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
@riverpod
Future<Response> getChatMessages(Ref ref, GetChatMessagesRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getChatMessages',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      if (request.since != null) 'since': request.since
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class AddChatMessageRequest with _$AddChatMessageRequest {
  const factory AddChatMessageRequest({
    required dynamic message,
  }) = _AddChatMessageRequest;
}


/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
@riverpod
Future<Response> addChatMessage(Ref ref, AddChatMessageRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/addChatMessage',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'message': request.message
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class GetUserRequest with _$GetUserRequest {
  const factory GetUserRequest({
    required dynamic username,
  }) = _GetUserRequest;
}


/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
@riverpod
Future<Response> getUser(Ref ref, GetUserRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getUser',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getUsers Since 1.8.0
/// Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.
/// Returns a <subsonic-response> element with a nested <users> element on success. Example.
@riverpod
Future<Response> getUsers(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getUsers',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    required dynamic username,
    required dynamic password,
    required dynamic email,
@Default(false)
    dynamic ldapAuthenticated,
@Default(false)
    dynamic adminRole,
@Default(true)
    dynamic settingsRole,
@Default(true)
    dynamic streamRole,
@Default(false)
    dynamic jukeboxRole,
@Default(false)
    dynamic downloadRole,
@Default(false)
    dynamic uploadRole,
@Default(false)
    dynamic playlistRole,
@Default(false)
    dynamic coverArtRole,
@Default(false)
    dynamic commentRole,
@Default(false)
    dynamic podcastRole,
@Default(false)
    dynamic shareRole,
@Default(false)
    dynamic videoConversionRole,
@Default("All folders")
    dynamic musicFolderId,
  }) = _CreateUserRequest;
}


/// http://your-server/rest/createUser Since 1.1.0
/// Creates a new Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the new user.
/// @param password The password of the new user, either in clear text of hex-encoded (see above).
/// @param email The email address of the new user.
/// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
/// @param adminRole Default(false) Whether the user is administrator.
/// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
/// @param streamRole Default(true) Whether the user is allowed to play files.
/// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Default(false) Whether the user is allowed to download files.
/// @param uploadRole Default(false) Whether the user is allowed to upload files.
/// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
/// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
/// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
/// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
@riverpod
Future<Response> createUser(Ref ref, CreateUserRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createUser',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username,
      'password': request.password,
      'email': request.email,
      if (request.ldapAuthenticated != null) 'ldapAuthenticated': request.ldapAuthenticated,
      if (request.adminRole != null) 'adminRole': request.adminRole,
      if (request.settingsRole != null) 'settingsRole': request.settingsRole,
      if (request.streamRole != null) 'streamRole': request.streamRole,
      if (request.jukeboxRole != null) 'jukeboxRole': request.jukeboxRole,
      if (request.downloadRole != null) 'downloadRole': request.downloadRole,
      if (request.uploadRole != null) 'uploadRole': request.uploadRole,
      if (request.playlistRole != null) 'playlistRole': request.playlistRole,
      if (request.coverArtRole != null) 'coverArtRole': request.coverArtRole,
      if (request.commentRole != null) 'commentRole': request.commentRole,
      if (request.podcastRole != null) 'podcastRole': request.podcastRole,
      if (request.shareRole != null) 'shareRole': request.shareRole,
      if (request.videoConversionRole != null) 'videoConversionRole': request.videoConversionRole,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required dynamic username,
    dynamic password,
    dynamic email,
    dynamic ldapAuthenticated,
    dynamic adminRole,
    dynamic settingsRole,
    dynamic streamRole,
    dynamic jukeboxRole,
    dynamic downloadRole,
    dynamic uploadRole,
    dynamic coverArtRole,
    dynamic commentRole,
    dynamic podcastRole,
    dynamic shareRole,
@Default(false)
    dynamic videoConversionRole,
    dynamic musicFolderId,
    dynamic maxBitRate,
  }) = _UpdateUserRequest;
}


/// http://your-server/rest/updateUser Since 1.10.1
/// Modifies an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user.
/// @param password The password of the user, either in clear text of hex-encoded (see above).
/// @param email The email address of the user.
/// @param ldapAuthenticated Whether the user is authenicated in LDAP.
/// @param adminRole Whether the user is administrator.
/// @param settingsRole Whether the user is allowed to change personal settings and password.
/// @param streamRole Whether the user is allowed to play files.
/// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Whether the user is allowed to download files.
/// @param uploadRole Whether the user is allowed to upload files.
/// @param coverArtRole Whether the user is allowed to change cover art and tags.
/// @param commentRole Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Whether the user is allowed to administrate Podcasts.
/// @param shareRole Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
/// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
@riverpod
Future<Response> updateUser(Ref ref, UpdateUserRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/updateUser',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username,
      if (request.password != null) 'password': request.password,
      if (request.email != null) 'email': request.email,
      if (request.ldapAuthenticated != null) 'ldapAuthenticated': request.ldapAuthenticated,
      if (request.adminRole != null) 'adminRole': request.adminRole,
      if (request.settingsRole != null) 'settingsRole': request.settingsRole,
      if (request.streamRole != null) 'streamRole': request.streamRole,
      if (request.jukeboxRole != null) 'jukeboxRole': request.jukeboxRole,
      if (request.downloadRole != null) 'downloadRole': request.downloadRole,
      if (request.uploadRole != null) 'uploadRole': request.uploadRole,
      if (request.coverArtRole != null) 'coverArtRole': request.coverArtRole,
      if (request.commentRole != null) 'commentRole': request.commentRole,
      if (request.podcastRole != null) 'podcastRole': request.podcastRole,
      if (request.shareRole != null) 'shareRole': request.shareRole,
      if (request.videoConversionRole != null) 'videoConversionRole': request.videoConversionRole,
      if (request.musicFolderId != null) 'musicFolderId': request.musicFolderId,
      if (request.maxBitRate != null) 'maxBitRate': request.maxBitRate
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeleteUserRequest with _$DeleteUserRequest {
  const factory DeleteUserRequest({
    required dynamic username,
  }) = _DeleteUserRequest;
}


/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
@riverpod
Future<Response> deleteUser(Ref ref, DeleteUserRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deleteUser',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    required dynamic username,
    required dynamic password,
  }) = _ChangePasswordRequest;
}


/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
@riverpod
Future<Response> changePassword(Ref ref, ChangePasswordRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/changePassword',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'username': request.username,
      'password': request.password
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getBookmarks Since 1.9.0
/// Returns all bookmarks for this user. A bookmark is a position within a certain media file.
/// Returns a <subsonic-response> element with a nested <bookmarks> element on success. Example.
@riverpod
Future<Response> getBookmarks(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getBookmarks',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class CreateBookmarkRequest with _$CreateBookmarkRequest {
  const factory CreateBookmarkRequest({
    required dynamic id,
    required dynamic position,
    dynamic comment,
  }) = _CreateBookmarkRequest;
}


/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
@riverpod
Future<Response> createBookmark(Ref ref, CreateBookmarkRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/createBookmark',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      'position': request.position,
      if (request.comment != null) 'comment': request.comment
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class DeleteBookmarkRequest with _$DeleteBookmarkRequest {
  const factory DeleteBookmarkRequest({
    required dynamic id,
  }) = _DeleteBookmarkRequest;
}


/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
@riverpod
Future<Response> deleteBookmark(Ref ref, DeleteBookmarkRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/deleteBookmark',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getPlayQueue Since 1.12.0
/// Returns the state of the play queue for this user (as set by savePlayQueue). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns a <subsonic-response> element with a nested <playQueue> element on success, or an empty <subsonic-response> if no play queue has been saved. Example.
@riverpod
Future<Response> getPlayQueue(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getPlayQueue',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

@freezed
class SavePlayQueueRequest with _$SavePlayQueueRequest {
  const factory SavePlayQueueRequest({
    required dynamic id,
    dynamic current,
    dynamic position,
  }) = _SavePlayQueueRequest;
}


/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
@riverpod
Future<Response> savePlayQueue(Ref ref, SavePlayQueueRequest request) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/savePlayQueue',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      'id': request.id,
      if (request.current != null) 'current': request.current,
      if (request.position != null) 'position': request.position
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/getScanStatus Since 1.15.0
/// Returns the current status for media library scanning. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
@riverpod
Future<Response> getScanStatus(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/getScanStatus',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}



/// http://your-server/rest/startScan Since 1.15.0
/// Initiates a rescan of the media libraries. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
@riverpod
Future<Response> startScan(Ref ref) {
  return ref.read(dioProvider).get(
    '${ref.read(authProvider).value!.serverUrl}/rest/startScan',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),

    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );
}

