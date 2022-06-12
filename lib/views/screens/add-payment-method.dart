import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/custom_widgets/dropdown-list.dart';
import 'package:spicy/views/custom_widgets/main-button.dart';
import 'package:spicy/views/custom_widgets/textformfield-addcard.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maskFormatterForCardNumber = new MaskTextInputFormatter(
        mask: '####_####_####_####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    var maskFormatterForExpires = new MaskTextInputFormatter(
        mask: '##/##/####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    var maskFormatterForCVV = new MaskTextInputFormatter(
        mask: '###',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF213955),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: SizeConfig.defaultSize! * 3.5,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
              SizeConfig.defaultSize!, SizeConfig.defaultSize! * 1.6, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Credit Card',
                style: TextStyle(
                    color: const Color(0xFF213955),
                    fontSize: SizeConfig.defaultSize! * 3,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 4,
              ),
              DropDownList(
                items: ['Visa', 'Master Card'],
                hintText: 'Visa',
              ),
              SizedBox(height: SizeConfig.defaultSize! * 3),
              TextFormFieldForAddCard(
                maskFormatter: maskFormatterForCardNumber,
                labelText: 'Credit card number',
              ),
              SizedBox(height: SizeConfig.defaultSize! * 3),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormFieldForAddCard(
                      maskFormatter: maskFormatterForExpires,
                      labelText: 'Expires',
                    ),
                  ),
                  SizedBox(width: SizeConfig.defaultSize! * 5),
                  Expanded(
                    flex: 1,
                    child: TextFormFieldForAddCard(
                      maskFormatter: maskFormatterForExpires,
                      labelText: 'CVV',
                    ),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.defaultSize! * 5),
              CustomButton(
                  color: const Color(0xFF3AB44E),
                  text: 'SAVE',
                  textColor: const Color(0xFFFFFFFF),
                  width: SizeConfig.screenWidth!,
                  height: SizeConfig.defaultSize! * 5,
                  function: () {}),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
