class Project {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> technologies;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
  });

  // Add sample data method for easy use
  static List<Project> get sampleProjects => [
    Project(
      title: 'Flutter Chat App',
      description: 'A real-time messaging application built with Flutter and Firebase',
      imageUrl: 'assets/images/chat_app.png',
      technologies: ['Flutter', 'Firebase', 'Provider'],
    ),
    Project(
      title: 'E-commerce App',
      description: 'Online shopping platform with payment integration',
      imageUrl: 'assets/images/ecommerce_app.png',
      technologies: ['Flutter', 'Stripe', 'REST API'],
    ),
    Project(
      title: 'Weather App',
      description: 'Real-time weather updates with beautiful UI',
      imageUrl: 'assets/images/weather_app.png',
      technologies: ['Flutter', 'Weather API', 'Bloc'],
    ),
  ];
}