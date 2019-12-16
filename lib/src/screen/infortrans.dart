import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class IFModel {
  String imageUrl;
  String name;
  String tenchuxe;
  String noio;
  String sdt;
  String loai;
  String trongluong;
  IFModel(
      {this.imageUrl,
      this.name,
      this.tenchuxe,
      this.noio,
      this.sdt,
      this.loai,
      this.trongluong});
}

class _DetailScreenState extends State<DetailScreen> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text(
          'TransportApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset("xe04.jpg"),
              ),
              footer: Container(
                height: 70,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                color: Colors.black.withOpacity(.5),
                child: Text(
                  'Xe chở hàng N.A',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Hours"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Date"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Status: Còn",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 220,
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {
                    customLaunch('tel: +84 948819199');
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Đặt xe"),
                ),
              ),
              InkWell(
                onTap: () {
                  customLaunch('https://www.facebook.com/benvo998');
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('fb.jpg'),
                  ),
                ),
              ),
              Container(
                child: Image(
                  width: 40,
                  height: 40,
                  image: AssetImage('zalo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: IconButton(
                  onPressed: () {
                    customLaunch('sms:0948819199');
                  },
                  icon: Icon(
                    Icons.message,
                    color: Colors.yellow[800],
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 0.4),
                      blurRadius: 10.0)
                ]),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Tên chủ xe:',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(' Nhị Anh', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text('Nơi ở:', style: TextStyle(fontSize: 15)),
                      Text(' Quan 9', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text('Số điện thoại:', style: TextStyle(fontSize: 15)),
                      Text(' 0948819199', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text('Loại xe:', style: TextStyle(fontSize: 15)),
                      Text(' Xe Cở lớn', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text('Trọng lượng xe:', style: TextStyle(fontSize: 15)),
                      Text(' 10kg', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
