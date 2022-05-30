import '../models/char_model.dart';
import '../web_services/web_services.dart';

class CharRepo
{
  final CharWebServices charWebServices ;

  CharRepo(this.charWebServices);

 Future<List<CharModel>> getAllChar ()async
  {
    final chars = await charWebServices.getAllChar();
    return chars.map((char) => CharModel.fromJson(char)).toList();
  }

}