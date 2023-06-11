import 'game.dart';

List<List<Scenario>> stages = [
  // Stage 1: 10-20 years
  [
    Scenario(
      description:
          "A friend invites you on a weekend trip. It will cost \$100.",
      choiceA: Choice(
        description: "Go on the trip",
        moneyChange: -100,
        happinessChange: 50,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "The latest gaming console that you have been eyeing for just came out, but it is priced at \$300.",
      choiceA: Choice(
        description: "Buy the console",
        moneyChange: -300,
        happinessChange: 10,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "A fast food restaurant offers you a part time summer job which will overwork you, but the pay is decent. On the other hand, you can spend all your time enjoying with your friends.",
      choiceA: Choice(
        description: "Take the job",
        moneyChange: 100,
        happinessChange: 0,
      ),
      choiceB: Choice(
        description: "Spend time with friends",
        moneyChange: 0,
        happinessChange: 50,
      ),
    ),
    Scenario(
      description:
          "You can spend \$600 to enroll in a course in a nearby college which will guarantee happiness in the future.",
      choiceA: Choice(
        description: "Enroll",
        moneyChange: -600,
        happinessChange: 70,
      ),
      choiceB: Choice(
        description: "Don't enroll",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
  ],
  // Stage 2: 20-30 years
  [
    Scenario(
      description:
          "You have an opportunity to invest in the stock market. It requires \$500.",
      choiceA: Choice(
        description: "Invest in stocks",
        moneyChange: -500,
        happinessChange: 20,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description: "You want to pursue further education. It costs \$2000.",
      choiceA: Choice(
        description: "Enroll in the education program",
        moneyChange: -2000,
        happinessChange: 30,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You need to buy a car for transportation. It costs \$10000.",
      choiceA: Choice(
        description: "Buy the car",
        moneyChange: -10000,
        happinessChange: 40,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You receive a job offer with a higher salary but longer working hours.",
      choiceA: Choice(
        description: "Take the job",
        moneyChange: 500,
        happinessChange: 0,
      ),
      choiceB: Choice(
        description: "Stick with current job",
        moneyChange: 0,
        happinessChange: 20,
      ),
    ),
  ],
  // Stage 3: 30-40 years
  [
    Scenario(
      description: "You want to start a small business. It requires \$5000.",
      choiceA: Choice(
        description: "Start the business",
        moneyChange: -5000,
        happinessChange: 40,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You child wants you to buy him/her a very expensive gaming PC for \$2000.",
      choiceA: Choice(
        description: "Buy it",
        moneyChange: -2000,
        happinessChange: 40,
      ),
      choiceB: Choice(
        description: "Buy a much cheaper one for \$300. ",
        moneyChange: -300,
        happinessChange: 5,
      ),
    ),
    Scenario(
      description:
          "Your house could use some upgrades which will benefit your entire family but also cost a hefty amount (\$5000).",
      choiceA: Choice(
        description: "Upgrade the house",
        moneyChange: -5000,
        happinessChange: 70,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You want to pursue a passion project that requires additional funds of \$5,000, even though there is no guarantee of any monetary gain.",
      choiceA: Choice(
        description: "Invest in it",
        moneyChange: -5000,
        happinessChange: 40,
      ),
      choiceB: Choice(
        description: "Play it safe and give up on the project.",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
  ],
  // Stage 4: 40-60 years
  [
    Scenario(
      description: "You want to invest in real estate. It requires \$10000.",
      choiceA: Choice(
        description: "Invest in real estate",
        moneyChange: -10000,
        happinessChange: 30,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You have ownership of some land for your children, you can sell it for a hefty amount or let your children have it.",
      choiceA: Choice(
        description: "Sell the land",
        moneyChange: 15000,
        happinessChange: 0,
      ),
      choiceB: Choice(
        description: "Keep the land for your children",
        moneyChange: 0,
        happinessChange: 60,
      ),
    ),
    Scenario(
      description:
          "Your child's education expenses have increased significantly, requiring an additional \$15,000 per year.",
      choiceA: Choice(
        description: "Invest in your child's future",
        moneyChange: -15000,
        happinessChange: 90,
      ),
      choiceB: Choice(
        description: "Save up for your retirement",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "You really want to donate to a charity you support. You are considering donating \$4000.",
      choiceA: Choice(
        description: "Donate to the charity",
        moneyChange: -4000,
        happinessChange: 30,
      ),
      choiceB: Choice(
        description: "Save the money",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
  ],
  // Stage 5: 60-80 years
  [
    Scenario(
      description:
          "You can undergo a medical treatment for \$25,000 which will improve your quality of life by a lot.",
      choiceA: Choice(
        description: "Go for the treatment",
        moneyChange: -25000,
        happinessChange: 100,
      ),
      choiceB: Choice(
        description: "Save the money for other uses",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description: "You want to travel the world. It requires \$20000.",
      choiceA: Choice(
        description: "Travel the world",
        moneyChange: -20000,
        happinessChange: 90,
      ),
      choiceB: Choice(
        description: "Continue working",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "Your lifelong friend invites you to a luxurious retirement home which has an entry fee of \$10,000.",
      choiceA: Choice(
        description: "Retire and enjoy with your friend",
        moneyChange: -10000,
        happinessChange: 60,
      ),
      choiceB: Choice(
        description: "Continue working",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
    Scenario(
      description:
          "Your children want financial assistance for major life events such as weddings. They are requesting \$50,000.",
      choiceA: Choice(
        description: "Help your children out",
        moneyChange: -50000,
        happinessChange: 120,
      ),
      choiceB: Choice(
        description: "Ask to them to seek other options",
        moneyChange: 0,
        happinessChange: 0,
      ),
    ),
  ],
];
