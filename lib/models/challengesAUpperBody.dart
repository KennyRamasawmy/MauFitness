class ChallengeAUpperBody {
  final String id;
  final String name;
  final String work;
  final String time;
  final String description;
  final String image;
  final String picture;

  const ChallengeAUpperBody(
      {this.id,
      this.name,
      this.work,
      this.time,
      this.description,
      this.image,
      this.picture});
}

List<ChallengeAUpperBody> challengesAUpperBody = [
  const ChallengeAUpperBody(
      id: "1",
      name: "Bench Press",
      work: "Anteiror Deltoids,Chest, Triceps",
      time: "\u{23F1} 5 min",
      description:
          " This exercise is done lying down on a flat bench and pressing a barbell up and down at chest height.",
      image: 'assets/images/bench press.jpg',
      picture:
          "https://tenor.com/view/bench-press-fitness-gif-18409378"),
  const ChallengeAUpperBody(
      id: "2",
      name: "Military Press",
      work: "Deltoids, Triceps",
      time: "\u{23F1} 5 min",
      description:
          "Make sure your forearms are perpendicular to the ground. Begin to press the dumbbells above your head until your arms fully extend. Hold the weight above your head for a moment, and then lower the dumbbells back to shoulder height.",
      image: 'assets/images/military press.jpg',
      picture:
          "https://gfycat.com/excitableoblongfluke"),
  const ChallengeAUpperBody(
      id: "3",
      name: "Plank",
      work: "trapezius, rhomboid major and minor, latissimus dorsi, pectorals",
      time: "\u{23F1} 5 min",
      description:
          "Hold the trunk part of your body in a straight line off the ground. The static exercise engages multiple muscle groups at the same time which makes it extremely effective at strengthening your core.",
      image: 'assets/images/planks abs.jpg',
      picture:
          "https://tenor.com/view/plank-abs-abdominal-plancha-planks-gif-19330755"),
  const ChallengeAUpperBody(
      id: "4",
      name: "T-Bar Rowing",
      work: "Latissimus dorsi, Trapezius, Posterior deltoid",
      time: "\u{23F1} 5 min",
      description:
          "Pull the bar towards your chest, keeping your elbows tight to your body and squeezing your shoulder blades together at the top. Lower to the starting position and repeat.",
      image: 'assets/images/T Bar lift Back.jpg',
      picture:
          "https://9to5strength.com/t-bar-row/"),
  const ChallengeAUpperBody(
      id: "5",
      name: "Dumbell Curl",
      work: "Brachioradialis, Brachialis, and Forearm Flexors",
      time: "\u{23F1} 5 min",
      description:
          "Keep your upper arms stable and shoulders relaxed, bend at the elbow and lift the weights so that the dumbbells approach your shoulders. Your elbows should stay tucked in close to your ribs.",
      image: 'assets/images/dumbell curl.png',
      picture:
          "https://i.gifer.com/7hh1.gif"),
];
