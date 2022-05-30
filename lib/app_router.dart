import 'package:breaking_bad/data/models/char_model.dart';
import 'package:breaking_bad/presentation/detailes_screen/detailes_screen.dart';

import 'business_logic/cubit/char_cubit.dart';
import 'constants/strings.dart';
import 'data/repository/repo.dart';
import 'data/web_services/web_services.dart';
import 'presentation/characturs_screen/characturs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter
{
  late CharRepo charRepo;
  late CharCubit charCubit;
  
  AppRouter()
  {
    charRepo =CharRepo(CharWebServices());
    charCubit=CharCubit(charRepo);  
  }

  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings)
  {
   switch(settings.name)
   {
     case charScreen : 
     return MaterialPageRoute(
       builder: (_)=> BlocProvider(
         create: (BuildContext  context) => charCubit,
         child: const CharactersScreen(),
       ));


       case charDetailsScreen:
        final character = settings.arguments as CharModel;
        
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                CharCubit(charRepo),
            child: CharacterDetailsScreen(
              character: character,
            ),
          ),
        );
   }
  }
}