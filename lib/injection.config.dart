// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:dio/dio.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:online_learning/core/firebase_injectable_module.dart' as _i40;
import 'package:online_learning/core/lecture_task.dart' as _i6;
import 'package:online_learning/features/chat/data/datasources/chat_remote_data_source.dart'
    as _i5;
import 'package:online_learning/features/chat/data/repositories/chat_repository_impl.dart'
    as _i7;
import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart'
    as _i4;
import 'package:online_learning/features/chat/domain/usecases/get_all_messages.dart'
    as _i19;
import 'package:online_learning/features/chat/domain/usecases/send_message.dart'
    as _i32;
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart'
    as _i3;
import 'package:online_learning/features/homeworks/data/datasources/homework_remote_data_source.dart'
    as _i24;
import 'package:online_learning/features/homeworks/data/repository/homework_repository_impl.dart'
    as _i25;
import 'package:online_learning/features/homeworks/domain/repository/homework_repository.dart'
    as _i16;
import 'package:online_learning/features/homeworks/domain/usecases/get_all_homeworks_by_course.dart'
    as _i15;
import 'package:online_learning/features/homeworks/domain/usecases/get_homework.dart'
    as _i22;
import 'package:online_learning/features/homeworks/domain/usecases/submit_homework.dart'
    as _i33;
import 'package:online_learning/features/homeworks/domain/usecases/upload_homework.dart'
    as _i35;
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart'
    as _i29;
import 'package:online_learning/features/lectures/data/repository/lectures_repository_impl.dart'
    as _i30;
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart'
    as _i9;
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart'
    as _i8;
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart'
    as _i11;
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart'
    as _i14;
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart'
    as _i17;
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart'
    as _i18;
import 'package:online_learning/features/lectures/domain/usecases/submit_user.dart'
    as _i28;
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart'
    as _i27;
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart'
    as _i26;
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart'
    as _i31;
import 'package:online_learning/features/user/data/datasources/user_remote_data_source.dart'
    as _i37;
import 'package:online_learning/features/user/data/repositories/user_repository_impl.dart'
    as _i38;
import 'package:online_learning/features/user/domain/repositories/user_repository.dart'
    as _i21;
import 'package:online_learning/features/user/domain/usecase/get_user.dart'
    as _i23;
import 'package:online_learning/features/user/domain/usecase/get_users.dart'
    as _i20;
import 'package:online_learning/features/user/domain/usecase/update_user_time.dart'
    as _i34;
import 'package:online_learning/features/user/domain/usecase/user_online_status.dart'
    as _i36;
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart'
    as _i39;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInjectableModule = _$DioInjectableModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.factory<_i3.ChatBloc>(
        () => _i3.ChatBloc(chatRepository: gh<_i4.ChatRepository>()));
    gh.lazySingleton<_i5.ChatRemoteDataSource>(
        () => _i5.FireStoreChatRemoteDataSource(gh<_i6.CustomUploadTask>()));
    gh.lazySingleton<_i4.ChatRepository>(() => _i7.ChatRepositoryImpl(
        remoteDataSource: gh<_i5.ChatRemoteDataSource>()));
    gh.lazySingleton<_i8.CreateCourse>(
        () => _i8.CreateCourse(gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i6.CustomUploadTask>(() => _i6.CustomUploadTask());
    gh.lazySingleton<_i10.Dio>(() => dioInjectableModule.dio);
    gh.lazySingleton<_i11.DownloadLecture>(
        () => _i11.DownloadLecture(gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i12.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i13.FirebaseStorage>(
        () => firebaseInjectableModule.firebaseStorage);
    gh.lazySingleton<_i14.GetAllCoursesByUserDept>(() =>
        _i14.GetAllCoursesByUserDept(
            lecturesRepository: gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i15.GetAllHomeworksByCourse>(() =>
        _i15.GetAllHomeworksByCourse(
            homeworkRepository: gh<_i16.HomeworkRepository>()));
    gh.lazySingleton<_i17.GetAllLectures>(() =>
        _i17.GetAllLectures(lecturesRepository: gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i18.GetAllLecturesByCourse>(() =>
        _i18.GetAllLecturesByCourse(
            lecturesRepository: gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i19.GetAllMessages>(
        () => _i19.GetAllMessages(chatRepository: gh<_i4.ChatRepository>()));
    gh.lazySingleton<_i20.GetAllUsers>(
        () => _i20.GetAllUsers(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i22.GetHomework>(() =>
        _i22.GetHomework(homeworkRepository: gh<_i16.HomeworkRepository>()));
    gh.lazySingleton<_i23.GetUser>(
        () => _i23.GetUser(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i24.HomeWorkRemoteDataSource>(() =>
        _i24.FirebaseHomeworkRemoteDataSource(
            lectureTask: gh<_i6.CustomUploadTask>()));
    gh.lazySingleton<_i16.HomeworkRepository>(() => _i25.HomeworkRepositoryImpl(
        gh<_i24.FirebaseHomeworkRemoteDataSource>()));
    gh.factory<_i26.LectureBloc>(() => _i26.LectureBloc(
          downloadLecture: gh<_i11.DownloadLecture>(),
          uploadLecture: gh<_i27.UploadLecture>(),
          getAllLectures: gh<_i17.GetAllLectures>(),
          getAllLecturesByCourse: gh<_i18.GetAllLecturesByCourse>(),
          getAllCoursesByUserDept: gh<_i14.GetAllCoursesByUserDept>(),
          createCourse: gh<_i8.CreateCourse>(),
          submitUser: gh<_i28.SubmitUser>(),
        ));
    gh.lazySingleton<_i29.LecturesRemoteDataSource>(
        () => _i29.FirebaseLecturesRemoteDataSource(
              lectureTask: gh<_i6.CustomUploadTask>(),
              dio: gh<_i10.Dio>(),
            ));
    gh.lazySingleton<_i9.LecturesRepository>(() => _i30.LecturesRepositoryImpl(
        gh<_i29.FirebaseLecturesRemoteDataSource>()));
    gh.factory<_i31.ProgressBloc>(
        () => _i31.ProgressBloc(lectureTask: gh<_i6.CustomUploadTask>()));
    gh.lazySingleton<_i32.SendMessage>(
        () => _i32.SendMessage(chatRepository: gh<_i4.ChatRepository>()));
    gh.lazySingleton<_i33.SubmitHomework>(
        () => _i33.SubmitHomework(gh<_i16.HomeworkRepository>()));
    gh.lazySingleton<_i28.SubmitUser>(() =>
        _i28.SubmitUser(lecturesRepository: gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i34.UpdateUserTime>(
        () => _i34.UpdateUserTime(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i35.UploadHomework>(
        () => _i35.UploadHomework(gh<_i16.HomeworkRepository>()));
    gh.lazySingleton<_i27.UploadLecture>(
        () => _i27.UploadLecture(gh<_i9.LecturesRepository>()));
    gh.lazySingleton<_i36.UserOnlineStatus>(
        () => _i36.UserOnlineStatus(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i37.UserRemoteDataSource>(
        () => _i37.FirebaseUserRemoteDataSource());
    gh.lazySingleton<_i21.UserRepository>(
        () => _i38.UserRepositoryImpl(gh<_i37.UserRemoteDataSource>()));
    gh.factory<_i39.UserAuthBloc>(() => _i39.UserAuthBloc(
          getUser: gh<_i23.GetUser>(),
          getAllUsers: gh<_i20.GetAllUsers>(),
          updateUserTime: gh<_i34.UpdateUserTime>(),
          userOnlineStatus: gh<_i36.UserOnlineStatus>(),
          userRepository: gh<_i21.UserRepository>(),
        ));
    return this;
  }
}

class _$DioInjectableModule extends _i40.DioInjectableModule {}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
