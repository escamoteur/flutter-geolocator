part of geolocator;

/// Represents different options to configure the quality and frequency
/// of location updates.
class LocationOptions {
  const LocationOptions(
      {this.accuracy = LocationAccuracy.best,
      this.distanceFilter = 0,
      this.forceAndroidLocationManager = false,
      this.timeInterval = 0});

  /// Defines the desired accuracy that should be used to determine the location data.
  ///
  /// The default value for this field is [LocationAccuracy.best].
  final LocationAccuracy accuracy;

  /// The minimum distance (measured in meters) a device must move horizontally before an update event is generated.
  ///
  /// Supply 0 when you want to be notified of all movements. The default is 0.
  final int distanceFilter;

  /// Forces the plugin to use the [LocationManager] on Android to acquire position fixes.
  ///
  /// On platforms other then Android this parameter is ignored.
  final bool forceAndroidLocationManager;

  /// The desired interval for active location updates, in milliseconds (Android only).
  ///
  /// On iOS this value is ignored since position updates based on time intervals are not supported.
  final int timeInterval;
}
