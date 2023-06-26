import '../file_datasource/file_datasource.dart';
import '../models/data_affiliate_model.dart';
import '../models/data_log_model.dart';
import '../models/data_user_model.dart';

class FirebaseService {
  final FileDataSource _fileDataSource;

  FirebaseService() : _fileDataSource = FileDataSource();
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

  Future<void> saveAffiliate(AffiliateNetwork affiliate) {
    // final imageUrl = _getImageUrl(affiliate.imageUrl)
    // salvar el affiliado con imageUrl actualizado
    // final updatedAffiliate = affiliate.copyWith(imageUrl: imageUrl)
    // guardar este nuevoa affiliado a la base de datos firebase.post(affiliate)

    // TODO
    throw UnimplementedError();
  }

  Future<String> _getImageUrl(String uri) async {
    if (uri.contains("http")) {
      return uri;
    } else {
      final file = _fileDataSource.getFile(uri);
      final fileName = uri.split('/').last;
      // con este file primero lo subo a store
      // final response  = await _realdatabase.post(file)
      // obtener url de la respuesta
      // retornarla

      return '';
    }
  }

  Future<void> deleteAffiliate(String affiliateId) {
    // TODO
    throw UnimplementedError();
  }

  // --------------------users operations --------------------------

  Future<List<UserNetwork>> getAllUser() {
    // TODO
    throw UnimplementedError();
  }

  Future<void> deleteUser(String userId) {
    // TODO
    throw UnimplementedError();
  }

  // --------------------Log operations --------------------------

  Future<List<LogUserNetwork>> getLog(String affiliateId) {
    // TODO
    throw UnimplementedError();
  }
}
