import 'package:injector/injector.dart';
import 'package:yes_no_app/data/remote/yes_no_services.dart';
import 'package:yes_no_app/datasource/remote/yes_no_remote_data_source.dart';
import 'package:yes_no_app/datasource/remote/yes_no_remote_data_source_impl.dart';

import '../domain/yes_no_repo_impl.dart';
import '../domain/yes_no_repository.dart';

class InjectAll {
  static void injectAll() {
    injectServices();
    injectDataSource();
    injectRepository();
  }

  static void injectServices() {
    Injector.appInstance
        .registerSingleton<YesNoServices>(() => YesNoServices());
  }

  static void injectDataSource() {
    Injector.appInstance.registerSingleton<YesNoRemoteDataSource>(
      () => YesNoRemoteDataSourceImpl(
        Injector.appInstance.get<YesNoServices>(),
      ),
    );
  }

  static void injectRepository() {
    Injector.appInstance.registerSingleton<YesNoRepository>(
      () => YesNoRepoImpl(
        Injector.appInstance.get<YesNoRemoteDataSource>(),
      ),
    );
  }
}
