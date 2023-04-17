// https://www.apexsandbox.io/problem/18
// use above url, switch 18 with the problem no indicated with a # 
public with sharing class apexsandbox {
    public Boolean isTeenager(Integer age) {
        // #18
        Boolean res;
        if(age>12 && age <=19 ) {
            res = true;
        } else {
            res = false;
        }
        return res;
    }       

    public Integer diff(Integer a, Integer b) {
        // #4
        Integer res;
        res = Math.abs(a-b);
        return res;
    }

    public Boolean sumEquals(Integer a, Integer b, Integer c) {
        // #14
        Boolean res;
        if (a+b==c) {
            res = true;
        } else {
            res = false;
        }
        return res;
    }

    public Boolean ascendingOrder(Integer a, Integer b, Integer c) {
        // #20
        if (a<=b && b<=c) {
            return true;
        } else {
            return false;
        }
    }
    
    public String aOrAn(String word) {
        // #21
        String res = '';

        List<String> vowels = new List<String>{
            'a',
            'e',
            'i',
            'o',
            'u'
        };
        List<String> letters = word.split('');

        if (vowels.contains(letters.get(0))) {
            res= 'an '+word;
        }else {
            res= 'a '+word;
        }
        return res;
    }    
    
    public static Integer findLargest(Integer num1, Integer num2, Integer num3) {
        // #3
        List<Integer> numbers = new List<Integer>{
            num1, num2, num3 };

        numbers.sort();

        return numbers[numbers.size()-1];
    }   

    public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
        // #19
        List<Boolean> all = new List<Boolean>{
            passedExam,
            passedAssignments,
            passedProject
        };
        List<Boolean> passed = new List<Boolean>();

        for (Boolean passOrFail : all) {
            if (passOrFail) {
                passed.add(passOrFail);
            }
        }
        if (passed.size()>=2) {
            return true;
        } else {
            return false;
        }
    }    
    
    public Boolean isEndWithZero(Integer num){
         // #90
         if (num - Math.round(num/10)*10 == 0) {
            return true;
        } else {
            return false;
         }
    }
    
    public String whichTwo(Integer a, Integer b, Integer c) {
        // #15
        if (a+b==c) {
            return 'c';
        } else if (a+c==b) {
            return 'b';
        } else if (b+c==a) {
            return 'a';
        } else {
            return '';
        }
    }    

    public String evenOrOdd(Integer num) {
        // #5
        if (Math.mod(num,2) == 0) {
            return 'even';
        } else {
            return 'odd';
        }
    }    

    public Integer rockPaperScissors(String player1, String player2) {
        // #12
        
        // player 1 wins
        Boolean cond1 = (player1 == 'rock' && player2 == 'scissors');
        Boolean cond2 = (player1 == 'scissors' && player2 == 'paper');
        Boolean cond3 = (player1 == 'paper' && player2 == 'rock');
        Boolean player1Wins = (cond1 || cond2 || cond3);
        

        if (player1 == player2) {
            return 0;
        } else if (player1Wins) {
            return 1;
        } else {
            return 2;
        }
    }        

    public String ageGroup(Integer n) {
        /*
         #17 Given a person's age, return their age group as a string:
          'Infant' for ages 0-1, 'Child' for ages 2 - 14, 'Youth' for
           ages 15 - 21, and 'Adult' for ages 22+.
        */
        if (n>=22) {
            return 'Adult';
        } else if (n>=15) {
            return 'Youth';
        } else if (n>=2) {
            return 'Child';
        } else {
            return 'Infant';
        }
    }
    public Boolean companionPlants(String plant1, String plant2) {
        /* 
            #54 Some plants are considered companion plants. They grow 
            better when planted next to each other. For the purpose of 
            this problem, we consider the following plants to be 
            companions: lettuce and cucumbers, lettuce and onions, 
            onions and carrots, and onions and tomatoes.
        */
        // lettuce and cucumbers
        // lettuce and onions
        // onions and carrots
        // onions and tomatoes
        String p = plant1+plant2; // p: plants
        // c: condition
        Boolean c1 = (p.contains('lettuce') && p.contains('cucumbers'));
        Boolean c2 = (p.contains('lettuce') && p.contains('onions'));
        Boolean c3 = (p.contains('onions') && p.contains('carrots'));
        Boolean c4 = (p.contains('onions') && p.contains('tomatoes'));

        if (c1 || c2 || c3 || c4) {
            return true;
        } else {
            return false;
        }
    }
    
    public Boolean isLeapYear(Integer year) {
        /*
            #6 A year is considered a leap year if it is evenly divisible by 4, with 
            the exception of years that are also evenly divisible by 100. Years evenly 
            divisible by 100 must also be evenly evenly divisible by 400 to by 
            considered leap years. Implement a method isLeapYear that takes as input an 
            Integer year and returns true if the year is a leap year, and false 
            otherwise.
        */
        Boolean div4 = (Math.mod(year,   4) == 0);
        Boolean div100 = (Math.mod(year, 100) == 0);
        Boolean div400 = (Math.mod(year, 400) == 0);

        if (div4) {
            if (div100) {
                if (div400) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return true;
            }
            
        } else {
            return false;
        }
        
    }
    
    public Boolean isPrime(Integer num) {
        /*
            #7 Implement the function isPrime that takes as input an 
            integer greater than 1, returns true if the integer is a prime 
            number, and returns false otherwise. Assume that the input 
            will always be greater than 1.
        */
        List<Integer> dividers = new List<Integer>();
        for (Integer i = 2; i < num; i++) {
            if ((Math.mod(num,i) == 0)) {
                dividers.add(i);
            }   
        }

        if (num <2) {
            return false;
        } else if (num==2) {
            return true;
        } else if (dividers.size()>0) {
            return false;
        } else {
            return true;
        }
    }
    
    public Integer sumToN(Integer n) {
        /*
            #16 Implement the method sumToN that calculates and 
            returns the sum of all numbers (inclusive) from 1 to n. 
            Assume that n will be non-zero positive integer. 
        */
        Integer res =  n*(n+1)/2;
        return res;
    }    
    
    public String formatName(String firstName, String lastName) {
        // #9 
        return firstName + ' ' + lastName;
    }
    
    public String formatName(String firstName, String lastName) {
        // #10 
        Boolean lastBlank = String.IsBlank(lastName);
        Boolean firstBlank = String.IsBlank(firstName);
        Boolean bothBlank = (lastBlank && firstBlank);

        if (bothBlank) {
            return '';
        } else if ( lastBlank ) {
            return firstName;   
        } else if (firstBlank ) {
            return lastName;   
        } else {
            return lastName + ', ' + firstName;
        } 
    }
    public String nameFromEmail(String email) {
        /* 
            #11 Implement a function nameFromEmail that takes as input a
            valid email address in the format 
            firstname.lastname@example.com. The function should extract
             the first name and last name from 
            this email address and return a capitalized full name (i.e. 
            FirstName LastName). Assume that the input will always be 
            a valid email address with both the first name and last 
            name separated by a period (.).
        */
        String firstName = email.substringBefore('.');
        String lastName = email.subStringBetween('.','@');
        String firstNameLower = firstName.toLowerCase();
        String lastNameLower = lastName.toLowerCase();

        return firstNameLower.capitalize()+' '+lastNameLower.capitalize();
    }

    public String changeTimeFormat(String strTime) {
        /* 
            #79 13:50 and 01:50 PM are 24-hour and 12-hour 
            representations of the same time. Implement the method 
            changeTimeFormat that takes as input a string strTime 
            formatted as a 24-hour string, and returns the equivalent 
            12-hour string.
        */
        strTime = strTime+' ';
        String hourStr = strTime.subStringBefore(':');
        String minStr = strTime.subStringBetween(':', ' ');
        Integer hour = Integer.valueOf(hourStr);
        Integer min = Integer.valueOf(minStr);
        
        String res = '';
        String amPm = '';

        if (hour <12) {
            amPm = ' AM';
        } else {
            hour = hour - 12;
            amPm = ' PM';
        }
        
        if (hour<10 && hour>0) {
            res =  '0'+ hour.format();
        }else if (hour == 0) {
            hour= hour +12;
            res =  ''+hour.format();
        } else {
            res =  ''+ hour.format();
        }

        if (min<10) {
            res = res + ':' +'0'+ min.format() + amPm;
        } else {
            res = res+ ':'  + min.format() + amPm;
        }

        return res;
  
    }
    
}
