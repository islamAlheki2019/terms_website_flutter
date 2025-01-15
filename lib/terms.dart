import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class TermsAndConditionsPage extends StatelessWidget {
  final String htmlContent = """
<h1>Terms and Conditions</h1>


<p>Welcome to <strong>ProfileMosaic</strong>! These Terms and Conditions govern your use of our app and services. By using <strong>ProfileMosaic</strong>, you agree to comply with and be bound by the terms set forth below. If you do not agree with these terms, please do not use our app.</p>

<h2>1. Definitions</h2>
<ul>
  <li><strong>"App"</strong> refers to <strong>ProfileMosaic</strong>, the mobile application available for download on the Apple App Store and Google Play Store.</li>
  <li><strong>"We," "Us," or "Our"</strong> refers to the team behind <strong>ProfileMosaic</strong>.</li>
  <li><strong>"User"</strong> or <strong>"You"</strong> refers to anyone who downloads, accesses, or uses the <strong>ProfileMosaic</strong> app.</li>
  <li><strong>"Content"</strong> refers to all materials provided by <strong>ProfileMosaic</strong>, including but not limited to, text, images, logos, software, and multimedia content.</li>
</ul>

<h2>2. User Responsibilities</h2>
<ul>
  <li>As a user of <strong>ProfileMosaic</strong>, you are responsible for ensuring that any content you create and share within the app is in compliance with applicable laws and regulations.</li>
  <li>You are prohibited from using the app for any illegal or unauthorized purpose, including but not limited to violating intellectual property rights, distributing harmful content, or engaging in fraudulent activities.</li>
  <li>You agree not to upload, post, or share any content that is discriminatory, offensive, abusive, or otherwise inappropriate.</li>
</ul>

<h2>3. Account Creation and Security</h2>
<ul>
  <li>To use certain features of the app, you may be required to create an account. You agree to provide accurate, current, and complete information during the registration process and to update this information as necessary.</li>
  <li>You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</li>
</ul>

<h2>4. Content Ownership and Usage Rights</h2>
<ul>
  <li>All intellectual property rights, including copyrights, trademarks, and patents, related to the app’s content, design, and functionality are owned by <strong>ProfileMosaic</strong>.</li>
  <li>By using the app, you grant <strong>ProfileMosaic</strong> a non-exclusive, worldwide, royalty-free license to use any content you upload or create, solely for the purpose of providing and enhancing the app’s services.</li>
</ul>

<h2>5. Privacy and Data Collection</h2>
<p>Your privacy is important to us.we are not collect any data, to use the application , and protect your personal data.</p>

<h2>6. Termination and Suspension</h2>
<ul>
  <li><strong>ProfileMosaic</strong> reserves the right to suspend or terminate your access to the app if you violate any of these terms or engage in inappropriate behavior.</li>
  <li>Termination of your account may be done without prior notice, and you may lose access to any content you have created or stored in the app.</li>
</ul>

<h2>7. Limitation of Liability</h2>
<ul>
  <li><strong>ProfileMosaic</strong> is not liable for any damages, losses, or liabilities arising from your use of the app, including but not limited to loss of data, loss of business, or personal injury.</li>
  <li>We make no guarantees regarding the app’s availability or reliability. We reserve the right to modify, update, or discontinue any features or services at any time.</li>
</ul>

<h2>8. Indemnity</h2>
<ul>
  <li>You agree to indemnify and hold <strong>ProfileMosaic</strong>, its employees, affiliates, and partners harmless from any claims, damages, or expenses (including legal fees) arising from your use of the app or your violation of these terms.</li>
</ul>

<h2>9. Changes to Terms and Conditions</h2>
<ul>
  <li><strong>ProfileMosaic</strong> reserves the right to update or modify these Terms and Conditions at any time. We will notify you of significant changes, and your continued use of the app will be deemed acceptance of the updated terms.</li>
</ul>

<h2>10. Governing Law</h2>
<ul>
  <li>These Terms and Conditions shall be governed by and construed in accordance with the laws of Egypt.</li>
  <li>Any disputes arising from or related to these terms shall be resolved through binding arbitration in Egypt.</li>
</ul>

<h2>11. Contact Us</h2>
<p>If you have any questions or concerns regarding these Terms and Conditions, please contact us at <a href="mailto:islam.alheky@gmail.com">islam.alheky@gmail.com</a>.</p>
""";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: HtmlWidget(
            htmlContent,
            textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
