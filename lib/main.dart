import 'package:book_market/core/utilis/service_Api.dart';
import 'package:book_market/features/home/data/data_source/home_local_data.dart';
import 'package:book_market/features/home/data/data_source/home_remote_data.dart';
import 'package:book_market/features/home/data/ripo/home_ripo_impl.dart';
import 'package:book_market/features/home/domain/entity/book_entity.dart';
import 'package:book_market/features/home/domain/use_case/fetchBestBooks_use_case.dart';
import 'package:book_market/features/home/domain/use_case/fetchFeatureBooks_Use_case.dart';
import 'package:book_market/features/home/presentation/manager/cubit/featch_best_book_cubit.dart';
import 'package:book_market/features/home/presentation/manager/cubit/fetch_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'constants.dart';
import 'core/utilis/App_Router.dart';
import 'core/utilis/observer_impl.dart';


void main() async{
  
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
   await Hive.openBox<BookEntity>(kFeaturedBox);
  Bloc.observer = SimpleBlocObserver();
 
  getit.registerSingleton<HomeRipoImpl>( 
            HomeRipoImpl(homeLocalData: HomeLocalDataImpl(),
              homeRemotData: HomeRemotDataImp(
          ApiService()),
            ));
  getit.registerSingleton<ApiService>( ApiService()) ;         


  
 runApp(const BookMarket());
}

final getit = GetIt.instance;
class BookMarket extends StatelessWidget {
  const BookMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return FetchFeaturedBooksCubit(FetchFeatureBooks_use_case(
           getit.get<HomeRipoImpl>(),
           )
           )..fetchFeatureBooks();
        }
        ),

          BlocProvider(create: (context){
          return FeatchBestBookCubit(FetchBestBooks_use_case(
           getit.get<HomeRipoImpl>(),
           ),
           )..fetchBestBooks();
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
