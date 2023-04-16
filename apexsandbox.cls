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
    
    


}
