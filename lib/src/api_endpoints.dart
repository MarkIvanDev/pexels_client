abstract class ApiEndpoints {
  static const String base = 'https://api.pexels.com/';

  static const String searchPhotos = 'v1/search';
  static const String curatedPhotos = 'v1/curated';
  static String getPhoto(int id) => 'v1/photos/$id';

  static const String searchVideos = 'videos/search';
  static const String popularVideos = 'videos/popular';
  static String getVideo(int id) => 'videos/videos/$id';

  static const String featuredCollections = 'v1/collections/featured';
  static const String myCollections = 'v1/collections';
  static String getCollection(String id) => 'v1/collections/$id';
}
