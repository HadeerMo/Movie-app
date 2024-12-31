import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

abstract class UseCase<Type, Param> {
  //Generic use case
  Future<Either<Failure, Type>> call([Param param]); //optional
}

class NoParam {
  //use it or use void
}
