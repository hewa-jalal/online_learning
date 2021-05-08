// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i40;
import 'core/lecture_task.dart' as _i3;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i21;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i23;
import 'features/chat/domain/repositories/chat_repository.dart' as _i22;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i30;
import 'features/chat/domain/usecases/send_message.dart' as _i35;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i38;
import 'features/homeworks/data/datasources/homework_remote_data_source.dart'
    as _i7;
import 'features/homeworks/data/repository/homework_repository_impl.dart'
    as _i9;
import 'features/homeworks/domain/repository/homework_repository.dart' as _i8;
import 'features/homeworks/domain/usecases/get_all_homeworks_by_course.dart'
    as _i27;
import 'features/homeworks/domain/usecases/get_homework.dart' as _i32;
import 'features/homeworks/domain/usecases/submit_homework.dart' as _i14;
import 'features/homeworks/domain/usecases/upload_homework.dart' as _i16;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i10;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i12;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i11;
import 'features/lectures/domain/usecases/create_course.dart' as _i24;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i25;
import 'features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i26;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i28;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i29;
import 'features/lectures/domain/usecases/submit_user.dart' as _i15;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i17;
import 'features/lectures/presentation/bloc/lecture_bloc.dart' as _i34;
import 'features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart'
    as _i13;
import 'features/user/data/datasources/user_remote_data_source.dart' as _i18;
import 'features/user/data/repositories/user_repository_impl.dart' as _i20;
import 'features/user/domain/repositories/user_repository.dart' as _i19;
import 'features/user/domain/usecase/get_user.dart' as _i33;
import 'features/user/domain/usecase/get_users.dart' as _i31;
import 'features/user/domain/usecase/update_user_time.dart' as _i36;
import 'features/user/domain/usecase/user_online_status.dart' as _i37;
import 'features/user/presentation/bloc/user_auth_bloc.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.CustomUploadTask>(() => _i3.CustomUploadTask());
  gh.lazySingleton<_i4.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.HomeWorkRemoteDataSource>(() =>
      _i7.FirebaseHomeworkRemoteDataSource(
          lectureTask: get<_i3.CustomUploadTask>()));
  gh.lazySingleton<_i8.HomeworkRepository>(() =>
      _i9.HomeworkRepositoryImpl(get<_i7.FirebaseHomeworkRemoteDataSource>()));
  gh.lazySingleton<_i10.LecturesRemoteDataSource>(() =>
      _i10.FirebaseLecturesRemoteDataSource(
          lectureTask: get<_i3.CustomUploadTask>(), dio: get<_i4.Dio>()));
  gh.lazySingleton<_i11.LecturesRepository>(() => _i12.LecturesRepositoryImpl(
      get<_i10.FirebaseLecturesRemoteDataSource>()));
  gh.factory<_i13.ProgressBloc>(
      () => _i13.ProgressBloc(lectureTask: get<_i3.CustomUploadTask>()));
  gh.lazySingleton<_i14.SubmitHomework>(
      () => _i14.SubmitHomework(get<_i8.HomeworkRepository>()));
  gh.lazySingleton<_i15.SubmitUser>(() =>
      _i15.SubmitUser(lecturesRepository: get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i16.UploadHomework>(
      () => _i16.UploadHomework(get<_i8.HomeworkRepository>()));
  gh.lazySingleton<_i17.UploadLecture>(
      () => _i17.UploadLecture(get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i18.UserRemoteDataSource>(
      () => _i18.FirebaseUserRemoteDataSource());
  gh.lazySingleton<_i19.UserRepository>(
      () => _i20.UserRepositoryImpl(get<_i18.UserRemoteDataSource>()));
  gh.lazySingleton<_i21.ChatRemoteDataSource>(
      () => _i21.FireStoreChatRemoteDataSource(get<_i3.CustomUploadTask>()));
  gh.lazySingleton<_i22.ChatRepository>(() => _i23.ChatRepositoryImpl(
      remoteDataSource: get<_i21.ChatRemoteDataSource>()));
  gh.lazySingleton<_i24.CreateCourse>(
      () => _i24.CreateCourse(get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i25.DownloadLecture>(
      () => _i25.DownloadLecture(get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i26.GetAllCoursesByUserId>(() => _i26.GetAllCoursesByUserId(
      lecturesRepository: get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i27.GetAllHomeworksByCourse>(() =>
      _i27.GetAllHomeworksByCourse(
          homeworkRepository: get<_i8.HomeworkRepository>()));
  gh.lazySingleton<_i28.GetAllLectures>(() =>
      _i28.GetAllLectures(lecturesRepository: get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i29.GetAllLecturesByCourse>(() =>
      _i29.GetAllLecturesByCourse(
          lecturesRepository: get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i30.GetAllMessages>(
      () => _i30.GetAllMessages(chatRepository: get<_i22.ChatRepository>()));
  gh.lazySingleton<_i31.GetAllUsers>(
      () => _i31.GetAllUsers(get<_i19.UserRepository>()));
  gh.lazySingleton<_i32.GetHomework>(() =>
      _i32.GetHomework(homeworkRepository: get<_i8.HomeworkRepository>()));
  gh.lazySingleton<_i33.GetUser>(
      () => _i33.GetUser(get<_i19.UserRepository>()));
  gh.factory<_i34.LectureBloc>(() => _i34.LectureBloc(
      downloadLecture: get<_i25.DownloadLecture>(),
      uploadLecture: get<_i17.UploadLecture>(),
      getAllLectures: get<_i28.GetAllLectures>(),
      getAllLecturesByCourse: get<_i29.GetAllLecturesByCourse>(),
      getAllCoursesByUserId: get<_i26.GetAllCoursesByUserId>(),
      createCourse: get<_i24.CreateCourse>(),
      submitUser: get<_i15.SubmitUser>()));
  gh.lazySingleton<_i35.SendMessage>(
      () => _i35.SendMessage(chatRepository: get<_i22.ChatRepository>()));
  gh.lazySingleton<_i36.UpdateUserTime>(
      () => _i36.UpdateUserTime(get<_i19.UserRepository>()));
  gh.lazySingleton<_i37.UserOnlineStatus>(
      () => _i37.UserOnlineStatus(get<_i19.UserRepository>()));
  gh.factory<_i38.ChatBloc>(
      () => _i38.ChatBloc(chatRepository: get<_i22.ChatRepository>()));
  gh.factory<_i39.UserAuthBloc>(() => _i39.UserAuthBloc(
      getUser: get<_i33.GetUser>(),
      getAllUsers: get<_i31.GetAllUsers>(),
      updateUserTime: get<_i36.UpdateUserTime>(),
      userOnlineStatus: get<_i37.UserOnlineStatus>()));
  return get;
}

class _$DioInjectableModule extends _i40.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
