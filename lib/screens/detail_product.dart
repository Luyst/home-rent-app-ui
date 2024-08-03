import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_rent_app/widgets/gallery.dart';

import '../widgets/button_main.dart';

const LinearGradient blueOceanGradient = LinearGradient(
  colors: [
    Color.fromRGBO(160, 218, 251, 1), // rgba(160, 218, 251, 1)
    Color.fromRGBO(10, 142, 217, 1), // rgba(10, 142, 217, 1)
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const String avatar =
    'https://lh3.googleusercontent.com/a/ACg8ocKYLbnYosoTemFGd6oD5X41rEnF86LEChE5ZZpzaa4Q7foPJCwH=s360-c-no';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> house;

  DetailPage({required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 304,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          house['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 14,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 100,
                          padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 0),
                          decoration: BoxDecoration(
                            color:
                                Colors.black38, // Semi-transparent background
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(8.0), // Bottom-left corner
                              bottomRight:
                                  Radius.circular(8.0), // Bottom-right corner
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                house['nameHouse'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                house['address'],
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.15),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.bed,
                                            color: Colors.white70,
                                            size: 12,
                                          ),
                                        ),
                                        SizedBox(width: 4.0),
                                        Text(
                                          '${house['bedroom']} Bedroom',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.15),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.bath,
                                            color: Colors.white70,
                                            size: 12,
                                          ),
                                        ),
                                        SizedBox(width: 4.0),
                                        Text(
                                          '${house['bathroom']} Bathroom',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Description',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '${house['description']}',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(avatar),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Nguyen Luong Duc Huy',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Owner',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ButtonIconMain(
                        icon: Icon(
                          FontAwesomeIcons.phone,
                          color: Colors.white,
                          size: 12,
                        ),
                        size: 28,
                        onPressed: () => {},
                      ),
                      SizedBox(width: 4),
                      // Message Icon
                      ButtonIconMain(
                        icon: Icon(
                          FontAwesomeIcons.message,
                          color: Colors.white,
                          size: 12,
                        ),
                        size: 28,
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Thumnail(
                        img:
                            'https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__',
                      ),
                      Thumnail(
                          img:
                              'https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__'),
                      Thumnail(
                          img:
                              'https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__'),
                      Thumnail(
                          img:
                              'https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__'),
                    ],
                  )
                ],
              ),
              Container(
                height: 150,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/283a/ab35/bdf8034cf30d137c478ce73bd08713fd?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BXnK24UpfGwFsCVT9g8aGnon6awZx32PrJf04i~69sWRYiJPsEBcm-2UWklhRdyft3Rm5TiZmcGDxLaAX~ioEOiXf4zO1ak4uquXtoj1IsmRwApMORiVIuizbKPTWUQ9mHt6c7Eph-yIwP0rxC9ti0R7YoFObRbVBOW-80iFRg1hmtFHCgk3X34woK9ZMPMEuVav9WPjBDiYl7fck3tJbyv~HGVvmn5Xizi4~SlmfcvWjWrQa8s4suTzGoFbRht2M3m~uxLzm26QLmlhg7tNrW7DBB03WqkPyRUV06Ks8k6KumDfptcI4SsV2R~J~hiFlCAB7YfRBHeFgz6Weie65g__',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Rp ${house['price']}/Year',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: blueOceanGradient,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.transparent, // Set background to transparent
                        shadowColor: Colors
                            .transparent, // Remove shadow to prevent showing edges
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Match border radius to container
                        ),
                      ),
                      onPressed: () {
                        // Add your navigation logic here
                      },
                      child: Text(
                        'Rent Now',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
