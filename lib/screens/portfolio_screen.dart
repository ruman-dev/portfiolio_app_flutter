import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_design/screens/widgets/education.dart';
import 'package:portfolio_design/screens/widgets/section_heading.dart';
import 'package:portfolio_design/screens/widgets/skills.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My Portfolio",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                  ),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/ruman.jpg',
                        ),
                        radius: 50,
                      ),
                      const Text(
                        "Md. Ruman",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      const Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontFamily: 'BungeeSpice',
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on),
                          Text(
                            " Dhaka, Bangladesh",
                            style: GoogleFonts.pacifico(fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          Text(
                            " +8801994-385596",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.email),
                          Text(
                            " ruman.dev@proton.me",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const SectionHeading(sectionName: "Hello STATEMENT"),
                const SizedBox(height: 10),
                const Text(
                  "I am a dedicated Flutter Developer with hands-on experience in designing and delivering robust, high-performing mobile applications."
                  "My expertise lies in creating user-centric solutions that prioritize efficiency, seamless functionality, and exceptional user experiences.",
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const SectionHeading(sectionName: "SKILLS"),
                const SizedBox(height: 10),
                const Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 10,
                  children: [
                    SkillsWidget(skillName: "Flutter"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "Java"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "Kotlin"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "PHP"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "Firebase"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "MySQL"),
                    SizedBox(width: 10),
                    SkillsWidget(skillName: "State Management"),
                    SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 15),
                const SectionHeading(sectionName: "EDUCATION"),
                const SizedBox(height: 10),
                const EducationWidget(
                  degreeName: "B.Sc in CSE | 2021",
                  institute: "University of Information Technology & Sciences",
                  result: "CGPA * 3.52 out of 4",
                  alignment: CrossAxisAlignment.start,
                ),
                const EducationWidget(
                  degreeName: "HSC (Science) | 2019",
                  institute: "Shaheed Police Smrity College",
                  result: "GPA * 4.12 out of 5",
                  alignment: CrossAxisAlignment.end,
                ),
                const EducationWidget(
                  degreeName: "SSC (Science) | 2016",
                  institute: "Khilbarirtek Islamia High School",
                  result: "GPA * 4.95 out of 5",
                  alignment: CrossAxisAlignment.start,
                ),
                const SizedBox(height: 15),
                const Divider(),
                const Text(
                  "© Ruman - 2024",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
