import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:find_apps/core/error/failures.dart';
import 'package:find_apps/core/usecases/usecase.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';
import 'package:find_apps/features/application_scan/domain/repositories/app_repository.dart';

class GetAppDetails extends UseCase<App,Params> {
  AppRepository repository;
  GetAppDetails(this.repository);
  @override
  Future<Either<Failure, App>> call(Params params) {
    // TODO: implement call
    throw repository.getAppDetails(params.name);
  }

}

class Params extends Equatable {
final String name;
Params({required this.name});

@override
// TODO: implement props
List<Object?> get props => [name];
}
