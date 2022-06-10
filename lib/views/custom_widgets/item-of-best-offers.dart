import 'package:flutter/material.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/custom_widgets/reusable-container-best-offers.dart';
import 'package:spicy/views/custom_widgets/details-of-product.dart';
import '../../size.dart';

class ItemOfBestOffers extends StatelessWidget {
  const ItemOfBestOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.5, 0, 0, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(AppRoutes.detailsOfProductScreenRoute);
        },
        child: Stack(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.defaultSize! * 5)),
              child: Container(
                width: SizeConfig.defaultSize! * 30,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius:
                        BorderRadius.circular(SizeConfig.defaultSize! * 5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: SizeConfig.defaultSize! * 19.4,
                      width: SizeConfig.defaultSize! * 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(SizeConfig.defaultSize! * 5),
                          topLeft: Radius.circular(SizeConfig.defaultSize! * 5),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(SizeConfig.defaultSize! * 5),
                          topLeft: Radius.circular(SizeConfig.defaultSize! * 5),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/img2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.defaultSize! * 1.8,
                          0,
                          SizeConfig.defaultSize! * 1.8,
                          0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ContainerOfBestOfOffers(
                                color: const Color(0xFF213955),
                                text: 'Food',
                              ),
                              SizedBox(
                                width: SizeConfig.defaultSize! * 1,
                              ),
                              ContainerOfBestOfOffers(
                                color: const Color(0xFF3AB44E),
                                text: 'Food',
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),
                          Center(
                            child: Text(
                              'Coffee',
                              style: TextStyle(
                                  color: const Color(0xFF213955),
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.defaultSize! * 1.8),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 1.3,
                          ),
                          Text(
                            'Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee',
                            style: TextStyle(
                                color: const Color(0xFFc7cdd9),
                                fontWeight: FontWeight.normal,
                                fontSize: SizeConfig.defaultSize! * 1.7),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize! * 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: SizeConfig.defaultSize! * 5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.defaultSize! * 5.5,
                    width: SizeConfig.defaultSize! * 3.7,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sale.png'),
                    ),
                  ),
                  Text(
                    ' 15 % ',
                    style: TextStyle(
                        color: const Color(0xFFFFFFFFF),
                        fontSize: SizeConfig.defaultSize! * 1.4,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
