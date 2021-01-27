# Scripts For School

This is a project that I put my bash scripts that are related to the tasks I have as a student on university.

# Saving and calculating your grades

- Create a file named "grades" in project folder.
- Put your grades in it in this format:

```
ClassCode - ClassName,gradeYouAim,firstGrade,firstGradePercentage,firstGradeName,secondGrade,secondGradePercentage,secondGradeName...
ClassCode - ClassName,gradeYouAim,...
```

You can put as many grades as you want. But be sure that their overal percantage is not exceeded 1.
Also, you can put as many classes as you want.
Here is an example

```
CE215 - Discrete Structures,85.00,70,0.25,Homeworks,84,0.3,Midterm
CE221 - Data Structures and Algorithms,90.00,95,0.3,Midterm,81,0.3,Lab
```

- Once you save your grades file, make calcGrades.sh executable with the following:

```
$ chmod +x calcGrades.sh
```

- Then you should be able to run the script and see the output

```
$ ./calcGrades.sh
CE215 - Discrete Structures
70	25%	Homeworks
84	30%	Midterm
Average: 77.6364
Needed: 94

CE221 - Data Structures and Algorithms
95	30%	Midterm
81	30%	Lab
Average: 88
Needed: 93

```
