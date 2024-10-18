part of 'post_db.dart';

final class PostDbImpl implements PostDb {
  final FirebaseFirestore _firestore;
  PostDbImpl(this._firestore);

  Future<void> createUser(UserModel user) async {
    try {
      final doc = _firestore.collection('user').doc();
      final newUser = user.copyWith(uid: doc.id);
      await doc.set(newUser.toMap());
    } catch (e) {
      rethrow;
    }
  }
}
