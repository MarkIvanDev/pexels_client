import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

/// A Pexel Photo resource.
@JsonSerializable()
class Photo {
  /// The id of the photo.
  final int? id;

  /// The real width of the photo in pixels.
  final int? width;

  /// The real height of the photo in pixels.
  final int? height;

  /// The Pexels URL where the photo is located.
  final String? url;

  /// The name of the photographer who took the photo.
  final String? photographer;

  /// The URL of the photographer's Pexels profile.
  @JsonKey(name: 'photographer_url')
  final String? photographerUrl;

  /// The id of the photographer.
  @JsonKey(name: 'photographer_id')
  final int? photographerId;

  /// The average color of the photo. Useful for a placeholder while the image loads.
  @JsonKey(name: 'avg_color')
  final String? avgColor;

  /// An assortment of different image sizes that can be used to display this [Photo].
  final PhotoSrc? src;

  /// Text description of the photo for use in the alt attribute.
  final String? alt;

  const Photo({
    this.id,
    this.width,
    this.height,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.avgColor,
    this.src,
    this.alt,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable()
class PhotoSrc {
  /// The image without any size changes. It will be the same as the width and height attributes.
  final String? original;

  /// The image resized to W 940px X H 650px DPR 1.
  final String? large;

  /// The image resized W 940px X H 650px DPR 2.
  final String? large2x;

  /// The image scaled proportionally so that it's new height is 350px.
  final String? medium;

  /// The image scaled proportionally so that it's new height is 130px.
  final String? small;

  /// The image cropped to W 800px X H 1200px.
  final String? portrait;

  /// The image cropped to W 1200px X H 627px.
  final String? landscape;

  /// The image cropped to W 280px X H 200px.
  final String? tiny;

  const PhotoSrc({
    this.original,
    this.large,
    this.large2x,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  factory PhotoSrc.fromJson(Map<String, dynamic> json) =>
      _$PhotoSrcFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoSrcToJson(this);
}

@JsonSerializable()
class SearchPhotos {
  /// A list of [Photo] objects.
  final List<Photo>? photos;

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

  const SearchPhotos({
    this.photos,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory SearchPhotos.fromJson(Map<String, dynamic> json) =>
      _$SearchPhotosFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPhotosToJson(this);
}

@JsonSerializable()
class CuratedPhotos {
  /// A list of [Photo] objects.
  final List<Photo>? photos;

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

  const CuratedPhotos({
    this.photos,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory CuratedPhotos.fromJson(Map<String, dynamic> json) =>
      _$CuratedPhotosFromJson(json);

  Map<String, dynamic> toJson() => _$CuratedPhotosToJson(this);
}

enum PhotoOrientation {
  landscape,
  portrait,
  square;
}

enum PhotoSize {
  large,
  medium,
  small;
}
