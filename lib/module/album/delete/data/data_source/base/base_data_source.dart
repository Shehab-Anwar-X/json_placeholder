import 'dart:async';
import '../../../domain/entities/album_creation_data.dart';

abstract class AlbumBaseDataSource {
  const AlbumBaseDataSource();
Future<int>   create({required AlbumCreationData creationData,});
Future<void>   delete({required int id,});
Future<List<Map<String , dynamic>>>   list({required int limit, required int offset, int? userId,});
Future<Map<String , dynamic>?>   read({required int id,});
Future<void>   update({required int id, required AlbumCreationData newData,});
}