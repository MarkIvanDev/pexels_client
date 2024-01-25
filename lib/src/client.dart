import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_endpoints.dart';
import 'models/models.dart';

/// A client that provides access to the Pexels API.
class PexelsClient {
  final http.Client _client;
  final Map<String, String> _headers;
  final Uri _baseUrl = Uri.parse(ApiEndpoints.base);

  /// Create a new instance of [PexelsClient].
  PexelsClient({required String apiKey, http.Client? client})
      : _client = client ?? http.Client(),
        _headers = {'Authorization': apiKey};

  Quota? _quota;

  /// Search photos in Pexels for any topic that you like.
  Future<SearchPhotos?> searchPhotos({
    required String query,
    PhotoOrientation? orientation,
    PhotoSize? size,
    String? color,
    String? locale,
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.searchPhotos,
      deserializer: SearchPhotos.fromJson,
      query: {
        'query': query,
        'orientation': orientation?.name,
        'size': size?.name,
        'color': color,
        'locale': locale,
        'page': page,
        'per_page': perPage,
      },
    );
  }

  /// Get real-time photos curated by the Pexels team.
  Future<CuratedPhotos?> curatedPhotos({
    int? page,
    int? perPage,
  }) async {
    return await _get(ApiEndpoints.curatedPhotos,
        deserializer: CuratedPhotos.fromJson,
        query: {
          'page': page,
          'per_page': perPage,
        });
  }

  /// Retrieve a specific [Photo] using its id.
  Future<Photo?> getPhoto({required int id}) async {
    return await _get(ApiEndpoints.getPhoto(id), deserializer: Photo.fromJson);
  }

  /// Search videos in Pexels for any topic that you like.
  Future<SearchVideos?> searchVideos({
    required String query,
    VideoOrientation? orientation,
    VideoSize? size,
    String? locale,
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.searchVideos,
      deserializer: SearchVideos.fromJson,
      query: {
        'query': query,
        'orientation': orientation?.name,
        'size': size?.name,
        'locale': locale,
        'page': page,
        'per_page': perPage,
      },
    );
  }

  /// Get the current popular Pexels videos.
  Future<PopularVideos?> popularVideos({
    int? minWidth,
    int? minHeight,
    int? minDuration,
    int? maxDuration,
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.popularVideos,
      deserializer: PopularVideos.fromJson,
      query: {
        'min_width': minWidth,
        'min_height': minHeight,
        'min_duration': minDuration,
        'max_duration': maxDuration,
        'page': page,
        'per_page': perPage,
      },
    );
  }

  /// Retrieve a specific [Video] using its id.
  Future<Video?> getVideo({required int id}) async {
    return await _get(ApiEndpoints.getVideo(id), deserializer: Video.fromJson);
  }

  /// Get all featured collections on Pexels.
  Future<FeaturedCollections?> featuredCollections({
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.featuredCollections,
      deserializer: FeaturedCollections.fromJson,
      query: {
        'page': page,
        'per_page': perPage,
      },
    );
  }

  /// Get all of your collections.
  Future<MyCollections?> myCollections({
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.myCollections,
      deserializer: MyCollections.fromJson,
      query: {
        'page': page,
        'per_page': perPage,
      },
    );
  }

  /// Get all the media (photos and videos) within a single collection.
  Future<CollectionMedia?> collectionMedia({
    required String id,
    CollectionMediaType? type,
    int? page,
    int? perPage,
  }) async {
    return await _get(
      ApiEndpoints.getCollection(id),
      deserializer: CollectionMedia.fromJson,
      query: {
        'type': type?.name,
        'page': page,
        'per_page': perPage,
      },
    );
  }

  Future<T?> _get<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> body) deserializer,
    Map<String, Object?> query = const <String, Object?>{},
  }) async {
    try {
      final url =
          _baseUrl.resolve(endpoint).replace(queryParameters: _toQuery(query));
      final response = await _client.get(url, headers: _headers);
      if ((response.statusCode ~/ 100) == 2) {
        _quota = Quota(
          limit: int.tryParse(response.headers['x-ratelimit-limit'] ?? ''),
          remaining:
              int.tryParse(response.headers['x-ratelimit-remaining'] ?? ''),
          reset: int.tryParse(response.headers['x-ratelimit-reset'] ?? ''),
          date: DateTime.now().toUtc(),
        );

        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return deserializer(json);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Quota? get quota => _quota;
}

Map<String, String> _toQuery(Map<String, Object?> params) {
  return (Map.of(params)..removeWhere((key, value) => value == null))
      .map((key, value) => MapEntry(key, value.toString()));
}
