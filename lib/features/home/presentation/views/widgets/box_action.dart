import 'package:flutercoursetwo/core/widgets/custom_button.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.booktourl});

  final BookModel booktourl;
  // يفضل لما تيجي تستقبل الداتا استقبلها وهي معمولها انكابسولاشن يعني كلها محطوطه فاوبجكت واحد علشان مش كل شوية ارح اغير فالداتا البستقبلها
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            onPressed: _launchUrl,
            text: 'free',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadios: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
            child: CustomButton(
              onPressed: _launchUrl,
              text: 'Free preview',
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadios: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    Uri url = Uri.parse(booktourl.volumeInfo.previewLink!);
    if (await canLaunchUrl(url)) {
      // throw Exception('Could not launch $_url'); هنا بيعمل اكسبشن ودا مش افضل حل
      await launchUrl(url);
    }
  }
}
