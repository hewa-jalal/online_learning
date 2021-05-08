import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/chat/presentation/bloc/cubit/attachment_cubit.dart';
import 'package:online_learning/features/chat/presentation/bloc/cubit/cubit/imageuploader_cubit.dart';
import 'package:online_learning/features/chat/video/cubit/video_cubit.dart';
import 'package:online_learning/features/chat/video/video_repository.dart';
import 'package:online_learning/features/homeworks/data/datasources/homework_remote_data_source.dart';
import 'package:online_learning/features/homeworks/data/repository/homework_repository_impl.dart';
import 'package:online_learning/features/homeworks/domain/usecases/get_all_homeworks_by_course.dart';
import 'package:online_learning/features/homeworks/domain/usecases/get_homework.dart';
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
import 'package:online_learning/features/chat/video/video_chat_page.dart';

import 'package:permission_handler/permission_handler.dart';

import '../../domain/entites/user.dart';
import 'get_user_page.dart';
import 'user_home_page.dart';

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
    final _userBloc = context.read<UserAuthBloc>();
    if (state == AppLifecycleState.resumed) {
      _userBloc.add(UserAuthEvent.updateUserOnlineStatus(isOnline: true));
      _userBloc.add(UserAuthEvent.updateUserTime());
    } else {
      _userBloc.add(UserAuthEvent.updateUserOnlineStatus(isOnline: false));
      _userBloc.add(UserAuthEvent.updateUserTime());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => VideoCubit(VideoRepositoy()),
        ),
        BlocProvider(
          create: (_) => AttachmentCubit(),
        ),
        BlocProvider(
          create: (_) => HomeworkBloc(
            uploadHomework: UploadHomework(HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<CustomUploadTask>(),
              ),
            )),
            getAllHomeworksByCourse: GetAllHomeworksByCourse(
                homeworkRepository: HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<CustomUploadTask>(),
              ),
            )),
            submitHomework: SubmitHomework(HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<CustomUploadTask>(),
              ),
            )),
            getHomework: GetHomework(
                homeworkRepository: HomeworkRepositoryImpl(
              FirebaseHomeworkRemoteDataSource(
                lectureTask: sl<CustomUploadTask>(),
              ),
            )),
          ),
        ),
        BlocProvider(
          create: (_) => ImageUploaderCubit(),
        ),
        BlocProvider(
          create: (_) => sl<ChatBloc>(),
        ),
        BlocProvider(
          create: (_) => LectureBloc(
            downloadLecture: DownloadLecture(
              LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<CustomUploadTask>(), dio: Dio()),
              ),
            ),
            uploadLecture: UploadLecture(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<CustomUploadTask>()))),
            getAllLecturesByCourse: GetAllLecturesByCourse(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<CustomUploadTask>(), dio: Dio()),
              ),
            ),
            getAllLectures: GetAllLectures(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<CustomUploadTask>(), dio: Dio()),
              ),
            ),
            createCourse: CreateCourse(LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    dio: Dio(), lectureTask: sl<CustomUploadTask>()))),
            getAllCoursesByUserId: GetAllCoursesByUserId(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<CustomUploadTask>(), dio: Dio()),
              ),
            ),
            submitUser: SubmitUser(
              lecturesRepository: LecturesRepositoryImpl(
                FirebaseLecturesRemoteDataSource(
                    lectureTask: sl<CustomUploadTask>(), dio: Dio()),
              ),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProgressBloc(
            lectureTask: sl<CustomUploadTask>(),
          ),
        )
      ],
      child: ScreenUtilInit(
        builder: () => GetMaterialApp(
          theme: ThemeData.light().copyWith(
            primaryColor: Color(0xff101422),
            scaffoldBackgroundColor: Colors.blueGrey[900],
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
            //   user: UserEntity(id: '21', role: 'teacher'),
            // ),
            // body: VideoChatPage(),
            body: UserForm(),
            // body: VideoPlayerPage(),
          ),
        ),
      ),
    );
  }
}

// class AnimTest extends StatefulWidget {
//   @override
//   _AnimTestState createState() => _AnimTestState();
// }

// class _AnimTestState extends State<AnimTest>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     _animation = Tween(
//       begin: 1.0,
//       end: 0.0,
//     ).animate(_controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.forward();
//     return Scaffold(
//       body: Center(
//         child: FadeTransition(
//           opacity: _animation,
//           child: Text('Fade'),
//         ),
//       ),
//     );
//   }
// }

class NewAnimTest extends StatefulWidget {
  @override
  NewAnimTestState createState() => NewAnimTestState();
}

class NewAnimTestState extends State<NewAnimTest>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 1.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}
