import 'package:get_it/get_it.dart';
import 'package:olx_project/data/repository_impl.dart';

import 'data/remote_datasource.dart';
import 'domain/repository.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerFactory<Repository>(() => RepositoryImpls(datasource: sl()));
  sl.registerFactory<RemoteDatasource>(() => RemoteDatasourceImpl());
}