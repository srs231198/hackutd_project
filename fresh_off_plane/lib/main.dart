import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'majorIdeasIndustry.dart';
import 'positions.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Fresh Off The Plane',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fresh Off The Plane Home Page'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                const Text(
                  'Welcome to the University of Texas at Dallas! This app can help guide you with helpful info to ease your journey into becoming a successful UTD student.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                  child: const Text('Important Links'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LinksPage()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Insurance Info'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Insurance()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Financial Literacy Learner'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Financial()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('page4 classes?'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CourseHelper()),
                    );
                  },
                ),
              ]
          )
      ),
    );
  }
}

class LinksPage extends StatelessWidget {
  const LinksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Important links"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Text(
                'Important Links: ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),

              ),
              const Text(
                '\neLearning (Grades, Assignments, Announcements)',
              ),
              ElevatedButton(
                onPressed: () {
                  _launchEBrowser();
                },
                child: const Text('eLearning'),
              ),
              const Text(
                '\nGalaxy (Academics, Bursar, Financial Aid, Forms, etc)',
              ),
              ElevatedButton(
                onPressed: () {
                  _launchGalaxyBrowser();
                },
                child: const Text('Galaxy'),
              ),
              const Text(
                '\nCoursebook (Listing of Classes)',
              ),
              ElevatedButton(
                onPressed: () {
                  _launchCoursebookBrowser();
                },
                child: const Text('Coursebook'),
              ),
              const Text(
                '\nOffice of Information Technology (Tech Help)',
              ),
              ElevatedButton(
                onPressed: () {
                  _launchOITBrowser();
                },
                child: const Text('OIT'),
              ),
              const Text(
                '\nBursar Office (EZPay, Tuition, Fees)',
              ),
              ElevatedButton(
                onPressed: () {
                  _launchBursarBrowser();
                },
                child: const Text('Bursar Office'),
              ),
              const Text(
                '\n\n\n\n\n\n\n\n\n',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ]
        ),
      ),
    );
  }
}

class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insurance Info"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Text(
                'UTD International Student Insurance Requirements:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchInsBrowser();
                },
                child: const Text('UT Dallas Insurance'),
              ),
              const Text(
                '\nDental & Vision Choices: The most compatible source for\nadding dental and vision care to your UTDallas BlueCross\nBlueShield Health Insurance Plan is with: ',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchDentalBrowser();
                },
                child: const Text('BlueCare Dental'),
              ),
              ElevatedButton(
                onPressed: () {
                  _launchVisionBrowser();
                },
                child: const Text('BlueCare Vision'),
              ),
              const Text(
                '\nRenters Insurance: If living off-campus, it is important\nto secure insurance for possessions and property damage:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchRenterBrowser();
                },
                child: const Text('StateFarm Renters Insurance'),
              ),
              const Text(
                '\nTravel Insurance: When traveling back internationally, travel insurance can assist in making trips easier and headache-less:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchTravelBrowser();
                },
                child: const Text('Seven Corners'),
              ),
              const Text(
                '\n\n\n\n\n\n\n',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ]
        ),
      ),
    );
  }
}

class Financial extends StatelessWidget {
  const Financial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Financial Literacy"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Text(
                'What is a Credit Score? Why Does It Matter?',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchGovBrowser();
                },
                child: const Text('ConsumerFinance.Gov'),
              ),
              const Text(
                '\nStudent Credit Card, Discover It:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchDiscBrowser();
                },
                child: const Text('Discover It Student'),
              ),
              const Text(
                '\nWhat is a Roth IRA? And why one should create one:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchIRABrowser();
                },
                child: const Text('IRS: Roth IRA'),
              ),
              const Text(
                '\nHow to File Your Taxes For Free:',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchTurboBrowser();
                },
                child: const Text('TurboTax Free'),
              ),
              const Text(
                '\n\n\n\n\n\n\n',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back'),
              ),
            ]
        ),
      ),
    );
  }
}

class CourseHelper extends StatelessWidget {
  const CourseHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Course Finder"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MajorIdeasIndustry()),
                    );
                  },
                  child: const Text("I need major ideas"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: const Text("I know my major, and I need course ideas"),
                ),
              ]
          ),
        )
    );
  }
}

_launchGalaxyBrowser() async {
  const url = 'https://www.utdallas.edu/galaxy/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCoursebookBrowser() async {
  const url = 'http://coursebook.utdallas.edu/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchOITBrowser() async {
  const url = 'https://oit.utdallas.edu/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchBursarBrowser() async {
  const url = 'https://bursar.utdallas.edu/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEBrowser() async {
  const url = 'http://elearning.utdallas.edu/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchInsBrowser() async {
  const url = 'https://insurance.utdallas.edu/policies/international/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchDentalBrowser() async {
  const url = 'https://www.bcbstx.com/employer/products/dental/bluecare-dental-ppo';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchVisionBrowser() async {
  const url = 'https://www.bcbstx.com/shop-plans/individual-and-family/vision-insurance-plans';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchRenterBrowser() async {
  const url = 'https://www.statefarm.com/insurance/home-and-property/renters';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTravelBrowser() async {
  const url = 'https://www.sevencorners.com/#start';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGovBrowser() async {
  const url = 'https://www.consumerfinance.gov/ask-cfpb/what-is-a-credit-score-en-315/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchDiscBrowser() async {
  const url = 'https://www.discover.com/credit-cards/student-credit-card/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchIRABrowser() async {
  const url = 'https://www.irs.gov/retirement-plans/roth-iras';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTurboBrowser() async {
  const url = 'https://turbotax.intuit.com/personal-taxes/online/free-edition.jsp';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}