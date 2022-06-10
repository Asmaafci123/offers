import 'package:flutter/material.dart';
import 'package:spicy/Bussiness_layer/app-cubit.dart';
import '../../size.dart';
import 'item-of-main-category.dart';
class MainCategoriesPart extends StatelessWidget {
  const MainCategoriesPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.defaultSize! * 1.5,
          0,
          0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.defaultSize! * 9,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    AppCubit.get(context).changeIndexOfIndexedStack(index);
                  },
                    child: ItemOfMainCategory());
              },
              separatorBuilder: (BuildContext context, int index) =>SizedBox(
                width:SizeConfig.defaultSize! * 1.5,
              ), itemCount: 10,),
          ),
        ],
      ),
    );
  }
}
