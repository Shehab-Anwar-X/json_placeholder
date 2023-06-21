import 'package:equatable/equatable.dart';

class UserAddressGeo extends Equatable {
  final String lat;
  final String lng;

  const UserAddressGeo({
    required this.lat,
    required this.lng,
  });

  @override
  List<Object?> get props {
    return [
      lat,
      lng,
    ];
  }
}
