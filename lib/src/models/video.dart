import 'package:json_annotation/json_annotation.dart';

part 'video.g.dart';

/// A Pexel Video resource.
@JsonSerializable()
class Video {
  /// The id of the video.
  final int? id;

  /// The real width of the video in pixels.
  final int? width;

  /// The real height of the video in pixels.
  final int? height;

  /// The Pexels URL where the video is located.
  final String? url;

  /// URL to a screenshot of the video.
  final String? image;

  /// The duration of the video in seconds.
  final int? duration;

  /// The videographer who shot the video.
  final Videographer? user;

  /// A list of different sized versions of the video.
  @JsonKey(name: 'video_files')
  final List<VideoFile>? videoFiles;

  /// A list of preview pictures of the video.
  @JsonKey(name: 'video_pictures')
  final List<VideoPicture>? videoPictures;

  const Video({
    this.id,
    this.width,
    this.height,
    this.url,
    this.image,
    this.duration,
    this.user,
    this.videoFiles,
    this.videoPictures,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

@JsonSerializable()
class Videographer {
  /// The id of the videographer.
  final int? id;

  /// The name of the videographer.
  final String? name;

  /// The URL of the videographer's Pexels profile.
  final String? url;

  const Videographer({
    this.id,
    this.name,
    this.url,
  });

  factory Videographer.fromJson(Map<String, dynamic> json) =>
      _$VideographerFromJson(json);

  Map<String, dynamic> toJson() => _$VideographerToJson(this);
}

@JsonSerializable()
class VideoFile {
  /// The id of the video.
  final int? id;

  /// The quality of the video.
  final VideoQuality? quality;

  /// The format of the video.
  @JsonKey(name: 'file_type')
  final String? fileType;

  /// The width of the video in pixels.
  final int? width;

  /// The height of the video in pixels.
  final int? height;

  /// The number of frames per second of the video.
  final double? fps;

  /// A link to where the video is hosted.
  final String? link;

  const VideoFile({
    this.id,
    this.quality,
    this.fileType,
    this.width,
    this.height,
    this.fps,
    this.link,
  });
  factory VideoFile.fromJson(Map<String, dynamic> json) =>
      _$VideoFileFromJson(json);

  Map<String, dynamic> toJson() => _$VideoFileToJson(this);
}

@JsonSerializable()
class VideoPicture {
  /// The id of the video preview.
  final int? id;

  /// A link to the preview image.
  final String? picture;
  final int? nr;

  const VideoPicture({
    this.id,
    this.picture,
    this.nr,
  });

  factory VideoPicture.fromJson(Map<String, dynamic> json) =>
      _$VideoPictureFromJson(json);

  Map<String, dynamic> toJson() => _$VideoPictureToJson(this);
}

enum VideoQuality {
  sd,
  hd;
}

@JsonSerializable()
class SearchVideos {
  /// A list of [Video] objects.
  final List<Video>? videos;

  /// The Pexels URL for the current search query.
  final String? url;

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

  const SearchVideos({
    this.videos,
    this.url,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory SearchVideos.fromJson(Map<String, dynamic> json) =>
      _$SearchVideosFromJson(json);

  Map<String, dynamic> toJson() => _$SearchVideosToJson(this);
}

@JsonSerializable()
class PopularVideos {
  /// A list of [Video] objects.
  final List<Video>? videos;

  /// The Pexels URL for the current page.
  final String? url;

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

  const PopularVideos({
    this.videos,
    this.url,
    this.page,
    this.perPage,
    this.totalResults,
    this.prevPage,
    this.nextPage,
  });

  factory PopularVideos.fromJson(Map<String, dynamic> json) =>
      _$PopularVideosFromJson(json);

  Map<String, dynamic> toJson() => _$PopularVideosToJson(this);
}

enum VideoOrientation {
  landscape,
  portrait,
  square;
}

enum VideoSize {
  large,
  medium,
  small;
}
