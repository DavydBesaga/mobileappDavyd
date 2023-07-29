import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobileappdw/login_page.dart';
import 'package:mobileappdw/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class Students {
  final String name;
  final String portfolio;
  final String dateOfBirth;
  final String studyingIn;
  final String contactInformation;
  final String Experience;

  Students({
    required this.name,
    required this.portfolio,
    required this.dateOfBirth,
    required this.studyingIn,
    required this.contactInformation,
    required this.Experience,
  });
}

class MyApp extends StatelessWidget {
  final List<Students> students = [
    Students(
        name: 'Davyd',
        portfolio: 'portfolio /Davyd',
        dateOfBirth: 'Personal information',
        studyingIn: 'DKF',
        contactInformation: 'dp449698@gmail.com',
        Experience:
            'There is no strong experience, but we all go for it, that is why we studied at the Foundation'),
    Students(
        name: 'Stas',
        portfolio: 'portfolio /Stas',
        dateOfBirth: 'Personal information',
        studyingIn: 'DKF',
        contactInformation: 'stasdatsko04@gmail.com',
        Experience:
            'There is no strong experience, but we all go for it, that is why we studied at the Foundation'),
    Students(
        name: 'Oleh',
        portfolio: 'portfolio /Oleh',
        dateOfBirth: 'Personal information',
        studyingIn: 'DKF',
        contactInformation: 'olehmaksi1606@gmail.com',
        Experience:
            'There is no strong experience, but we all go for it, that is why we studied at the Foundation'),
    Students(
        name: 'Maksim',
        portfolio: 'portfolio /Maksim',
        dateOfBirth: 'Personal information',
        studyingIn: 'DKF',
        contactInformation: 'supermaksik154@gmail.com',
        Experience:
            'There is no strong experience, but we all go for it, that is why we studied at the Foundation'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => SignUpPage(),
      },
      title: 'Student Portfolios',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/5312.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: null,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/018430.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: const Text(
                  'Portfolio of students from the Danylo Kurliak Foundation',
                  style: TextStyle(fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 80.0),
              Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];
                    return ListTile(
                      title: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 15.0,
                            ),
                            const SizedBox(width: 20.0),
                            Text(
                              student.name,
                              style: const TextStyle(fontSize: 40.0),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PortfolioScreen(student: student),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 223, 223)
                        .withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'by Besaga David - DKF',
                    style: TextStyle(
                        fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  final Students student;

  const PortfolioScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio ${student.name}'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ${student.name}',
                style: const TextStyle(fontSize: 28.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Date of Birth: ${student.dateOfBirth}',
                style: const TextStyle(fontSize: 28.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Studying In: ${student.studyingIn}',
                style: const TextStyle(fontSize: 28.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Contact Information: ${student.contactInformation}',
                style: const TextStyle(fontSize: 28.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Experience: ${student.Experience}',
                style: const TextStyle(fontSize: 28.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
