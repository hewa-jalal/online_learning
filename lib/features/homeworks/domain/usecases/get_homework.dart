import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../entities/homework_submit_entity.dart';
import '../repository/homework_repository.dart';
import 'submit_homework.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class GetHomework extends UseCase<HomeworkSubmitEntity, SubmitParams> {
  final HomeworkRepository? homeworkRepository;

  GetHomework({required this.homeworkRepository});
  @override
  Future<Either<Failure, HomeworkSubmitEntity>> call(SubmitParams params) {
    return homeworkRepository!.getHomework(
      courseTitle: params.courseTitle,
      homeworkTitle: params.homeworkTitle,
    );
  }
}
