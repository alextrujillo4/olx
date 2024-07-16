import 'package:olx_project/data/remote_datasource.dart';
import 'package:olx_project/domain/adversiting.dart';
import 'package:olx_project/domain/repository.dart';

class RepositoryImpls implements Repository {
  final RemoteDatasource datasource;

  const RepositoryImpls({required this.datasource});

  @override
  bool postAdvertising(IAdvertising advertising) =>
      datasource.requestPostAdvertising(advertising);
}
