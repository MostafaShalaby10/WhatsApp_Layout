import 'package:flutter/material.dart';

class whatsapplayout extends StatelessWidget {
  const whatsapplayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[800],
        title: Text(
          "Whatsapp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.green[800],
              ),
            ),
            Container(
              color: Colors.green[800],
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Chats",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Status",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Calls",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context , index)
                  {
                    return item() ;
                  },
                  separatorBuilder: (context , index) =>SizedBox(
                    height: 15,
                  ),


                  itemCount: 15),
            )
          ],
        ),
      ),
    );
  }
  Widget item() => Row(
    children: [
      CircleAvatar(
          radius: 28,
          backgroundImage:
          AssetImage("images/PicsArt_12-15-04.23.40.jpg")),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Mostafa Shalaby",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                  const EdgeInsetsDirectional.only(start: 60),
                  child: Text(
                    "2.00 A.M",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Hi my name is mostafa Shalaby and this is my whatsapp layout",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
              ),
            ) ,
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[300],
              height: 1,
            )
          ],
        ),
      )
    ],
  ) ;
}
