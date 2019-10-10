import 'package:flutter/material.dart';
import 'model/card.dart';
import 'location_page.dart';

main() {
  runApp(MaterialApp(home:Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> 
        with SingleTickerProviderStateMixin {
          PageController _pageController;
          int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.7);
  }

  _locationCard(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        return Center(
          child: SizedBox(
            height: Curves.easeIn.transform(value) * 300.0,
            width: Curves.easeIn.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => LocationPage(location: locations[index]),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Stack(
                children: <Widget>[
                  Hero(
                      tag: locations[index].imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          height: 300,
                          child: Image.asset('images/location$index.jpg', fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          height: 300,
                          color: Colors.black.withOpacity(0.55),
                        ),
                      ),
                  Positioned(
                    top: 25.0,
                    left: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star,
                              color: Colors.white,
                              size: 20.0,),
                              Text( '${locations[index].rating}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 31.0,
                    right: 27.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text('More',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),),
                      SizedBox(width: 3.0),
                      Icon(Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 30.0,),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 25.0,
                    bottom: 80.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            locations[index].place,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600, 
                              letterSpacing: 3.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30.0,
                    bottom: 30.0,
                    child: Row(
                      children: <Widget>[
                        Text('I was here',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.3,
                          color: Colors.white,
                        ),),
                        SizedBox(width: 15.0),
                        Stack(
                      children: <Widget>[
                        Container(height: 40.0, width: 100.0),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage('images/person$index.jpg'),
                                  fit: BoxFit.cover),),
                        ),
                         Positioned(
                          left: 30.0,
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Center(
                              child: Text('+17..',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
              children: [
                // First Page
                new Container(
                  color: Colors.white,
                  child: SafeArea(
                      child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 15.0,
                          child: Container(
                            padding: EdgeInsets.only(left: 35.0, right: 35.0),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.blur_circular,
                                size: 30,
                                color: Colors.black87,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('images/macen.jpeg'), 
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 90.0,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Container(
                                height: 200,
                                width: 350,
                                color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Where',
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 50.0
                                      ),),
                                      Text('will you go',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 50.0
                                      ),),
                                      Text('today',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 50.0
                                      ),),
                                    ],
                                  ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.all(13.0),
                              margin: EdgeInsets.only(left: 5.0),
                              height: 70, 
                              width: 330, 
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(22.0)
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search, color: Colors.black54),
                                hintText: "What would you like to discover?",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                              ),
                            ),
                          ), 
                          SizedBox(height: 25.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                            padding: EdgeInsets.only(left: 40.0, right: 35.0),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Most Popular', style: TextStyle(
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w600,
                                ),),
                                Icon(Icons.more_horiz,
                                  size: 30.0,
                                  color: Colors.black54,
                                  ),
                              ],
                            ),
                          ),
                            ],
                          ),
            SizedBox(height: 25.0),
            Container(
              height: 300,
              color: Colors.white,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: locations.length,
                itemBuilder: (BuildContext context, int index) {
                  return _locationCard(index);
                },
              ),
            ),
                         ],
                        ), 
                      ],
                    ),
                  ),             
                ),
                new Container(color: Colors.orange,),
                new Container(
                  color: Colors.lightGreen,
                ),
                new Container(
                  color: Colors.red,
                ),
              ],
            ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.search, size: 35.0),
              ),
              Tab(
                icon: new Icon(Icons.home, size: 35.0),
              ),
              Tab(
                icon: new Icon(Icons.star_border, size: 35.0),
              ),
              Tab(icon: new Icon(Icons.calendar_today, size: 30.0),)
            ],
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.symmetric(vertical: 25.0),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  

}