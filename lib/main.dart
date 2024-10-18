import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/core/auth_repo.dart/auth_repo.dart';
import 'package:flux_store/core/repository/delete/delete_db.dart';
import 'package:flux_store/core/repository/get/get_db.dart';
import 'package:flux_store/core/repository/post/post_db.dart';
import 'package:flux_store/core/repository/update/update_db.dart';
import 'package:flux_store/firebase_options.dart';
import 'package:flux_store/screen/home/cubit/home_cubit.dart';
import 'package:flux_store/screen/home/home_page.dart';
import 'package:flux_store/screen/onboarding/get_started_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final authInstance = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  runApp(
    DevicePreview(
        enabled: kReleaseMode,
        builder: (context) {
          return MyApp(
            deleteDb: DeleteDbImpl(firestore),
            getDb: GetDbImpl(firestore),
            postDb: PostDbImpl(firestore),
            updateDb: UpdateDbImpl(firestore),
            authRepo: AuthRepoImpl(authInstance),
          );
        }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.getDb,
    required this.postDb,
    required this.deleteDb,
    required this.updateDb,
    required this.authRepo,
  });

  final GetDbImpl getDb;
  final PostDbImpl postDb;
  final DeleteDbImpl deleteDb;
  final UpdateDbImpl updateDb;
  final AuthRepoImpl authRepo;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GetDbImpl>.value(value: getDb),
        RepositoryProvider<UpdateDbImpl>.value(value: updateDb),
        RepositoryProvider<DeleteDbImpl>.value(value: deleteDb),
        RepositoryProvider<PostDbImpl>.value(value: postDb),
        RepositoryProvider<AuthRepoImpl>.value(value: authRepo),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
