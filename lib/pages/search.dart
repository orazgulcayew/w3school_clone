import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w3school_clone/data/lessons.dart';
import 'package:w3school_clone/data/lessons_css.dart';
import 'package:w3school_clone/pages/lesson.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> htmlL = [];
  List<String> cssL = [];

  List<String> filteredItems = [];

  // the controller for the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // initialize the filtered list to contain all items

    for (var element in lessonCss) {
      cssL.add(element.lessonText);
    }

    for (var element in lessonsHtml) {
      htmlL.add(element.lessonText);
    }

    filteredItems.addAll(lessonCss.map((e) => e.lessonText));
    filteredItems.addAll(lessonsHtml.map((e) => e.lessonText));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // method to update the filtered list based on user's search query
  void _filterItems(String query) {
    setState(() {
      filteredItems = [];
      filteredItems.addAll(htmlL
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList());
      filteredItems.addAll(cssL
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search lessons")),
      body: ListView.builder(
        itemCount: 1,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 6,
              ),
              TextField(
                onChanged: (value) => _filterItems(value),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    fillColor: Colors.green.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(48)),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    hintText: "Search our tutorials..."),
              ),
              const SizedBox(
                height: 12,
              ),
              ...List.generate(
                  filteredItems.length,
                  (index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                filteredItems[index],
                                maxLines: 6,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              CupertinoButton(
                                  color: Colors.green,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text("Go to lesson"),
                                      Icon(Icons.chevron_right)
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SingleLessonScreen(
                                          title: "Lesson",
                                          code: filteredItems[index],
                                          text: filteredItems[index],
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                      ))
            ],
          );
        },
      ),
    );
  }
}
