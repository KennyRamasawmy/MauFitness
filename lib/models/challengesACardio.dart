class ChallengeACardio {
  final int id;
  final String name;
  final String work;
  final String time;
  final String description;
  final String image;
  final String picture;

  const ChallengeACardio(
      {this.id,
      this.name,
      this.work,
      this.time,
      this.description,
      this.image,
      this.picture});
}

List<ChallengeACardio> challengesACardio = [
  const ChallengeACardio(
      id: 1,
      name: "Mountain Climbers",
      work: "Core, Arms, Hamstrings",
      time: "\u{23F1} 5 min",
      description:
          "Get into a high plank position with your hands shoulder-width apart beneath you. Activate your core to keep your upper body and lower body formed in a straight line.",
      image: 'assets/images/mountainclimber.jpg',
      picture:
          "https://www.vissco.com/wp-content/uploads/animation/sub/mountain-climbers.gif"),
  const ChallengeACardio(
      id: 2,
      name: "Forearm Plank",
      work: "Transverse Abdominis, Rectus Abdominis, , Obliques",
      time: "\u{23F1} 5 min",
      description:
          "Assume a push-up position but bend your arms at your elbows so your weight rests on your forearms. Tighten your abs, clench your glutes and keep your body straight from head to heels.",
      image: 'assets/images/forearmplank.jpg',
      picture:
          "https://media.self.com/photos/57fea6654b7c91b2239d76eb/master/w_1600,c_limit/FOREARM_PLANK_ROCKS.gif"),
  const ChallengeACardio(
      id: 3,
      name: "Air Squat",
      work: "Quadriceps, Gluteus Maximums, Hips Adductors",
      time: "\u{23F1} 5 min",
      description:
          "Stand with your feet shoulder-width apart and toes pointing out slightly. Slowly push your hips back and down until you reach a comfortable depth. Keep a slight arc in your back throughout. Pause briefly at the button and slowly return to standing.",
      image: 'assets/images/airsquat.jpg',
      picture:
          "https://images-prod.healthline.com/hlcmsresource/images/topic_centers/Fitness-Exercise/GIFs/400x400_5_Exercises_for_Anterior_Pelvic_Tilt_Squats.gif"),
  const ChallengeACardio(
      id: 4,
      name: "Reverse Pull-Ups",
      work: "Lower back, Upper back",
      time: "\u{23F1} 5 min",
      description:
          "Keeping your body straight, pull yourself up towards the bar by pulling your elbows as far back as you can and trying to touch the bar with your chest. Hold and squeeze your arm and back muscles. Lower yourself back to the start position in a controlled motion.",
      image: 'assets/images/reversepullup.JPG',
      picture:
          "https://177d01fbswx3jjl1t20gdr8j-wpengine.netdna-ssl.com/wp-content/uploads/2019/06/L-Sit-Chin-Up_resized.gif"),
  const ChallengeACardio(
      id: 5,
      name: "Push-Ups",
      work: "Bicep, Tricep, Chest",
      time: "\u{23F1} 5 min",
      description:
          "Get down on all fours, placing your hands slightly wider than your shoulders. Straighten your arms and legs. Lower your body until your chest nearly touches the floor. Pause, then push yourself back up.",
      image: 'assets/images/pushups.jfif',
      picture:
          "https://media4.popsugar-assets.com/files/thumbor/BaWEAcCjtJEjiwf3PqJHnZ_S23A/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/08/10/766/n/1922729/1eae2dcf3d395379_PushUpTwist.gif"),
];
