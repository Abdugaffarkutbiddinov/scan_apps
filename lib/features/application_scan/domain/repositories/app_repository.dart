
import 'package:dartz/dartz.dart';
import 'package:find_apps/core/error/failures.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';

abstract class AppRepository {
  Future<Either<Failure, List<App>>> getAppList();
  Future<Either<Failure, App>> getAppDetails();
}