import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:spicy/Bussiness_layer/app-cubit.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color(0xFF3AB44E),
      value: AppCubit.get(context).checkBoxValue,
      onChanged: (value) {
        AppCubit.get(context).changeCheckBoxValue(value as bool);
      },
    );
  }
}
