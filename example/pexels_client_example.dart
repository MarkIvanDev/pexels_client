import 'package:pexels_client/pexels_client.dart';

Future<void> main() async {
  final client = PexelsClient(apiKey: '');

  // Photo
  final searchPhotos = await client.searchPhotos(query: 'nature');
  print(searchPhotos);

  final curatedPhotos = await client.curatedPhotos();
  print(curatedPhotos);

  final photo = await client.getPhoto(id: 139324);
  print(photo);

  // Videos
  final searchVideos = await client.searchVideos(query: 'nature');
  print(searchVideos);

  final popularVideos = await client.popularVideos();
  print(popularVideos);

  final video = await client.getVideo(id: 2499611);
  print(video);

  // Collections
  final featuredCollections = await client.featuredCollections();
  print(featuredCollections);

  final myCollections = await client.myCollections();
  print(myCollections);

  final collectionMedia = await client.collectionMedia(id: '8xntbhr');
  print(collectionMedia);
}
