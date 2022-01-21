import 'package:dartz/dartz.dart';
import 'package:find_apps/core/error/failures.dart';
import 'package:find_apps/core/usecases/usecase.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';
import 'package:find_apps/features/application_scan/domain/repositories/app_repository.dart';

class GetAppDetails extends UseCase<App,NoParams> {
  AppRepository repository;
  GetAppDetails(this.repository);
  @override
  Future<Either<Failure, App>> call(NoParams params) {
    // TODO: implement call
    throw repository.getAppDetails();
  }

}