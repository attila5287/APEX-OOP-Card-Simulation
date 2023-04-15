public with sharing class apexsandbox {
    public Boolean isTeenager(Integer age) {
        //code here
        Boolean res;
        if(age>12 && age <=19 ) {
            res = true;
        } else {
            res = false;
        }
        return res;
    }       

    public Integer diff(Integer a, Integer b) {
        Integer res;
        res = Math.abs(a-b);
        return res;
    }

    public Boolean sumEquals(Integer a, Integer b, Integer c) {
        Boolean res;
        if (a+b==c) {
            res = true;
        } else {
            res = false;
        }
        return res;
    }

    public Boolean ascendingOrder(Integer a, Integer b, Integer c) {
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

}
