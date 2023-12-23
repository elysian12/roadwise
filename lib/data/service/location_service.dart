import 'package:geolocator/geolocator.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:roadwise/data/models/failure.dart';
import 'package:roadwise/data/typedefs/typedefs.dart';

class LocationService {
  FutureResult<LocationPermission> checkLocationPermission() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      return Success(permission);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  FutureResult<Position> determinePosition() async {
    try {
      final result = await checkLocationPermission();

      return result.when((permission) async {
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            return Error(Failure(message: 'Location permissions are denied'));
          }
        }

        return Success(await Geolocator.getCurrentPosition());
      }, (error) {
        return Error(Failure(message: error.message));
      });
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }
}
