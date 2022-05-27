import 'package:flutter/material.dart';



class SetProfileAvatar extends StatefulWidget {
  const SetProfileAvatar({Key? key}) : super(key: key);

  @override
  _SetProfileAvatarState createState() => _SetProfileAvatarState();
}

class _SetProfileAvatarState extends State<SetProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Set Profile Avatar", style: TextStyle(color:Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(Icons.person, size: 100, color: Colors.grey.withOpacity(0.8),),
              ),
            Positioned(
              bottom: -20,
              right: -30,
              child: GestureDetector(
                onTap: (){},
                child:  Container(
                  height: 40,
                  width:60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.add_a_photo_sharp, color: Colors.white,),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
