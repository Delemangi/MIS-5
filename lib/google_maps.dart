import 'package:url_launcher/url_launcher.dart';

class GoogleMaps {
  GoogleMaps();

  static void openGoogleMaps(double latitude, double longitude) async {
    final double destinationLatitude = latitude;
    final double destinationLongitude = longitude;

    final String googleMapsUrl =
        'https://www.google.com/maps/dir/?api=1&destination=$destinationLatitude,$destinationLongitude';
    final Uri uri = Uri.parse(googleMapsUrl);

    await launchUrl(uri);
  }
}
