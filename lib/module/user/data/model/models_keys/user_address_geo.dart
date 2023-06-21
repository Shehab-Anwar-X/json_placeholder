abstract class UserAddressGeoKeys {
  const UserAddressGeoKeys();

  static const lat = 'lat';
  static const lng = 'lng';

  static List<String> toList() {
    return <String>[
      lat,
      lng,
    ];
  }
}
