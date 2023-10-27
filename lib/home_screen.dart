import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/widget/items_widget.dart';


 class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
    void initState() {
   _tabController = TabController(length: 4 , vsync: this, initialIndex: 0);
   _tabController.addListener(_handleTabSelection);
    super.initState();
  }

_handleTabSelection(){
  if(_tabController.indexIsChanging){
    setState(() {
      
    });
  }
}

@override
void dispose() {
   _tabController.dispose();
   super.dispose();
    
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                     Scaffold.of(context).openDrawer(); 
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),         
                      ),
                        child: Icon(CupertinoIcons.bars),
                    ),
                  )
                ],
              ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "My Collection",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Color.fromARGB(255, 255, 252, 253)),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Photo",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(1),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(1),
                        ),
                    ),
                  ),
                ),
                TabBar(
                   controller: _tabController,
                   labelColor: Colors.black,
                   unselectedLabelColor: Colors.black.withOpacity(1),
                   isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  labelPadding: EdgeInsets.symmetric(horizontal:30),
                  tabs: [
                Tab(
                  text: "CURUG"),
                 Tab(
                  text: "BUNGA"),
                 Tab(
                 text: "MALAM"),
                ],
                ),
                SizedBox(height: 10),
                Center(
                  child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ][_tabController.index],
                  
                ),
            ],
          )
         ,)
        ),
    );
  }
}