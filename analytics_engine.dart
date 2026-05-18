//this code do print number dicideable by 3 and then add them using loops 
// print # 4x4 grid 



import 'dart:io';

void main() {
  String projectName = ("Dart Learning Journey");
  int noOfTasks = 20;
  double completedTasks = 100.0;
  const versionControl = 1.0;
  bool isRunning = true;
  int input = 1;

  print("Walcome to the $projectName Engine Version $versionControl");
  print("NO of tasks are $noOfTasks");
  print("NO of completed tasks Ratio $completedTasks %");

  while (isRunning) {
    print("Avilable fetures of the Engien are ");
    print("1: Run Task Disturbitions");
    print("2: Render a 4x4 grid");
    print("3: ShutDown the system ");
    print("Your input to the Engine is $input ");

    switch (input) {
      case 1:
        int projectMatrics = 0;
        for (int i = 0; i < 15; i++) {
            if (i == 13) {
              continue;
            }
          if (i % 3 == 0) {
            projectMatrics += i;
            print("Analysis  done the matrics sum is $projectMatrics");
          }
        }
        input =2;
      case 2:
        print("Renderring system data base");
        for (int i = 0; i < 4; i++) {
          for (int j = 0; j < 4; j++) {
            stdout.write("#");
          }
          print("");
        }
        input= 3;
      case 3:
        print("Exiting the program");
        isRunning = false;

      default:
        print("invalid Seclection please trying again");
    }
  }
  print("Engine shutdown Succesfully");
}
