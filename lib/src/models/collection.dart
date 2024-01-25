import 'package:json_annotation/json_annotation.dart';

import 'photo.dart';
import 'video.dart';

part 'collection.g.dart';

/// A Pexel Collection resource.
@JsonSerializable()
class Collection {
  /// The id of the collection.
  final String? id;

  /// The name of the collection.
  final String? title;

  /// The description of the collection.
  final String? description;

  /// Whether or not the collection is marked as private.
  final bool? private;

  /// The total number of media included in this collection.
  @JsonKey(name: 'media_count')
  final int? mediaCount;

  /// The total number of photos included in this collection.
  @JsonKey(name: 'photos_count')
  final int? photosCount;

  /// The total number of videos included in this collection.
  @JsonKey(name: 'videos_count')
  final int? videosCount;

  const Collection({
    this.id,
    this.title,
    this.description,
    this.private,
    this.mediaCount,
    this.photosCount,
    this.videosCount,
  });

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

@JsonSerializable()
class FeaturedCollections {
  /// A list of [Collection] objects.
  final List<Collection>? collections;

  /// The current page number.
  final int? page;

  /// The number of results returned with each page.
  @JsonKey(name: 'per_page')
  final int? perPage;

  /// The total number of results for the request.
  @JsonKey(name: 'total_results')
  final int? totalResults;

  /// URL for the previous page of results, if applicable.
  @JsonKey(name: 'prev_page')
  final String? prevPage;

  /// URL for the next page of results, if applicable.
  @JsonKey(name: 'next_page')
  final String? nextPage;

  const FeaturedCollections({
    this.collections,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory FeaturedCollections.fromJson(Map<String, dynamic> json) =>
      _$FeaturedCollectionsFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturedCollectionsToJson(this);
}

@JsonSerializable()
class MyCollections {
  /// A list of [Collection] objects.
  final List<Collection>? collections;

  /// The current page number.
  final int? page;

  /// The number of results returned with each page.
  @JsonKey(name: 'per_page')
  final int? perPage;

  /// The total number of results for the request.
  @JsonKey(name: 'total_results')
  final int? totalResults;

  /// URL for the previous page of results, if applicable.
  @JsonKey(name: 'prev_page')
  final String? prevPage;

  /// URL for the next page of results, if applicable.
  @JsonKey(name: 'next_page')
  final String? nextPage;

  const MyCollections({
    this.collections,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory MyCollections.fromJson(Map<String, dynamic> json) =>
      _$MyCollectionsFromJson(json);

  Map<String, dynamic> toJson() => _$MyCollectionsToJson(this);
}

@JsonSerializable()
class CollectionMedia {
  /// The id of the collection you are requesting.
  final String? id;

  /// A list of media objects. Each object has an extra type attribute to indicate the type of object.
  @CollectionItemConverter()
  final List<CollectionItem>? media;

  /// The current page number.
  final int? page;

  /// The number of results returned with each page.
  @JsonKey(name: 'per_page')
  final int? perPage;

  /// The total number of results for the request.
  @JsonKey(name: 'total_results')
  final int? totalResults;

  /// URL for the previous page of results, if applicable.
  @JsonKey(name: 'prev_page')
  final String? prevPage;

  /// URL for the next page of results, if applicable.
  @JsonKey(name: 'next_page')
  final String? nextPage;

  const CollectionMedia({
    this.id,
    this.media,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory CollectionMedia.fromJson(Map<String, dynamic> json) =>
      _$CollectionMediaFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionMediaToJson(this);
}

abstract class CollectionItem {
  final String? type;

  CollectionItem({this.type});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class CollectionPhotoItem extends Photo implements CollectionItem {
  @override
  final String? type;

  CollectionPhotoItem({
    this.type,
    super.id,
    super.width,
    super.height,
    super.url,
    super.photographer,
    super.photographerUrl,
    super.photographerId,
    super.avgColor,
    super.src,
    super.alt,
  });

  factory CollectionPhotoItem.fromJson(Map<String, dynamic> json) =>
      _$CollectionPhotoItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CollectionPhotoItemToJson(this);
}

@JsonSerializable()
class CollectionVideoItem extends Video implements CollectionItem {
  @override
  final String? type;

  const CollectionVideoItem({
    this.type,
    super.id,
    super.width,
    super.height,
    super.url,
    super.image,
    super.duration,
    super.user,
    super.videoFiles,
    super.videoPictures,
  });

  factory CollectionVideoItem.fromJson(Map<String, dynamic> json) =>
      _$CollectionVideoItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CollectionVideoItemToJson(this);
}

class CollectionItemConverter
    extends JsonConverter<List<CollectionItem>?, dynamic> {
  const CollectionItemConverter();

  @override
  List<CollectionItem>? fromJson(dynamic json) {
    final items = <CollectionItem>[];
    for (var item in (json as List<dynamic>? ?? [])) {
      if (item is Map<String, dynamic>) {
        if (item['type'] == 'Photo') {
          items.add(CollectionPhotoItem.fromJson(item));
        } else if (item['type'] == 'Video') {
          items.add(CollectionVideoItem.fromJson(item));
        }
      }
    }
    return items;
  }

  @override
  dynamic toJson(List<CollectionItem>? object) {
    return object?.map((e) => e.toJson()).toList();
  }
}

enum CollectionMediaType {
  photos,
  videos;
}
