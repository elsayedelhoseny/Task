import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_jadara/Core/api/dio_consumer.dart';
import 'package:task_jadara/Feature/Auth/presentation/manger/cubit/user_cubit.dart';
import 'package:task_jadara/Feature/Cart/presentation/manger/cubit/cart_cubit.dart';
import 'package:task_jadara/Feature/Home/presentation/manger/cubit/home_cubit.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/home_body.dart';
import 'package:task_jadara/Feature/Menu/data/cubit/logout_cubit.dart';
import 'package:task_jadara/Feature/Splash/splash.dart';


void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//     CacheHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
        BlocProvider(create: (context) => UserCubit(DioConsumer(dio: Dio())),),       
        BlocProvider(create: (context) => HomeCubit()..getProductsData()..getBannersData()..getCategorysData()),
        BlocProvider(create: (context) => CartCubit()..getCartData(),),
        BlocProvider(create: (context) => LogoutCubit()..logoutRequest(),)
    ],
    child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.almaraiTextTheme().copyWith(
              titleLarge: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white),
              bodyMedium: const TextStyle(color: Colors.white),
            ),
          ),
          home: const HomeVeiwBody(),
        ),
        
  );
}
