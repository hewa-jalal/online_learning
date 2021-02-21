// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'features/chat/presentation/bloc/chat_bloc.dart';
import 'features/chat/data/datasources/chat_remote_data_source.dart';
import 'features/chat/domain/repositories/chat_repository.dart';
import 'features/chat/data/repositories/chat_repository_impl.dart';
import 'core/firebase_injectable_module.dart';
import 'features/chat/domain/usecases/send_message.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<ChatRemoteDataSource>(() => FireStoreChatRemoteDataSource());
  gh.lazySingleton<ChatRepository>(
      () => ChatRepositoryImpl(remoteDataSource: get<ChatRemoteDataSource>()));
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<SendMessage>(
      () => SendMessage(chatRepository: get<ChatRepository>()));
  gh.factory<ChatBloc>(() => ChatBloc(sendMessage: get<SendMessage>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
