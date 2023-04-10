public with sharing class Deck {
    public static List<String> suits = new List<String>{'♣', '♦', '♥', '♠'};
    public static  List<String> ranks = new List<String>{
        'A-', '2-', '3-', '4-', '5-', '6-', '7-',
                  '8-', '9-', '10', 'J-', 'Q-', 'K-'};
    
    public Deck() {
        System.debug()
    }
                 
    public static void deal(Integer numberOfCards) {
        // Collections.shuffle([1,2,3]);
        
        String top = '\n';
        String mid = '\n';
        String bot = '\n';
        String res = '';
        
        for (Integer i = 0; i < numberOfCards; i++) {
            
            Integer randomRank = Math.round(Math.random()*(ranks.size()-1));
            Integer randomSuit = Math.round(Math.random()*(suits.size()-1));
            top+='┌───┐';
            mid+='│ '+ranks[randomRank]+suits[randomSuit]+' │';
            bot+='└───┘';
        }
        res+=top;
        res+=mid;
        res+=bot;
        System.debug(res);
    }

}
