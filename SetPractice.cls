public class SetPractice {
    public static Set<Integer> listToSet(List<Integer> li) {
        Set<Integer> uniques = new Set<Integer>();
        
        for (Integer i : li) {
            uniques.add(i);
        }
        System.debug('--- uniques ---');
        System.debug(uniques);
        return uniques; 
    }

    public static Integer sumOfUniqueV(List<Integer> numbers) {
        Integer sum = 0;

        for (Integer i : listToSet(numbers)) {
            sum+=i;
        }
        System.debug(' --- sum --- ');
        System.debug(sum);
        return sum;
    }
}
// ================================
// ---- APEX CODE TO RUN EXEC ANON
// List<Integer> mylist = new List<Integer>{1,2,3,3,4,5,5};
// System.debug(setPractice.sumOfUniqueV(mylist));
// ================================
