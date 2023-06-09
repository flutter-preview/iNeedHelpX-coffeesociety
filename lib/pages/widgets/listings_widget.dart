import 'package:coffeesociety/colors/colours_list.dart';
import 'package:coffeesociety/controllers/shop_controller.dart';
import 'package:coffeesociety/models/coffeeshop_model.dart';
import 'package:coffeesociety/pages/Sub_pages/details_pg2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeShopList extends StatelessWidget {
  final productController = Get.put(ShopController());

  CoffeeShopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: productController.shops.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return CoffeeListingWidget(
                index: index,
                // cart: cartController.products[index],
                product: productController.shops[index],
                // product: cartController.products[index],
              );
            }),
      ),
    );
  }
}

//the decorated container to view the items available
class CoffeeListingWidget extends StatelessWidget {
  final ShopController productController = Get.find();
  // final CartItemModel cartModel;
  final int index;
  final ShopModel? product;
  // final CartItemModel cart;
  CoffeeListingWidget({
    Key? key,
    required this.index,
    // required this.cart,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // this is where you put the get.to the details page
        //looks like this:
        Get.to(
          () => DetailsPage2(
            imgUrl: product!.image!,
            seats: product!.seats,
            name: product!.name!,
            address: product!.address!,
            description: product!.description!,
            // name: product!.name!,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: prettyPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                      height: 220,
                      width: 400,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        productController.shops[index].image!,
                      ),
                    ),
                  ],
                ),
                Container(
                  // padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        productController.shops[index].name!,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: GoogleFonts.courgette(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      // SizedBox(
                      //   height: 5.0,
                      // ),

                      //basic details box
                      Text(
                        "${productController.shops[index].basicDeets}",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: GoogleFonts.karla(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),

                      Text(
                        "Address: ${productController.shops[index].address}",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: GoogleFonts.karla(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
