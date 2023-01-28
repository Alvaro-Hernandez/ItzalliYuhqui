import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/metas_item.dart';
import '../model/metas.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final metasList = Metas.metaList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColorB,
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  searchBox(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 30,
                            bottom: 20,
                          ),
                          child: Text(
                            "¿Anotamos una meta? ✨",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        for (Metas meta in metasList)
                          MetasItem(
                            metas: meta,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: tdCheck,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '¡¡Que tal una nueva meta Itza!! ❤️',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: tdBGColor,
                        minimumSize: Size(60, 60),
                        elevation: 10),
                  ),
                )
              ]),
            )
          ],
        ));
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBGColor,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: '¿Buscamos una Meta Itza? 🐣',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }

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
