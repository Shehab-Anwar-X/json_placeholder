import 'dart:async';
import '../../../domain/entities/user_creation_data.dart';

abstract class UserBaseDataSource {
  const UserBaseDataSource();
Future<int>   create({required UserCreationData creationData,});
Future<void>   delete({required int id,});
Future<List<Map<String , dynamic>>>   list({required int limit, required int offset,});
Future<Map<String , dynamic>?>   read({required int id,});
Future<void>   update({required int id, required UserCreationData newData,});
}
