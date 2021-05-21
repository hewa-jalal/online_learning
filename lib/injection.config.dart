// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:dio/dio.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i40;
import 'core/lecture_task.dart' as _i6;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i5;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i7;
import 'features/chat/domain/repositories/chat_repository.dart' as _i4;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i19;
import 'features/chat/domain/usecases/send_message.dart' as _i32;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i3;
import 'features/homeworks/data/datasources/homework_remote_data_source.dart'
    as _i24;
import 'features/homeworks/data/repository/homework_repository_impl.dart'
    as _i25;
import 'features/homeworks/domain/repository/homework_repository.dart' as _i16;
import 'features/homeworks/domain/usecases/get_all_homeworks_by_course.dart'
    as _i15;
import 'features/homeworks/domain/usecases/get_homework.dart' as _i22;
import 'features/homeworks/domain/usecases/submit_homework.dart' as _i33;
import 'features/homeworks/domain/usecases/upload_homework.dart' as _i35;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i29;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i30;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i9;
import 'features/lectures/domain/usecases/create_course.dart' as _i8;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i11;
import 'features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i14;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i17;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i18;
import 'features/lectures/domain/usecases/submit_user.dart' as _i28;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i27;
import 'features/lectures/presentation/bloc/lecture_bloc.dart' as _i26;
import 'features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart'
    as _i31;
import 'features/user/data/datasources/user_remote_data_source.dart' as _i38;
import 'features/user/data/repositories/user_repository_impl.dart' as _i39;
import 'features/user/domain/repositories/user_repository.dart' as _i21;
import 'features/user/domain/usecase/get_user.dart' as _i23;
import 'features/user/domain/usecase/get_users.dart' as _i20;
import 'features/user/domain/usecase/update_user_time.dart' as _i34;
import 'features/user/domain/usecase/user_online_status.dart' as _i37;
import 'features/user/presentation/bloc/user_auth_bloc.dart'
    as _i36; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.ChatBloc>(
      () => _i3.ChatBloc(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i5.ChatRemoteDataSource>(
      () => _i5.FireStoreChatRemoteDataSource(get<_i6.CustomUploadTask>()));
  gh.lazySingleton<_i4.ChatRepository>(() => _i7.ChatRepositoryImpl(
      remoteDataSource: get<_i5.ChatRemoteDataSource>()));
  gh.lazySingleton<_i8.CreateCourse>(
      () => _i8.CreateCourse(get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i6.CustomUploadTask>(() => _i6.CustomUploadTask());
  gh.lazySingleton<_i10.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i11.DownloadLecture>(
      () => _i11.DownloadLecture(get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i12.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i13.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i14.GetAllCoursesByUserId>(() => _i14.GetAllCoursesByUserId(
      lecturesRepository: get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i15.GetAllHomeworksByCourse>(() =>
      _i15.GetAllHomeworksByCourse(
          homeworkRepository: get<_i16.HomeworkRepository>()));
  gh.lazySingleton<_i17.GetAllLectures>(() =>
      _i17.GetAllLectures(lecturesRepository: get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i18.GetAllLecturesByCourse>(() =>
      _i18.GetAllLecturesByCourse(
          lecturesRepository: get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i19.GetAllMessages>(
      () => _i19.GetAllMessages(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i20.GetAllUsers>(
      () => _i20.GetAllUsers(get<_i21.UserRepository>()));
  gh.lazySingleton<_i22.GetHomework>(() =>
      _i22.GetHomework(homeworkRepository: get<_i16.HomeworkRepository>()));
  gh.lazySingleton<_i23.GetUser>(
      () => _i23.GetUser(get<_i21.UserRepository>()));
  gh.lazySingleton<_i24.HomeWorkRemoteDataSource>(() =>
      _i24.FirebaseHomeworkRemoteDataSource(
          lectureTask: get<_i6.CustomUploadTask>()));
  gh.lazySingleton<_i16.HomeworkRepository>(() => _i25.HomeworkRepositoryImpl(
      get<_i24.FirebaseHomeworkRemoteDataSource>()));
  gh.factory<_i26.LectureBloc>(() => _i26.LectureBloc(
      downloadLecture: get<_i11.DownloadLecture>(),
      uploadLecture: get<_i27.UploadLecture>(),
      getAllLectures: get<_i17.GetAllLectures>(),
      getAllLecturesByCourse: get<_i18.GetAllLecturesByCourse>(),
      getAllCoursesByUserId: get<_i14.GetAllCoursesByUserId>(),
      createCourse: get<_i8.CreateCourse>(),
      submitUser: get<_i28.SubmitUser>()));
  gh.lazySingleton<_i29.LecturesRemoteDataSource>(() =>
      _i29.FirebaseLecturesRemoteDataSource(
          lectureTask: get<_i6.CustomUploadTask>(), dio: get<_i10.Dio>()));
  gh.lazySingleton<_i9.LecturesRepository>(() => _i30.LecturesRepositoryImpl(
      get<_i29.FirebaseLecturesRemoteDataSource>()));
  gh.factory<_i31.ProgressBloc>(
      () => _i31.ProgressBloc(lectureTask: get<_i6.CustomUploadTask>()));
  gh.lazySingleton<_i32.SendMessage>(
      () => _i32.SendMessage(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i33.SubmitHomework>(
      () => _i33.SubmitHomework(get<_i16.HomeworkRepository>()));
  gh.lazySingleton<_i28.SubmitUser>(
      () => _i28.SubmitUser(lecturesRepository: get<_i9.LecturesRepository>()));
  gh.lazySingleton<_i34.UpdateUserTime>(
      () => _i34.UpdateUserTime(get<_i21.UserRepository>()));
  gh.lazySingleton<_i35.UploadHomework>(
      () => _i35.UploadHomework(get<_i16.HomeworkRepository>()));
  gh.lazySingleton<_i27.UploadLecture>(
      () => _i27.UploadLecture(get<_i9.LecturesRepository>()));
  gh.factory<_i36.UserAuthBloc>(() => _i36.UserAuthBloc(
      getUser: get<_i23.GetUser>(),
      getAllUsers: get<_i20.GetAllUsers>(),
      updateUserTime: get<_i34.UpdateUserTime>(),
      userOnlineStatus: get<_i37.UserOnlineStatus>()));
  gh.lazySingleton<_i37.UserOnlineStatus>(
      () => _i37.UserOnlineStatus(get<_i21.UserRepository>()));
  gh.lazySingleton<_i38.UserRemoteDataSource>(
      () => _i38.FirebaseUserRemoteDataSource());
  gh.lazySingleton<_i21.UserRepository>(
      () => _i39.UserRepositoryImpl(get<_i38.UserRemoteDataSource>()));
  return get;
}

class _$DioInjectableModule extends _i40.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
