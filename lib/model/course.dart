class Course {
  String number;
  String title;
  String prereq;
  String imageURL;

  Course({
    this.imageURL,
    this.number,
    this.title,
    this.prereq,
  });
}

var courseList = [
  Course(
    number: 'CMSC 4303',
    title: 'Programming I',
    prereq: '1513',
    imageURL:
        'https://m.media-amazon.com/images/I/517rMbNEp+L._AC_UY327_FMwebp_QL65_.jpg',
  ),
  Course(
      number: 'CMSC 3633',
      title: 'Programming II',
      prereq: '1513',
      imageURL:
          'https://m.media-amazon.com/images/I/61XJ7lB20lL._AC_UL480_FMwebp_QL65_.jpg'),
  Course(
      number: 'CMSC 4412',
      title: 'Software Engineering',
      prereq: '3103',
      imageURL:
          'https://m.media-amazon.com/images/I/91VSEvbH1tL._AC_UL480_FMwebp_QL65_.jpg'),
  Course(
      number: 'CMSC 4403',
      title: 'Web Server Programming',
      prereq: '1513',
      imageURL:
          'https://m.media-amazon.com/images/I/611uU+tf0SL._AC_UY327_FMwebp_QL65_.jpg'),
  Course(
      number: 'CMSC 2103',
      title: 'Discrete Structures',
      prereq: '1513',
      imageURL:
          'https://m.media-amazon.com/images/I/71XfaqjKswL._AC_UY327_FMwebp_QL65_.jpg'),
  Course(
      number: 'CMSC 1423',
      title: 'Begining Programming',
      prereq: 'College Algebra',
      imageURL:
          'https://m.media-amazon.com/images/I/7102H4YF1tL._AC_UY327_FMwebp_QL65_.jpg'),
];
