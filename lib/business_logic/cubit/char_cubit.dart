import 'package:bloc/bloc.dart';
import '../../data/models/char_model.dart';
import '../../data/repository/repo.dart';
import 'package:meta/meta.dart';
part 'char_state.dart';

class CharCubit extends Cubit<CharState> {

  final CharRepo charRepo ;
  CharCubit(this.charRepo) : super(CharInitial());

  List<CharModel> char = [];

  List<CharModel> getAllChar()
  {
    charRepo.getAllChar().then((char) 
    {
      emit(CharSuccessLoaded(char));
      this.char = char;
    });
    return char;
  }

  
}
