import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user_model.dart';

@injectable
class UserRemoteDataSource {
  final Dio _dio;

  const UserRemoteDataSource(this._dio);

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => UserModel.fromJson(json)).toList();
      } else {
        throw AppException(
          message: 'Failed to load users',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw AppException(
        message: e.message ?? 'Network error occurred',
        statusCode: e.response?.statusCode,
      );
    } catch (e) {
      throw AppException(
        message: e.toString(),
      );
    }
  }
}