
import 'package:dartz/dartz.dart';
import 'package:find_apps/core/error/failures.dart';
import 'package:find_apps/core/usecases/usecase.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';
import 'package:find_apps/features/application_scan/domain/repositories/app_repository.dart';

class GetAppList extends UseCase<List<App>,NoParams> {
  final AppRepository repository;
  GetAppList(this.repository);

  @override
  Future<Either<Failure, List<App>>> call(NoParams params) async{
    // TODO: implement call
    throw await repository.getAppList();
  }

}