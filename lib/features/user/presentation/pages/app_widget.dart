import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/data/repository/lectures_repository_impl.dart';
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';

import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:online_learning/injection.dart';

import 'get_user_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final userBloc = context.read<UserAuthBloc>();
    if (state == AppLifecycleState.resumed) {
      userBloc.add(UserAuthEvent.updateUserOnlineStatus(isOnline: true));
      userBloc.add(UserAuthEvent.updateUserTime());
    } else {
      userBloc.add(UserAuthEvent.updateUserOnlineStatus(isOnline: false));
      userBloc.add(UserAuthEvent.updateUserTime());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<ChatBloc>(),
        ),
        BlocProvider(
          create: (_) => LectureBloc(
            downloadLecture: DownloadLecture(
              LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            uploadLecture: UploadLecture(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<LectureTask>()))),
            getAllLecturesByCourse: GetAllLecturesByCourse(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            getAllLectures: GetAllLectures(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
            createCourse: CreateCourse(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<LectureTask>()))),
            getAllCoursesByUserId: GetAllCoursesByUserId(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<LectureTask>(), dio: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProgressBloc(
            lectureTask: sl<LectureTask>(),
            lectureBloc: context.read<LectureBloc>(),
          ),
        )
      ],
      child: ScreenUtilInit(
        builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: UserForm(),
          ),
        ),
      ),
    );
  }
}
