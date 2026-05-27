import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String comment;
  final String timeAgo;
  final VoidCallback? onTap;

  const PostCard({
    super.key,
    required this.userName,
    required this.comment,
    required this.timeAgo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                child: Text(userName[0].toUpperCase()),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      comment,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(timeAgo),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}