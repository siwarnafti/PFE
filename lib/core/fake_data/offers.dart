import 'package:mobile_app/core/models/offer.dart';

final List<Offer> fakeOffers = [
  Offer(
    title: 'Jr. Front-End Designer',
    company: 'KickStarter Studio',
    description: 'We are looking for a Jr. Front-End Designer to join our team.',
    imageUrl: 'assets/KickStarter_Studio.jpeg',
    salary: 1800,
    location: 'Ho Chi Minh City',
    category: [
      'Front end',
      'Full Time',
      'Remote',
    ],
    id: '1',
  ),
  Offer(
    title: 'Senior Back-End Developer',
    company: 'Tech Innovators Inc',
    description: 'Seeking a Senior Back-End Developer with 5+ years of experience.',
    imageUrl: 'assets/Tech_Innovators_Inc.jpeg',
    salary: 1500,
    location: 'San Francisco',
    category: ['Back end', 'Full Time', 'Node.js'],
    id: '2',
  ),
  Offer(
    title: 'UI/UX Designer',
    company: 'Creative Minds',
    description: 'Creative UI/UX Designer needed for a fast-paced environment.',
    imageUrl: 'assets/Creative_Minds.jpg',
    salary: 1300,
    location: 'New York',
    category: ['Design', 'Internship', 'Figma'],
    id: '3',
  ),
  Offer(
    title: 'Data Scientist',
    company: 'Data Solutions',
    description: 'Experienced Data Scientist with a background in machine learning.',
    imageUrl: 'assets/Data_Solutions.png',
    salary: 2000,
    location: 'Boston',
    category: ['Data Science', 'Full Time', 'Python'],
    id: '4',
  ),
  Offer(
    title: 'Mobile App Developer',
    company: 'App Creators LLC',
    description: 'Join our team as a Mobile App Developer specializing in Flutter.',
    imageUrl: 'assets/App_Creators_LLC.png',
    salary: 1400,
    location: 'Austin',
    category: [
      'Mobile Development',
      'Part Time',
    ],
    id: '5',
  ),
];
