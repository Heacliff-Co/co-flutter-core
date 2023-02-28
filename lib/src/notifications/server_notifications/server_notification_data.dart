import 'package:co_flutter_core/core.dart';

class ServerNotificationData {
  final SeverNotificationChangedType type;
  final ListResponse<ServerNotificationModel> data;

  ServerNotificationData({
    required this.type,
    required this.data,
  });
}
