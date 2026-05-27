import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final TextEditingController postController = TextEditingController();

  final List<Map<String, String>> posts = [
    {
      "user": "Vincent",
      "comment": "I started a small online business and it's going well!",
      "time": "2h ago",
    },
    {
      "user": "Jay Ross",
      "comment": "I started selling snacks on campus and made profit!",
      "time": "1d ago",
    },
    {
      "user": "Brilliant",
      "comment": "Got my first freelancing client today!",
      "time": "3d ago",
    },
  ];

  void addPost(String text) {
    if (text.trim().isEmpty) return;

    setState(() {
      posts.insert(0, {
        "user": "Jay Ross",
        "comment": text,
        "time": "Just now",
      });
    });

    postController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // 🔥 THIS closes keyboard + emoji bar + suggestions
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: postController,

                    // 👇 ensures toolbar behaves correctly
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,

                    decoration: const InputDecoration(
                      hintText: "Write a post...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blue),
                  onPressed: () => addPost(postController.text),
                )
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(post["user"] ?? ""),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(post["comment"] ?? ""),
                        const SizedBox(height: 4),
                        Text(
                          post["time"] ?? "",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}