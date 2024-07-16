import 'package:olx_project/domain/adversiting.dart';

abstract class Repository {
    bool postAdvertising(IAdvertising advertising); // Note: I used to use Either(Right/Left)
}