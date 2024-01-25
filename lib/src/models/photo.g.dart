// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
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

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
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
    };

PhotoSrc _$PhotoSrcFromJson(Map<String, dynamic> json) => PhotoSrc(
      original: json['original'] as String?,
      large: json['large'] as String?,
      large2x: json['large2x'] as String?,
      medium: json['medium'] as String?,
      small: json['small'] as String?,
      portrait: json['portrait'] as String?,
      landscape: json['landscape'] as String?,
      tiny: json['tiny'] as String?,
    );

Map<String, dynamic> _$PhotoSrcToJson(PhotoSrc instance) => <String, dynamic>{
      'original': instance.original,
      'large': instance.large,
      'large2x': instance.large2x,
      'medium': instance.medium,
      'small': instance.small,
      'portrait': instance.portrait,
      'landscape': instance.landscape,
      'tiny': instance.tiny,
    };

SearchPhotos _$SearchPhotosFromJson(Map<String, dynamic> json) => SearchPhotos(
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$SearchPhotosToJson(SearchPhotos instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };

CuratedPhotos _$CuratedPhotosFromJson(Map<String, dynamic> json) =>
    CuratedPhotos(
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$CuratedPhotosToJson(CuratedPhotos instance) =>
    <String, dynamic>{
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };
