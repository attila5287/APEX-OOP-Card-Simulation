/* EXECUTE ANONYMOUS 
System.debug('------ Attila -------');
Deck.deal(5);
System.debug('------ Juma   -------');
Deck.deal(5);
*/
public with sharing class Deck {
    public static List<String> suits = new List<String>{'♣', '♦', '♥', '♠'};
    public static  List<String> ranks = new List<String>{
        'A ', '2 ', '3 ', '4 ', '5 ', '6 ', '7 ',
                  '8 ', '9 ', '10', 'J ', 'Q ', 'K '
                };
    
    public Deck() {
    }
                 
    public static void deal(Integer numberOfCards) {
        // Collections.shuffle([1,2,3]);
        String res = ''; //result
        String top = '\n', mid = '\n', bot = '\n';
        
        for (Integer i = 0; i < numberOfCards; i++) {
            Integer randomRank = Math.round(Math.random()*(ranks.size()-1));
            Integer randomSuit = Math.round(Math.random()*(suits.size()-1));
            top+='┌───┐';
            mid+='│ '+ranks[randomRank]+suits[randomSuit]+' │';
            bot+='└───┘';
        }

        res =top + mid + bot;
        System.debug(res);
        
    }
}
