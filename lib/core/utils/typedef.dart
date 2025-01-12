import 'package:awesome_weather/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ResponseFuture<T> = Future<Either<Failure, T>>;
