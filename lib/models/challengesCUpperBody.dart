class ChallengeCUpperBody {
  final String id;
  final String name;
  final String work;
  final String time;
  final String description;
  final String image;
  final String picture;

  const ChallengeCUpperBody(
      {this.id,
      this.name,
      this.work,
      this.time,
      this.description,
      this.image,
      this.picture});
}

List<ChallengeCUpperBody> challengesCUpperBody = [
  const ChallengeCUpperBody(
      id: "1",
      name: "Dumbbell Row",
      work: " Latissimus Dorsi, Posterior Deltoids, Teres Major, Trapezius",
      time: "\u{23F1} 5 min",
      description:
          "Stand with your feet shoulder-width apart and hinge at the hips to lean over the bench on one hand, pushing your bum back and keeping your back straight. Row the weight up,making sure that only your arm.",
      image: 'assets/images/dumbell row back.jpg',
      picture:
          "https://gfycat.com/decisivedirtyafghanhound"),
  const ChallengeCUpperBody(
      id: "2",
      name: "Dumbbell Pull Over",
      work: "Pectoralis major, Serratus anterior, Latissimus dorsi",
      time: "\u{23F1} 5 min",
      description:
          "Keeping your core engaged, take the dumbbell slowly down behind your head. Keep a slight bend in your elbows throughout the movement and don't arch your back. Take the weight down until it is about level with your head, then slowly bring it back up to the starting position.",
      image: 'assets/images/dumbell pull over.jpg',
      picture:
          "https://j.gifs.com/K1WAkz.gif"),
  const ChallengeCUpperBody(
      id: "3",
      name: "Dips",
      work: "Pectoralis major, Trapezius, Serratus anterior",
      time: "\u{23F1} 5 min",
      description:
          "Hold your entire body weight up with your arms extended and feet hovering over the floor, ankles crossed. Lower your body until your elbows reach a 90-degree angle before returning to your starting position.",
      image: 'assets/images/dips tricep.jpg',
      picture:
          "https://tenor.com/view/dips-chest-day-workout-work-working-out-gif-16524612"),
  const ChallengeCUpperBody(
      id: "4",
      name: "Deadlift",
      work: "Hamstring, GLutes, Hips, Trapezius",
      time: "\u{23F1} 5 min",
      description:
          "The deadlift is a movement in which your hips hinge backward to lower down and pick up a weighted barbell or kettlebell from the floor. Your back is flat throughout the movement.",
      image: 'assets/images/deadlift.jpg',
      picture:
          "https://www.journalmenu.com/the-deadlift-gifs/"),
  const ChallengeCUpperBody(
      id: "5",
      name: "Leg Raise",
      work: "Lower and Upper Abs, Hamstrings, Quadriceps, Hip Flexors",
      time: "\u{23F1} 5 min",
      description:
          "Lie on your back, legs straight and together. Keep your legs straight and lift them all the way up to the ceiling until your butt comes off the floor. Slowly lower your legs back down till they're just above the floor.",
      image: 'assets/images/leg raise abs.jpg',
      picture:
          "https://tenor.com/view/leg-lifts-gif-18573755"),
];
