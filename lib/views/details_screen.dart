import 'package:flutter/material.dart';

import '../core/asset_constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 2),
            // Border around the icon
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.yellow,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            elevation: 1,
                            child: Image.asset(
                              AssetConstants.mangoliaBakery,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Magnolia Bakery",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "3% cashback • ₹250 Welcome Bonus",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Claim Deals Section
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Claim Deals",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      LayoutBuilder(
                        builder: (context, constraints) {
                          // Get the screen width
                          double screenWidth = constraints.maxWidth;

                          int crossAxisCount =2;

                          // Adjust the spacing and child aspect ratio based on screen size
                          double crossAxisSpacing = screenWidth < 600 ? 20.0 : 30.0;
                          double mainAxisSpacing = screenWidth < 600 ? 20.0 : 30.0;
                          double childAspectRatio = screenWidth < 600 ? (1 / 1.6) : (1 / 1.3);

                          return GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: crossAxisSpacing,
                            mainAxisSpacing: mainAxisSpacing,
                            childAspectRatio: childAspectRatio,
                            children: [
                              _buildDealCard(
                                icon: AssetConstants.payAtStore,
                                title: 'Pay using my ',
                                subtitle: 'Balance 500',
                                buttonText: 'Pay Bill',
                                startColor: Color(0xFFB9E8FC), // Light blue
                                endColor: Color(0xFFE3F2FD),   // Soft blue
                              ),
                              _buildDealCard(
                                icon: AssetConstants.buyCoins,
                                title: 'Buy 500',
                                subtitle: 'for just ₹450',
                                buttonText: 'Get for ₹450',
                                startColor: Color(0xFFFFD3E2), // Light pink
                                endColor: Color(0xFFFDE2FF),   // Soft pink/purple
                              ),
                              _buildDealCard(
                                icon: AssetConstants.offers,
                                title: 'Shop above ₹899 ',
                                subtitle: '& get 50',
                                buttonText: 'Pay Bill',
                                startColor: Color(0xFFFFF5DA), // Light peach
                                endColor: Color(0xFFFFFCE1),   // Very soft beige
                              ),
                              _buildDealCard(
                                icon: AssetConstants.storeCashback,
                                title: 'Purchase at store ',
                                subtitle: '& get 5% back',
                                buttonText: 'Pay Bill',
                                startColor: Color(0xFFE3FFDD), // Light green
                                endColor: Color(0xFFEFFFE6),   // Soft mint green
                              ),
                            ],
                          );
                        },
                      )

                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Proof of transaction",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Scan Receipt/share payment screenshot to earn",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Share Payment Image",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  AssetConstants.upiImage,
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,

                      minimumSize:
                          const Size(double.infinity, 50), // Full width
                    ),
                    child: const Text(
                      "Scan Receipt",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDealCard({
    required String icon,
    required String title,
    required String subtitle,
    required String buttonText,
    required Color startColor,
    required Color endColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.white,
            startColor,
            endColor,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                icon,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 14,),
              ),
              if (subtitle.isNotEmpty)
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w800),
                ),
            ],
          ),
          Column(
            children: [
              const DottedDivider(color: Colors.grey),
              const SizedBox(height: 16),
              if (buttonText.isNotEmpty)
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class DottedDivider extends StatelessWidget {
  const DottedDivider({
    super.key,
    this.height = 1,
    this.color = Colors.black,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
