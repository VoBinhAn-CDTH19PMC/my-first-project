import 'package:flutter/material.dart';

String avt = 'https://media-cdn.laodong.vn/Storage/NewsPortal/2020/6/23/814689/7-Giong-Meo-Dat-Nhat-03.jpg';
String avt2 = 'https://scontent.fsgn8-2.fna.fbcdn.net/v/t1.6435-1/p100x100/138778243_869342370492678_7336130306854756342_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=jrnsGbjHhFUAX8UAsoF&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn8-2.fna&oh=441a133abba194c67898c64ffc1892e8&oe=61B14904';
String avt3 = 'https://cafebiz.cafebizcdn.vn/zoom/700_438/2019/photo1568425154466-1568425154695-crop-1568425163594659826294.jpg';
String avt4 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQRYLW6RF2GxcGg7j3zbNUEfOwnDm1hoZbGA&usqp=CAU';

class ListTileWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Test ListTile'),
      // ),
      body: BodyListTile(),
    );
  }
}

class BodyListTile extends StatelessWidget {
  const BodyListTile({ Key? key }) : super(key: key);

  Widget build_ListTile(String avtLT ,String _thongBao, int _thoiGian) {
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(avtLT),
        ),
        title: Text(_thongBao, style: TextStyle(fontSize: 17),),
        subtitle: Text(_thoiGian.toString() + ' giờ trước'),
        trailing: Icon(Icons.more_vert_outlined),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          build_ListTile(avt,'Thanh Quý đã có bồ', 3),
          build_ListTile(avt2,'Đây là Quý đẹp trai', 1),
          build_ListTile(avt3, 'Deadline quá nhiều :<', 3),
          build_ListTile(avt4, 'Người yêu bảo ăn quán nào cũng được', 10)
        ],
      ),
    );
  }
}