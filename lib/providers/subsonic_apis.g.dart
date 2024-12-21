// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsonic_apis.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$introductionHash() => r'4ce4b593dc2b1587e10ceb4d112d31ceb93e0507';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
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
///
/// Copied from [introduction].
@ProviderFor(introduction)
const introductionProvider = IntroductionFamily();

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
///
/// Copied from [introduction].
class IntroductionFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [introduction].
  const IntroductionFamily();

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
  ///
  /// Copied from [introduction].
  IntroductionProvider call({
    required dynamic u,
    required dynamic v,
    required dynamic c,
    dynamic p,
    dynamic t,
    dynamic s,
    dynamic f = "xml",
  }) {
    return IntroductionProvider(
      u: u,
      v: v,
      c: c,
      p: p,
      t: t,
      s: s,
      f: f,
    );
  }

  @override
  IntroductionProvider getProviderOverride(
    covariant IntroductionProvider provider,
  ) {
    return call(
      u: provider.u,
      v: provider.v,
      c: provider.c,
      p: provider.p,
      t: provider.t,
      s: provider.s,
      f: provider.f,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'introductionProvider';
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
///
/// Copied from [introduction].
class IntroductionProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [introduction].
  IntroductionProvider({
    required dynamic u,
    required dynamic v,
    required dynamic c,
    dynamic p,
    dynamic t,
    dynamic s,
    dynamic f = "xml",
  }) : this._internal(
          (ref) => introduction(
            ref as IntroductionRef,
            u: u,
            v: v,
            c: c,
            p: p,
            t: t,
            s: s,
            f: f,
          ),
          from: introductionProvider,
          name: r'introductionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$introductionHash,
          dependencies: IntroductionFamily._dependencies,
          allTransitiveDependencies:
              IntroductionFamily._allTransitiveDependencies,
          u: u,
          v: v,
          c: c,
          p: p,
          t: t,
          s: s,
          f: f,
        );

  IntroductionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.u,
    required this.v,
    required this.c,
    required this.p,
    required this.t,
    required this.s,
    required this.f,
  }) : super.internal();

  final dynamic u;
  final dynamic v;
  final dynamic c;
  final dynamic p;
  final dynamic t;
  final dynamic s;
  final dynamic f;

  @override
  Override overrideWith(
    FutureOr<Response> Function(IntroductionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IntroductionProvider._internal(
        (ref) => create(ref as IntroductionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        u: u,
        v: v,
        c: c,
        p: p,
        t: t,
        s: s,
        f: f,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _IntroductionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IntroductionProvider &&
        other.u == u &&
        other.v == v &&
        other.c == c &&
        other.p == p &&
        other.t == t &&
        other.s == s &&
        other.f == f;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, u.hashCode);
    hash = _SystemHash.combine(hash, v.hashCode);
    hash = _SystemHash.combine(hash, c.hashCode);
    hash = _SystemHash.combine(hash, p.hashCode);
    hash = _SystemHash.combine(hash, t.hashCode);
    hash = _SystemHash.combine(hash, s.hashCode);
    hash = _SystemHash.combine(hash, f.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IntroductionRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `u` of this provider.
  dynamic get u;

  /// The parameter `v` of this provider.
  dynamic get v;

  /// The parameter `c` of this provider.
  dynamic get c;

  /// The parameter `p` of this provider.
  dynamic get p;

  /// The parameter `t` of this provider.
  dynamic get t;

  /// The parameter `s` of this provider.
  dynamic get s;

  /// The parameter `f` of this provider.
  dynamic get f;
}

class _IntroductionProviderElement
    extends AutoDisposeFutureProviderElement<Response> with IntroductionRef {
  _IntroductionProviderElement(super.provider);

  @override
  dynamic get u => (origin as IntroductionProvider).u;
  @override
  dynamic get v => (origin as IntroductionProvider).v;
  @override
  dynamic get c => (origin as IntroductionProvider).c;
  @override
  dynamic get p => (origin as IntroductionProvider).p;
  @override
  dynamic get t => (origin as IntroductionProvider).t;
  @override
  dynamic get s => (origin as IntroductionProvider).s;
  @override
  dynamic get f => (origin as IntroductionProvider).f;
}

String _$pingHash() => r'e51133166446e8772d3205bf7999430880ca9030';

/// http://your-server/rest/ping Since 1.0.0
/// Used to test connectivity with the server. Takes no extra parameters.
/// Returns an empty <subsonic-response> element on success. Example.
///
/// Copied from [ping].
@ProviderFor(ping)
final pingProvider = AutoDisposeFutureProvider<Response>.internal(
  ping,
  name: r'pingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PingRef = AutoDisposeFutureProviderRef<Response>;
String _$getLicenseHash() => r'ba3ce325acfc7b63e3606412ee8636936a7f2e97';

/// http://your-server/rest/getLicense Since 1.0.0
/// Get details about the software license. Takes no extra parameters. Please note that access to the REST API requires that the server has a valid license (after a 30-day trial period). To get a license key you must upgrade to Subsonic Premium.
/// Returns a <subsonic-response> element with a nested <license> element on success. Example.
///
/// Copied from [getLicense].
@ProviderFor(getLicense)
final getLicenseProvider = AutoDisposeFutureProvider<Response>.internal(
  getLicense,
  name: r'getLicenseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getLicenseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetLicenseRef = AutoDisposeFutureProviderRef<Response>;
String _$getMusicFoldersHash() => r'18e9c42dc26699f7e974d971723c9f86b66d36ed';

/// http://your-server/rest/getMusicFolders Since 1.0.0
/// Returns all configured top-level music folders. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <musicFolders> element on success. Example.
///
/// Copied from [getMusicFolders].
@ProviderFor(getMusicFolders)
final getMusicFoldersProvider = AutoDisposeFutureProvider<Response>.internal(
  getMusicFolders,
  name: r'getMusicFoldersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMusicFoldersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetMusicFoldersRef = AutoDisposeFutureProviderRef<Response>;
String _$getIndexesHash() => r'31a0928b499dedf62706b8f1b8fb57f63b953dcb';

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
@ProviderFor(getIndexes)
const getIndexesProvider = GetIndexesFamily();

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
class GetIndexesFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  const GetIndexesFamily();

  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  GetIndexesProvider call({
    dynamic musicFolderId,
    dynamic ifModifiedSince,
  }) {
    return GetIndexesProvider(
      musicFolderId: musicFolderId,
      ifModifiedSince: ifModifiedSince,
    );
  }

  @override
  GetIndexesProvider getProviderOverride(
    covariant GetIndexesProvider provider,
  ) {
    return call(
      musicFolderId: provider.musicFolderId,
      ifModifiedSince: provider.ifModifiedSince,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getIndexesProvider';
}

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
class GetIndexesProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  GetIndexesProvider({
    dynamic musicFolderId,
    dynamic ifModifiedSince,
  }) : this._internal(
          (ref) => getIndexes(
            ref as GetIndexesRef,
            musicFolderId: musicFolderId,
            ifModifiedSince: ifModifiedSince,
          ),
          from: getIndexesProvider,
          name: r'getIndexesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIndexesHash,
          dependencies: GetIndexesFamily._dependencies,
          allTransitiveDependencies:
              GetIndexesFamily._allTransitiveDependencies,
          musicFolderId: musicFolderId,
          ifModifiedSince: ifModifiedSince,
        );

  GetIndexesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.musicFolderId,
    required this.ifModifiedSince,
  }) : super.internal();

  final dynamic musicFolderId;
  final dynamic ifModifiedSince;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetIndexesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetIndexesProvider._internal(
        (ref) => create(ref as GetIndexesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        musicFolderId: musicFolderId,
        ifModifiedSince: ifModifiedSince,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetIndexesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetIndexesProvider &&
        other.musicFolderId == musicFolderId &&
        other.ifModifiedSince == ifModifiedSince;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);
    hash = _SystemHash.combine(hash, ifModifiedSince.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetIndexesRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;

  /// The parameter `ifModifiedSince` of this provider.
  dynamic get ifModifiedSince;
}

class _GetIndexesProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetIndexesRef {
  _GetIndexesProviderElement(super.provider);

  @override
  dynamic get musicFolderId => (origin as GetIndexesProvider).musicFolderId;
  @override
  dynamic get ifModifiedSince => (origin as GetIndexesProvider).ifModifiedSince;
}

String _$getMusicDirectoryHash() => r'015dc890d66cdf858d64a492b3f60bbaa1d761e4';

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
@ProviderFor(getMusicDirectory)
const getMusicDirectoryProvider = GetMusicDirectoryFamily();

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
class GetMusicDirectoryFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  const GetMusicDirectoryFamily();

  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  GetMusicDirectoryProvider call({
    required dynamic id,
  }) {
    return GetMusicDirectoryProvider(
      id: id,
    );
  }

  @override
  GetMusicDirectoryProvider getProviderOverride(
    covariant GetMusicDirectoryProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMusicDirectoryProvider';
}

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
class GetMusicDirectoryProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  GetMusicDirectoryProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getMusicDirectory(
            ref as GetMusicDirectoryRef,
            id: id,
          ),
          from: getMusicDirectoryProvider,
          name: r'getMusicDirectoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMusicDirectoryHash,
          dependencies: GetMusicDirectoryFamily._dependencies,
          allTransitiveDependencies:
              GetMusicDirectoryFamily._allTransitiveDependencies,
          id: id,
        );

  GetMusicDirectoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetMusicDirectoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMusicDirectoryProvider._internal(
        (ref) => create(ref as GetMusicDirectoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetMusicDirectoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMusicDirectoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMusicDirectoryRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetMusicDirectoryProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetMusicDirectoryRef {
  _GetMusicDirectoryProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetMusicDirectoryProvider).id;
}

String _$getGenresHash() => r'b32a760984a748fd590f93dc16bbd18bc5442d40';

/// http://your-server/rest/getGenres Since 1.9.0
/// Returns all genres.
/// Returns a <subsonic-response> element with a nested <genres> element on success. Example.
///
/// Copied from [getGenres].
@ProviderFor(getGenres)
final getGenresProvider = AutoDisposeFutureProvider<Response>.internal(
  getGenres,
  name: r'getGenresProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getGenresHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetGenresRef = AutoDisposeFutureProviderRef<Response>;
String _$getArtistsHash() => r'eba5c186e073364823f24008a4a18097aefc7f52';

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
@ProviderFor(getArtists)
const getArtistsProvider = GetArtistsFamily();

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
class GetArtistsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  const GetArtistsFamily();

  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  GetArtistsProvider call({
    dynamic musicFolderId,
  }) {
    return GetArtistsProvider(
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetArtistsProvider getProviderOverride(
    covariant GetArtistsProvider provider,
  ) {
    return call(
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistsProvider';
}

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
class GetArtistsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  GetArtistsProvider({
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getArtists(
            ref as GetArtistsRef,
            musicFolderId: musicFolderId,
          ),
          from: getArtistsProvider,
          name: r'getArtistsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistsHash,
          dependencies: GetArtistsFamily._dependencies,
          allTransitiveDependencies:
              GetArtistsFamily._allTransitiveDependencies,
          musicFolderId: musicFolderId,
        );

  GetArtistsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistsProvider._internal(
        (ref) => create(ref as GetArtistsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistsProvider && other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetArtistsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistsRef {
  _GetArtistsProviderElement(super.provider);

  @override
  dynamic get musicFolderId => (origin as GetArtistsProvider).musicFolderId;
}

String _$getArtistHash() => r'58e96786dbb3cd0780963eada9190628eead9273';

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
@ProviderFor(getArtist)
const getArtistProvider = GetArtistFamily();

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
class GetArtistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  const GetArtistFamily();

  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  GetArtistProvider call({
    required dynamic id,
  }) {
    return GetArtistProvider(
      id: id,
    );
  }

  @override
  GetArtistProvider getProviderOverride(
    covariant GetArtistProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistProvider';
}

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
class GetArtistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  GetArtistProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getArtist(
            ref as GetArtistRef,
            id: id,
          ),
          from: getArtistProvider,
          name: r'getArtistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistHash,
          dependencies: GetArtistFamily._dependencies,
          allTransitiveDependencies: GetArtistFamily._allTransitiveDependencies,
          id: id,
        );

  GetArtistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistProvider._internal(
        (ref) => create(ref as GetArtistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetArtistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistRef {
  _GetArtistProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetArtistProvider).id;
}

String _$getAlbumHash() => r'6a3e7890bdded4f45092fcf3540cd79d00f52e2c';

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
@ProviderFor(getAlbum)
const getAlbumProvider = GetAlbumFamily();

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
class GetAlbumFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  const GetAlbumFamily();

  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  GetAlbumProvider call({
    required dynamic id,
  }) {
    return GetAlbumProvider(
      id: id,
    );
  }

  @override
  GetAlbumProvider getProviderOverride(
    covariant GetAlbumProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumProvider';
}

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
class GetAlbumProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  GetAlbumProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getAlbum(
            ref as GetAlbumRef,
            id: id,
          ),
          from: getAlbumProvider,
          name: r'getAlbumProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumHash,
          dependencies: GetAlbumFamily._dependencies,
          allTransitiveDependencies: GetAlbumFamily._allTransitiveDependencies,
          id: id,
        );

  GetAlbumProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumProvider._internal(
        (ref) => create(ref as GetAlbumRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetAlbumProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumRef {
  _GetAlbumProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetAlbumProvider).id;
}

String _$getSongHash() => r'6a2de7b0379c4e8a6381cefb1e5755b9c8e00798';

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
@ProviderFor(getSong)
const getSongProvider = GetSongFamily();

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
class GetSongFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  const GetSongFamily();

  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  GetSongProvider call({
    required dynamic id,
  }) {
    return GetSongProvider(
      id: id,
    );
  }

  @override
  GetSongProvider getProviderOverride(
    covariant GetSongProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSongProvider';
}

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
class GetSongProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  GetSongProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getSong(
            ref as GetSongRef,
            id: id,
          ),
          from: getSongProvider,
          name: r'getSongProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSongHash,
          dependencies: GetSongFamily._dependencies,
          allTransitiveDependencies: GetSongFamily._allTransitiveDependencies,
          id: id,
        );

  GetSongProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSongRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSongProvider._internal(
        (ref) => create(ref as GetSongRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSongProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSongProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSongRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetSongProviderElement extends AutoDisposeFutureProviderElement<Response>
    with GetSongRef {
  _GetSongProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetSongProvider).id;
}

String _$getVideosHash() => r'a7a1bf7b768786874f4219b4d3904173a7c0e72e';

/// http://your-server/rest/getVideos Since 1.8.0
/// Returns all video files.
/// Returns a <subsonic-response> element with a nested <videos> element on success. Example.
///
/// Copied from [getVideos].
@ProviderFor(getVideos)
final getVideosProvider = AutoDisposeFutureProvider<Response>.internal(
  getVideos,
  name: r'getVideosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getVideosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetVideosRef = AutoDisposeFutureProviderRef<Response>;
String _$getVideoInfoHash() => r'629287d2457d0f2966b36017bf2f623636cf0f3d';

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
@ProviderFor(getVideoInfo)
const getVideoInfoProvider = GetVideoInfoFamily();

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
class GetVideoInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  const GetVideoInfoFamily();

  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  GetVideoInfoProvider call({
    required dynamic id,
  }) {
    return GetVideoInfoProvider(
      id: id,
    );
  }

  @override
  GetVideoInfoProvider getProviderOverride(
    covariant GetVideoInfoProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getVideoInfoProvider';
}

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
class GetVideoInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  GetVideoInfoProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getVideoInfo(
            ref as GetVideoInfoRef,
            id: id,
          ),
          from: getVideoInfoProvider,
          name: r'getVideoInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVideoInfoHash,
          dependencies: GetVideoInfoFamily._dependencies,
          allTransitiveDependencies:
              GetVideoInfoFamily._allTransitiveDependencies,
          id: id,
        );

  GetVideoInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetVideoInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVideoInfoProvider._internal(
        (ref) => create(ref as GetVideoInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetVideoInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVideoInfoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetVideoInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetVideoInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetVideoInfoRef {
  _GetVideoInfoProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetVideoInfoProvider).id;
}

String _$getArtistInfoHash() => r'b08e9c359c233779991368e8451a6df929b82976';

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
@ProviderFor(getArtistInfo)
const getArtistInfoProvider = GetArtistInfoFamily();

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
class GetArtistInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  const GetArtistInfoFamily();

  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  GetArtistInfoProvider call({
    required dynamic id,
    dynamic count = 20,
    dynamic includeNotPresent = false,
  }) {
    return GetArtistInfoProvider(
      id: id,
      count: count,
      includeNotPresent: includeNotPresent,
    );
  }

  @override
  GetArtistInfoProvider getProviderOverride(
    covariant GetArtistInfoProvider provider,
  ) {
    return call(
      id: provider.id,
      count: provider.count,
      includeNotPresent: provider.includeNotPresent,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistInfoProvider';
}

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
class GetArtistInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  GetArtistInfoProvider({
    required dynamic id,
    dynamic count = 20,
    dynamic includeNotPresent = false,
  }) : this._internal(
          (ref) => getArtistInfo(
            ref as GetArtistInfoRef,
            id: id,
            count: count,
            includeNotPresent: includeNotPresent,
          ),
          from: getArtistInfoProvider,
          name: r'getArtistInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistInfoHash,
          dependencies: GetArtistInfoFamily._dependencies,
          allTransitiveDependencies:
              GetArtistInfoFamily._allTransitiveDependencies,
          id: id,
          count: count,
          includeNotPresent: includeNotPresent,
        );

  GetArtistInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.count,
    required this.includeNotPresent,
  }) : super.internal();

  final dynamic id;
  final dynamic count;
  final dynamic includeNotPresent;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistInfoProvider._internal(
        (ref) => create(ref as GetArtistInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        count: count,
        includeNotPresent: includeNotPresent,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistInfoProvider &&
        other.id == id &&
        other.count == count &&
        other.includeNotPresent == includeNotPresent;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);
    hash = _SystemHash.combine(hash, includeNotPresent.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `count` of this provider.
  dynamic get count;

  /// The parameter `includeNotPresent` of this provider.
  dynamic get includeNotPresent;
}

class _GetArtistInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistInfoRef {
  _GetArtistInfoProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetArtistInfoProvider).id;
  @override
  dynamic get count => (origin as GetArtistInfoProvider).count;
  @override
  dynamic get includeNotPresent =>
      (origin as GetArtistInfoProvider).includeNotPresent;
}

String _$getArtistInfo2Hash() => r'b2ef1bc71b9de1c3582fa5de31d553d0dddedb38';

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
@ProviderFor(getArtistInfo2)
const getArtistInfo2Provider = GetArtistInfo2Family();

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
class GetArtistInfo2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  const GetArtistInfo2Family();

  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  GetArtistInfo2Provider call({
    required dynamic id,
    dynamic count = 20,
    dynamic includeNotPresent = false,
  }) {
    return GetArtistInfo2Provider(
      id: id,
      count: count,
      includeNotPresent: includeNotPresent,
    );
  }

  @override
  GetArtistInfo2Provider getProviderOverride(
    covariant GetArtistInfo2Provider provider,
  ) {
    return call(
      id: provider.id,
      count: provider.count,
      includeNotPresent: provider.includeNotPresent,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistInfo2Provider';
}

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
class GetArtistInfo2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  GetArtistInfo2Provider({
    required dynamic id,
    dynamic count = 20,
    dynamic includeNotPresent = false,
  }) : this._internal(
          (ref) => getArtistInfo2(
            ref as GetArtistInfo2Ref,
            id: id,
            count: count,
            includeNotPresent: includeNotPresent,
          ),
          from: getArtistInfo2Provider,
          name: r'getArtistInfo2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistInfo2Hash,
          dependencies: GetArtistInfo2Family._dependencies,
          allTransitiveDependencies:
              GetArtistInfo2Family._allTransitiveDependencies,
          id: id,
          count: count,
          includeNotPresent: includeNotPresent,
        );

  GetArtistInfo2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.count,
    required this.includeNotPresent,
  }) : super.internal();

  final dynamic id;
  final dynamic count;
  final dynamic includeNotPresent;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistInfo2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistInfo2Provider._internal(
        (ref) => create(ref as GetArtistInfo2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        count: count,
        includeNotPresent: includeNotPresent,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistInfo2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistInfo2Provider &&
        other.id == id &&
        other.count == count &&
        other.includeNotPresent == includeNotPresent;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);
    hash = _SystemHash.combine(hash, includeNotPresent.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistInfo2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `count` of this provider.
  dynamic get count;

  /// The parameter `includeNotPresent` of this provider.
  dynamic get includeNotPresent;
}

class _GetArtistInfo2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistInfo2Ref {
  _GetArtistInfo2ProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetArtistInfo2Provider).id;
  @override
  dynamic get count => (origin as GetArtistInfo2Provider).count;
  @override
  dynamic get includeNotPresent =>
      (origin as GetArtistInfo2Provider).includeNotPresent;
}

String _$getAlbumInfoHash() => r'bd21cc23bd35722bec0ddc21ef4ef9f4b7aa4f6a';

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
@ProviderFor(getAlbumInfo)
const getAlbumInfoProvider = GetAlbumInfoFamily();

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
class GetAlbumInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  const GetAlbumInfoFamily();

  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  GetAlbumInfoProvider call({
    required dynamic id,
  }) {
    return GetAlbumInfoProvider(
      id: id,
    );
  }

  @override
  GetAlbumInfoProvider getProviderOverride(
    covariant GetAlbumInfoProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumInfoProvider';
}

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
class GetAlbumInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  GetAlbumInfoProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getAlbumInfo(
            ref as GetAlbumInfoRef,
            id: id,
          ),
          from: getAlbumInfoProvider,
          name: r'getAlbumInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumInfoHash,
          dependencies: GetAlbumInfoFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumInfoFamily._allTransitiveDependencies,
          id: id,
        );

  GetAlbumInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumInfoProvider._internal(
        (ref) => create(ref as GetAlbumInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumInfoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetAlbumInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumInfoRef {
  _GetAlbumInfoProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetAlbumInfoProvider).id;
}

String _$getAlbumInfo2Hash() => r'3f781cf9fd681b53964997ad954591dd7a167c40';

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
@ProviderFor(getAlbumInfo2)
const getAlbumInfo2Provider = GetAlbumInfo2Family();

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
class GetAlbumInfo2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  const GetAlbumInfo2Family();

  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  GetAlbumInfo2Provider call({
    required dynamic id,
  }) {
    return GetAlbumInfo2Provider(
      id: id,
    );
  }

  @override
  GetAlbumInfo2Provider getProviderOverride(
    covariant GetAlbumInfo2Provider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumInfo2Provider';
}

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
class GetAlbumInfo2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  GetAlbumInfo2Provider({
    required dynamic id,
  }) : this._internal(
          (ref) => getAlbumInfo2(
            ref as GetAlbumInfo2Ref,
            id: id,
          ),
          from: getAlbumInfo2Provider,
          name: r'getAlbumInfo2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumInfo2Hash,
          dependencies: GetAlbumInfo2Family._dependencies,
          allTransitiveDependencies:
              GetAlbumInfo2Family._allTransitiveDependencies,
          id: id,
        );

  GetAlbumInfo2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumInfo2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumInfo2Provider._internal(
        (ref) => create(ref as GetAlbumInfo2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumInfo2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumInfo2Provider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumInfo2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetAlbumInfo2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumInfo2Ref {
  _GetAlbumInfo2ProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetAlbumInfo2Provider).id;
}

String _$getSimilarSongsHash() => r'b506003bca7b7df495ef4299b3105e46ba637e95';

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
@ProviderFor(getSimilarSongs)
const getSimilarSongsProvider = GetSimilarSongsFamily();

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
class GetSimilarSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  const GetSimilarSongsFamily();

  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  GetSimilarSongsProvider call({
    required dynamic id,
    dynamic count = 50,
  }) {
    return GetSimilarSongsProvider(
      id: id,
      count: count,
    );
  }

  @override
  GetSimilarSongsProvider getProviderOverride(
    covariant GetSimilarSongsProvider provider,
  ) {
    return call(
      id: provider.id,
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSimilarSongsProvider';
}

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
class GetSimilarSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  GetSimilarSongsProvider({
    required dynamic id,
    dynamic count = 50,
  }) : this._internal(
          (ref) => getSimilarSongs(
            ref as GetSimilarSongsRef,
            id: id,
            count: count,
          ),
          from: getSimilarSongsProvider,
          name: r'getSimilarSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSimilarSongsHash,
          dependencies: GetSimilarSongsFamily._dependencies,
          allTransitiveDependencies:
              GetSimilarSongsFamily._allTransitiveDependencies,
          id: id,
          count: count,
        );

  GetSimilarSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.count,
  }) : super.internal();

  final dynamic id;
  final dynamic count;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSimilarSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSimilarSongsProvider._internal(
        (ref) => create(ref as GetSimilarSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSimilarSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSimilarSongsProvider &&
        other.id == id &&
        other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSimilarSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `count` of this provider.
  dynamic get count;
}

class _GetSimilarSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetSimilarSongsRef {
  _GetSimilarSongsProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetSimilarSongsProvider).id;
  @override
  dynamic get count => (origin as GetSimilarSongsProvider).count;
}

String _$getSimilarSongs2Hash() => r'f8f873ed471efc940d84f3d150f15131932864d0';

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
@ProviderFor(getSimilarSongs2)
const getSimilarSongs2Provider = GetSimilarSongs2Family();

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
class GetSimilarSongs2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  const GetSimilarSongs2Family();

  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  GetSimilarSongs2Provider call({
    required dynamic id,
    dynamic count = 50,
  }) {
    return GetSimilarSongs2Provider(
      id: id,
      count: count,
    );
  }

  @override
  GetSimilarSongs2Provider getProviderOverride(
    covariant GetSimilarSongs2Provider provider,
  ) {
    return call(
      id: provider.id,
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSimilarSongs2Provider';
}

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
class GetSimilarSongs2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  GetSimilarSongs2Provider({
    required dynamic id,
    dynamic count = 50,
  }) : this._internal(
          (ref) => getSimilarSongs2(
            ref as GetSimilarSongs2Ref,
            id: id,
            count: count,
          ),
          from: getSimilarSongs2Provider,
          name: r'getSimilarSongs2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSimilarSongs2Hash,
          dependencies: GetSimilarSongs2Family._dependencies,
          allTransitiveDependencies:
              GetSimilarSongs2Family._allTransitiveDependencies,
          id: id,
          count: count,
        );

  GetSimilarSongs2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.count,
  }) : super.internal();

  final dynamic id;
  final dynamic count;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSimilarSongs2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSimilarSongs2Provider._internal(
        (ref) => create(ref as GetSimilarSongs2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSimilarSongs2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSimilarSongs2Provider &&
        other.id == id &&
        other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSimilarSongs2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `count` of this provider.
  dynamic get count;
}

class _GetSimilarSongs2ProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetSimilarSongs2Ref {
  _GetSimilarSongs2ProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetSimilarSongs2Provider).id;
  @override
  dynamic get count => (origin as GetSimilarSongs2Provider).count;
}

String _$getTopSongsHash() => r'6400c721a438fedb5e7493067098b4525b7b549e';

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
@ProviderFor(getTopSongs)
const getTopSongsProvider = GetTopSongsFamily();

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
class GetTopSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  const GetTopSongsFamily();

  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  GetTopSongsProvider call({
    required dynamic artist,
    dynamic count = 50,
  }) {
    return GetTopSongsProvider(
      artist: artist,
      count: count,
    );
  }

  @override
  GetTopSongsProvider getProviderOverride(
    covariant GetTopSongsProvider provider,
  ) {
    return call(
      artist: provider.artist,
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getTopSongsProvider';
}

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
class GetTopSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  GetTopSongsProvider({
    required dynamic artist,
    dynamic count = 50,
  }) : this._internal(
          (ref) => getTopSongs(
            ref as GetTopSongsRef,
            artist: artist,
            count: count,
          ),
          from: getTopSongsProvider,
          name: r'getTopSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTopSongsHash,
          dependencies: GetTopSongsFamily._dependencies,
          allTransitiveDependencies:
              GetTopSongsFamily._allTransitiveDependencies,
          artist: artist,
          count: count,
        );

  GetTopSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.artist,
    required this.count,
  }) : super.internal();

  final dynamic artist;
  final dynamic count;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetTopSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTopSongsProvider._internal(
        (ref) => create(ref as GetTopSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        artist: artist,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetTopSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTopSongsProvider &&
        other.artist == artist &&
        other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, artist.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetTopSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `artist` of this provider.
  dynamic get artist;

  /// The parameter `count` of this provider.
  dynamic get count;
}

class _GetTopSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetTopSongsRef {
  _GetTopSongsProviderElement(super.provider);

  @override
  dynamic get artist => (origin as GetTopSongsProvider).artist;
  @override
  dynamic get count => (origin as GetTopSongsProvider).count;
}

String _$getAlbumListHash() => r'8221692f83532be8c6dead7363013b23b736a1db';

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
///
/// Copied from [getAlbumList].
@ProviderFor(getAlbumList)
const getAlbumListProvider = GetAlbumListFamily();

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
///
/// Copied from [getAlbumList].
class GetAlbumListFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [getAlbumList].
  const GetAlbumListFamily();

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
  ///
  /// Copied from [getAlbumList].
  GetAlbumListProvider call({
    required dynamic type,
    dynamic size = 10,
    dynamic offset = 0,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) {
    return GetAlbumListProvider(
      type: type,
      size: size,
      offset: offset,
      fromYear: fromYear,
      toYear: toYear,
      genre: genre,
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetAlbumListProvider getProviderOverride(
    covariant GetAlbumListProvider provider,
  ) {
    return call(
      type: provider.type,
      size: provider.size,
      offset: provider.offset,
      fromYear: provider.fromYear,
      toYear: provider.toYear,
      genre: provider.genre,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumListProvider';
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
///
/// Copied from [getAlbumList].
class GetAlbumListProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [getAlbumList].
  GetAlbumListProvider({
    required dynamic type,
    dynamic size = 10,
    dynamic offset = 0,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getAlbumList(
            ref as GetAlbumListRef,
            type: type,
            size: size,
            offset: offset,
            fromYear: fromYear,
            toYear: toYear,
            genre: genre,
            musicFolderId: musicFolderId,
          ),
          from: getAlbumListProvider,
          name: r'getAlbumListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumListHash,
          dependencies: GetAlbumListFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumListFamily._allTransitiveDependencies,
          type: type,
          size: size,
          offset: offset,
          fromYear: fromYear,
          toYear: toYear,
          genre: genre,
          musicFolderId: musicFolderId,
        );

  GetAlbumListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.size,
    required this.offset,
    required this.fromYear,
    required this.toYear,
    required this.genre,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic type;
  final dynamic size;
  final dynamic offset;
  final dynamic fromYear;
  final dynamic toYear;
  final dynamic genre;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumListProvider._internal(
        (ref) => create(ref as GetAlbumListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        size: size,
        offset: offset,
        fromYear: fromYear,
        toYear: toYear,
        genre: genre,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumListProvider &&
        other.type == type &&
        other.size == size &&
        other.offset == offset &&
        other.fromYear == fromYear &&
        other.toYear == toYear &&
        other.genre == genre &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, fromYear.hashCode);
    hash = _SystemHash.combine(hash, toYear.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumListRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `type` of this provider.
  dynamic get type;

  /// The parameter `size` of this provider.
  dynamic get size;

  /// The parameter `offset` of this provider.
  dynamic get offset;

  /// The parameter `fromYear` of this provider.
  dynamic get fromYear;

  /// The parameter `toYear` of this provider.
  dynamic get toYear;

  /// The parameter `genre` of this provider.
  dynamic get genre;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetAlbumListProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumListRef {
  _GetAlbumListProviderElement(super.provider);

  @override
  dynamic get type => (origin as GetAlbumListProvider).type;
  @override
  dynamic get size => (origin as GetAlbumListProvider).size;
  @override
  dynamic get offset => (origin as GetAlbumListProvider).offset;
  @override
  dynamic get fromYear => (origin as GetAlbumListProvider).fromYear;
  @override
  dynamic get toYear => (origin as GetAlbumListProvider).toYear;
  @override
  dynamic get genre => (origin as GetAlbumListProvider).genre;
  @override
  dynamic get musicFolderId => (origin as GetAlbumListProvider).musicFolderId;
}

String _$getAlbumList2Hash() => r'38558553597ea90f3ec93bb032279d3bbe0d3e8c';

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
///
/// Copied from [getAlbumList2].
@ProviderFor(getAlbumList2)
const getAlbumList2Provider = GetAlbumList2Family();

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
///
/// Copied from [getAlbumList2].
class GetAlbumList2Family extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [getAlbumList2].
  const GetAlbumList2Family();

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
  ///
  /// Copied from [getAlbumList2].
  GetAlbumList2Provider call({
    required dynamic type,
    dynamic size = 10,
    dynamic offset = 0,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) {
    return GetAlbumList2Provider(
      type: type,
      size: size,
      offset: offset,
      fromYear: fromYear,
      toYear: toYear,
      genre: genre,
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetAlbumList2Provider getProviderOverride(
    covariant GetAlbumList2Provider provider,
  ) {
    return call(
      type: provider.type,
      size: provider.size,
      offset: provider.offset,
      fromYear: provider.fromYear,
      toYear: provider.toYear,
      genre: provider.genre,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumList2Provider';
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
///
/// Copied from [getAlbumList2].
class GetAlbumList2Provider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [getAlbumList2].
  GetAlbumList2Provider({
    required dynamic type,
    dynamic size = 10,
    dynamic offset = 0,
    dynamic fromYear,
    dynamic toYear,
    dynamic genre,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getAlbumList2(
            ref as GetAlbumList2Ref,
            type: type,
            size: size,
            offset: offset,
            fromYear: fromYear,
            toYear: toYear,
            genre: genre,
            musicFolderId: musicFolderId,
          ),
          from: getAlbumList2Provider,
          name: r'getAlbumList2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumList2Hash,
          dependencies: GetAlbumList2Family._dependencies,
          allTransitiveDependencies:
              GetAlbumList2Family._allTransitiveDependencies,
          type: type,
          size: size,
          offset: offset,
          fromYear: fromYear,
          toYear: toYear,
          genre: genre,
          musicFolderId: musicFolderId,
        );

  GetAlbumList2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.size,
    required this.offset,
    required this.fromYear,
    required this.toYear,
    required this.genre,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic type;
  final dynamic size;
  final dynamic offset;
  final dynamic fromYear;
  final dynamic toYear;
  final dynamic genre;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumList2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumList2Provider._internal(
        (ref) => create(ref as GetAlbumList2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        size: size,
        offset: offset,
        fromYear: fromYear,
        toYear: toYear,
        genre: genre,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumList2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumList2Provider &&
        other.type == type &&
        other.size == size &&
        other.offset == offset &&
        other.fromYear == fromYear &&
        other.toYear == toYear &&
        other.genre == genre &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, fromYear.hashCode);
    hash = _SystemHash.combine(hash, toYear.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumList2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `type` of this provider.
  dynamic get type;

  /// The parameter `size` of this provider.
  dynamic get size;

  /// The parameter `offset` of this provider.
  dynamic get offset;

  /// The parameter `fromYear` of this provider.
  dynamic get fromYear;

  /// The parameter `toYear` of this provider.
  dynamic get toYear;

  /// The parameter `genre` of this provider.
  dynamic get genre;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetAlbumList2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumList2Ref {
  _GetAlbumList2ProviderElement(super.provider);

  @override
  dynamic get type => (origin as GetAlbumList2Provider).type;
  @override
  dynamic get size => (origin as GetAlbumList2Provider).size;
  @override
  dynamic get offset => (origin as GetAlbumList2Provider).offset;
  @override
  dynamic get fromYear => (origin as GetAlbumList2Provider).fromYear;
  @override
  dynamic get toYear => (origin as GetAlbumList2Provider).toYear;
  @override
  dynamic get genre => (origin as GetAlbumList2Provider).genre;
  @override
  dynamic get musicFolderId => (origin as GetAlbumList2Provider).musicFolderId;
}

String _$getRandomSongsHash() => r'4e075c052bf2ae89b8c3dbc314047f8d9aa6df0b';

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
@ProviderFor(getRandomSongs)
const getRandomSongsProvider = GetRandomSongsFamily();

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
class GetRandomSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  const GetRandomSongsFamily();

  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  GetRandomSongsProvider call({
    dynamic size = 10,
    dynamic genre,
    dynamic fromYear,
    dynamic toYear,
    dynamic musicFolderId,
  }) {
    return GetRandomSongsProvider(
      size: size,
      genre: genre,
      fromYear: fromYear,
      toYear: toYear,
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetRandomSongsProvider getProviderOverride(
    covariant GetRandomSongsProvider provider,
  ) {
    return call(
      size: provider.size,
      genre: provider.genre,
      fromYear: provider.fromYear,
      toYear: provider.toYear,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getRandomSongsProvider';
}

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
class GetRandomSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  GetRandomSongsProvider({
    dynamic size = 10,
    dynamic genre,
    dynamic fromYear,
    dynamic toYear,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getRandomSongs(
            ref as GetRandomSongsRef,
            size: size,
            genre: genre,
            fromYear: fromYear,
            toYear: toYear,
            musicFolderId: musicFolderId,
          ),
          from: getRandomSongsProvider,
          name: r'getRandomSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getRandomSongsHash,
          dependencies: GetRandomSongsFamily._dependencies,
          allTransitiveDependencies:
              GetRandomSongsFamily._allTransitiveDependencies,
          size: size,
          genre: genre,
          fromYear: fromYear,
          toYear: toYear,
          musicFolderId: musicFolderId,
        );

  GetRandomSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.size,
    required this.genre,
    required this.fromYear,
    required this.toYear,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic size;
  final dynamic genre;
  final dynamic fromYear;
  final dynamic toYear;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetRandomSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetRandomSongsProvider._internal(
        (ref) => create(ref as GetRandomSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        size: size,
        genre: genre,
        fromYear: fromYear,
        toYear: toYear,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetRandomSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetRandomSongsProvider &&
        other.size == size &&
        other.genre == genre &&
        other.fromYear == fromYear &&
        other.toYear == toYear &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, fromYear.hashCode);
    hash = _SystemHash.combine(hash, toYear.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetRandomSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `size` of this provider.
  dynamic get size;

  /// The parameter `genre` of this provider.
  dynamic get genre;

  /// The parameter `fromYear` of this provider.
  dynamic get fromYear;

  /// The parameter `toYear` of this provider.
  dynamic get toYear;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetRandomSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetRandomSongsRef {
  _GetRandomSongsProviderElement(super.provider);

  @override
  dynamic get size => (origin as GetRandomSongsProvider).size;
  @override
  dynamic get genre => (origin as GetRandomSongsProvider).genre;
  @override
  dynamic get fromYear => (origin as GetRandomSongsProvider).fromYear;
  @override
  dynamic get toYear => (origin as GetRandomSongsProvider).toYear;
  @override
  dynamic get musicFolderId => (origin as GetRandomSongsProvider).musicFolderId;
}

String _$getSongsByGenreHash() => r'a0f3aa2b93a0c68c6b7a1a4edca5be55905b3f68';

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
@ProviderFor(getSongsByGenre)
const getSongsByGenreProvider = GetSongsByGenreFamily();

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
class GetSongsByGenreFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  const GetSongsByGenreFamily();

  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  GetSongsByGenreProvider call({
    required dynamic genre,
    dynamic count = 10,
    dynamic offset = 0,
    dynamic musicFolderId,
  }) {
    return GetSongsByGenreProvider(
      genre: genre,
      count: count,
      offset: offset,
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetSongsByGenreProvider getProviderOverride(
    covariant GetSongsByGenreProvider provider,
  ) {
    return call(
      genre: provider.genre,
      count: provider.count,
      offset: provider.offset,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSongsByGenreProvider';
}

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
class GetSongsByGenreProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  GetSongsByGenreProvider({
    required dynamic genre,
    dynamic count = 10,
    dynamic offset = 0,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getSongsByGenre(
            ref as GetSongsByGenreRef,
            genre: genre,
            count: count,
            offset: offset,
            musicFolderId: musicFolderId,
          ),
          from: getSongsByGenreProvider,
          name: r'getSongsByGenreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSongsByGenreHash,
          dependencies: GetSongsByGenreFamily._dependencies,
          allTransitiveDependencies:
              GetSongsByGenreFamily._allTransitiveDependencies,
          genre: genre,
          count: count,
          offset: offset,
          musicFolderId: musicFolderId,
        );

  GetSongsByGenreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genre,
    required this.count,
    required this.offset,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic genre;
  final dynamic count;
  final dynamic offset;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSongsByGenreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSongsByGenreProvider._internal(
        (ref) => create(ref as GetSongsByGenreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genre: genre,
        count: count,
        offset: offset,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSongsByGenreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSongsByGenreProvider &&
        other.genre == genre &&
        other.count == count &&
        other.offset == offset &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSongsByGenreRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `genre` of this provider.
  dynamic get genre;

  /// The parameter `count` of this provider.
  dynamic get count;

  /// The parameter `offset` of this provider.
  dynamic get offset;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetSongsByGenreProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetSongsByGenreRef {
  _GetSongsByGenreProviderElement(super.provider);

  @override
  dynamic get genre => (origin as GetSongsByGenreProvider).genre;
  @override
  dynamic get count => (origin as GetSongsByGenreProvider).count;
  @override
  dynamic get offset => (origin as GetSongsByGenreProvider).offset;
  @override
  dynamic get musicFolderId =>
      (origin as GetSongsByGenreProvider).musicFolderId;
}

String _$getNowPlayingHash() => r'de3455550599a6b71a4856ca8e71fd4f1dc579a6';

/// http://your-server/rest/getNowPlaying Since 1.0.0
/// Returns what is currently being played by all users. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <nowPlaying> element on success. Example.
///
/// Copied from [getNowPlaying].
@ProviderFor(getNowPlaying)
final getNowPlayingProvider = AutoDisposeFutureProvider<Response>.internal(
  getNowPlaying,
  name: r'getNowPlayingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getNowPlayingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetNowPlayingRef = AutoDisposeFutureProviderRef<Response>;
String _$getStarredHash() => r'6a06a18497ac54357897d328302d8baa93e41f92';

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
@ProviderFor(getStarred)
const getStarredProvider = GetStarredFamily();

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
class GetStarredFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  const GetStarredFamily();

  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  GetStarredProvider call({
    dynamic musicFolderId,
  }) {
    return GetStarredProvider(
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetStarredProvider getProviderOverride(
    covariant GetStarredProvider provider,
  ) {
    return call(
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStarredProvider';
}

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
class GetStarredProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  GetStarredProvider({
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getStarred(
            ref as GetStarredRef,
            musicFolderId: musicFolderId,
          ),
          from: getStarredProvider,
          name: r'getStarredProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStarredHash,
          dependencies: GetStarredFamily._dependencies,
          allTransitiveDependencies:
              GetStarredFamily._allTransitiveDependencies,
          musicFolderId: musicFolderId,
        );

  GetStarredProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetStarredRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStarredProvider._internal(
        (ref) => create(ref as GetStarredRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetStarredProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStarredProvider && other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetStarredRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetStarredProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetStarredRef {
  _GetStarredProviderElement(super.provider);

  @override
  dynamic get musicFolderId => (origin as GetStarredProvider).musicFolderId;
}

String _$getStarred2Hash() => r'ef62f378e62294fb18b6e4caa1a590b811010415';

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
@ProviderFor(getStarred2)
const getStarred2Provider = GetStarred2Family();

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
class GetStarred2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  const GetStarred2Family();

  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  GetStarred2Provider call({
    dynamic musicFolderId,
  }) {
    return GetStarred2Provider(
      musicFolderId: musicFolderId,
    );
  }

  @override
  GetStarred2Provider getProviderOverride(
    covariant GetStarred2Provider provider,
  ) {
    return call(
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStarred2Provider';
}

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
class GetStarred2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  GetStarred2Provider({
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => getStarred2(
            ref as GetStarred2Ref,
            musicFolderId: musicFolderId,
          ),
          from: getStarred2Provider,
          name: r'getStarred2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStarred2Hash,
          dependencies: GetStarred2Family._dependencies,
          allTransitiveDependencies:
              GetStarred2Family._allTransitiveDependencies,
          musicFolderId: musicFolderId,
        );

  GetStarred2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetStarred2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStarred2Provider._internal(
        (ref) => create(ref as GetStarred2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetStarred2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStarred2Provider && other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetStarred2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _GetStarred2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetStarred2Ref {
  _GetStarred2ProviderElement(super.provider);

  @override
  dynamic get musicFolderId => (origin as GetStarred2Provider).musicFolderId;
}

String _$searchHash() => r'd4772820b2314e1f0df3a95e72a9a391e37cc021';

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
///
/// Copied from [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

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
///
/// Copied from [search].
class SearchFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [search].
  const SearchFamily();

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
  ///
  /// Copied from [search].
  SearchProvider call({
    dynamic artist,
    dynamic album,
    dynamic title,
    dynamic any,
    dynamic count = 20,
    dynamic offset = 0,
    dynamic newerThan,
  }) {
    return SearchProvider(
      artist: artist,
      album: album,
      title: title,
      any: any,
      count: count,
      offset: offset,
      newerThan: newerThan,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      artist: provider.artist,
      album: provider.album,
      title: provider.title,
      any: provider.any,
      count: provider.count,
      offset: provider.offset,
      newerThan: provider.newerThan,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProvider';
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
///
/// Copied from [search].
class SearchProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [search].
  SearchProvider({
    dynamic artist,
    dynamic album,
    dynamic title,
    dynamic any,
    dynamic count = 20,
    dynamic offset = 0,
    dynamic newerThan,
  }) : this._internal(
          (ref) => search(
            ref as SearchRef,
            artist: artist,
            album: album,
            title: title,
            any: any,
            count: count,
            offset: offset,
            newerThan: newerThan,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
          artist: artist,
          album: album,
          title: title,
          any: any,
          count: count,
          offset: offset,
          newerThan: newerThan,
        );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.artist,
    required this.album,
    required this.title,
    required this.any,
    required this.count,
    required this.offset,
    required this.newerThan,
  }) : super.internal();

  final dynamic artist;
  final dynamic album;
  final dynamic title;
  final dynamic any;
  final dynamic count;
  final dynamic offset;
  final dynamic newerThan;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        (ref) => create(ref as SearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        artist: artist,
        album: album,
        title: title,
        any: any,
        count: count,
        offset: offset,
        newerThan: newerThan,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider &&
        other.artist == artist &&
        other.album == album &&
        other.title == title &&
        other.any == any &&
        other.count == count &&
        other.offset == offset &&
        other.newerThan == newerThan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, artist.hashCode);
    hash = _SystemHash.combine(hash, album.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, any.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, newerThan.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `artist` of this provider.
  dynamic get artist;

  /// The parameter `album` of this provider.
  dynamic get album;

  /// The parameter `title` of this provider.
  dynamic get title;

  /// The parameter `any` of this provider.
  dynamic get any;

  /// The parameter `count` of this provider.
  dynamic get count;

  /// The parameter `offset` of this provider.
  dynamic get offset;

  /// The parameter `newerThan` of this provider.
  dynamic get newerThan;
}

class _SearchProviderElement extends AutoDisposeFutureProviderElement<Response>
    with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  dynamic get artist => (origin as SearchProvider).artist;
  @override
  dynamic get album => (origin as SearchProvider).album;
  @override
  dynamic get title => (origin as SearchProvider).title;
  @override
  dynamic get any => (origin as SearchProvider).any;
  @override
  dynamic get count => (origin as SearchProvider).count;
  @override
  dynamic get offset => (origin as SearchProvider).offset;
  @override
  dynamic get newerThan => (origin as SearchProvider).newerThan;
}

String _$search2Hash() => r'96e13dc8e1f9efe2e5417f7314fa518982c2224a';

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
///
/// Copied from [search2].
@ProviderFor(search2)
const search2Provider = Search2Family();

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
///
/// Copied from [search2].
class Search2Family extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [search2].
  const Search2Family();

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
  ///
  /// Copied from [search2].
  Search2Provider call({
    required dynamic query,
    dynamic artistCount = 20,
    dynamic artistOffset = 0,
    dynamic albumCount = 20,
    dynamic albumOffset = 0,
    dynamic songCount = 20,
    dynamic songOffset = 0,
    dynamic musicFolderId,
  }) {
    return Search2Provider(
      query: query,
      artistCount: artistCount,
      artistOffset: artistOffset,
      albumCount: albumCount,
      albumOffset: albumOffset,
      songCount: songCount,
      songOffset: songOffset,
      musicFolderId: musicFolderId,
    );
  }

  @override
  Search2Provider getProviderOverride(
    covariant Search2Provider provider,
  ) {
    return call(
      query: provider.query,
      artistCount: provider.artistCount,
      artistOffset: provider.artistOffset,
      albumCount: provider.albumCount,
      albumOffset: provider.albumOffset,
      songCount: provider.songCount,
      songOffset: provider.songOffset,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'search2Provider';
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
///
/// Copied from [search2].
class Search2Provider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [search2].
  Search2Provider({
    required dynamic query,
    dynamic artistCount = 20,
    dynamic artistOffset = 0,
    dynamic albumCount = 20,
    dynamic albumOffset = 0,
    dynamic songCount = 20,
    dynamic songOffset = 0,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => search2(
            ref as Search2Ref,
            query: query,
            artistCount: artistCount,
            artistOffset: artistOffset,
            albumCount: albumCount,
            albumOffset: albumOffset,
            songCount: songCount,
            songOffset: songOffset,
            musicFolderId: musicFolderId,
          ),
          from: search2Provider,
          name: r'search2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$search2Hash,
          dependencies: Search2Family._dependencies,
          allTransitiveDependencies: Search2Family._allTransitiveDependencies,
          query: query,
          artistCount: artistCount,
          artistOffset: artistOffset,
          albumCount: albumCount,
          albumOffset: albumOffset,
          songCount: songCount,
          songOffset: songOffset,
          musicFolderId: musicFolderId,
        );

  Search2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.artistCount,
    required this.artistOffset,
    required this.albumCount,
    required this.albumOffset,
    required this.songCount,
    required this.songOffset,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic query;
  final dynamic artistCount;
  final dynamic artistOffset;
  final dynamic albumCount;
  final dynamic albumOffset;
  final dynamic songCount;
  final dynamic songOffset;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(Search2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: Search2Provider._internal(
        (ref) => create(ref as Search2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        artistCount: artistCount,
        artistOffset: artistOffset,
        albumCount: albumCount,
        albumOffset: albumOffset,
        songCount: songCount,
        songOffset: songOffset,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _Search2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is Search2Provider &&
        other.query == query &&
        other.artistCount == artistCount &&
        other.artistOffset == artistOffset &&
        other.albumCount == albumCount &&
        other.albumOffset == albumOffset &&
        other.songCount == songCount &&
        other.songOffset == songOffset &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, artistCount.hashCode);
    hash = _SystemHash.combine(hash, artistOffset.hashCode);
    hash = _SystemHash.combine(hash, albumCount.hashCode);
    hash = _SystemHash.combine(hash, albumOffset.hashCode);
    hash = _SystemHash.combine(hash, songCount.hashCode);
    hash = _SystemHash.combine(hash, songOffset.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin Search2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `query` of this provider.
  dynamic get query;

  /// The parameter `artistCount` of this provider.
  dynamic get artistCount;

  /// The parameter `artistOffset` of this provider.
  dynamic get artistOffset;

  /// The parameter `albumCount` of this provider.
  dynamic get albumCount;

  /// The parameter `albumOffset` of this provider.
  dynamic get albumOffset;

  /// The parameter `songCount` of this provider.
  dynamic get songCount;

  /// The parameter `songOffset` of this provider.
  dynamic get songOffset;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _Search2ProviderElement extends AutoDisposeFutureProviderElement<Response>
    with Search2Ref {
  _Search2ProviderElement(super.provider);

  @override
  dynamic get query => (origin as Search2Provider).query;
  @override
  dynamic get artistCount => (origin as Search2Provider).artistCount;
  @override
  dynamic get artistOffset => (origin as Search2Provider).artistOffset;
  @override
  dynamic get albumCount => (origin as Search2Provider).albumCount;
  @override
  dynamic get albumOffset => (origin as Search2Provider).albumOffset;
  @override
  dynamic get songCount => (origin as Search2Provider).songCount;
  @override
  dynamic get songOffset => (origin as Search2Provider).songOffset;
  @override
  dynamic get musicFolderId => (origin as Search2Provider).musicFolderId;
}

String _$search3Hash() => r'8b5c51461297dfe8009d1f9c58159bda8a1da4c7';

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
///
/// Copied from [search3].
@ProviderFor(search3)
const search3Provider = Search3Family();

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
///
/// Copied from [search3].
class Search3Family extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [search3].
  const Search3Family();

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
  ///
  /// Copied from [search3].
  Search3Provider call({
    required dynamic query,
    dynamic artistCount = 20,
    dynamic artistOffset = 0,
    dynamic albumCount = 20,
    dynamic albumOffset = 0,
    dynamic songCount = 20,
    dynamic songOffset = 0,
    dynamic musicFolderId,
  }) {
    return Search3Provider(
      query: query,
      artistCount: artistCount,
      artistOffset: artistOffset,
      albumCount: albumCount,
      albumOffset: albumOffset,
      songCount: songCount,
      songOffset: songOffset,
      musicFolderId: musicFolderId,
    );
  }

  @override
  Search3Provider getProviderOverride(
    covariant Search3Provider provider,
  ) {
    return call(
      query: provider.query,
      artistCount: provider.artistCount,
      artistOffset: provider.artistOffset,
      albumCount: provider.albumCount,
      albumOffset: provider.albumOffset,
      songCount: provider.songCount,
      songOffset: provider.songOffset,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'search3Provider';
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
///
/// Copied from [search3].
class Search3Provider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [search3].
  Search3Provider({
    required dynamic query,
    dynamic artistCount = 20,
    dynamic artistOffset = 0,
    dynamic albumCount = 20,
    dynamic albumOffset = 0,
    dynamic songCount = 20,
    dynamic songOffset = 0,
    dynamic musicFolderId,
  }) : this._internal(
          (ref) => search3(
            ref as Search3Ref,
            query: query,
            artistCount: artistCount,
            artistOffset: artistOffset,
            albumCount: albumCount,
            albumOffset: albumOffset,
            songCount: songCount,
            songOffset: songOffset,
            musicFolderId: musicFolderId,
          ),
          from: search3Provider,
          name: r'search3Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$search3Hash,
          dependencies: Search3Family._dependencies,
          allTransitiveDependencies: Search3Family._allTransitiveDependencies,
          query: query,
          artistCount: artistCount,
          artistOffset: artistOffset,
          albumCount: albumCount,
          albumOffset: albumOffset,
          songCount: songCount,
          songOffset: songOffset,
          musicFolderId: musicFolderId,
        );

  Search3Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.artistCount,
    required this.artistOffset,
    required this.albumCount,
    required this.albumOffset,
    required this.songCount,
    required this.songOffset,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic query;
  final dynamic artistCount;
  final dynamic artistOffset;
  final dynamic albumCount;
  final dynamic albumOffset;
  final dynamic songCount;
  final dynamic songOffset;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(Search3Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: Search3Provider._internal(
        (ref) => create(ref as Search3Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        artistCount: artistCount,
        artistOffset: artistOffset,
        albumCount: albumCount,
        albumOffset: albumOffset,
        songCount: songCount,
        songOffset: songOffset,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _Search3ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is Search3Provider &&
        other.query == query &&
        other.artistCount == artistCount &&
        other.artistOffset == artistOffset &&
        other.albumCount == albumCount &&
        other.albumOffset == albumOffset &&
        other.songCount == songCount &&
        other.songOffset == songOffset &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, artistCount.hashCode);
    hash = _SystemHash.combine(hash, artistOffset.hashCode);
    hash = _SystemHash.combine(hash, albumCount.hashCode);
    hash = _SystemHash.combine(hash, albumOffset.hashCode);
    hash = _SystemHash.combine(hash, songCount.hashCode);
    hash = _SystemHash.combine(hash, songOffset.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin Search3Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `query` of this provider.
  dynamic get query;

  /// The parameter `artistCount` of this provider.
  dynamic get artistCount;

  /// The parameter `artistOffset` of this provider.
  dynamic get artistOffset;

  /// The parameter `albumCount` of this provider.
  dynamic get albumCount;

  /// The parameter `albumOffset` of this provider.
  dynamic get albumOffset;

  /// The parameter `songCount` of this provider.
  dynamic get songCount;

  /// The parameter `songOffset` of this provider.
  dynamic get songOffset;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _Search3ProviderElement extends AutoDisposeFutureProviderElement<Response>
    with Search3Ref {
  _Search3ProviderElement(super.provider);

  @override
  dynamic get query => (origin as Search3Provider).query;
  @override
  dynamic get artistCount => (origin as Search3Provider).artistCount;
  @override
  dynamic get artistOffset => (origin as Search3Provider).artistOffset;
  @override
  dynamic get albumCount => (origin as Search3Provider).albumCount;
  @override
  dynamic get albumOffset => (origin as Search3Provider).albumOffset;
  @override
  dynamic get songCount => (origin as Search3Provider).songCount;
  @override
  dynamic get songOffset => (origin as Search3Provider).songOffset;
  @override
  dynamic get musicFolderId => (origin as Search3Provider).musicFolderId;
}

String _$getPlaylistsHash() => r'12c7ffad87947b5bee2b1d496569a92b29fc9a84';

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
@ProviderFor(getPlaylists)
const getPlaylistsProvider = GetPlaylistsFamily();

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
class GetPlaylistsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  const GetPlaylistsFamily();

  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  GetPlaylistsProvider call({
    dynamic username,
  }) {
    return GetPlaylistsProvider(
      username: username,
    );
  }

  @override
  GetPlaylistsProvider getProviderOverride(
    covariant GetPlaylistsProvider provider,
  ) {
    return call(
      username: provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaylistsProvider';
}

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
class GetPlaylistsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  GetPlaylistsProvider({
    dynamic username,
  }) : this._internal(
          (ref) => getPlaylists(
            ref as GetPlaylistsRef,
            username: username,
          ),
          from: getPlaylistsProvider,
          name: r'getPlaylistsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaylistsHash,
          dependencies: GetPlaylistsFamily._dependencies,
          allTransitiveDependencies:
              GetPlaylistsFamily._allTransitiveDependencies,
          username: username,
        );

  GetPlaylistsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final dynamic username;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPlaylistsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlaylistsProvider._internal(
        (ref) => create(ref as GetPlaylistsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPlaylistsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaylistsProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlaylistsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;
}

class _GetPlaylistsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPlaylistsRef {
  _GetPlaylistsProviderElement(super.provider);

  @override
  dynamic get username => (origin as GetPlaylistsProvider).username;
}

String _$getPlaylistHash() => r'01edf20f28c28e4a875780a1e821718c8967bebc';

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
@ProviderFor(getPlaylist)
const getPlaylistProvider = GetPlaylistFamily();

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
class GetPlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  const GetPlaylistFamily();

  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  GetPlaylistProvider call({
    required dynamic id,
  }) {
    return GetPlaylistProvider(
      id: id,
    );
  }

  @override
  GetPlaylistProvider getProviderOverride(
    covariant GetPlaylistProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaylistProvider';
}

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
class GetPlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  GetPlaylistProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => getPlaylist(
            ref as GetPlaylistRef,
            id: id,
          ),
          from: getPlaylistProvider,
          name: r'getPlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaylistHash,
          dependencies: GetPlaylistFamily._dependencies,
          allTransitiveDependencies:
              GetPlaylistFamily._allTransitiveDependencies,
          id: id,
        );

  GetPlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlaylistProvider._internal(
        (ref) => create(ref as GetPlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaylistProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetPlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPlaylistRef {
  _GetPlaylistProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetPlaylistProvider).id;
}

String _$createPlaylistHash() => r'c7bafdf33b3138199785d992d443d8f24a8edeff';

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
@ProviderFor(createPlaylist)
const createPlaylistProvider = CreatePlaylistFamily();

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
class CreatePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  const CreatePlaylistFamily();

  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  CreatePlaylistProvider call({
    dynamic playlistId,
    dynamic name,
    dynamic songId,
  }) {
    return CreatePlaylistProvider(
      playlistId: playlistId,
      name: name,
      songId: songId,
    );
  }

  @override
  CreatePlaylistProvider getProviderOverride(
    covariant CreatePlaylistProvider provider,
  ) {
    return call(
      playlistId: provider.playlistId,
      name: provider.name,
      songId: provider.songId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createPlaylistProvider';
}

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
class CreatePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  CreatePlaylistProvider({
    dynamic playlistId,
    dynamic name,
    dynamic songId,
  }) : this._internal(
          (ref) => createPlaylist(
            ref as CreatePlaylistRef,
            playlistId: playlistId,
            name: name,
            songId: songId,
          ),
          from: createPlaylistProvider,
          name: r'createPlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPlaylistHash,
          dependencies: CreatePlaylistFamily._dependencies,
          allTransitiveDependencies:
              CreatePlaylistFamily._allTransitiveDependencies,
          playlistId: playlistId,
          name: name,
          songId: songId,
        );

  CreatePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.playlistId,
    required this.name,
    required this.songId,
  }) : super.internal();

  final dynamic playlistId;
  final dynamic name;
  final dynamic songId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreatePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatePlaylistProvider._internal(
        (ref) => create(ref as CreatePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        playlistId: playlistId,
        name: name,
        songId: songId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreatePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePlaylistProvider &&
        other.playlistId == playlistId &&
        other.name == name &&
        other.songId == songId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playlistId.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);
    hash = _SystemHash.combine(hash, songId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreatePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `playlistId` of this provider.
  dynamic get playlistId;

  /// The parameter `name` of this provider.
  dynamic get name;

  /// The parameter `songId` of this provider.
  dynamic get songId;
}

class _CreatePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreatePlaylistRef {
  _CreatePlaylistProviderElement(super.provider);

  @override
  dynamic get playlistId => (origin as CreatePlaylistProvider).playlistId;
  @override
  dynamic get name => (origin as CreatePlaylistProvider).name;
  @override
  dynamic get songId => (origin as CreatePlaylistProvider).songId;
}

String _$updatePlaylistHash() => r'b8fb71cafc2dd0fcfec5f69d8e65aeb6479685d5';

/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
///
/// Copied from [updatePlaylist].
@ProviderFor(updatePlaylist)
const updatePlaylistProvider = UpdatePlaylistFamily();

/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
///
/// Copied from [updatePlaylist].
class UpdatePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  const UpdatePlaylistFamily();

  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  UpdatePlaylistProvider call({
    required dynamic playlistId,
    dynamic name,
    dynamic comment,
    dynamic public,
    dynamic songIdToAdd,
    dynamic songIndexToRemove,
  }) {
    return UpdatePlaylistProvider(
      playlistId: playlistId,
      name: name,
      comment: comment,
      public: public,
      songIdToAdd: songIdToAdd,
      songIndexToRemove: songIndexToRemove,
    );
  }

  @override
  UpdatePlaylistProvider getProviderOverride(
    covariant UpdatePlaylistProvider provider,
  ) {
    return call(
      playlistId: provider.playlistId,
      name: provider.name,
      comment: provider.comment,
      public: provider.public,
      songIdToAdd: provider.songIdToAdd,
      songIndexToRemove: provider.songIndexToRemove,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updatePlaylistProvider';
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
///
/// Copied from [updatePlaylist].
class UpdatePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  UpdatePlaylistProvider({
    required dynamic playlistId,
    dynamic name,
    dynamic comment,
    dynamic public,
    dynamic songIdToAdd,
    dynamic songIndexToRemove,
  }) : this._internal(
          (ref) => updatePlaylist(
            ref as UpdatePlaylistRef,
            playlistId: playlistId,
            name: name,
            comment: comment,
            public: public,
            songIdToAdd: songIdToAdd,
            songIndexToRemove: songIndexToRemove,
          ),
          from: updatePlaylistProvider,
          name: r'updatePlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatePlaylistHash,
          dependencies: UpdatePlaylistFamily._dependencies,
          allTransitiveDependencies:
              UpdatePlaylistFamily._allTransitiveDependencies,
          playlistId: playlistId,
          name: name,
          comment: comment,
          public: public,
          songIdToAdd: songIdToAdd,
          songIndexToRemove: songIndexToRemove,
        );

  UpdatePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.playlistId,
    required this.name,
    required this.comment,
    required this.public,
    required this.songIdToAdd,
    required this.songIndexToRemove,
  }) : super.internal();

  final dynamic playlistId;
  final dynamic name;
  final dynamic comment;
  final dynamic public;
  final dynamic songIdToAdd;
  final dynamic songIndexToRemove;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdatePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdatePlaylistProvider._internal(
        (ref) => create(ref as UpdatePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        playlistId: playlistId,
        name: name,
        comment: comment,
        public: public,
        songIdToAdd: songIdToAdd,
        songIndexToRemove: songIndexToRemove,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdatePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePlaylistProvider &&
        other.playlistId == playlistId &&
        other.name == name &&
        other.comment == comment &&
        other.public == public &&
        other.songIdToAdd == songIdToAdd &&
        other.songIndexToRemove == songIndexToRemove;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playlistId.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);
    hash = _SystemHash.combine(hash, public.hashCode);
    hash = _SystemHash.combine(hash, songIdToAdd.hashCode);
    hash = _SystemHash.combine(hash, songIndexToRemove.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `playlistId` of this provider.
  dynamic get playlistId;

  /// The parameter `name` of this provider.
  dynamic get name;

  /// The parameter `comment` of this provider.
  dynamic get comment;

  /// The parameter `public` of this provider.
  dynamic get public;

  /// The parameter `songIdToAdd` of this provider.
  dynamic get songIdToAdd;

  /// The parameter `songIndexToRemove` of this provider.
  dynamic get songIndexToRemove;
}

class _UpdatePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdatePlaylistRef {
  _UpdatePlaylistProviderElement(super.provider);

  @override
  dynamic get playlistId => (origin as UpdatePlaylistProvider).playlistId;
  @override
  dynamic get name => (origin as UpdatePlaylistProvider).name;
  @override
  dynamic get comment => (origin as UpdatePlaylistProvider).comment;
  @override
  dynamic get public => (origin as UpdatePlaylistProvider).public;
  @override
  dynamic get songIdToAdd => (origin as UpdatePlaylistProvider).songIdToAdd;
  @override
  dynamic get songIndexToRemove =>
      (origin as UpdatePlaylistProvider).songIndexToRemove;
}

String _$deletePlaylistHash() => r'1cd999bc94e38a78d857a841b6385ed2ad3a77f2';

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
@ProviderFor(deletePlaylist)
const deletePlaylistProvider = DeletePlaylistFamily();

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
class DeletePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  const DeletePlaylistFamily();

  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  DeletePlaylistProvider call({
    required dynamic id,
  }) {
    return DeletePlaylistProvider(
      id: id,
    );
  }

  @override
  DeletePlaylistProvider getProviderOverride(
    covariant DeletePlaylistProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePlaylistProvider';
}

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
class DeletePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  DeletePlaylistProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deletePlaylist(
            ref as DeletePlaylistRef,
            id: id,
          ),
          from: deletePlaylistProvider,
          name: r'deletePlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePlaylistHash,
          dependencies: DeletePlaylistFamily._dependencies,
          allTransitiveDependencies:
              DeletePlaylistFamily._allTransitiveDependencies,
          id: id,
        );

  DeletePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePlaylistProvider._internal(
        (ref) => create(ref as DeletePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePlaylistProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeletePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeletePlaylistRef {
  _DeletePlaylistProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeletePlaylistProvider).id;
}

String _$streamHash() => r'531f8ea221b5252a08e4fdbd5b72a6c11692b559';

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
///
/// Copied from [stream].
@ProviderFor(stream)
const streamProvider = StreamFamily();

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
///
/// Copied from [stream].
class StreamFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [stream].
  const StreamFamily();

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
  ///
  /// Copied from [stream].
  StreamProvider call({
    required dynamic id,
    dynamic maxBitRate,
    dynamic format,
    dynamic timeOffset,
    dynamic size,
    dynamic estimateContentLength = false,
    dynamic converted = false,
  }) {
    return StreamProvider(
      id: id,
      maxBitRate: maxBitRate,
      format: format,
      timeOffset: timeOffset,
      size: size,
      estimateContentLength: estimateContentLength,
      converted: converted,
    );
  }

  @override
  StreamProvider getProviderOverride(
    covariant StreamProvider provider,
  ) {
    return call(
      id: provider.id,
      maxBitRate: provider.maxBitRate,
      format: provider.format,
      timeOffset: provider.timeOffset,
      size: provider.size,
      estimateContentLength: provider.estimateContentLength,
      converted: provider.converted,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'streamProvider';
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
///
/// Copied from [stream].
class StreamProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [stream].
  StreamProvider({
    required dynamic id,
    dynamic maxBitRate,
    dynamic format,
    dynamic timeOffset,
    dynamic size,
    dynamic estimateContentLength = false,
    dynamic converted = false,
  }) : this._internal(
          (ref) => stream(
            ref as StreamRef,
            id: id,
            maxBitRate: maxBitRate,
            format: format,
            timeOffset: timeOffset,
            size: size,
            estimateContentLength: estimateContentLength,
            converted: converted,
          ),
          from: streamProvider,
          name: r'streamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$streamHash,
          dependencies: StreamFamily._dependencies,
          allTransitiveDependencies: StreamFamily._allTransitiveDependencies,
          id: id,
          maxBitRate: maxBitRate,
          format: format,
          timeOffset: timeOffset,
          size: size,
          estimateContentLength: estimateContentLength,
          converted: converted,
        );

  StreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.maxBitRate,
    required this.format,
    required this.timeOffset,
    required this.size,
    required this.estimateContentLength,
    required this.converted,
  }) : super.internal();

  final dynamic id;
  final dynamic maxBitRate;
  final dynamic format;
  final dynamic timeOffset;
  final dynamic size;
  final dynamic estimateContentLength;
  final dynamic converted;

  @override
  Override overrideWith(
    FutureOr<Response> Function(StreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StreamProvider._internal(
        (ref) => create(ref as StreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        maxBitRate: maxBitRate,
        format: format,
        timeOffset: timeOffset,
        size: size,
        estimateContentLength: estimateContentLength,
        converted: converted,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _StreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StreamProvider &&
        other.id == id &&
        other.maxBitRate == maxBitRate &&
        other.format == format &&
        other.timeOffset == timeOffset &&
        other.size == size &&
        other.estimateContentLength == estimateContentLength &&
        other.converted == converted;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, maxBitRate.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);
    hash = _SystemHash.combine(hash, timeOffset.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);
    hash = _SystemHash.combine(hash, estimateContentLength.hashCode);
    hash = _SystemHash.combine(hash, converted.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StreamRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `maxBitRate` of this provider.
  dynamic get maxBitRate;

  /// The parameter `format` of this provider.
  dynamic get format;

  /// The parameter `timeOffset` of this provider.
  dynamic get timeOffset;

  /// The parameter `size` of this provider.
  dynamic get size;

  /// The parameter `estimateContentLength` of this provider.
  dynamic get estimateContentLength;

  /// The parameter `converted` of this provider.
  dynamic get converted;
}

class _StreamProviderElement extends AutoDisposeFutureProviderElement<Response>
    with StreamRef {
  _StreamProviderElement(super.provider);

  @override
  dynamic get id => (origin as StreamProvider).id;
  @override
  dynamic get maxBitRate => (origin as StreamProvider).maxBitRate;
  @override
  dynamic get format => (origin as StreamProvider).format;
  @override
  dynamic get timeOffset => (origin as StreamProvider).timeOffset;
  @override
  dynamic get size => (origin as StreamProvider).size;
  @override
  dynamic get estimateContentLength =>
      (origin as StreamProvider).estimateContentLength;
  @override
  dynamic get converted => (origin as StreamProvider).converted;
}

String _$downloadHash() => r'3c715a29918a08a611c7a23bbb4e4b0884f00656';

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
@ProviderFor(download)
const downloadProvider = DownloadFamily();

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
class DownloadFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  const DownloadFamily();

  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  DownloadProvider call({
    required dynamic id,
  }) {
    return DownloadProvider(
      id: id,
    );
  }

  @override
  DownloadProvider getProviderOverride(
    covariant DownloadProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'downloadProvider';
}

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
class DownloadProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  DownloadProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => download(
            ref as DownloadRef,
            id: id,
          ),
          from: downloadProvider,
          name: r'downloadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$downloadHash,
          dependencies: DownloadFamily._dependencies,
          allTransitiveDependencies: DownloadFamily._allTransitiveDependencies,
          id: id,
        );

  DownloadProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DownloadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DownloadProvider._internal(
        (ref) => create(ref as DownloadRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DownloadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DownloadProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DownloadRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DownloadProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DownloadRef {
  _DownloadProviderElement(super.provider);

  @override
  dynamic get id => (origin as DownloadProvider).id;
}

String _$hlsHash() => r'86e320773beadd49b38c28244a72087568bc5e32';

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
@ProviderFor(hls)
const hlsProvider = HlsFamily();

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
class HlsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  const HlsFamily();

  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  HlsProvider call({
    required dynamic id,
    dynamic bitRate,
    dynamic audioTrack,
  }) {
    return HlsProvider(
      id: id,
      bitRate: bitRate,
      audioTrack: audioTrack,
    );
  }

  @override
  HlsProvider getProviderOverride(
    covariant HlsProvider provider,
  ) {
    return call(
      id: provider.id,
      bitRate: provider.bitRate,
      audioTrack: provider.audioTrack,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hlsProvider';
}

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
class HlsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  HlsProvider({
    required dynamic id,
    dynamic bitRate,
    dynamic audioTrack,
  }) : this._internal(
          (ref) => hls(
            ref as HlsRef,
            id: id,
            bitRate: bitRate,
            audioTrack: audioTrack,
          ),
          from: hlsProvider,
          name: r'hlsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$hlsHash,
          dependencies: HlsFamily._dependencies,
          allTransitiveDependencies: HlsFamily._allTransitiveDependencies,
          id: id,
          bitRate: bitRate,
          audioTrack: audioTrack,
        );

  HlsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.bitRate,
    required this.audioTrack,
  }) : super.internal();

  final dynamic id;
  final dynamic bitRate;
  final dynamic audioTrack;

  @override
  Override overrideWith(
    FutureOr<Response> Function(HlsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HlsProvider._internal(
        (ref) => create(ref as HlsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        bitRate: bitRate,
        audioTrack: audioTrack,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _HlsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HlsProvider &&
        other.id == id &&
        other.bitRate == bitRate &&
        other.audioTrack == audioTrack;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, bitRate.hashCode);
    hash = _SystemHash.combine(hash, audioTrack.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HlsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `bitRate` of this provider.
  dynamic get bitRate;

  /// The parameter `audioTrack` of this provider.
  dynamic get audioTrack;
}

class _HlsProviderElement extends AutoDisposeFutureProviderElement<Response>
    with HlsRef {
  _HlsProviderElement(super.provider);

  @override
  dynamic get id => (origin as HlsProvider).id;
  @override
  dynamic get bitRate => (origin as HlsProvider).bitRate;
  @override
  dynamic get audioTrack => (origin as HlsProvider).audioTrack;
}

String _$getCaptionsHash() => r'97083f6092c72b01d06ba57f07a133fca7f603fc';

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
@ProviderFor(getCaptions)
const getCaptionsProvider = GetCaptionsFamily();

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
class GetCaptionsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  const GetCaptionsFamily();

  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  GetCaptionsProvider call({
    required dynamic id,
    dynamic format,
  }) {
    return GetCaptionsProvider(
      id: id,
      format: format,
    );
  }

  @override
  GetCaptionsProvider getProviderOverride(
    covariant GetCaptionsProvider provider,
  ) {
    return call(
      id: provider.id,
      format: provider.format,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCaptionsProvider';
}

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
class GetCaptionsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  GetCaptionsProvider({
    required dynamic id,
    dynamic format,
  }) : this._internal(
          (ref) => getCaptions(
            ref as GetCaptionsRef,
            id: id,
            format: format,
          ),
          from: getCaptionsProvider,
          name: r'getCaptionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCaptionsHash,
          dependencies: GetCaptionsFamily._dependencies,
          allTransitiveDependencies:
              GetCaptionsFamily._allTransitiveDependencies,
          id: id,
          format: format,
        );

  GetCaptionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.format,
  }) : super.internal();

  final dynamic id;
  final dynamic format;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetCaptionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCaptionsProvider._internal(
        (ref) => create(ref as GetCaptionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        format: format,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetCaptionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCaptionsProvider &&
        other.id == id &&
        other.format == format;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCaptionsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `format` of this provider.
  dynamic get format;
}

class _GetCaptionsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetCaptionsRef {
  _GetCaptionsProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetCaptionsProvider).id;
  @override
  dynamic get format => (origin as GetCaptionsProvider).format;
}

String _$getCoverArtHash() => r'17dd3e046f91113b83d1ab958551fc0ea8409fbf';

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
@ProviderFor(getCoverArt)
const getCoverArtProvider = GetCoverArtFamily();

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
class GetCoverArtFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  const GetCoverArtFamily();

  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  GetCoverArtProvider call({
    required dynamic id,
    dynamic size,
  }) {
    return GetCoverArtProvider(
      id: id,
      size: size,
    );
  }

  @override
  GetCoverArtProvider getProviderOverride(
    covariant GetCoverArtProvider provider,
  ) {
    return call(
      id: provider.id,
      size: provider.size,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCoverArtProvider';
}

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
class GetCoverArtProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  GetCoverArtProvider({
    required dynamic id,
    dynamic size,
  }) : this._internal(
          (ref) => getCoverArt(
            ref as GetCoverArtRef,
            id: id,
            size: size,
          ),
          from: getCoverArtProvider,
          name: r'getCoverArtProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCoverArtHash,
          dependencies: GetCoverArtFamily._dependencies,
          allTransitiveDependencies:
              GetCoverArtFamily._allTransitiveDependencies,
          id: id,
          size: size,
        );

  GetCoverArtProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.size,
  }) : super.internal();

  final dynamic id;
  final dynamic size;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetCoverArtRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCoverArtProvider._internal(
        (ref) => create(ref as GetCoverArtRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        size: size,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetCoverArtProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCoverArtProvider && other.id == id && other.size == size;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, size.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCoverArtRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `size` of this provider.
  dynamic get size;
}

class _GetCoverArtProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetCoverArtRef {
  _GetCoverArtProviderElement(super.provider);

  @override
  dynamic get id => (origin as GetCoverArtProvider).id;
  @override
  dynamic get size => (origin as GetCoverArtProvider).size;
}

String _$getLyricsHash() => r'2fe9240a3d6342f3e10e80a405627a608006d419';

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
@ProviderFor(getLyrics)
const getLyricsProvider = GetLyricsFamily();

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
class GetLyricsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  const GetLyricsFamily();

  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  GetLyricsProvider call({
    dynamic artist,
    dynamic title,
  }) {
    return GetLyricsProvider(
      artist: artist,
      title: title,
    );
  }

  @override
  GetLyricsProvider getProviderOverride(
    covariant GetLyricsProvider provider,
  ) {
    return call(
      artist: provider.artist,
      title: provider.title,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getLyricsProvider';
}

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
class GetLyricsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  GetLyricsProvider({
    dynamic artist,
    dynamic title,
  }) : this._internal(
          (ref) => getLyrics(
            ref as GetLyricsRef,
            artist: artist,
            title: title,
          ),
          from: getLyricsProvider,
          name: r'getLyricsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLyricsHash,
          dependencies: GetLyricsFamily._dependencies,
          allTransitiveDependencies: GetLyricsFamily._allTransitiveDependencies,
          artist: artist,
          title: title,
        );

  GetLyricsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.artist,
    required this.title,
  }) : super.internal();

  final dynamic artist;
  final dynamic title;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetLyricsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLyricsProvider._internal(
        (ref) => create(ref as GetLyricsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        artist: artist,
        title: title,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetLyricsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLyricsProvider &&
        other.artist == artist &&
        other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, artist.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetLyricsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `artist` of this provider.
  dynamic get artist;

  /// The parameter `title` of this provider.
  dynamic get title;
}

class _GetLyricsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetLyricsRef {
  _GetLyricsProviderElement(super.provider);

  @override
  dynamic get artist => (origin as GetLyricsProvider).artist;
  @override
  dynamic get title => (origin as GetLyricsProvider).title;
}

String _$getAvatarHash() => r'69336f36f070048962b282640202ecfc6343ad8c';

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
@ProviderFor(getAvatar)
const getAvatarProvider = GetAvatarFamily();

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
class GetAvatarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  const GetAvatarFamily();

  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  GetAvatarProvider call({
    required dynamic username,
  }) {
    return GetAvatarProvider(
      username: username,
    );
  }

  @override
  GetAvatarProvider getProviderOverride(
    covariant GetAvatarProvider provider,
  ) {
    return call(
      username: provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAvatarProvider';
}

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
class GetAvatarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  GetAvatarProvider({
    required dynamic username,
  }) : this._internal(
          (ref) => getAvatar(
            ref as GetAvatarRef,
            username: username,
          ),
          from: getAvatarProvider,
          name: r'getAvatarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAvatarHash,
          dependencies: GetAvatarFamily._dependencies,
          allTransitiveDependencies: GetAvatarFamily._allTransitiveDependencies,
          username: username,
        );

  GetAvatarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final dynamic username;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAvatarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAvatarProvider._internal(
        (ref) => create(ref as GetAvatarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAvatarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAvatarProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAvatarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;
}

class _GetAvatarProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAvatarRef {
  _GetAvatarProviderElement(super.provider);

  @override
  dynamic get username => (origin as GetAvatarProvider).username;
}

String _$starHash() => r'13f397c00e5bfd5ebef474b3032b645ef71787bf';

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
@ProviderFor(star)
const starProvider = StarFamily();

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
class StarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  const StarFamily();

  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  StarProvider call({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) {
    return StarProvider(
      id: id,
      albumId: albumId,
      artistId: artistId,
    );
  }

  @override
  StarProvider getProviderOverride(
    covariant StarProvider provider,
  ) {
    return call(
      id: provider.id,
      albumId: provider.albumId,
      artistId: provider.artistId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'starProvider';
}

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
class StarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  StarProvider({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) : this._internal(
          (ref) => star(
            ref as StarRef,
            id: id,
            albumId: albumId,
            artistId: artistId,
          ),
          from: starProvider,
          name: r'starProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$starHash,
          dependencies: StarFamily._dependencies,
          allTransitiveDependencies: StarFamily._allTransitiveDependencies,
          id: id,
          albumId: albumId,
          artistId: artistId,
        );

  StarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.albumId,
    required this.artistId,
  }) : super.internal();

  final dynamic id;
  final dynamic albumId;
  final dynamic artistId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(StarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StarProvider._internal(
        (ref) => create(ref as StarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        albumId: albumId,
        artistId: artistId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _StarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StarProvider &&
        other.id == id &&
        other.albumId == albumId &&
        other.artistId == artistId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, albumId.hashCode);
    hash = _SystemHash.combine(hash, artistId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `albumId` of this provider.
  dynamic get albumId;

  /// The parameter `artistId` of this provider.
  dynamic get artistId;
}

class _StarProviderElement extends AutoDisposeFutureProviderElement<Response>
    with StarRef {
  _StarProviderElement(super.provider);

  @override
  dynamic get id => (origin as StarProvider).id;
  @override
  dynamic get albumId => (origin as StarProvider).albumId;
  @override
  dynamic get artistId => (origin as StarProvider).artistId;
}

String _$unstarHash() => r'7fab59e3c3130b4002ec83f289eb2ca05a949ca4';

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
@ProviderFor(unstar)
const unstarProvider = UnstarFamily();

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
class UnstarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  const UnstarFamily();

  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  UnstarProvider call({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) {
    return UnstarProvider(
      id: id,
      albumId: albumId,
      artistId: artistId,
    );
  }

  @override
  UnstarProvider getProviderOverride(
    covariant UnstarProvider provider,
  ) {
    return call(
      id: provider.id,
      albumId: provider.albumId,
      artistId: provider.artistId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'unstarProvider';
}

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
class UnstarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  UnstarProvider({
    dynamic id,
    dynamic albumId,
    dynamic artistId,
  }) : this._internal(
          (ref) => unstar(
            ref as UnstarRef,
            id: id,
            albumId: albumId,
            artistId: artistId,
          ),
          from: unstarProvider,
          name: r'unstarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unstarHash,
          dependencies: UnstarFamily._dependencies,
          allTransitiveDependencies: UnstarFamily._allTransitiveDependencies,
          id: id,
          albumId: albumId,
          artistId: artistId,
        );

  UnstarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.albumId,
    required this.artistId,
  }) : super.internal();

  final dynamic id;
  final dynamic albumId;
  final dynamic artistId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UnstarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UnstarProvider._internal(
        (ref) => create(ref as UnstarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        albumId: albumId,
        artistId: artistId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UnstarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnstarProvider &&
        other.id == id &&
        other.albumId == albumId &&
        other.artistId == artistId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, albumId.hashCode);
    hash = _SystemHash.combine(hash, artistId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UnstarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `albumId` of this provider.
  dynamic get albumId;

  /// The parameter `artistId` of this provider.
  dynamic get artistId;
}

class _UnstarProviderElement extends AutoDisposeFutureProviderElement<Response>
    with UnstarRef {
  _UnstarProviderElement(super.provider);

  @override
  dynamic get id => (origin as UnstarProvider).id;
  @override
  dynamic get albumId => (origin as UnstarProvider).albumId;
  @override
  dynamic get artistId => (origin as UnstarProvider).artistId;
}

String _$setRatingHash() => r'bccbed6b415ac26a1115261689f7f62b00334b72';

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
@ProviderFor(setRating)
const setRatingProvider = SetRatingFamily();

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
class SetRatingFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  const SetRatingFamily();

  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  SetRatingProvider call({
    required dynamic id,
    required dynamic rating,
  }) {
    return SetRatingProvider(
      id: id,
      rating: rating,
    );
  }

  @override
  SetRatingProvider getProviderOverride(
    covariant SetRatingProvider provider,
  ) {
    return call(
      id: provider.id,
      rating: provider.rating,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setRatingProvider';
}

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
class SetRatingProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  SetRatingProvider({
    required dynamic id,
    required dynamic rating,
  }) : this._internal(
          (ref) => setRating(
            ref as SetRatingRef,
            id: id,
            rating: rating,
          ),
          from: setRatingProvider,
          name: r'setRatingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setRatingHash,
          dependencies: SetRatingFamily._dependencies,
          allTransitiveDependencies: SetRatingFamily._allTransitiveDependencies,
          id: id,
          rating: rating,
        );

  SetRatingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.rating,
  }) : super.internal();

  final dynamic id;
  final dynamic rating;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SetRatingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetRatingProvider._internal(
        (ref) => create(ref as SetRatingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        rating: rating,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SetRatingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetRatingProvider &&
        other.id == id &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, rating.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetRatingRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `rating` of this provider.
  dynamic get rating;
}

class _SetRatingProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SetRatingRef {
  _SetRatingProviderElement(super.provider);

  @override
  dynamic get id => (origin as SetRatingProvider).id;
  @override
  dynamic get rating => (origin as SetRatingProvider).rating;
}

String _$scrobbleHash() => r'ab911679bbf1dadd8d9064eaad0ca7369a5a1231';

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
@ProviderFor(scrobble)
const scrobbleProvider = ScrobbleFamily();

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
class ScrobbleFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  const ScrobbleFamily();

  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  ScrobbleProvider call({
    required dynamic id,
    dynamic time,
    dynamic submission = "True",
  }) {
    return ScrobbleProvider(
      id: id,
      time: time,
      submission: submission,
    );
  }

  @override
  ScrobbleProvider getProviderOverride(
    covariant ScrobbleProvider provider,
  ) {
    return call(
      id: provider.id,
      time: provider.time,
      submission: provider.submission,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'scrobbleProvider';
}

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
class ScrobbleProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  ScrobbleProvider({
    required dynamic id,
    dynamic time,
    dynamic submission = "True",
  }) : this._internal(
          (ref) => scrobble(
            ref as ScrobbleRef,
            id: id,
            time: time,
            submission: submission,
          ),
          from: scrobbleProvider,
          name: r'scrobbleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scrobbleHash,
          dependencies: ScrobbleFamily._dependencies,
          allTransitiveDependencies: ScrobbleFamily._allTransitiveDependencies,
          id: id,
          time: time,
          submission: submission,
        );

  ScrobbleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.time,
    required this.submission,
  }) : super.internal();

  final dynamic id;
  final dynamic time;
  final dynamic submission;

  @override
  Override overrideWith(
    FutureOr<Response> Function(ScrobbleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ScrobbleProvider._internal(
        (ref) => create(ref as ScrobbleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        time: time,
        submission: submission,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _ScrobbleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScrobbleProvider &&
        other.id == id &&
        other.time == time &&
        other.submission == submission;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, time.hashCode);
    hash = _SystemHash.combine(hash, submission.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ScrobbleRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `time` of this provider.
  dynamic get time;

  /// The parameter `submission` of this provider.
  dynamic get submission;
}

class _ScrobbleProviderElement
    extends AutoDisposeFutureProviderElement<Response> with ScrobbleRef {
  _ScrobbleProviderElement(super.provider);

  @override
  dynamic get id => (origin as ScrobbleProvider).id;
  @override
  dynamic get time => (origin as ScrobbleProvider).time;
  @override
  dynamic get submission => (origin as ScrobbleProvider).submission;
}

String _$getSharesHash() => r'8dd3e7a48fbd59f3707bfb1ebacffbd99bdbe525';

/// http://your-server/rest/getShares Since 1.6.0
/// Returns information about shared media this user is allowed to manage. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <shares> element on success. Example.
///
/// Copied from [getShares].
@ProviderFor(getShares)
final getSharesProvider = AutoDisposeFutureProvider<Response>.internal(
  getShares,
  name: r'getSharesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSharesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSharesRef = AutoDisposeFutureProviderRef<Response>;
String _$createShareHash() => r'2db83b8e8a564d15413da56f6d1e9e84629e162c';

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
@ProviderFor(createShare)
const createShareProvider = CreateShareFamily();

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
class CreateShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  const CreateShareFamily();

  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  CreateShareProvider call({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) {
    return CreateShareProvider(
      id: id,
      description: description,
      expires: expires,
    );
  }

  @override
  CreateShareProvider getProviderOverride(
    covariant CreateShareProvider provider,
  ) {
    return call(
      id: provider.id,
      description: provider.description,
      expires: provider.expires,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createShareProvider';
}

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
class CreateShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  CreateShareProvider({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) : this._internal(
          (ref) => createShare(
            ref as CreateShareRef,
            id: id,
            description: description,
            expires: expires,
          ),
          from: createShareProvider,
          name: r'createShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createShareHash,
          dependencies: CreateShareFamily._dependencies,
          allTransitiveDependencies:
              CreateShareFamily._allTransitiveDependencies,
          id: id,
          description: description,
          expires: expires,
        );

  CreateShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.description,
    required this.expires,
  }) : super.internal();

  final dynamic id;
  final dynamic description;
  final dynamic expires;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateShareProvider._internal(
        (ref) => create(ref as CreateShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        description: description,
        expires: expires,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateShareProvider &&
        other.id == id &&
        other.description == description &&
        other.expires == expires;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, expires.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `description` of this provider.
  dynamic get description;

  /// The parameter `expires` of this provider.
  dynamic get expires;
}

class _CreateShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateShareRef {
  _CreateShareProviderElement(super.provider);

  @override
  dynamic get id => (origin as CreateShareProvider).id;
  @override
  dynamic get description => (origin as CreateShareProvider).description;
  @override
  dynamic get expires => (origin as CreateShareProvider).expires;
}

String _$updateShareHash() => r'dfd4cadc032d0ac79e164dc89faa970621af4144';

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
@ProviderFor(updateShare)
const updateShareProvider = UpdateShareFamily();

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
class UpdateShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  const UpdateShareFamily();

  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  UpdateShareProvider call({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) {
    return UpdateShareProvider(
      id: id,
      description: description,
      expires: expires,
    );
  }

  @override
  UpdateShareProvider getProviderOverride(
    covariant UpdateShareProvider provider,
  ) {
    return call(
      id: provider.id,
      description: provider.description,
      expires: provider.expires,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateShareProvider';
}

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
class UpdateShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  UpdateShareProvider({
    required dynamic id,
    dynamic description,
    dynamic expires,
  }) : this._internal(
          (ref) => updateShare(
            ref as UpdateShareRef,
            id: id,
            description: description,
            expires: expires,
          ),
          from: updateShareProvider,
          name: r'updateShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateShareHash,
          dependencies: UpdateShareFamily._dependencies,
          allTransitiveDependencies:
              UpdateShareFamily._allTransitiveDependencies,
          id: id,
          description: description,
          expires: expires,
        );

  UpdateShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.description,
    required this.expires,
  }) : super.internal();

  final dynamic id;
  final dynamic description;
  final dynamic expires;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateShareProvider._internal(
        (ref) => create(ref as UpdateShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        description: description,
        expires: expires,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateShareProvider &&
        other.id == id &&
        other.description == description &&
        other.expires == expires;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, expires.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `description` of this provider.
  dynamic get description;

  /// The parameter `expires` of this provider.
  dynamic get expires;
}

class _UpdateShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdateShareRef {
  _UpdateShareProviderElement(super.provider);

  @override
  dynamic get id => (origin as UpdateShareProvider).id;
  @override
  dynamic get description => (origin as UpdateShareProvider).description;
  @override
  dynamic get expires => (origin as UpdateShareProvider).expires;
}

String _$deleteShareHash() => r'3c3500a14798dd5769b1392b3df390073359cf42';

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
@ProviderFor(deleteShare)
const deleteShareProvider = DeleteShareFamily();

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
class DeleteShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  const DeleteShareFamily();

  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  DeleteShareProvider call({
    required dynamic id,
  }) {
    return DeleteShareProvider(
      id: id,
    );
  }

  @override
  DeleteShareProvider getProviderOverride(
    covariant DeleteShareProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteShareProvider';
}

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
class DeleteShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  DeleteShareProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deleteShare(
            ref as DeleteShareRef,
            id: id,
          ),
          from: deleteShareProvider,
          name: r'deleteShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteShareHash,
          dependencies: DeleteShareFamily._dependencies,
          allTransitiveDependencies:
              DeleteShareFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteShareProvider._internal(
        (ref) => create(ref as DeleteShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteShareProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeleteShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteShareRef {
  _DeleteShareProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeleteShareProvider).id;
}

String _$getPodcastsHash() => r'37269fded864ac68b2fc3a6da13ea027025e9935';

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
@ProviderFor(getPodcasts)
const getPodcastsProvider = GetPodcastsFamily();

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
class GetPodcastsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  const GetPodcastsFamily();

  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  GetPodcastsProvider call({
    dynamic includeEpisodes = true,
    dynamic id,
  }) {
    return GetPodcastsProvider(
      includeEpisodes: includeEpisodes,
      id: id,
    );
  }

  @override
  GetPodcastsProvider getProviderOverride(
    covariant GetPodcastsProvider provider,
  ) {
    return call(
      includeEpisodes: provider.includeEpisodes,
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPodcastsProvider';
}

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
class GetPodcastsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  GetPodcastsProvider({
    dynamic includeEpisodes = true,
    dynamic id,
  }) : this._internal(
          (ref) => getPodcasts(
            ref as GetPodcastsRef,
            includeEpisodes: includeEpisodes,
            id: id,
          ),
          from: getPodcastsProvider,
          name: r'getPodcastsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPodcastsHash,
          dependencies: GetPodcastsFamily._dependencies,
          allTransitiveDependencies:
              GetPodcastsFamily._allTransitiveDependencies,
          includeEpisodes: includeEpisodes,
          id: id,
        );

  GetPodcastsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.includeEpisodes,
    required this.id,
  }) : super.internal();

  final dynamic includeEpisodes;
  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPodcastsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPodcastsProvider._internal(
        (ref) => create(ref as GetPodcastsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        includeEpisodes: includeEpisodes,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPodcastsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPodcastsProvider &&
        other.includeEpisodes == includeEpisodes &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, includeEpisodes.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPodcastsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `includeEpisodes` of this provider.
  dynamic get includeEpisodes;

  /// The parameter `id` of this provider.
  dynamic get id;
}

class _GetPodcastsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPodcastsRef {
  _GetPodcastsProviderElement(super.provider);

  @override
  dynamic get includeEpisodes =>
      (origin as GetPodcastsProvider).includeEpisodes;
  @override
  dynamic get id => (origin as GetPodcastsProvider).id;
}

String _$getNewestPodcastsHash() => r'3bab05cfd886d8665edadb20aa272b1af3d4990a';

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
@ProviderFor(getNewestPodcasts)
const getNewestPodcastsProvider = GetNewestPodcastsFamily();

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
class GetNewestPodcastsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  const GetNewestPodcastsFamily();

  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  GetNewestPodcastsProvider call({
    dynamic count = 20,
  }) {
    return GetNewestPodcastsProvider(
      count: count,
    );
  }

  @override
  GetNewestPodcastsProvider getProviderOverride(
    covariant GetNewestPodcastsProvider provider,
  ) {
    return call(
      count: provider.count,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getNewestPodcastsProvider';
}

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
class GetNewestPodcastsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  GetNewestPodcastsProvider({
    dynamic count = 20,
  }) : this._internal(
          (ref) => getNewestPodcasts(
            ref as GetNewestPodcastsRef,
            count: count,
          ),
          from: getNewestPodcastsProvider,
          name: r'getNewestPodcastsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNewestPodcastsHash,
          dependencies: GetNewestPodcastsFamily._dependencies,
          allTransitiveDependencies:
              GetNewestPodcastsFamily._allTransitiveDependencies,
          count: count,
        );

  GetNewestPodcastsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.count,
  }) : super.internal();

  final dynamic count;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetNewestPodcastsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNewestPodcastsProvider._internal(
        (ref) => create(ref as GetNewestPodcastsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        count: count,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetNewestPodcastsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNewestPodcastsProvider && other.count == count;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, count.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetNewestPodcastsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `count` of this provider.
  dynamic get count;
}

class _GetNewestPodcastsProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetNewestPodcastsRef {
  _GetNewestPodcastsProviderElement(super.provider);

  @override
  dynamic get count => (origin as GetNewestPodcastsProvider).count;
}

String _$refreshPodcastsHash() => r'a38d76f2f7658f9462ff146d5bcbc0230668a426';

/// http://your-server/rest/refreshPodcasts Since 1.9.0
/// Requests the server to check for new Podcast episodes. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
///
/// Copied from [refreshPodcasts].
@ProviderFor(refreshPodcasts)
final refreshPodcastsProvider = AutoDisposeFutureProvider<Response>.internal(
  refreshPodcasts,
  name: r'refreshPodcastsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshPodcastsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshPodcastsRef = AutoDisposeFutureProviderRef<Response>;
String _$createPodcastChannelHash() =>
    r'3f29a8e00127af3eee906a81c2f6160f047edcbe';

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
@ProviderFor(createPodcastChannel)
const createPodcastChannelProvider = CreatePodcastChannelFamily();

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
class CreatePodcastChannelFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  const CreatePodcastChannelFamily();

  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  CreatePodcastChannelProvider call({
    required dynamic url,
  }) {
    return CreatePodcastChannelProvider(
      url: url,
    );
  }

  @override
  CreatePodcastChannelProvider getProviderOverride(
    covariant CreatePodcastChannelProvider provider,
  ) {
    return call(
      url: provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createPodcastChannelProvider';
}

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
class CreatePodcastChannelProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  CreatePodcastChannelProvider({
    required dynamic url,
  }) : this._internal(
          (ref) => createPodcastChannel(
            ref as CreatePodcastChannelRef,
            url: url,
          ),
          from: createPodcastChannelProvider,
          name: r'createPodcastChannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPodcastChannelHash,
          dependencies: CreatePodcastChannelFamily._dependencies,
          allTransitiveDependencies:
              CreatePodcastChannelFamily._allTransitiveDependencies,
          url: url,
        );

  CreatePodcastChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final dynamic url;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreatePodcastChannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatePodcastChannelProvider._internal(
        (ref) => create(ref as CreatePodcastChannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreatePodcastChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePodcastChannelProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreatePodcastChannelRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `url` of this provider.
  dynamic get url;
}

class _CreatePodcastChannelProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with CreatePodcastChannelRef {
  _CreatePodcastChannelProviderElement(super.provider);

  @override
  dynamic get url => (origin as CreatePodcastChannelProvider).url;
}

String _$deletePodcastChannelHash() =>
    r'c9e20495bc351bcd7955c402e085ceb89f16c072';

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
@ProviderFor(deletePodcastChannel)
const deletePodcastChannelProvider = DeletePodcastChannelFamily();

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
class DeletePodcastChannelFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  const DeletePodcastChannelFamily();

  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  DeletePodcastChannelProvider call({
    required dynamic id,
  }) {
    return DeletePodcastChannelProvider(
      id: id,
    );
  }

  @override
  DeletePodcastChannelProvider getProviderOverride(
    covariant DeletePodcastChannelProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePodcastChannelProvider';
}

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
class DeletePodcastChannelProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  DeletePodcastChannelProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deletePodcastChannel(
            ref as DeletePodcastChannelRef,
            id: id,
          ),
          from: deletePodcastChannelProvider,
          name: r'deletePodcastChannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePodcastChannelHash,
          dependencies: DeletePodcastChannelFamily._dependencies,
          allTransitiveDependencies:
              DeletePodcastChannelFamily._allTransitiveDependencies,
          id: id,
        );

  DeletePodcastChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePodcastChannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePodcastChannelProvider._internal(
        (ref) => create(ref as DeletePodcastChannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePodcastChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePodcastChannelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePodcastChannelRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeletePodcastChannelProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeletePodcastChannelRef {
  _DeletePodcastChannelProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeletePodcastChannelProvider).id;
}

String _$deletePodcastEpisodeHash() =>
    r'26c73887b4d73c401f08e724eb1d5a64418ea568';

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
@ProviderFor(deletePodcastEpisode)
const deletePodcastEpisodeProvider = DeletePodcastEpisodeFamily();

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
class DeletePodcastEpisodeFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  const DeletePodcastEpisodeFamily();

  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  DeletePodcastEpisodeProvider call({
    required dynamic id,
  }) {
    return DeletePodcastEpisodeProvider(
      id: id,
    );
  }

  @override
  DeletePodcastEpisodeProvider getProviderOverride(
    covariant DeletePodcastEpisodeProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePodcastEpisodeProvider';
}

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
class DeletePodcastEpisodeProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  DeletePodcastEpisodeProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deletePodcastEpisode(
            ref as DeletePodcastEpisodeRef,
            id: id,
          ),
          from: deletePodcastEpisodeProvider,
          name: r'deletePodcastEpisodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePodcastEpisodeHash,
          dependencies: DeletePodcastEpisodeFamily._dependencies,
          allTransitiveDependencies:
              DeletePodcastEpisodeFamily._allTransitiveDependencies,
          id: id,
        );

  DeletePodcastEpisodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePodcastEpisodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePodcastEpisodeProvider._internal(
        (ref) => create(ref as DeletePodcastEpisodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePodcastEpisodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePodcastEpisodeProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePodcastEpisodeRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeletePodcastEpisodeProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeletePodcastEpisodeRef {
  _DeletePodcastEpisodeProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeletePodcastEpisodeProvider).id;
}

String _$downloadPodcastEpisodeHash() =>
    r'565089b81ce068a45f4473cac070dad4d74a0c3d';

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
@ProviderFor(downloadPodcastEpisode)
const downloadPodcastEpisodeProvider = DownloadPodcastEpisodeFamily();

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
class DownloadPodcastEpisodeFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  const DownloadPodcastEpisodeFamily();

  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  DownloadPodcastEpisodeProvider call({
    required dynamic id,
  }) {
    return DownloadPodcastEpisodeProvider(
      id: id,
    );
  }

  @override
  DownloadPodcastEpisodeProvider getProviderOverride(
    covariant DownloadPodcastEpisodeProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'downloadPodcastEpisodeProvider';
}

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
class DownloadPodcastEpisodeProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  DownloadPodcastEpisodeProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => downloadPodcastEpisode(
            ref as DownloadPodcastEpisodeRef,
            id: id,
          ),
          from: downloadPodcastEpisodeProvider,
          name: r'downloadPodcastEpisodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$downloadPodcastEpisodeHash,
          dependencies: DownloadPodcastEpisodeFamily._dependencies,
          allTransitiveDependencies:
              DownloadPodcastEpisodeFamily._allTransitiveDependencies,
          id: id,
        );

  DownloadPodcastEpisodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DownloadPodcastEpisodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DownloadPodcastEpisodeProvider._internal(
        (ref) => create(ref as DownloadPodcastEpisodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DownloadPodcastEpisodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DownloadPodcastEpisodeProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DownloadPodcastEpisodeRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DownloadPodcastEpisodeProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DownloadPodcastEpisodeRef {
  _DownloadPodcastEpisodeProviderElement(super.provider);

  @override
  dynamic get id => (origin as DownloadPodcastEpisodeProvider).id;
}

String _$jukeboxControlHash() => r'56d5ee92029c4666669f67d1c63bcd690d9e94d6';

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
@ProviderFor(jukeboxControl)
const jukeboxControlProvider = JukeboxControlFamily();

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
class JukeboxControlFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  const JukeboxControlFamily();

  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  JukeboxControlProvider call({
    required dynamic action,
    dynamic index,
    dynamic offset,
    dynamic id,
    dynamic gain,
  }) {
    return JukeboxControlProvider(
      action: action,
      index: index,
      offset: offset,
      id: id,
      gain: gain,
    );
  }

  @override
  JukeboxControlProvider getProviderOverride(
    covariant JukeboxControlProvider provider,
  ) {
    return call(
      action: provider.action,
      index: provider.index,
      offset: provider.offset,
      id: provider.id,
      gain: provider.gain,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'jukeboxControlProvider';
}

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
class JukeboxControlProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  JukeboxControlProvider({
    required dynamic action,
    dynamic index,
    dynamic offset,
    dynamic id,
    dynamic gain,
  }) : this._internal(
          (ref) => jukeboxControl(
            ref as JukeboxControlRef,
            action: action,
            index: index,
            offset: offset,
            id: id,
            gain: gain,
          ),
          from: jukeboxControlProvider,
          name: r'jukeboxControlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$jukeboxControlHash,
          dependencies: JukeboxControlFamily._dependencies,
          allTransitiveDependencies:
              JukeboxControlFamily._allTransitiveDependencies,
          action: action,
          index: index,
          offset: offset,
          id: id,
          gain: gain,
        );

  JukeboxControlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.action,
    required this.index,
    required this.offset,
    required this.id,
    required this.gain,
  }) : super.internal();

  final dynamic action;
  final dynamic index;
  final dynamic offset;
  final dynamic id;
  final dynamic gain;

  @override
  Override overrideWith(
    FutureOr<Response> Function(JukeboxControlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: JukeboxControlProvider._internal(
        (ref) => create(ref as JukeboxControlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        action: action,
        index: index,
        offset: offset,
        id: id,
        gain: gain,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _JukeboxControlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JukeboxControlProvider &&
        other.action == action &&
        other.index == index &&
        other.offset == offset &&
        other.id == id &&
        other.gain == gain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, action.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, gain.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin JukeboxControlRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `action` of this provider.
  dynamic get action;

  /// The parameter `index` of this provider.
  dynamic get index;

  /// The parameter `offset` of this provider.
  dynamic get offset;

  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `gain` of this provider.
  dynamic get gain;
}

class _JukeboxControlProviderElement
    extends AutoDisposeFutureProviderElement<Response> with JukeboxControlRef {
  _JukeboxControlProviderElement(super.provider);

  @override
  dynamic get action => (origin as JukeboxControlProvider).action;
  @override
  dynamic get index => (origin as JukeboxControlProvider).index;
  @override
  dynamic get offset => (origin as JukeboxControlProvider).offset;
  @override
  dynamic get id => (origin as JukeboxControlProvider).id;
  @override
  dynamic get gain => (origin as JukeboxControlProvider).gain;
}

String _$getInternetRadioStationsHash() =>
    r'd6aab3d8063f07ac89a0052b69250aa6cd285755';

/// http://your-server/rest/getInternetRadioStations Since 1.9.0
/// Returns all internet radio stations. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <internetRadioStations> element on success. Example.
///
/// Copied from [getInternetRadioStations].
@ProviderFor(getInternetRadioStations)
final getInternetRadioStationsProvider =
    AutoDisposeFutureProvider<Response>.internal(
  getInternetRadioStations,
  name: r'getInternetRadioStationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getInternetRadioStationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetInternetRadioStationsRef = AutoDisposeFutureProviderRef<Response>;
String _$createInternetRadioStationHash() =>
    r'300d88d6098cde9cdc940a2599e66bdc7873c8d3';

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
@ProviderFor(createInternetRadioStation)
const createInternetRadioStationProvider = CreateInternetRadioStationFamily();

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
class CreateInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  const CreateInternetRadioStationFamily();

  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  CreateInternetRadioStationProvider call({
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) {
    return CreateInternetRadioStationProvider(
      streamUrl: streamUrl,
      name: name,
      homepageUrl: homepageUrl,
    );
  }

  @override
  CreateInternetRadioStationProvider getProviderOverride(
    covariant CreateInternetRadioStationProvider provider,
  ) {
    return call(
      streamUrl: provider.streamUrl,
      name: provider.name,
      homepageUrl: provider.homepageUrl,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createInternetRadioStationProvider';
}

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
class CreateInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  CreateInternetRadioStationProvider({
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) : this._internal(
          (ref) => createInternetRadioStation(
            ref as CreateInternetRadioStationRef,
            streamUrl: streamUrl,
            name: name,
            homepageUrl: homepageUrl,
          ),
          from: createInternetRadioStationProvider,
          name: r'createInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createInternetRadioStationHash,
          dependencies: CreateInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              CreateInternetRadioStationFamily._allTransitiveDependencies,
          streamUrl: streamUrl,
          name: name,
          homepageUrl: homepageUrl,
        );

  CreateInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.streamUrl,
    required this.name,
    required this.homepageUrl,
  }) : super.internal();

  final dynamic streamUrl;
  final dynamic name;
  final dynamic homepageUrl;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateInternetRadioStationProvider._internal(
        (ref) => create(ref as CreateInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        streamUrl: streamUrl,
        name: name,
        homepageUrl: homepageUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateInternetRadioStationProvider &&
        other.streamUrl == streamUrl &&
        other.name == name &&
        other.homepageUrl == homepageUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, streamUrl.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);
    hash = _SystemHash.combine(hash, homepageUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `streamUrl` of this provider.
  dynamic get streamUrl;

  /// The parameter `name` of this provider.
  dynamic get name;

  /// The parameter `homepageUrl` of this provider.
  dynamic get homepageUrl;
}

class _CreateInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with CreateInternetRadioStationRef {
  _CreateInternetRadioStationProviderElement(super.provider);

  @override
  dynamic get streamUrl =>
      (origin as CreateInternetRadioStationProvider).streamUrl;
  @override
  dynamic get name => (origin as CreateInternetRadioStationProvider).name;
  @override
  dynamic get homepageUrl =>
      (origin as CreateInternetRadioStationProvider).homepageUrl;
}

String _$updateInternetRadioStationHash() =>
    r'283dca4d2a16bd150b38f00bf2288a11135b371b';

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
@ProviderFor(updateInternetRadioStation)
const updateInternetRadioStationProvider = UpdateInternetRadioStationFamily();

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
class UpdateInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  const UpdateInternetRadioStationFamily();

  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  UpdateInternetRadioStationProvider call({
    required dynamic id,
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) {
    return UpdateInternetRadioStationProvider(
      id: id,
      streamUrl: streamUrl,
      name: name,
      homepageUrl: homepageUrl,
    );
  }

  @override
  UpdateInternetRadioStationProvider getProviderOverride(
    covariant UpdateInternetRadioStationProvider provider,
  ) {
    return call(
      id: provider.id,
      streamUrl: provider.streamUrl,
      name: provider.name,
      homepageUrl: provider.homepageUrl,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateInternetRadioStationProvider';
}

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
class UpdateInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  UpdateInternetRadioStationProvider({
    required dynamic id,
    required dynamic streamUrl,
    required dynamic name,
    dynamic homepageUrl,
  }) : this._internal(
          (ref) => updateInternetRadioStation(
            ref as UpdateInternetRadioStationRef,
            id: id,
            streamUrl: streamUrl,
            name: name,
            homepageUrl: homepageUrl,
          ),
          from: updateInternetRadioStationProvider,
          name: r'updateInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateInternetRadioStationHash,
          dependencies: UpdateInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              UpdateInternetRadioStationFamily._allTransitiveDependencies,
          id: id,
          streamUrl: streamUrl,
          name: name,
          homepageUrl: homepageUrl,
        );

  UpdateInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.streamUrl,
    required this.name,
    required this.homepageUrl,
  }) : super.internal();

  final dynamic id;
  final dynamic streamUrl;
  final dynamic name;
  final dynamic homepageUrl;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateInternetRadioStationProvider._internal(
        (ref) => create(ref as UpdateInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        streamUrl: streamUrl,
        name: name,
        homepageUrl: homepageUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateInternetRadioStationProvider &&
        other.id == id &&
        other.streamUrl == streamUrl &&
        other.name == name &&
        other.homepageUrl == homepageUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, streamUrl.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);
    hash = _SystemHash.combine(hash, homepageUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `streamUrl` of this provider.
  dynamic get streamUrl;

  /// The parameter `name` of this provider.
  dynamic get name;

  /// The parameter `homepageUrl` of this provider.
  dynamic get homepageUrl;
}

class _UpdateInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with UpdateInternetRadioStationRef {
  _UpdateInternetRadioStationProviderElement(super.provider);

  @override
  dynamic get id => (origin as UpdateInternetRadioStationProvider).id;
  @override
  dynamic get streamUrl =>
      (origin as UpdateInternetRadioStationProvider).streamUrl;
  @override
  dynamic get name => (origin as UpdateInternetRadioStationProvider).name;
  @override
  dynamic get homepageUrl =>
      (origin as UpdateInternetRadioStationProvider).homepageUrl;
}

String _$deleteInternetRadioStationHash() =>
    r'c2e67dadecb234e428c77947602abe60f048c72e';

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
@ProviderFor(deleteInternetRadioStation)
const deleteInternetRadioStationProvider = DeleteInternetRadioStationFamily();

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
class DeleteInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  const DeleteInternetRadioStationFamily();

  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  DeleteInternetRadioStationProvider call({
    required dynamic id,
  }) {
    return DeleteInternetRadioStationProvider(
      id: id,
    );
  }

  @override
  DeleteInternetRadioStationProvider getProviderOverride(
    covariant DeleteInternetRadioStationProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteInternetRadioStationProvider';
}

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
class DeleteInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  DeleteInternetRadioStationProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deleteInternetRadioStation(
            ref as DeleteInternetRadioStationRef,
            id: id,
          ),
          from: deleteInternetRadioStationProvider,
          name: r'deleteInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteInternetRadioStationHash,
          dependencies: DeleteInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              DeleteInternetRadioStationFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteInternetRadioStationProvider._internal(
        (ref) => create(ref as DeleteInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteInternetRadioStationProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeleteInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeleteInternetRadioStationRef {
  _DeleteInternetRadioStationProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeleteInternetRadioStationProvider).id;
}

String _$getChatMessagesHash() => r'1d9b8fbba4ce0c8e7662cd9959297af4527014a4';

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
@ProviderFor(getChatMessages)
const getChatMessagesProvider = GetChatMessagesFamily();

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
class GetChatMessagesFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  const GetChatMessagesFamily();

  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  GetChatMessagesProvider call({
    dynamic since,
  }) {
    return GetChatMessagesProvider(
      since: since,
    );
  }

  @override
  GetChatMessagesProvider getProviderOverride(
    covariant GetChatMessagesProvider provider,
  ) {
    return call(
      since: provider.since,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getChatMessagesProvider';
}

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
class GetChatMessagesProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  GetChatMessagesProvider({
    dynamic since,
  }) : this._internal(
          (ref) => getChatMessages(
            ref as GetChatMessagesRef,
            since: since,
          ),
          from: getChatMessagesProvider,
          name: r'getChatMessagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChatMessagesHash,
          dependencies: GetChatMessagesFamily._dependencies,
          allTransitiveDependencies:
              GetChatMessagesFamily._allTransitiveDependencies,
          since: since,
        );

  GetChatMessagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.since,
  }) : super.internal();

  final dynamic since;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetChatMessagesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetChatMessagesProvider._internal(
        (ref) => create(ref as GetChatMessagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        since: since,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetChatMessagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetChatMessagesProvider && other.since == since;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, since.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetChatMessagesRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `since` of this provider.
  dynamic get since;
}

class _GetChatMessagesProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetChatMessagesRef {
  _GetChatMessagesProviderElement(super.provider);

  @override
  dynamic get since => (origin as GetChatMessagesProvider).since;
}

String _$addChatMessageHash() => r'e533eefb870132408df91532d8571e1300da540e';

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
@ProviderFor(addChatMessage)
const addChatMessageProvider = AddChatMessageFamily();

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
class AddChatMessageFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  const AddChatMessageFamily();

  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  AddChatMessageProvider call({
    required dynamic message,
  }) {
    return AddChatMessageProvider(
      message: message,
    );
  }

  @override
  AddChatMessageProvider getProviderOverride(
    covariant AddChatMessageProvider provider,
  ) {
    return call(
      message: provider.message,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addChatMessageProvider';
}

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
class AddChatMessageProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  AddChatMessageProvider({
    required dynamic message,
  }) : this._internal(
          (ref) => addChatMessage(
            ref as AddChatMessageRef,
            message: message,
          ),
          from: addChatMessageProvider,
          name: r'addChatMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addChatMessageHash,
          dependencies: AddChatMessageFamily._dependencies,
          allTransitiveDependencies:
              AddChatMessageFamily._allTransitiveDependencies,
          message: message,
        );

  AddChatMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.message,
  }) : super.internal();

  final dynamic message;

  @override
  Override overrideWith(
    FutureOr<Response> Function(AddChatMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddChatMessageProvider._internal(
        (ref) => create(ref as AddChatMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        message: message,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _AddChatMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddChatMessageProvider && other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddChatMessageRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `message` of this provider.
  dynamic get message;
}

class _AddChatMessageProviderElement
    extends AutoDisposeFutureProviderElement<Response> with AddChatMessageRef {
  _AddChatMessageProviderElement(super.provider);

  @override
  dynamic get message => (origin as AddChatMessageProvider).message;
}

String _$getUserHash() => r'986289674d23bfc762f64bdb7e968845b63733f1';

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
@ProviderFor(getUser)
const getUserProvider = GetUserFamily();

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
class GetUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  const GetUserFamily();

  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  GetUserProvider call({
    required dynamic username,
  }) {
    return GetUserProvider(
      username: username,
    );
  }

  @override
  GetUserProvider getProviderOverride(
    covariant GetUserProvider provider,
  ) {
    return call(
      username: provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUserProvider';
}

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
class GetUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  GetUserProvider({
    required dynamic username,
  }) : this._internal(
          (ref) => getUser(
            ref as GetUserRef,
            username: username,
          ),
          from: getUserProvider,
          name: r'getUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserHash,
          dependencies: GetUserFamily._dependencies,
          allTransitiveDependencies: GetUserFamily._allTransitiveDependencies,
          username: username,
        );

  GetUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final dynamic username;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserProvider._internal(
        (ref) => create(ref as GetUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;
}

class _GetUserProviderElement extends AutoDisposeFutureProviderElement<Response>
    with GetUserRef {
  _GetUserProviderElement(super.provider);

  @override
  dynamic get username => (origin as GetUserProvider).username;
}

String _$getUsersHash() => r'3710ca5625ae925b07acdeb7fac0cdc795a89033';

/// http://your-server/rest/getUsers Since 1.8.0
/// Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.
/// Returns a <subsonic-response> element with a nested <users> element on success. Example.
///
/// Copied from [getUsers].
@ProviderFor(getUsers)
final getUsersProvider = AutoDisposeFutureProvider<Response>.internal(
  getUsers,
  name: r'getUsersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUsersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetUsersRef = AutoDisposeFutureProviderRef<Response>;
String _$createUserHash() => r'8114ed51978a443ffda5abac59813981a04b1e9c';

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
///
/// Copied from [createUser].
@ProviderFor(createUser)
const createUserProvider = CreateUserFamily();

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
///
/// Copied from [createUser].
class CreateUserFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [createUser].
  const CreateUserFamily();

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
  ///
  /// Copied from [createUser].
  CreateUserProvider call({
    required dynamic username,
    required dynamic password,
    required dynamic email,
    dynamic ldapAuthenticated = false,
    dynamic adminRole = false,
    dynamic settingsRole = true,
    dynamic streamRole = true,
    dynamic jukeboxRole = false,
    dynamic downloadRole = false,
    dynamic uploadRole = false,
    dynamic playlistRole = false,
    dynamic coverArtRole = false,
    dynamic commentRole = false,
    dynamic podcastRole = false,
    dynamic shareRole = false,
    dynamic videoConversionRole = false,
    dynamic musicFolderId = "All folders",
  }) {
    return CreateUserProvider(
      username: username,
      password: password,
      email: email,
      ldapAuthenticated: ldapAuthenticated,
      adminRole: adminRole,
      settingsRole: settingsRole,
      streamRole: streamRole,
      jukeboxRole: jukeboxRole,
      downloadRole: downloadRole,
      uploadRole: uploadRole,
      playlistRole: playlistRole,
      coverArtRole: coverArtRole,
      commentRole: commentRole,
      podcastRole: podcastRole,
      shareRole: shareRole,
      videoConversionRole: videoConversionRole,
      musicFolderId: musicFolderId,
    );
  }

  @override
  CreateUserProvider getProviderOverride(
    covariant CreateUserProvider provider,
  ) {
    return call(
      username: provider.username,
      password: provider.password,
      email: provider.email,
      ldapAuthenticated: provider.ldapAuthenticated,
      adminRole: provider.adminRole,
      settingsRole: provider.settingsRole,
      streamRole: provider.streamRole,
      jukeboxRole: provider.jukeboxRole,
      downloadRole: provider.downloadRole,
      uploadRole: provider.uploadRole,
      playlistRole: provider.playlistRole,
      coverArtRole: provider.coverArtRole,
      commentRole: provider.commentRole,
      podcastRole: provider.podcastRole,
      shareRole: provider.shareRole,
      videoConversionRole: provider.videoConversionRole,
      musicFolderId: provider.musicFolderId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createUserProvider';
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
///
/// Copied from [createUser].
class CreateUserProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [createUser].
  CreateUserProvider({
    required dynamic username,
    required dynamic password,
    required dynamic email,
    dynamic ldapAuthenticated = false,
    dynamic adminRole = false,
    dynamic settingsRole = true,
    dynamic streamRole = true,
    dynamic jukeboxRole = false,
    dynamic downloadRole = false,
    dynamic uploadRole = false,
    dynamic playlistRole = false,
    dynamic coverArtRole = false,
    dynamic commentRole = false,
    dynamic podcastRole = false,
    dynamic shareRole = false,
    dynamic videoConversionRole = false,
    dynamic musicFolderId = "All folders",
  }) : this._internal(
          (ref) => createUser(
            ref as CreateUserRef,
            username: username,
            password: password,
            email: email,
            ldapAuthenticated: ldapAuthenticated,
            adminRole: adminRole,
            settingsRole: settingsRole,
            streamRole: streamRole,
            jukeboxRole: jukeboxRole,
            downloadRole: downloadRole,
            uploadRole: uploadRole,
            playlistRole: playlistRole,
            coverArtRole: coverArtRole,
            commentRole: commentRole,
            podcastRole: podcastRole,
            shareRole: shareRole,
            videoConversionRole: videoConversionRole,
            musicFolderId: musicFolderId,
          ),
          from: createUserProvider,
          name: r'createUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createUserHash,
          dependencies: CreateUserFamily._dependencies,
          allTransitiveDependencies:
              CreateUserFamily._allTransitiveDependencies,
          username: username,
          password: password,
          email: email,
          ldapAuthenticated: ldapAuthenticated,
          adminRole: adminRole,
          settingsRole: settingsRole,
          streamRole: streamRole,
          jukeboxRole: jukeboxRole,
          downloadRole: downloadRole,
          uploadRole: uploadRole,
          playlistRole: playlistRole,
          coverArtRole: coverArtRole,
          commentRole: commentRole,
          podcastRole: podcastRole,
          shareRole: shareRole,
          videoConversionRole: videoConversionRole,
          musicFolderId: musicFolderId,
        );

  CreateUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
    required this.password,
    required this.email,
    required this.ldapAuthenticated,
    required this.adminRole,
    required this.settingsRole,
    required this.streamRole,
    required this.jukeboxRole,
    required this.downloadRole,
    required this.uploadRole,
    required this.playlistRole,
    required this.coverArtRole,
    required this.commentRole,
    required this.podcastRole,
    required this.shareRole,
    required this.videoConversionRole,
    required this.musicFolderId,
  }) : super.internal();

  final dynamic username;
  final dynamic password;
  final dynamic email;
  final dynamic ldapAuthenticated;
  final dynamic adminRole;
  final dynamic settingsRole;
  final dynamic streamRole;
  final dynamic jukeboxRole;
  final dynamic downloadRole;
  final dynamic uploadRole;
  final dynamic playlistRole;
  final dynamic coverArtRole;
  final dynamic commentRole;
  final dynamic podcastRole;
  final dynamic shareRole;
  final dynamic videoConversionRole;
  final dynamic musicFolderId;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateUserProvider._internal(
        (ref) => create(ref as CreateUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
        password: password,
        email: email,
        ldapAuthenticated: ldapAuthenticated,
        adminRole: adminRole,
        settingsRole: settingsRole,
        streamRole: streamRole,
        jukeboxRole: jukeboxRole,
        downloadRole: downloadRole,
        uploadRole: uploadRole,
        playlistRole: playlistRole,
        coverArtRole: coverArtRole,
        commentRole: commentRole,
        podcastRole: podcastRole,
        shareRole: shareRole,
        videoConversionRole: videoConversionRole,
        musicFolderId: musicFolderId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateUserProvider &&
        other.username == username &&
        other.password == password &&
        other.email == email &&
        other.ldapAuthenticated == ldapAuthenticated &&
        other.adminRole == adminRole &&
        other.settingsRole == settingsRole &&
        other.streamRole == streamRole &&
        other.jukeboxRole == jukeboxRole &&
        other.downloadRole == downloadRole &&
        other.uploadRole == uploadRole &&
        other.playlistRole == playlistRole &&
        other.coverArtRole == coverArtRole &&
        other.commentRole == commentRole &&
        other.podcastRole == podcastRole &&
        other.shareRole == shareRole &&
        other.videoConversionRole == videoConversionRole &&
        other.musicFolderId == musicFolderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, ldapAuthenticated.hashCode);
    hash = _SystemHash.combine(hash, adminRole.hashCode);
    hash = _SystemHash.combine(hash, settingsRole.hashCode);
    hash = _SystemHash.combine(hash, streamRole.hashCode);
    hash = _SystemHash.combine(hash, jukeboxRole.hashCode);
    hash = _SystemHash.combine(hash, downloadRole.hashCode);
    hash = _SystemHash.combine(hash, uploadRole.hashCode);
    hash = _SystemHash.combine(hash, playlistRole.hashCode);
    hash = _SystemHash.combine(hash, coverArtRole.hashCode);
    hash = _SystemHash.combine(hash, commentRole.hashCode);
    hash = _SystemHash.combine(hash, podcastRole.hashCode);
    hash = _SystemHash.combine(hash, shareRole.hashCode);
    hash = _SystemHash.combine(hash, videoConversionRole.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;

  /// The parameter `password` of this provider.
  dynamic get password;

  /// The parameter `email` of this provider.
  dynamic get email;

  /// The parameter `ldapAuthenticated` of this provider.
  dynamic get ldapAuthenticated;

  /// The parameter `adminRole` of this provider.
  dynamic get adminRole;

  /// The parameter `settingsRole` of this provider.
  dynamic get settingsRole;

  /// The parameter `streamRole` of this provider.
  dynamic get streamRole;

  /// The parameter `jukeboxRole` of this provider.
  dynamic get jukeboxRole;

  /// The parameter `downloadRole` of this provider.
  dynamic get downloadRole;

  /// The parameter `uploadRole` of this provider.
  dynamic get uploadRole;

  /// The parameter `playlistRole` of this provider.
  dynamic get playlistRole;

  /// The parameter `coverArtRole` of this provider.
  dynamic get coverArtRole;

  /// The parameter `commentRole` of this provider.
  dynamic get commentRole;

  /// The parameter `podcastRole` of this provider.
  dynamic get podcastRole;

  /// The parameter `shareRole` of this provider.
  dynamic get shareRole;

  /// The parameter `videoConversionRole` of this provider.
  dynamic get videoConversionRole;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;
}

class _CreateUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateUserRef {
  _CreateUserProviderElement(super.provider);

  @override
  dynamic get username => (origin as CreateUserProvider).username;
  @override
  dynamic get password => (origin as CreateUserProvider).password;
  @override
  dynamic get email => (origin as CreateUserProvider).email;
  @override
  dynamic get ldapAuthenticated =>
      (origin as CreateUserProvider).ldapAuthenticated;
  @override
  dynamic get adminRole => (origin as CreateUserProvider).adminRole;
  @override
  dynamic get settingsRole => (origin as CreateUserProvider).settingsRole;
  @override
  dynamic get streamRole => (origin as CreateUserProvider).streamRole;
  @override
  dynamic get jukeboxRole => (origin as CreateUserProvider).jukeboxRole;
  @override
  dynamic get downloadRole => (origin as CreateUserProvider).downloadRole;
  @override
  dynamic get uploadRole => (origin as CreateUserProvider).uploadRole;
  @override
  dynamic get playlistRole => (origin as CreateUserProvider).playlistRole;
  @override
  dynamic get coverArtRole => (origin as CreateUserProvider).coverArtRole;
  @override
  dynamic get commentRole => (origin as CreateUserProvider).commentRole;
  @override
  dynamic get podcastRole => (origin as CreateUserProvider).podcastRole;
  @override
  dynamic get shareRole => (origin as CreateUserProvider).shareRole;
  @override
  dynamic get videoConversionRole =>
      (origin as CreateUserProvider).videoConversionRole;
  @override
  dynamic get musicFolderId => (origin as CreateUserProvider).musicFolderId;
}

String _$updateUserHash() => r'9c4fc63adecf1ad946521ca5adf3467bfd0f83cb';

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
///
/// Copied from [updateUser].
@ProviderFor(updateUser)
const updateUserProvider = UpdateUserFamily();

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
///
/// Copied from [updateUser].
class UpdateUserFamily extends Family<AsyncValue<Response>> {
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
  ///
  /// Copied from [updateUser].
  const UpdateUserFamily();

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
  ///
  /// Copied from [updateUser].
  UpdateUserProvider call({
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
    dynamic videoConversionRole = false,
    dynamic musicFolderId,
    dynamic maxBitRate,
  }) {
    return UpdateUserProvider(
      username: username,
      password: password,
      email: email,
      ldapAuthenticated: ldapAuthenticated,
      adminRole: adminRole,
      settingsRole: settingsRole,
      streamRole: streamRole,
      jukeboxRole: jukeboxRole,
      downloadRole: downloadRole,
      uploadRole: uploadRole,
      coverArtRole: coverArtRole,
      commentRole: commentRole,
      podcastRole: podcastRole,
      shareRole: shareRole,
      videoConversionRole: videoConversionRole,
      musicFolderId: musicFolderId,
      maxBitRate: maxBitRate,
    );
  }

  @override
  UpdateUserProvider getProviderOverride(
    covariant UpdateUserProvider provider,
  ) {
    return call(
      username: provider.username,
      password: provider.password,
      email: provider.email,
      ldapAuthenticated: provider.ldapAuthenticated,
      adminRole: provider.adminRole,
      settingsRole: provider.settingsRole,
      streamRole: provider.streamRole,
      jukeboxRole: provider.jukeboxRole,
      downloadRole: provider.downloadRole,
      uploadRole: provider.uploadRole,
      coverArtRole: provider.coverArtRole,
      commentRole: provider.commentRole,
      podcastRole: provider.podcastRole,
      shareRole: provider.shareRole,
      videoConversionRole: provider.videoConversionRole,
      musicFolderId: provider.musicFolderId,
      maxBitRate: provider.maxBitRate,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateUserProvider';
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
///
/// Copied from [updateUser].
class UpdateUserProvider extends AutoDisposeFutureProvider<Response> {
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
  ///
  /// Copied from [updateUser].
  UpdateUserProvider({
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
    dynamic videoConversionRole = false,
    dynamic musicFolderId,
    dynamic maxBitRate,
  }) : this._internal(
          (ref) => updateUser(
            ref as UpdateUserRef,
            username: username,
            password: password,
            email: email,
            ldapAuthenticated: ldapAuthenticated,
            adminRole: adminRole,
            settingsRole: settingsRole,
            streamRole: streamRole,
            jukeboxRole: jukeboxRole,
            downloadRole: downloadRole,
            uploadRole: uploadRole,
            coverArtRole: coverArtRole,
            commentRole: commentRole,
            podcastRole: podcastRole,
            shareRole: shareRole,
            videoConversionRole: videoConversionRole,
            musicFolderId: musicFolderId,
            maxBitRate: maxBitRate,
          ),
          from: updateUserProvider,
          name: r'updateUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserHash,
          dependencies: UpdateUserFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserFamily._allTransitiveDependencies,
          username: username,
          password: password,
          email: email,
          ldapAuthenticated: ldapAuthenticated,
          adminRole: adminRole,
          settingsRole: settingsRole,
          streamRole: streamRole,
          jukeboxRole: jukeboxRole,
          downloadRole: downloadRole,
          uploadRole: uploadRole,
          coverArtRole: coverArtRole,
          commentRole: commentRole,
          podcastRole: podcastRole,
          shareRole: shareRole,
          videoConversionRole: videoConversionRole,
          musicFolderId: musicFolderId,
          maxBitRate: maxBitRate,
        );

  UpdateUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
    required this.password,
    required this.email,
    required this.ldapAuthenticated,
    required this.adminRole,
    required this.settingsRole,
    required this.streamRole,
    required this.jukeboxRole,
    required this.downloadRole,
    required this.uploadRole,
    required this.coverArtRole,
    required this.commentRole,
    required this.podcastRole,
    required this.shareRole,
    required this.videoConversionRole,
    required this.musicFolderId,
    required this.maxBitRate,
  }) : super.internal();

  final dynamic username;
  final dynamic password;
  final dynamic email;
  final dynamic ldapAuthenticated;
  final dynamic adminRole;
  final dynamic settingsRole;
  final dynamic streamRole;
  final dynamic jukeboxRole;
  final dynamic downloadRole;
  final dynamic uploadRole;
  final dynamic coverArtRole;
  final dynamic commentRole;
  final dynamic podcastRole;
  final dynamic shareRole;
  final dynamic videoConversionRole;
  final dynamic musicFolderId;
  final dynamic maxBitRate;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserProvider._internal(
        (ref) => create(ref as UpdateUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
        password: password,
        email: email,
        ldapAuthenticated: ldapAuthenticated,
        adminRole: adminRole,
        settingsRole: settingsRole,
        streamRole: streamRole,
        jukeboxRole: jukeboxRole,
        downloadRole: downloadRole,
        uploadRole: uploadRole,
        coverArtRole: coverArtRole,
        commentRole: commentRole,
        podcastRole: podcastRole,
        shareRole: shareRole,
        videoConversionRole: videoConversionRole,
        musicFolderId: musicFolderId,
        maxBitRate: maxBitRate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserProvider &&
        other.username == username &&
        other.password == password &&
        other.email == email &&
        other.ldapAuthenticated == ldapAuthenticated &&
        other.adminRole == adminRole &&
        other.settingsRole == settingsRole &&
        other.streamRole == streamRole &&
        other.jukeboxRole == jukeboxRole &&
        other.downloadRole == downloadRole &&
        other.uploadRole == uploadRole &&
        other.coverArtRole == coverArtRole &&
        other.commentRole == commentRole &&
        other.podcastRole == podcastRole &&
        other.shareRole == shareRole &&
        other.videoConversionRole == videoConversionRole &&
        other.musicFolderId == musicFolderId &&
        other.maxBitRate == maxBitRate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, ldapAuthenticated.hashCode);
    hash = _SystemHash.combine(hash, adminRole.hashCode);
    hash = _SystemHash.combine(hash, settingsRole.hashCode);
    hash = _SystemHash.combine(hash, streamRole.hashCode);
    hash = _SystemHash.combine(hash, jukeboxRole.hashCode);
    hash = _SystemHash.combine(hash, downloadRole.hashCode);
    hash = _SystemHash.combine(hash, uploadRole.hashCode);
    hash = _SystemHash.combine(hash, coverArtRole.hashCode);
    hash = _SystemHash.combine(hash, commentRole.hashCode);
    hash = _SystemHash.combine(hash, podcastRole.hashCode);
    hash = _SystemHash.combine(hash, shareRole.hashCode);
    hash = _SystemHash.combine(hash, videoConversionRole.hashCode);
    hash = _SystemHash.combine(hash, musicFolderId.hashCode);
    hash = _SystemHash.combine(hash, maxBitRate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;

  /// The parameter `password` of this provider.
  dynamic get password;

  /// The parameter `email` of this provider.
  dynamic get email;

  /// The parameter `ldapAuthenticated` of this provider.
  dynamic get ldapAuthenticated;

  /// The parameter `adminRole` of this provider.
  dynamic get adminRole;

  /// The parameter `settingsRole` of this provider.
  dynamic get settingsRole;

  /// The parameter `streamRole` of this provider.
  dynamic get streamRole;

  /// The parameter `jukeboxRole` of this provider.
  dynamic get jukeboxRole;

  /// The parameter `downloadRole` of this provider.
  dynamic get downloadRole;

  /// The parameter `uploadRole` of this provider.
  dynamic get uploadRole;

  /// The parameter `coverArtRole` of this provider.
  dynamic get coverArtRole;

  /// The parameter `commentRole` of this provider.
  dynamic get commentRole;

  /// The parameter `podcastRole` of this provider.
  dynamic get podcastRole;

  /// The parameter `shareRole` of this provider.
  dynamic get shareRole;

  /// The parameter `videoConversionRole` of this provider.
  dynamic get videoConversionRole;

  /// The parameter `musicFolderId` of this provider.
  dynamic get musicFolderId;

  /// The parameter `maxBitRate` of this provider.
  dynamic get maxBitRate;
}

class _UpdateUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdateUserRef {
  _UpdateUserProviderElement(super.provider);

  @override
  dynamic get username => (origin as UpdateUserProvider).username;
  @override
  dynamic get password => (origin as UpdateUserProvider).password;
  @override
  dynamic get email => (origin as UpdateUserProvider).email;
  @override
  dynamic get ldapAuthenticated =>
      (origin as UpdateUserProvider).ldapAuthenticated;
  @override
  dynamic get adminRole => (origin as UpdateUserProvider).adminRole;
  @override
  dynamic get settingsRole => (origin as UpdateUserProvider).settingsRole;
  @override
  dynamic get streamRole => (origin as UpdateUserProvider).streamRole;
  @override
  dynamic get jukeboxRole => (origin as UpdateUserProvider).jukeboxRole;
  @override
  dynamic get downloadRole => (origin as UpdateUserProvider).downloadRole;
  @override
  dynamic get uploadRole => (origin as UpdateUserProvider).uploadRole;
  @override
  dynamic get coverArtRole => (origin as UpdateUserProvider).coverArtRole;
  @override
  dynamic get commentRole => (origin as UpdateUserProvider).commentRole;
  @override
  dynamic get podcastRole => (origin as UpdateUserProvider).podcastRole;
  @override
  dynamic get shareRole => (origin as UpdateUserProvider).shareRole;
  @override
  dynamic get videoConversionRole =>
      (origin as UpdateUserProvider).videoConversionRole;
  @override
  dynamic get musicFolderId => (origin as UpdateUserProvider).musicFolderId;
  @override
  dynamic get maxBitRate => (origin as UpdateUserProvider).maxBitRate;
}

String _$deleteUserHash() => r'8138781922a10a0ef17d06d760215c5eb98b7578';

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
@ProviderFor(deleteUser)
const deleteUserProvider = DeleteUserFamily();

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
class DeleteUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  const DeleteUserFamily();

  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  DeleteUserProvider call({
    required dynamic username,
  }) {
    return DeleteUserProvider(
      username: username,
    );
  }

  @override
  DeleteUserProvider getProviderOverride(
    covariant DeleteUserProvider provider,
  ) {
    return call(
      username: provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteUserProvider';
}

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
class DeleteUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  DeleteUserProvider({
    required dynamic username,
  }) : this._internal(
          (ref) => deleteUser(
            ref as DeleteUserRef,
            username: username,
          ),
          from: deleteUserProvider,
          name: r'deleteUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteUserHash,
          dependencies: DeleteUserFamily._dependencies,
          allTransitiveDependencies:
              DeleteUserFamily._allTransitiveDependencies,
          username: username,
        );

  DeleteUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final dynamic username;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteUserProvider._internal(
        (ref) => create(ref as DeleteUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteUserProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;
}

class _DeleteUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteUserRef {
  _DeleteUserProviderElement(super.provider);

  @override
  dynamic get username => (origin as DeleteUserProvider).username;
}

String _$changePasswordHash() => r'e3c912f32b6e848c25ae4389fbb2001d122a8438';

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
@ProviderFor(changePassword)
const changePasswordProvider = ChangePasswordFamily();

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
class ChangePasswordFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  const ChangePasswordFamily();

  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  ChangePasswordProvider call({
    required dynamic username,
    required dynamic password,
  }) {
    return ChangePasswordProvider(
      username: username,
      password: password,
    );
  }

  @override
  ChangePasswordProvider getProviderOverride(
    covariant ChangePasswordProvider provider,
  ) {
    return call(
      username: provider.username,
      password: provider.password,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'changePasswordProvider';
}

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
class ChangePasswordProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  ChangePasswordProvider({
    required dynamic username,
    required dynamic password,
  }) : this._internal(
          (ref) => changePassword(
            ref as ChangePasswordRef,
            username: username,
            password: password,
          ),
          from: changePasswordProvider,
          name: r'changePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changePasswordHash,
          dependencies: ChangePasswordFamily._dependencies,
          allTransitiveDependencies:
              ChangePasswordFamily._allTransitiveDependencies,
          username: username,
          password: password,
        );

  ChangePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
    required this.password,
  }) : super.internal();

  final dynamic username;
  final dynamic password;

  @override
  Override overrideWith(
    FutureOr<Response> Function(ChangePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangePasswordProvider._internal(
        (ref) => create(ref as ChangePasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _ChangePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider &&
        other.username == username &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChangePasswordRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `username` of this provider.
  dynamic get username;

  /// The parameter `password` of this provider.
  dynamic get password;
}

class _ChangePasswordProviderElement
    extends AutoDisposeFutureProviderElement<Response> with ChangePasswordRef {
  _ChangePasswordProviderElement(super.provider);

  @override
  dynamic get username => (origin as ChangePasswordProvider).username;
  @override
  dynamic get password => (origin as ChangePasswordProvider).password;
}

String _$getBookmarksHash() => r'34258daeb9a97441680fae2404218a55a799825c';

/// http://your-server/rest/getBookmarks Since 1.9.0
/// Returns all bookmarks for this user. A bookmark is a position within a certain media file.
/// Returns a <subsonic-response> element with a nested <bookmarks> element on success. Example.
///
/// Copied from [getBookmarks].
@ProviderFor(getBookmarks)
final getBookmarksProvider = AutoDisposeFutureProvider<Response>.internal(
  getBookmarks,
  name: r'getBookmarksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetBookmarksRef = AutoDisposeFutureProviderRef<Response>;
String _$createBookmarkHash() => r'38f7804cebb738299c5effb6aec16262820923d1';

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
@ProviderFor(createBookmark)
const createBookmarkProvider = CreateBookmarkFamily();

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
class CreateBookmarkFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  const CreateBookmarkFamily();

  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  CreateBookmarkProvider call({
    required dynamic id,
    required dynamic position,
    dynamic comment,
  }) {
    return CreateBookmarkProvider(
      id: id,
      position: position,
      comment: comment,
    );
  }

  @override
  CreateBookmarkProvider getProviderOverride(
    covariant CreateBookmarkProvider provider,
  ) {
    return call(
      id: provider.id,
      position: provider.position,
      comment: provider.comment,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createBookmarkProvider';
}

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
class CreateBookmarkProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  CreateBookmarkProvider({
    required dynamic id,
    required dynamic position,
    dynamic comment,
  }) : this._internal(
          (ref) => createBookmark(
            ref as CreateBookmarkRef,
            id: id,
            position: position,
            comment: comment,
          ),
          from: createBookmarkProvider,
          name: r'createBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createBookmarkHash,
          dependencies: CreateBookmarkFamily._dependencies,
          allTransitiveDependencies:
              CreateBookmarkFamily._allTransitiveDependencies,
          id: id,
          position: position,
          comment: comment,
        );

  CreateBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.position,
    required this.comment,
  }) : super.internal();

  final dynamic id;
  final dynamic position;
  final dynamic comment;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateBookmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateBookmarkProvider._internal(
        (ref) => create(ref as CreateBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        position: position,
        comment: comment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateBookmarkProvider &&
        other.id == id &&
        other.position == position &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, position.hashCode);
    hash = _SystemHash.combine(hash, comment.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateBookmarkRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `position` of this provider.
  dynamic get position;

  /// The parameter `comment` of this provider.
  dynamic get comment;
}

class _CreateBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateBookmarkRef {
  _CreateBookmarkProviderElement(super.provider);

  @override
  dynamic get id => (origin as CreateBookmarkProvider).id;
  @override
  dynamic get position => (origin as CreateBookmarkProvider).position;
  @override
  dynamic get comment => (origin as CreateBookmarkProvider).comment;
}

String _$deleteBookmarkHash() => r'687e6fa9db5e0715112119fed02baa7365c9ab0e';

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
@ProviderFor(deleteBookmark)
const deleteBookmarkProvider = DeleteBookmarkFamily();

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
class DeleteBookmarkFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  const DeleteBookmarkFamily();

  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  DeleteBookmarkProvider call({
    required dynamic id,
  }) {
    return DeleteBookmarkProvider(
      id: id,
    );
  }

  @override
  DeleteBookmarkProvider getProviderOverride(
    covariant DeleteBookmarkProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteBookmarkProvider';
}

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
class DeleteBookmarkProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  DeleteBookmarkProvider({
    required dynamic id,
  }) : this._internal(
          (ref) => deleteBookmark(
            ref as DeleteBookmarkRef,
            id: id,
          ),
          from: deleteBookmarkProvider,
          name: r'deleteBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteBookmarkHash,
          dependencies: DeleteBookmarkFamily._dependencies,
          allTransitiveDependencies:
              DeleteBookmarkFamily._allTransitiveDependencies,
          id: id,
        );

  DeleteBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final dynamic id;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteBookmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteBookmarkProvider._internal(
        (ref) => create(ref as DeleteBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteBookmarkProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteBookmarkRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;
}

class _DeleteBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteBookmarkRef {
  _DeleteBookmarkProviderElement(super.provider);

  @override
  dynamic get id => (origin as DeleteBookmarkProvider).id;
}

String _$getPlayQueueHash() => r'517758616e9313fe3240a34e2519e1415ca486fb';

/// http://your-server/rest/getPlayQueue Since 1.12.0
/// Returns the state of the play queue for this user (as set by savePlayQueue). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns a <subsonic-response> element with a nested <playQueue> element on success, or an empty <subsonic-response> if no play queue has been saved. Example.
///
/// Copied from [getPlayQueue].
@ProviderFor(getPlayQueue)
final getPlayQueueProvider = AutoDisposeFutureProvider<Response>.internal(
  getPlayQueue,
  name: r'getPlayQueueProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPlayQueueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetPlayQueueRef = AutoDisposeFutureProviderRef<Response>;
String _$savePlayQueueHash() => r'c1feff6779cc1021a2dbe0d7e1254b09d4e405f2';

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
@ProviderFor(savePlayQueue)
const savePlayQueueProvider = SavePlayQueueFamily();

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
class SavePlayQueueFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  const SavePlayQueueFamily();

  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  SavePlayQueueProvider call({
    required dynamic id,
    dynamic current,
    dynamic position,
  }) {
    return SavePlayQueueProvider(
      id: id,
      current: current,
      position: position,
    );
  }

  @override
  SavePlayQueueProvider getProviderOverride(
    covariant SavePlayQueueProvider provider,
  ) {
    return call(
      id: provider.id,
      current: provider.current,
      position: provider.position,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'savePlayQueueProvider';
}

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
class SavePlayQueueProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  SavePlayQueueProvider({
    required dynamic id,
    dynamic current,
    dynamic position,
  }) : this._internal(
          (ref) => savePlayQueue(
            ref as SavePlayQueueRef,
            id: id,
            current: current,
            position: position,
          ),
          from: savePlayQueueProvider,
          name: r'savePlayQueueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$savePlayQueueHash,
          dependencies: SavePlayQueueFamily._dependencies,
          allTransitiveDependencies:
              SavePlayQueueFamily._allTransitiveDependencies,
          id: id,
          current: current,
          position: position,
        );

  SavePlayQueueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.current,
    required this.position,
  }) : super.internal();

  final dynamic id;
  final dynamic current;
  final dynamic position;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SavePlayQueueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SavePlayQueueProvider._internal(
        (ref) => create(ref as SavePlayQueueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        current: current,
        position: position,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SavePlayQueueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SavePlayQueueProvider &&
        other.id == id &&
        other.current == current &&
        other.position == position;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, current.hashCode);
    hash = _SystemHash.combine(hash, position.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SavePlayQueueRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `id` of this provider.
  dynamic get id;

  /// The parameter `current` of this provider.
  dynamic get current;

  /// The parameter `position` of this provider.
  dynamic get position;
}

class _SavePlayQueueProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SavePlayQueueRef {
  _SavePlayQueueProviderElement(super.provider);

  @override
  dynamic get id => (origin as SavePlayQueueProvider).id;
  @override
  dynamic get current => (origin as SavePlayQueueProvider).current;
  @override
  dynamic get position => (origin as SavePlayQueueProvider).position;
}

String _$getScanStatusHash() => r'4bda265f08e0e5369518bb6700ebadf1df43c7c6';

/// http://your-server/rest/getScanStatus Since 1.15.0
/// Returns the current status for media library scanning. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
///
/// Copied from [getScanStatus].
@ProviderFor(getScanStatus)
final getScanStatusProvider = AutoDisposeFutureProvider<Response>.internal(
  getScanStatus,
  name: r'getScanStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getScanStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetScanStatusRef = AutoDisposeFutureProviderRef<Response>;
String _$startScanHash() => r'96dff17a670eab108b78e8333bb184df54e0c13d';

/// http://your-server/rest/startScan Since 1.15.0
/// Initiates a rescan of the media libraries. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
///
/// Copied from [startScan].
@ProviderFor(startScan)
final startScanProvider = AutoDisposeFutureProvider<Response>.internal(
  startScan,
  name: r'startScanProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$startScanHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StartScanRef = AutoDisposeFutureProviderRef<Response>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
