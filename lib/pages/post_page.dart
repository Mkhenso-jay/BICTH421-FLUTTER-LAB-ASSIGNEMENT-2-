import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PostCard(
          userName: 'Vincent',
          comment: 'I started my money laundering bussiness, and it has been successfull from the first day, even though i take  90% of my profit and give it to my girlfriend',
          timeAgo: '2h ago',
        ),
        
        PostCard(userName: 'Jay Ross',
         comment:'I started selling snacks on campus and made my first profit this week. It is small, but it motivated me to keep going.' ,
          timeAgo: '2s ago'
          ),

          PostCard(userName: 'Brilliant', 
          comment: 'I love women, i approach every girl i see on campus',
           timeAgo: '3d ago'),

           PostCard(
          userName: 'Vincent',
          comment: 'I love my girlfiend so much, to the point that i give her 90% of my profit every month',
          timeAgo: '1h ago',
        ),
        

      ],
    );
  }
}