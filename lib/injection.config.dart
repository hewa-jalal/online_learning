// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i21;
import 'core/lecture_task.dart' as _i10;
import 'features/chat/data/datasources/chat_remote_data_source.dart' as _i3;
import 'features/chat/data/repositories/chat_repository_impl.dart' as _i5;
import 'features/chat/domain/repositories/chat_repository.dart' as _i4;
import 'features/chat/domain/usecases/get_all_messages.dart' as _i9;
import 'features/chat/domain/usecases/send_message.dart' as _i14;
import 'features/chat/presentation/bloc/chat_bloc.dart' as _i16;
import 'features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i13;
import 'features/lectures/data/repository/lectures_repository_impl.dart'
    as _i12;
import 'features/lectures/domain/repository/lectures_repository.dart' as _i11;
import 'features/lectures/domain/usecases/download_lecture.dart' as _i17;
import 'features/lectures/domain/usecases/get_all_lectures.dart' as _i18;
import 'features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i19;
import 'features/lectures/domain/usecases/upload_lecture.dart' as _i15;
import 'features/lectures/presentation/bloc/lecture_bloc.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.LectureTask>(() => _i10.LectureTask());
  gh.lazySingleton<_i11.LecturesRepository>(() => _i12.LecturesRepositoryImpl(
      get<_i13.FirebaseLecturesRemoteDataSource>()));
  gh.lazySingleton<_i14.SendMessage>(
      () => _i14.SendMessage(chatRepository: get<_i4.ChatRepository>()));
  gh.lazySingleton<_i15.UploadLecture>(
      () => _i15.UploadLecture(get<_i11.LecturesRepository>()));
  gh.factory<_i16.ChatBloc>(() => _i16.ChatBloc(
      sendMessage: get<_i14.SendMessage>(),
      getAllMessages: get<_i9.GetAllMessages>()));
  gh.lazySingleton<_i17.DownloadLecture>(
      () => _i17.DownloadLecture(get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i18.GetAllLectures>(() =>
      _i18.GetAllLectures(lecturesRepository: get<_i11.LecturesRepository>()));
  gh.lazySingleton<_i19.GetAllLecturesByUserId>(() =>
      _i19.GetAllLecturesByUserId(
          lecturesRepository: get<_i11.LecturesRepository>()));
  gh.factory<_i20.LectureBloc>(() => _i20.LectureBloc(
      downloadLecture: get<_i17.DownloadLecture>(),
      uploadLecture: get<_i15.UploadLecture>(),
      getAllLectures: get<_i18.GetAllLectures>(),
      getAllLecturesByUserId: get<_i19.GetAllLecturesByUserId>()));
  return get;
}

class _$DioInjectableModule extends _i21.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
