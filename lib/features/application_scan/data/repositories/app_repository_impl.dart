import 'package:dartz/dartz.dart';
import 'package:find_apps/core/error/failures.dart';
import 'package:find_apps/features/application_scan/data/datasources/app_local_data_source.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';
import 'package:find_apps/features/application_scan/domain/repositories/app_repository.dart';

class AppRepositoryImpl implements AppRepository {
  final AppLocalDataSource localDataSource;
  AppRepositoryImpl({required this.localDataSource});
  //  TODO Try to find out what errors might be thrown
  @override
  Future<Either<Failure, App>> getAppDetails(String name) async{
    final localAppDetails = await localDataSource.getAppDetails(name);
    return Right(localAppDetails);
  }

  @override
  Future<Either<Failure, List<App>>> getAppList() async{
    final localAppList = await localDataSource.getAppList();
    return Right(localAppList);
  }

}