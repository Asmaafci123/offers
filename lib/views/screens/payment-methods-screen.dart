import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';
import 'package:spicy/views/custom_widgets/item-of-payment-method.dart';
import 'package:spicy/views/custom_widgets/main-button.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: CustomAppBar(
        title: 'Payment Methods',
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
            SizeConfig.defaultSize! * 2, SizeConfig.defaultSize! * 1.6, 0),
        child: Column(
          children: [
            PaymentMeyhod(),
            SizedBox(
              height: SizeConfig.defaultSize!,
            ),
            PaymentMeyhod(),
            SizedBox(
              height: SizeConfig.defaultSize!,
            ),
            PaymentMeyhod(),
            Spacer(),
            CustomButton(
                color: const Color(0xFF3AB44E),
                text: 'ADD PAYMENT METHOD',
                textColor: const Color(0xFFFFFFFF),
                width: SizeConfig.screenWidth!,
                height: SizeConfig.defaultSize! * 5,
                function: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.addPaymentMethodScreenRoute);
                }),
            SizedBox(
              height: SizeConfig.defaultSize! * 2,
            ),
          ],
        ),
      ),
    );
  }
}
