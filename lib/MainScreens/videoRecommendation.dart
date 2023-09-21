import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pragati/MainScreens/mainPage.dart';

class RecommendationScreen extends StatefulWidget {
  static const String idScreen = "vcccontact";
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _recommendedVideos = [];

  void _fetchRecommendedVideos(String searchQuery) async {
    final response = await http.get(
        Uri.parse('http://127.0.0.1:5000/get_recommendations/$searchQuery'));

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = json.decode(response.body);
      setState(() {
        _recommendedVideos = List<Map<String, dynamic>>.from(responseBody);
      });
    } else {
      setState(() {
        _recommendedVideos = [];
      });
      print('Failed to load recommended videos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () => {
            Navigator.pushNamedAndRemoveUntil(
                context, MainScreen.idScreen, (route) => false),
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Videos',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    String searchQuery = _searchController.text;
                    if (searchQuery.isNotEmpty) {
                      _fetchRecommendedVideos(searchQuery);
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _recommendedVideos.length,
              itemBuilder: (BuildContext context, int index) {
                final video = _recommendedVideos[index];
                return ListTile(
                  title: Text(video['Title']),
                  subtitle: Text(video['URL']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _searchController = TextEditingController();
//   List<Map<String, dynamic>> _recommendedVideos = [];

//   void _fetchRecommendedVideos(String searchQuery) async {
//     final response = await http.get(Uri.parse('http://your_flask_server_ip:5000/get_recommendations/$searchQuery'));

//     if (response.statusCode == 200) {
//       final List<dynamic> responseBody = json.decode(response.body);
//       setState(() {
//         _recommendedVideos = List<Map<String, dynamic>>.from(responseBody);
//       });
//     } else {
//       setState(() {
//         _recommendedVideos = [];
//       });
//       print('Failed to load recommended videos');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }