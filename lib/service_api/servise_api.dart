import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import '../error/failures.dart';
import '../models/find_exam_by_id_model/find_exam_by_id_model.dart';
import '../models/home_model/home_model.dart';
import '../models/study_model/study_model.dart';
import 'end_points.dart';

class ServiceApi {
  final Dio dio;

  ServiceApi(this.dio);

  Future<Either<Failure, HomeModel>> getHomeInfo() async {
    try {
      final response = await dio.get(
        EndPoints.homeUrl,
        options: Options(
          headers: {
            'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2VsbWF6b25lLnRvcGJ1c2luZXNzLmlvL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzExMzY0MzM1LCJleHAiOjE3NDI5MDAzMzUsIm5iZiI6MTcxMTM2NDMzNSwianRpIjoiVERTd2IxcVdSS0wwTmhjUyIsInN1YiI6IjYwMzgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.-9PrZqpwdG2RIbl7JuDYTeqiBLWpI_-2v1CGhSJJ36Y'
          },
        ),
      );
      return Right(HomeModel.fromJson(response.data));
    } on DioError catch (e) {
      // Handle Dio specific errors
      return Left(ServerFailure());
    } catch (e) {
      // Handle generic errors
      return Left(ServerFailure());
    }
  }
  Future<Either<Failure, StudyModel>> getStudyData() async {
    try {
      final response = await dio.get(
        EndPoints.studyUrl,
        options: Options(
          headers: {
            'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2VsbWF6b25lLnRvcGJ1c2luZXNzLmlvL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzExMzY0MzM1LCJleHAiOjE3NDI5MDAzMzUsIm5iZiI6MTcxMTM2NDMzNSwianRpIjoiVERTd2IxcVdSS0wwTmhjUyIsInN1YiI6IjYwMzgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.-9PrZqpwdG2RIbl7JuDYTeqiBLWpI_-2v1CGhSJJ36Y'
          },
        ),
      );
      return Right(StudyModel.fromJson(response.data));
    } on DioError catch (e) {
      // Handle Dio specific errors
      return Left(ServerFailure());
    } catch (e) {
      // Handle generic errors
      return Left(ServerFailure());
    }
  }
  Future<Either<Failure, FinalExamByIdModel>> getFinalExamById(int id) async {
    try {
      final response = await dio.get(
        '${EndPoints.finalExamById}/$id', // Append the id to the endpoint URL
        options: Options(
          headers: {
            'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2VsbWF6b25lLnRvcGJ1c2luZXNzLmlvL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzExMzY0MzM1LCJleHAiOjE3NDI5MDAzMzUsIm5iZiI6MTcxMTM2NDMzNSwianRpIjoiVERTd2IxcVdSS0wwTmhjUyIsInN1YiI6IjYwMzgiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.-9PrZqpwdG2RIbl7JuDYTeqiBLWpI_-2v1CGhSJJ36Y'
          },
        ),
      );
      return Right(FinalExamByIdModel.fromJson(response.data));
    } on DioError catch (e) {
      // Handle Dio specific errors
      return Left(ServerFailure());
    } catch (e) {
      // Handle generic errors
      return Left(ServerFailure());
    }
  }

}
