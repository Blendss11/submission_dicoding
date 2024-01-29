import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  @override
  State<HomePageMain> createState() => _HomeState();
}

class _HomeState extends State<HomePageMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's Great Day for Coffie",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find Your Coffie",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                controller: _tabController,
                tabs: [
                Tab(text: "Hot Coffie"),
                Tab(text: "Hot Coffie"),
                Tab(text: "Hot Coffie"),
                Tab(text: "Hot Coffie"),
              ],
              labelColor: const Color(0XFFE57734),
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              isScrollable: true,
              
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Color(0XFFE57734)
                ),
                insets: EdgeInsets.symmetric(horizontal: 16)
              ),

              
              ),
              SizedBox(height: 10),
              Center(
                child: [
                  Container(
                    color: Colors.red,
                  ),
                   Container(
                    color: Colors.red,
                  ),
                   Container(
                    color: Colors.red,
                  ),
                   Container(
                    color: Colors.red,
                  ),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
