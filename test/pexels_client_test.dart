import 'package:pexels_client/pexels_client.dart';
import 'package:test/test.dart';

import 'env.dart';

void main() {
  final client = PexelsClient(apiKey: Env.apiKey);

  group('Photos', () {
    test('searchPhotos', () async {
      expect(await client.searchPhotos(query: 'nature'), isNotNull);
    });

    test('curatedPhotos', () async {
      expect(await client.curatedPhotos(), isNotNull);
    });

    test('getPhoto', () async {
      final photo = await client.getPhoto(id: 139324);
      expect(photo, isNotNull);
    });
  });

  group('Videos', () {
    test('searchVideos', () async {
      expect(await client.searchVideos(query: 'nature'), isNotNull);
    });

    test('popularVideos', () async {
      expect(await client.popularVideos(), isNotNull);
    });

    test('getVideo', () async {
      expect(await client.getVideo(id: 2499611), isNotNull);
    });
  });

  group('Collections', () {
    test('featuredCollections', () async {
      expect(await client.featuredCollections(), isNotNull);
    });

    test('myCollections', () async {
      expect(await client.myCollections(), isNotNull);
    });

    test('collectionMedia', () async {
      final collectionMedia = await client.collectionMedia(id: '8xntbhr');
      expect(collectionMedia, isNotNull);
    });
  });
}
