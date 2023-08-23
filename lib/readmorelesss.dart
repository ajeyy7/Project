import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home: ReadMoreless(),));
}
class ReadMoreless extends StatelessWidget {
  const ReadMoreless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read more Read less"),
      ),
      body: Column(
        children: [
          ReadMoreText("""Elon Reeve Musk is a business magnate and investor. Musk is the founder, chairman, CEO and chief technology officer of SpaceX; angel investor, CEO, product architect and former chairman of Tesla, Inc.; ... Wikipedia
              Born: 28 June 1971 (age 52 years), Pretoria, South Africa
          Net worth: 22,990 crores USD (2023) Forbes
          Children: Vivian Jenna Wilson, Nevada Alexander Musk, Griffin Musk, Damian Musk, Kai Musk, Saxon Musk
          Spouse: Talulah Riley (m. 2013–2016), Talulah Riley (m. 2010–2012), Justine Musk (m. 2000–2008)""",trimLines: 3,
          preDataText: 'Elon Musk',
          preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
          style: TextStyle(color: Colors.deepPurple),
          colorClickableText: Colors.red,
          trimMode:TrimMode.Line,
          trimCollapsedText: '.....collapse',
          trimExpandedText: '......expanded',),
          Divider(),
          ReadMoreText("""Elon Reeve Musk is a business magnate and investor. Musk is the founder, chairman, CEO and chief technology officer of SpaceX; angel investor, CEO, product architect and former chairman of Tesla, Inc.; ... Wikipedia
          Born: 28 June 1971 (age 52 years), Pretoria, South Africa
        Net worth: 22,990 crores USD (2023) Forbes
    Children: Vivian Jenna Wilson, Nevada Alexander Musk, Griffin Musk, Damian Musk, Kai Musk, Saxon Musk
    Spouse: Talulah Riley (m. 2013–2016), Talulah Riley (m. 2010–2012), Justine Musk (m. 2000–2008)""",trimLines: 3,
          preDataText: 'Elon Musk',
          preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
          style: TextStyle(color: Colors.deepPurple),
          colorClickableText: Colors.red,
          trimMode:TrimMode.Line,
          trimCollapsedText: '.....Expand',
          trimExpandedText: '......Collapse',),
        ],
      ),
    );
  }
}
