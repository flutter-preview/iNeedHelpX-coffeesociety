import 'package:coffeesociety/globalvars.dart';
import 'package:coffeesociety/models/cup_model.dart';
import 'package:get/get.dart';

class CupInfoController extends GetxController {
  static CupInfoController instance = Get.find();
  RxList<CupModel> cups = RxList<CupModel>([]);
  String collection = "buyCoffeeCup";

  @override
  void onReady() {
    super.onReady();
    //binds the stream to the cup model
    cups.bindStream(getAllProducts());
  }

//so it updates automatically as shops are added/removed
  Stream<List<CupModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map(
            (query) => query.docs
                .map(
                  (item) => CupModel.fromMap(
                    item.data(),
                  ),
                )
                .toList(),
          );
}
