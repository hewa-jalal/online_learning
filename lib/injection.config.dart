// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i27;
import 'core/lecture_task.dart' as _i13;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i3;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i5;
import 'features/chat/domain/repositories/chat_repository.dart' as _i4;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i9;
import 'features/chat/domain/usecases/send_message.dart' as _i17;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i20;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i14;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i16;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i15;
import 'features/lectures/domain/usecases/create_course.dart' as _i21;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i22;
import 'features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i23;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i24;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i25;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i19;
import 'features/lectures/presentation/bloc/lecture_bloc.dart' as _i26;
import 'features/user/domain/repositories/user_repository.dart' as _i11;
import 'features/user/domain/usecase/get_user.dart' as _i12;
import 'features/user/domain/usecase/get_users.dart' as _i10;
import 'features/user/domain/usecase/update_user_time.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.GetAllUsers>(
      () => _i10.GetAllUsers(get<_i11.UserRepository>()));
  gh.lazySingleton<_i12.GetUser>(
      () => _i12.GetUser(get<_i11.UserRepository>()));
  gh.lazySingleton<_i13.LectureTask>(() => _i13.LectureTask());
  gh.lazySingleton<_i14.LecturesRemoteDataSource>(() =>
      _i14.FirebaseLecturesRemoteDataSource(
          lectureTask: get<_i13.LectureTask>(), dio: get<_i6.Dio>()));
  gh.lazySingleton<_i15.LecturesRepository>(() => _i16.LecturesRepositoryImpl(
      get<_i14.FirebaseLecturesRemoteDataSource>()));
  gh.lazySingleton<_i17.SendMessage>(
      () => _i17.SendMessage(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i18.UpdateUserTime>(
      () => _i18.UpdateUserTime(get<_i11.UserRepository>()));
  gh.lazySingleton<_i19.UploadLecture>(
      () => _i19.UploadLecture(get<_i15.LecturesRepository>()));
  gh.factory<_i20.ChatBloc>(() => _i20.ChatBloc(
      sendMessage: get<_i17.SendMessage>(),
      getAllMessages: get<_i9.GetAllMessages>()));
  gh.lazySingleton<_i21.CreateCourse>(
      () => _i21.CreateCourse(get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i22.DownloadLecture>(
      () => _i22.DownloadLecture(get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i23.GetAllCoursesByUserId>(() => _i23.GetAllCoursesByUserId(
      lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i24.GetAllLectures>(() =>
      _i24.GetAllLectures(lecturesRepository: get<_i15.LecturesRepository>()));
  gh.lazySingleton<_i25.GetAllLecturesByUserId>(() =>
      _i25.GetAllLecturesByUserId(
          lecturesRepository: get<_i15.LecturesRepository>()));
  gh.factory<_i26.LectureBloc>(() => _i26.LectureBloc(
      downloadLecture: get<_i22.DownloadLecture>(),
      uploadLecture: get<_i19.UploadLecture>(),
      getAllLectures: get<_i24.GetAllLectures>(),
      getAllLecturesByUserId: get<_i25.GetAllLecturesByUserId>(),
      getAllCoursesByUserId: get<_i23.GetAllCoursesByUserId>(),
      createCourse: get<_i21.CreateCourse>()));
  return get;
}

class _$DioInjectableModule extends _i27.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
