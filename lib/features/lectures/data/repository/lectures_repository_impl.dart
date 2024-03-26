import 'package:injectable/injectable.dart';
import '../datasources/lectures_remote_data_source.dart';
import '../../domain/entities/lecture_entity.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/lectures_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/data/models/user_model.dart';

@LazySingleton(as: LecturesRepository)
class LecturesRepositoryImpl extends LecturesRepository {
  final FirebaseLecturesRemoteDataSource? remoteDataSource;

  LecturesRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, Unit>> downloadLecture({
    required String fileUrl,
    required String courseTitle,
    required String lectureTitle,
  }) async {
    try {
      final lecture = await remoteDataSource!.downloadLecture(
        fileUrl: fileUrl,
        courseTitle: courseTitle,
        lectureTitle: lectureTitle,
      );
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(LectureDownloadFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> uploadLecture({
    required String? title,
    required String? fileName,
    required String fileUrl,
    required UserModel user,
    required String courseTitle,
    String? description,
  }) async {
    try {
      final lecture = await remoteDataSource!.uploadLecture(
        filePath: fileUrl,
        user: user,
        lectureTitle: title,
        description: description,
        courseTitle: courseTitle,
        fileName: fileName!,
      );
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(LectureUploadFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLectures() async {
    try {
      final lectures = await remoteDataSource!.getAllLectures();
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLecturesByCourse({
    required String courseTitle,
  }) async {
    try {
      final lectures = await remoteDataSource!
          .getAllLecturesByCourse(courseTitle: courseTitle);
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> createCourse({
    String? courseTitle,
    String? userDept,
  }) async {
    try {
      remoteDataSource!.createCourse(
        courseTitle: courseTitle,
        userDept: userDept!,
      );
      return right(unit);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllCoursesByUserDept({
    required String userDept,
  }) async {
    try {
      final courseIds =
          await remoteDataSource!.getAllCoursesByUserDept(userDept: userDept);
      return right(courseIds);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> submitUser({
    required String userId,
    required String courseTitle,
    required String lectureTitle,
  }) async {
    try {
      final submittedUser = await remoteDataSource!.submitUser(
        userId: userId,
        courseTitle: courseTitle,
        lectureTitle: lectureTitle,
      );
      return right(submittedUser);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }
}
