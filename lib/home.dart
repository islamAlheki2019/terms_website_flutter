

import 'package:flutter/material.dart';
import 'package:terms_website_flutter/terms.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileMosaic'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () => scrollController.animateTo(
              0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: Text(
              'Home',
              style: TextStyle(color: Color(0xffE87030),fontSize: 18,),
            ),
          ),
          TextButton(
            onPressed: () async {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 250),
                  reverseTransitionDuration: const Duration(milliseconds: 250),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      FadeTransition(
                        opacity: animation,
                        child:TermsAndConditionsPage(),
                      ),
                ),
              );
            },
            child:  Text(
              'Terms & conditions',
              style: TextStyle(color: Color(0xffE87030),fontSize: 18,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            // About Us Section
            Card(
              color: Color(0xffE87030),
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'About Us',
                          textAlign: TextAlign.start,

                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'About ProfileMosaic'

                      'Welcome to ProfileMosaic, a free, innovative platform that empowers individuals to create professional and personalized portfolios effortlessly. In today’s fast-paced digital world, showcasing your skills, achievements, and projects has never been more crucial. Whether you’re a freelancer, entrepreneur, student, or job seeker, ProfileMosaic is your go-to solution for building a visually captivating and professional online presence.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18,color: Colors.white,),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        const Text(
                          'Our Vision',
                          textAlign: TextAlign.start,

                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'At ProfileMosaic, we envision a world where everyone has the tools to present their unique story, skill set, and experiences. Our mission is to break down barriers by providing a free and easy-to-use application that makes portfolio creation accessible to everyone.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18,color: Colors.white,),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'What We Offer',
                          textAlign: TextAlign.start,

                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Easy Portfolio Creation'
                          'With our user-friendly app, you can create a professional portfolio in just minutes. Simply input your details, upload photos or project files, and customize your portfolio to reflect your personal or professional brand.'

                          'Customizable Designs'
                    'Choose from a variety of beautiful templates that suit your style and profession. Our templates are optimized for mobile, desktop, and sharing, ensuring your portfolio looks great wherever it’s viewed.'

                      ' Completely Free'
                    ' Unlike other platforms, ProfileMosaic is 100% free to use. There are no hidden charges, subscriptions, or premium upgrades – we believe in empowering you without financial constraints.'

                          ' Downloadable and Shareable'
                    ' Once your portfolio is complete, you can download it as a PDF or share it via a unique link. This makes it easy to distribute your portfolio to potential employers, clients, or collaborators.'

                          'Inspiring Features'
                          ' Our app provides built-in tools to help you organize your work, highlight your strengths, and stand out in competitive markets. Showcase your education, certifications, skills, projects, testimonials, and more.',

                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18,color: Colors.white,),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        const Text(
                          'What We Offer',
                          textAlign: TextAlign.start,

                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Who Can Use ProfileMosaic?'
                          'Students and Fresh Graduates'
                      'Create an outstanding portfolio that showcases your academic achievements, internships, and skills to potential employers'
                          'Freelancers and Creatives'
                          'Highlight your projects, artwork, and client testimonials to attract new clients and grow your business.'
                          'Job Seekers'
                          'Impress recruiters by presenting your experience and qualifications in a visually appealing format',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18,color: Colors.white,),
                    ),
                    const SizedBox(height: 20),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Contact Us Section
            SizedBox(
              child: Card(
                color: Color(0xffC2C2C2),
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      ContactForm(),

                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _messageController,
            decoration: const InputDecoration(
              labelText: 'Message',
              border: OutlineInputBorder(),
            ),
            maxLines: 4,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your message';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // Handle form submission logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Message sent successfully!')),
                );
                _nameController.clear();
                _emailController.clear();
                _messageController.clear();
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
