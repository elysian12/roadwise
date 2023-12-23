import 'package:multiple_result/multiple_result.dart';
import 'package:roadwise/data/models/failure.dart';

typedef FutureResult<T> = Future<Result<T, Failure>>;
typedef FutureResultVoid = FutureResult<void>;
typedef FutureVoid = Future<void>;
