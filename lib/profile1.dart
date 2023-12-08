import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  const Profile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children:[ Text(
            'Instagram',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
          ),
            Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),
          ],
        ),
        actions: [
          Icon(Icons.add_box_outlined,color: Colors.white,size: 35,),
          SizedBox(width: 20,),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Icon(Icons.heart_broken_outlined,color: Colors.white,size: 35,),
              Icon(Icons.circle,color: Colors.red,size: 13,),
            ],
          ),
          SizedBox(width: 20,),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Icon(Icons.maps_ugc_sharp,color: Colors.white,size: 35,),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Icon(Icons.circle,size: 20,color: Colors.red,),
                  Text('6',style: TextStyle(color: Colors.white,),),
                ],
              ),
            ],
          ),
          SizedBox(width: 12,),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/236x/8c/96/51/8c9651a848f1633ca1d268ecf511a0d5.jpg'),
                ),
                SizedBox(width: 10,),
                Text('dude.code',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                Spacer(),
                Icon(Icons.more_horiz_rounded,color: Colors.white,),
              ],
            ),
          ),
          Image.network('https://i.pinimg.com/736x/8b/20/b8/8b20b82dc7b966eb6c4c5b68b7736135.jpg',),
          Row(
            children: [
              Container(padding:EdgeInsetsDirectional.all(10),child: Icon(Icons.favorite_border,color: Colors.white,size: 30,)),
              Container(padding:EdgeInsetsDirectional.all(10),child: Icon(Icons.mode_comment_outlined,color: Colors.white,size: 30,)),
              Container(padding:EdgeInsetsDirectional.all(10),child: Icon(Icons.send_rounded,color: Colors.white,size: 30,)),
              SizedBox(width: 50,),
              Center(
                child:Container(padding:EdgeInsetsDirectional.all(10),child: Icon(Icons.more_horiz,color: Colors.white,size: 30,)),
              ),
              Spacer(),
              Container(padding:EdgeInsetsDirectional.only(top: 10,start: 10,end: 10),child: Icon(Icons.save_alt_outlined,color: Colors.white,size: 30,)),
            ],
          ),
          Row(
            children: [
              Container(margin:EdgeInsetsDirectional.only(top: 10,start: 10,end: 10),child: CircleAvatar(backgroundImage:NetworkImage('https://i.pinimg.com/236x/6a/b4/38/6ab4381aec4eb3d0d825a4610616eb18.jpg',),),),
              Text('Liked by flutter.deviser and 44 others',style: TextStyle(color: Colors.white,),),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsetsDirectional.all(10),
            child: Row(children: [
              Text('dude.code',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
              SizedBox(width: 5,),
              Text('Firebase in-App Messaging helps  you engage your  app’s ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
            ],),
          ),
          Container(margin:EdgeInsetsDirectional.only(start: 10),alignment:AlignmentDirectional.topStart,child: Text('View 1 comment',style: TextStyle(color: Colors.grey),)),
        ],
      ),
    );
  }
}
