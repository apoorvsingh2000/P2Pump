import 'package:flutter/material.dart';
import 'package:locl/models/fetch.dart';
import 'package:locl/widgets/fetchCard.dart';

class DataScreen extends StatefulWidget {
  static const String id = 'fetch_data';
  const DataScreen({super.key});

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  late Future<List<String>> _dataFuture1;
  late Future<List<String>> _dataFuture2;
  late Future<List<String>> _dataFuture3;
  late Future<List<String>> _dataFuture4;

  @override
  void initState() {
    super.initState();
    _dataFuture1 = fetchData('http://3.92.27.19/front'); // Fetch data on init
    _dataFuture2 = fetchData('http://3.91.82.181/front');
    _dataFuture3 = fetchData('http://3.92.27.19/front');
    _dataFuture4 = fetchData('http://3.91.82.181/front');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('IoT Devices Data View'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.mobile_friendly), text: 'Edge Device 1'),
              Tab(icon: Icon(Icons.mobile_friendly), text: 'Edge Device 2'),
              Tab(icon: Icon(Icons.mobile_friendly), text: 'Edge Device 3'),
              Tab(icon: Icon(Icons.mobile_friendly), text: 'Edge Device 4'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildFirstTab(context), // Corresponds to the 'Home' tab
            buildSecondTab(context), // Corresponds to the 'Settings' tab
            buildThirdTab(context), // Corresponds to the 'Notifications' tab
            buildFourthTab(context), // Corresponds to the 'Info' tab
          ],
        ),
      ),
    );
  }

  Widget buildFirstTab(BuildContext context) {
    // Reuse your existing stack or another widget for the first tab
    return Stack(
      children: [
        Image.asset(
          'images/jim.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
          child: FutureBuilder<List<String>>(
            future: _dataFuture1,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 5,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];
                      return dataCard(data, context);
                    },
                  ),
                );
              } else {
                return const Text("No data");
              }
            },
          ),
        ),
      ],
    );
  }

  Widget buildSecondTab(BuildContext context) {
    // Reuse your existing stack or another widget for the first tab
    return Stack(
      children: [
        Image.asset(
          'images/p2p.jpg',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
          child: FutureBuilder<List<String>>(
            future: _dataFuture2,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 5,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];
                      return dataCard(data, context);
                    },
                  ),
                );
              } else {
                return const Text("No data");
              }
            },
          ),
        ),
      ],
    );
  }

  Widget buildThirdTab(BuildContext context) {
    // Reuse your existing stack or another widget for the first tab
    return Stack(
      children: [
        Image.asset(
          'images/jim.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
          child: FutureBuilder<List<String>>(
            future: _dataFuture3,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 5,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];
                      return dataCard(data, context);
                    },
                  ),
                );
              } else {
                return const Text("No data");
              }
            },
          ),
        ),
      ],
    );
  }

  Widget buildFourthTab(BuildContext context) {
    // Reuse your existing stack or another widget for the first tab
    return Stack(
      children: [
        Image.asset(
          'images/p2p.jpg',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
          child: FutureBuilder<List<String>>(
            future: _dataFuture4,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 5,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];
                      return dataCard(data, context);
                    },
                  ),
                );
              } else {
                return const Text("No data");
              }
            },
          ),
        ),
      ],
    );
  }
}
