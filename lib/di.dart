import 'package:get/get.dart';
import 'package:match_mamker/shared/services/storage_services.dart';

import 'shared/services/services.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}
