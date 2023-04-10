public with sharing class Card {
    Integer rank;
    Integer suit;
    public static List<String> suits = new List<String>{'♣', '♦', '♥', '♠'};
    public static  List<String> suitNames = new List<String>{'Clubs', 'Diamonds', 'Hearts', 'Spades'};
    public static  List<String> ranks = new List<String>{
        'A-', '2-', '3-', '4-', '5-', '6-', '7-',
                  '8-', '9-', '10', 'J-', 'Q-', 'K-'};

    public Card(Integer rank, Integer suit) {
        this.rank = rank;
        this.suit = suit;
    }
    
    public override String toString() {
        return 
        '\n┌───┐' +
        '\n│' + ranks[rank] + ' ' + suits[suit] +'   │'+
        '\n└───┘';
    }

    public static void deal(Integer num) {
        String top = '\n';
        String mid = '\n';
        String bot = '\n';
        String res = '';
        
        for (Integer i = 0; i < num; i++) {
            
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
