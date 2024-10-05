import 'package:flutter/material.dart';
import 'package:influence_app/pages/loginwithmail.dart';

class Signupwithmailscreen extends StatefulWidget {
  const Signupwithmailscreen({super.key});

  @override
  State<Signupwithmailscreen> createState() => _SignupwithmailscreenState();
}

class _SignupwithmailscreenState extends State<Signupwithmailscreen> {
  final _formKey = GlobalKey<FormState>(); // Key to identify the form
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true; // To toggle password visibility
  bool _obscureConfirmPassword = true; // To toggle confirm password visibility
  bool _agreedToTerms = false; // To track if the user has agreed to terms

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      if (!_agreedToTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('You must agree to the terms and conditions.')),
        );
        return;
      }

      // Simulate a signup action (e.g., call a backend service)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signing up...')),
      );

      // Simulate successful signup
      Future.delayed(const Duration(seconds: 2), () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Signup successful!')),
        );

        // Navigate to another screen or perform other actions
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginwithmailscreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Signup With Mail',
          style:
              TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Lato'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/backgroundpic.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Lato'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your email',
                      labelStyle:
                          TextStyle(color: Colors.white, fontFamily: 'Lato'),
                      hintText: 'Enter your email',
                      hintStyle:
                          TextStyle(color: Colors.white70, fontFamily: 'Lato'),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'Lato'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Lato'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Enter your password',
                      labelStyle: const TextStyle(
                          color: Colors.white, fontFamily: 'Lato'),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(
                          color: Colors.white70, fontFamily: 'Lato'),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscurePassword,
                    style: const TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Lato'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Confirm your password',
                      labelStyle: const TextStyle(
                          color: Colors.white, fontFamily: 'Lato'),
                      hintText: 'Confirm your password',
                      hintStyle: const TextStyle(
                          color: Colors.white70, fontFamily: 'Lato'),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscureConfirmPassword,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'Lato'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        value: _agreedToTerms,
                        onChanged: (bool? value) {
                          setState(() {
                            _agreedToTerms = value ?? false;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          'Agree with Terms & Conditions',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Lato'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 160),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFD98324), Color(0xFFE43B11)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      onPressed: _validateAndSubmit,
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Lato'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
