import 'package:flutter/material.dart';
import 'package:itzalli_yuhqui/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColorB,
        appBar: _buildAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: tdBGColor,
                      size: 20,
                    ),
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: 'Buscamos una Meta Itza?',
                    hintStyle: TextStyle(color: tdGrey),
                  ),
                ),
              )
            ],
          ),
        ));
  }

//Video: Minuto 9:32

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(Icons.menu, color: tdBGColorB, size: 30),
        Container(
          width: 50,
          height: 50,
          child: ClipRRect(
            child: Image.asset('assets/images/avatarC.png'),
          ),
        )
      ]),
    );
  }
}
