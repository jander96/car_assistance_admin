import '../models/data_affiliate_model.dart';
import '../models/data_user_model.dart';

class FirebaseService {

  // instancias de firestore  y de realtime database para las fotos
  // final firestore = Firestore.instance
  // final database = RealTimeDatabase.instance


  Future<List<AffiliateNetwork>> getAllAffiliate() {
    // aqui tengo que combinar el uso de las dos db para obtener datos y fotos de affiliados
    // Usar el id de mi affiliate para encontrar la url de su imagen en realtime database 
    // final url = _getImageUrl(doc.id)
    // TODO
    throw UnimplementedError();
  }

  Future<void> saveAffiliate(AffiliateNetwork affiliate){
  // aqui debo de usar los datos y la foto que me viene de Affiliado para guardar por
  // separado en ambas bases de datos
    // TODO
    throw UnimplementedError();
  }

  Future<void> deleteAffiliate(String affiliateId){
    // TODO
    throw UnimplementedError();
  }

  Future<String> _getImageUrl(String affiliateId){
    // TODO
    throw UnimplementedError();
  }

  // --------------------users operations --------------------------

  Future<List<UserNetwork>> getAllUser(){
    // TODO
    throw UnimplementedError();
  }
  Future<void> deleteUser(String userId){
    // TODO
    throw UnimplementedError();
  }
}
