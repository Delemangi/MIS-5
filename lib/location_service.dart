import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<void> checkLocationPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      if (kDebugMode) {
        print("Location permission denied");
      }
    } else if (permission == LocationPermission.deniedForever) {
      if (kDebugMode) {
        print("Location permission denied forever");
      }
    } else {
      if (kDebugMode) {
        print("Location permission granted");
      }
    }
  }

  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition();
  }
}
