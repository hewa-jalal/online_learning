import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/homeworks/data/datasources/homework_remote_data_source.dart';
import 'package:online_learning/features/homeworks/data/repository/homework_repository_impl.dart';
import 'package:online_learning/features/homeworks/domain/usecases/get_all_homeworks_by_course.dart';
import 'package:online_learning/features/homeworks/domain/usecases/submit_homework.dart';
import 'package:online_learning/features/homeworks/domain/usecases/upload_homework.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/data/repository/lectures_repository_impl.dart';
import 'package:online_learning/features/lectures/domain/usecases/create_course.dart';
import 'package:online_learning/features/lectures/domain/usecases/download_lecture.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_courses_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures.dart';
import 'package:online_learning/features/lectures/domain/usecases/get_all_lectures_by_user_id.dart';
import 'package:online_learning/features/lectures/domain/usecases/submit_user.dart';
import 'package:online_learning/features/lectures/domain/usecases/upload_lecture.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';

import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:online_learning/injection.dart';

import 'package:permission_handler/permission_handler.dart';

import '../../domain/entites/user.dart';
import 'get_user_page.dart';
import 'user_home_page.dart';
import 'package:online_learning/video_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    getPermission();
    WidgetsBinding.instance.addObserver(this);
  }

  void getPermission() async {
    print('getPermission');
    if (await Permission.storage.request().isGranted) {
      print('isGranted');
    }
    await Permission.storage.request();
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
          create: (_) => HomeworkBloc(
            uploadHomework: UploadHomework(HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<LectureTask>(),
              ),
            )),
            getAllHomeworksByCourse: GetAllHomeworksByCourse(
                homeworkRepository: HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<LectureTask>(),
              ),
            )),
            submitHomework: SubmitHomework(HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<LectureTask>(),
              ),
            )),
          ),
        ),
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
            submitUser: SubmitUser(
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
          ),
        )
      ],
      child: ScreenUtilInit(
        builder: () => GetMaterialApp(
          theme: ThemeData.light().copyWith(
            textTheme: TextTheme(
              bodyText1: TextStyle(),
              bodyText2: TextStyle(),
            ).apply(
              bodyColor: Colors.white,
              displayColor: Colors.blue,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Color(0xff5F36DA);
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Color(0xff5F36DA),
            ),
            primaryColor: Color(0xff101422),
            scaffoldBackgroundColor: Colors.blueGrey[900],
            inputDecorationTheme: InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.4, color: Colors.white),
              ),
              labelStyle: TextStyle(color: Color(0xffA5A6AA)),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            // body: UserHomePage(
            //   user: UserEntity(id: '12'),
            // ),
            body: VideoPage(),
          ),
        ),
      ),
    );
  }
}
