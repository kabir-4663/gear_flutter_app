import 'package:flutter/material.dart';

String baconText =
    'Bacon ipsum dolor amet jerky tri-tip fatback leberkas turducken sausage bacon. Sausage spare ribs shoulder doner, landjaeger cupim buffalo capicola meatloaf beef. Strip steak boudin shoulder jerky pork chop ground round. Sausage biltong doner, tongue beef landjaeger kevin filet mignon meatball bresaola. Burgdoggen shoulder short ribs ball tip brisket sirloin venison turkey bresaola. Biltong ball tip turducken tenderloin ham corned beef salami. Turkey shoulder turducken sirloin picanha leberkas brisket pig fatback meatloaf flank beef ribs. Cupim filet mignon spare ribs t-bone leberkas shankle chuck pork belly salami biltong andouille. Bresaola kevin buffalo meatloaf filet mignon ham hock. Frankfurter sirloin shoulder meatball tenderloin jowl. Alcatra strip steak meatball pork loin cupim brisket, pancetta venison shankle bacon swine. Short loin ham short ribs jowl fatback rump, swine ribeye sirloin tongue. Shoulder tail tri-tip, pork belly biltong hamburger burgdoggen fatback short loin andouille tongue salami meatloaf pork chop pastrami. Bresaola short loin ribeye drumstick cupim. Doner ham hock cow porchetta. Pork chop drumstick porchetta rump andouille. Ham hock kielbasa spare ribs chicken short ribs alcatra tenderloin pork belly jerky corned beef.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
