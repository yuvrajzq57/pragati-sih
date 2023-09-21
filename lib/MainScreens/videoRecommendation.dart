import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pragati/MainScreens/mainPage.dart';

class VideoRecommendationScreen extends StatefulWidget {
  static const String idScreen = "videoreco";
  @override
  _VideoRecommendationScreenState createState() =>
      _VideoRecommendationScreenState();
}

class _VideoRecommendationScreenState extends State<VideoRecommendationScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _recommendedUrls = [];

  void _getRecommendations(String query) async {
    final response = await http.post(
      Uri.parse(
          'http://127.0.0.1:5000/recommend'), // Replace with your Python server address
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'search_query': query}),
    );

    if (response.statusCode == 200) {
      setState(() {
        _recommendedUrls = List<String>.from(json.decode(response.body));
      });
    } else {
      // Handle API error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context, MainScreen.idScreen, (route) => false),
        ),
        title: Text('Video Recommendations'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Enter your search query',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final query = _searchController.text;
              if (query.isNotEmpty) {
                _getRecommendations(query);
              }
            },
            child: Text('Get Recommendations'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _recommendedUrls.length,
              itemBuilder: (context, index) {
                final url = _recommendedUrls[index];
                return ListTile(
                  title: Text('Recommended Video #${index + 1}'),
                  subtitle: Text(url),
                  onTap: () {
                    // Open the video URL in a web browser or video player
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
