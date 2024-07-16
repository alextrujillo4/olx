import 'package:olx_project/domain/adversiting.dart';

abstract class RemoteDatasource {
  bool requestPostAdvertising(IAdvertising advertising);
}

class RemoteDatasourceImpl implements RemoteDatasource {
  @override
  bool requestPostAdvertising(IAdvertising advertising) {
    var body = {
      "name": advertising.name,
      "description": advertising.description,
      "price": advertising.price
    };
    print("===== MESSAGE SENT: ======");
    print(body);
    print("======================");
    return true;
  }
}
