// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
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

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'image': instance.image,
      'duration': instance.duration,
      'user': instance.user?.toJson(),
      'video_files': instance.videoFiles?.map((e) => e.toJson()).toList(),
      'video_pictures': instance.videoPictures?.map((e) => e.toJson()).toList(),
    };

Videographer _$VideographerFromJson(Map<String, dynamic> json) => Videographer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$VideographerToJson(Videographer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };

VideoFile _$VideoFileFromJson(Map<String, dynamic> json) => VideoFile(
      id: json['id'] as int?,
      quality: $enumDecodeNullable(_$VideoQualityEnumMap, json['quality']),
      fileType: json['file_type'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      fps: (json['fps'] as num?)?.toDouble(),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$VideoFileToJson(VideoFile instance) => <String, dynamic>{
      'id': instance.id,
      'quality': _$VideoQualityEnumMap[instance.quality],
      'file_type': instance.fileType,
      'width': instance.width,
      'height': instance.height,
      'fps': instance.fps,
      'link': instance.link,
    };

const _$VideoQualityEnumMap = {
  VideoQuality.sd: 'sd',
  VideoQuality.hd: 'hd',
  VideoQuality.uhd: 'uhd',
};

VideoPicture _$VideoPictureFromJson(Map<String, dynamic> json) => VideoPicture(
      id: json['id'] as int?,
      picture: json['picture'] as String?,
      nr: json['nr'] as int?,
    );

Map<String, dynamic> _$VideoPictureToJson(VideoPicture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'nr': instance.nr,
    };

SearchVideos _$SearchVideosFromJson(Map<String, dynamic> json) => SearchVideos(
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$SearchVideosToJson(SearchVideos instance) =>
    <String, dynamic>{
      'videos': instance.videos?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };

PopularVideos _$PopularVideosFromJson(Map<String, dynamic> json) =>
    PopularVideos(
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      totalResults: json['total_results'] as int?,
      prevPage: json['prev_page'] as String?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$PopularVideosToJson(PopularVideos instance) =>
    <String, dynamic>{
      'videos': instance.videos?.map((e) => e.toJson()).toList(),
      'url': instance.url,
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'prev_page': instance.prevPage,
      'next_page': instance.nextPage,
    };
