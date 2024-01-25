# pexels_client
An unofficial dart wrapper for the [Pexels API](https://www.pexels.com/api/).

## Get Started

**NOTE: You will need an API Key, which can be obtained by creating an account [here](https://www.pexels.com/join/).**

[Install](https://pub.dev/packages/pexels_client/install) the `pexels_client` package:

```yaml
dependencies:
  pexels_client: ^1.0.0
```

Then you can import it in your Dart code:

```dart
import 'package:pexels_client/pexels_client.dart';
```

## Usage

```dart
final client = PexelsClient(apiKey: '<API-KEY>');

// Photo
final searchPhotos = await client.searchPhotos(query: 'nature');
final curatedPhotos = await client.curatedPhotos();
final photo = await client.getPhoto(id: 139324);

// Videos
final searchVideos = await client.searchVideos(query: 'nature');
final popularVideos = await client.popularVideos();
final video = await client.getVideo(id: 2499611);

// Collections
final featuredCollections = await client.featuredCollections();
final myCollections = await client.myCollections();
final collectionMedia = await client.collectionMedia(id: '8xntbhr');
```

## Support
If you like my work and want to support me, buying me a coffee would be awesome! Thanks for your support!

<a href="https://www.buymeacoffee.com/markivandev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

---------
**Mark Ivan Basto** &bullet; **GitHub**
**[@MarkIvanDev](https://github.com/MarkIvanDev)**