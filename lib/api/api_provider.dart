import 'package:get/get.dart';
import 'package:match_mamker/models/requests/login_request.dart';
import 'package:match_mamker/models/requests/register_request.dart';

import 'base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> getUsers(String path) {
    return get(path);
  }
}
