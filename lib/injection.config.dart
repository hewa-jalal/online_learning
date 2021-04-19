// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i40;
import 'core/lecture_task.dart' as _i13;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i3;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i5;
import 'features/chat/domain/repositories/chat_repository.dart' as _i4;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i9;
import 'features/chat/domain/usecases/send_message.dart' as _i18;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i26;
import 'features/homeworks/data/datasources/homework_remote_data_source.dart'
    as _i12;
import 'features/homeworks/data/repository/homework_repository_impl.dart'
    as _i11;
import 'features/homeworks/domain/repository/homework_repository.dart' as _i10;
import 'features/homeworks/domain/usecases/get_all_homeworks_by_course.dart'
    as _i30;
import 'features/homeworks/domain/usecases/get_homework.dart' as _i34;
import 'features/homeworks/domain/usecases/submit_homework.dart' as _i19;
import 'features/homeworks/domain/usecases/upload_homework.dart' as _i21;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i14;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i16;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i15;
import 'features/lectures/domain/usecases/create_course.dart' as _i27;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i28;
import 'features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i29;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i31;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i32;
import 'features/lectures/domain/usecases/submit_user.dart' as _i20;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i22;
import 'features/lectures/presentation/bloc/lecture_bloc.dart' as _i36;
import 'features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart'
    as _i17;
import 'features/user/data/datasources/user_remote_data_source.dart' as _i23;
import 'features/user/data/repositories/user_repository_impl.dart' as _i25;
import 'features/user/domain/repositories/user_repository.dart' as _i24;
import 'features/user/domain/usecase/get_user.dart' as _i35;
import 'features/user/domain/usecase/get_users.dart' as _i33;
import 'features/user/domain/usecase/update_user_time.dart' as _i37;
import 'features/user/domain/usecase/user_online_status.dart' as _i38;
import 'features/user/presentation/bloc/user_auth_bloc.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectableModule = _$DioInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.ChatRemoteDataSource>(
      () => _i3.FireStoreChatRemoteDataSource());
  gh.lazySingleton<_i4.ChatRepository>(() => _i5.ChatRepositoryImpl(
      remoteDataSource: get<_i3.ChatRemoteDataSource>()));
  gh.lazySingleton<_i6.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i9.GetAllMessages>(
      () => _i9.GetAllMessages(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i10.HomeworkRepository>(() => _i11.HomeworkRepositoryImpl(
      get<_i12.FirebaseHomeworkRemoteDataSource>()));
  gh.lazySingleton<_i13.LectureTask>(() => _i13.LectureTask());
  gh.lazySingleton<_i14.LecturesRemoteDataSource>(() =>
      _i14.FirebaseLecturesRemoteDataSource(
          lectureTask: get<_i13.LectureTask>(), dio: get<_i6.Dio>()));
  gh.lazySingleton<_i15.LecturesRepository>(() => _i16.LecturesRepositoryImpl(
      get<_i14.FirebaseLecturesRemoteDataSource>()));
  gh.factory<_i17.ProgressBloc>(
      () => _i17.ProgressBloc(lectureTask: get<_i13.LectureTask>()));
  gh.lazySingleton<_i18.SendMessage>(
      () => _i18.SendMessage(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i19.SubmitHomework>(
      () => _i19.SubmitHomework(get<_i10.HomeworkRepository>()));
  gh.lazySingleton<_i20.SubmitUser>(() =>
      _i20.SubmitUser(lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i21.UploadHomework>(
      () => _i21.UploadHomework(get<_i10.HomeworkRepository>()));
  gh.lazySingleton<_i22.UploadLecture>(
      () => _i22.UploadLecture(get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i23.UserRemoteDataSource>(
      () => _i23.FirebaseUserRemoteDataSource());
  gh.lazySingleton<_i24.UserRepository>(
      () => _i25.UserRepositoryImpl(get<_i23.UserRemoteDataSource>()));
  gh.factory<_i26.ChatBloc>(() => _i26.ChatBloc(
      sendMessage: get<_i18.SendMessage>(),
      getAllMessages: get<_i9.GetAllMessages>()));
  gh.lazySingleton<_i27.CreateCourse>(
      () => _i27.CreateCourse(get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i28.DownloadLecture>(
      () => _i28.DownloadLecture(get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i29.GetAllCoursesByUserId>(() => _i29.GetAllCoursesByUserId(
      lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i30.GetAllHomeworksByCourse>(() =>
      _i30.GetAllHomeworksByCourse(
          homeworkRepository: get<_i10.HomeworkRepository>()));
  gh.lazySingleton<_i31.GetAllLectures>(() =>
      _i31.GetAllLectures(lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i32.GetAllLecturesByCourse>(() =>
      _i32.GetAllLecturesByCourse(
          lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i33.GetAllUsers>(
      () => _i33.GetAllUsers(get<_i24.UserRepository>()));
  gh.lazySingleton<_i34.GetHomework>(() =>
      _i34.GetHomework(homeworkRepository: get<_i10.HomeworkRepository>()));
  gh.lazySingleton<_i35.GetUser>(
      () => _i35.GetUser(get<_i24.UserRepository>()));
  gh.lazySingleton<_i12.HomeWorkRemoteDataSource>(() =>
      _i12.FirebaseHomeworkRemoteDataSource(
          lectureTask: get<_i13.LectureTask>()));
  gh.factory<_i36.LectureBloc>(() => _i36.LectureBloc(
      downloadLecture: get<_i28.DownloadLecture>(),
      uploadLecture: get<_i22.UploadLecture>(),
      getAllLectures: get<_i31.GetAllLectures>(),
      getAllLecturesByCourse: get<_i32.GetAllLecturesByCourse>(),
      getAllCoursesByUserId: get<_i29.GetAllCoursesByUserId>(),
      createCourse: get<_i27.CreateCourse>(),
      submitUser: get<_i20.SubmitUser>()));
  gh.lazySingleton<_i37.UpdateUserTime>(
      () => _i37.UpdateUserTime(get<_i24.UserRepository>()));
  gh.lazySingleton<_i38.UserOnlineStatus>(
      () => _i38.UserOnlineStatus(get<_i24.UserRepository>()));
  gh.factory<_i39.UserAuthBloc>(() => _i39.UserAuthBloc(
      getUser: get<_i35.GetUser>(),
      getAllUsers: get<_i33.GetAllUsers>(),
      updateUserTime: get<_i37.UpdateUserTime>(),
      userOnlineStatus: get<_i38.UserOnlineStatus>()));
  return get;
}

class _$DioInjectableModule extends _i40.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
