// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      private: json['private'] as bool?,
      mediaCount: json['media_count'] as int?,
      photosCount: json['photos_count'] as int?,
      videosCount: json['videos_count'] as int?,
    );

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'private': instance.private,
      'media_count': instance.mediaCount,
      'photos_count': instance.photosCount,
      'videos_count': instance.videosCount,
    };

FeaturedCollections _$FeaturedCollectionsFromJson(Map<String, dynamic> json) =>
    FeaturedCollections(
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$FeaturedCollectionsToJson(
        FeaturedCollections instance) =>
    <String, dynamic>{
      'collections': instance.collections?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };

MyCollections _$MyCollectionsFromJson(Map<String, dynamic> json) =>
    MyCollections(
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$MyCollectionsToJson(MyCollections instance) =>
    <String, dynamic>{
      'collections': instance.collections?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };

CollectionMedia _$CollectionMediaFromJson(Map<String, dynamic> json) =>
    CollectionMedia(
      id: json['id'] as String?,
      media: const CollectionItemConverter().fromJson(json['media']),
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$CollectionMediaToJson(CollectionMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media': const CollectionItemConverter().toJson(instance.media),
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };

CollectionPhotoItem _$CollectionPhotoItemFromJson(Map<String, dynamic> json) =>
    CollectionPhotoItem(
      type: json['type'] as String?,
      id: json['id'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      photographer: json['photographer'] as String?,
      photographerUrl: json['photographer_url'] as String?,
      photographerId: json['photographer_id'] as int?,
      avgColor: json['avg_color'] as String?,
      src: json['src'] == null
          ? null
          : PhotoSrc.fromJson(json['src'] as Map<String, dynamic>),
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$CollectionPhotoItemToJson(
        CollectionPhotoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
      'photographer_id': instance.photographerId,
      'avg_color': instance.avgColor,
      'src': instance.src?.toJson(),
      'alt': instance.alt,
      'type': instance.type,
    };

CollectionVideoItem _$CollectionVideoItemFromJson(Map<String, dynamic> json) =>
    CollectionVideoItem(
      type: json['type'] as String?,
      id: json['id'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      image: json['image'] as String?,
      duration: json['duration'] as int?,
      user: json['user'] == null
          ? null
          : Videographer.fromJson(json['user'] as Map<String, dynamic>),
      videoFiles: (json['video_files'] as List<dynamic>?)
          ?.map((e) => VideoFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoPictures: (json['video_pictures'] as List<dynamic>?)
          ?.map((e) => VideoPicture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionVideoItemToJson(
        CollectionVideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'image': instance.image,
      'duration': instance.duration,
      'user': instance.user?.toJson(),
      'video_files': instance.videoFiles?.map((e) => e.toJson()).toList(),
      'video_pictures': instance.videoPictures?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };
