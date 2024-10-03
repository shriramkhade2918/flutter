import 'package:chat_app/model/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseHelper {
 static Future<UserModel> getUserModelById(String id) async {
    UserModel? userModel;

    DocumentSnapshot docSnap =
        await FirebaseFirestore.instance.collection("uses").doc(id).get();

    if (docSnap.data() != null) {
      userModel = UserModel.frommap(docSnap.data() as Map<String, dynamic>);
    }
    return userModel!;
  }
}
