import 'package:coffeesociety/globalvars.dart';
import 'package:coffeesociety/models/coffeeshop_model.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  static ShopController instance = Get.find();
  RxList<ShopModel> shops = RxList<ShopModel>([]);
  String collection = "coffeeShops";

  @override
  void onReady() {
    super.onReady();

    shops.bindStream(getAllProducts());
  }

//so it updates automatically as shops are added/removed
  Stream<List<ShopModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map(
            (query) => query.docs
                .map(
                  (item) => ShopModel.fromMap(
                    item.data(),
                  ),
                )
                .toList(),
          );
}
