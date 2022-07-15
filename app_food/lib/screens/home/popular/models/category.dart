class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/images/asian-orange-chicken.jpg',
      title: '包子',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-4.jpg',
      title: '炒米粉',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-43.jpg',
      title: '牛肉飯',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-recipe-1319112.jpg',
      title: '蛋餅',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/asian-orange-chicken.jpg',
      title: '雞腿飯',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/images/asian-orange-chicken.jpg',
      title: '酸辣湯',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/chicken-fried-rice-54.jpg',
      title: '紫菜湯',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/asian-orange-chicken.jpg',
      title: '蛋花湯',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-recipe-1319112.jpg',
      title: '螃蟹',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/asian-orange-chicken.jpg',
      title: '蝦仁炒飯',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/chicken-fried-rice-54.jpg',
      title: '排骨飯',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-recipe-1319112.jpg',
      title: '紅燒魚',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-43.jpg',
      title: '北京烤鴨',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/chicken-fried-rice-54.jpg',
      title: '壽司',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-4.jpg',
      title: '饅頭',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-43.jpg',
      title: '陽春麵',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/general-tsos-chicken-4.jpg',
      title: '水餃',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    // Category(
    //   imagePath: 'assets/images/general-tsos-chicken-4.jpg',
    //   title: '水餃',
    //   lessonCount: 28,
    //   money: 208,
    //   rating: 4.9,
    // ),
  ];
}
