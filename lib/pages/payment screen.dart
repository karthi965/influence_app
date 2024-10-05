import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _selectedPaymentIndex = -1; // Default no payment method selected
  final List<String> paymentMethods = [
    'Paytm',
    'Credit Card',
    'Debit Card',
    'Google Pay',
  ];

  // Corresponding asset images for each payment method
  final List<String> paymentImages = [
    'image/paytm-icon.png',
    'image/credit crd.png',
    'image/debitcard.png',
    'image/gpay.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Payment Method',
          style:
              TextStyle(fontSize: 18, fontFamily: 'Lato', color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/1234556.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 100),
            ...List.generate(
              paymentMethods.length,
              (index) => buildPaymentOption(index),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: _selectedPaymentIndex != -1
                  ? () {
                      _showPaymentSuccessDialog();
                    }
                  : null,
              child: const Text('Confirm Payment'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: Size(size.width, 50),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildPaymentOption(int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1,
          color: _selectedPaymentIndex == index ? Colors.blue : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Radio<int>(
          value: index,
          groupValue: _selectedPaymentIndex,
          onChanged: (int? value) {
            setState(() {
              _selectedPaymentIndex = value!;
            });
          },
        ),
        title: Row(
          children: [
            Image.asset(
              paymentImages[index],
              width: 50, // Adjust image width
              height: 50, // Adjust image height
            ),
            const SizedBox(width: 10), // Space between image and text
            Text(
              paymentMethods[index],
              style: const TextStyle(
                  color: Colors.white), // Set text color to white
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Congratulations !'),
          content: const Text('Done.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
