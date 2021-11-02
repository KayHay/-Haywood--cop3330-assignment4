# -Haywood--cop3330-assignment4
/*
 *  UCF COP3330 Fall 2021 Assignment 4 Solution
 *  Copyright 2021 Kaylah Haywood
 */
 
 /.idea/
/uml/
/gradle/
/src/
/.gitignore
/build.gradle
/gradlew
/gradlew.bat
/settings.gradle

/ucf.assignments
/package ucf.assignments;

** To-Do List **
import java.util.Scanner;

public class ToDo {
public static void main(String[] args) {

    Scanner input = new Scanner(System.in);

    final int MAX = 100;

    String[] list = new String[MAX];
    int choice = 0;

    while (choice != 3) {

        System.out.println();
        System.out.println("Type 1 to add to the to do list.");
        System.out.println("Type 2 to print the to do list.");
        System.out.println("Type 3 to exit the program.");
        System.out.print("Select an option: ");
        choice = input.nextInt();
        int count = 0;

        if (choice == 1) {
            System.out.println("Keep hitting enter after to do's, if you want to stop, type 'stop'.");
            for (int i=count;i<MAX;i++) {
              list[i] = input.nextLine();
            if (list[i].equals("stop")) break;
              count++;
            }
        }

        if (choice == 2) {
            for (int index = 0;index < count; index++) {
                System.out.println(list[index]);                    
            }                 
        }

    }

}
}
