public with sharing class ListPractice {
    public static string carBrandFinder(Integer a) {
        List<String> brands = new List<String>();
        brands.add('Tesla');
        brands.add('Honda');
        brands.add('Acura');
        brands.add('BMW');
        brands.add('Ford');
        brands.add('Honda');
        brands.add('Peugeot');
        String rValue;
        if ( a < brands.size() && a >=0) {
            rValue = brands[a];
        } else {
            rValue = 'No values found';
        }
        return rValue;
    }

    public static void carBrands() {
        List<String> brands = new List<String>();

        brands.add('Tesla');
        brands.add('Honda');
        brands.add('Acura');
        brands.add('BMW');
        brands.add('Ford');
        brands.add('Peugeot');

        System.debug('list of brands: ');
        // System.debug(brands);
        for (String brand : brands) {
            System.debug(brand);
        }
    }
    public static void integerList() {
        List<Integer> integers = new List<Integer>();
        integers.add(1);
        integers.add(2);
        integers.add(3);
        integers.add(4);
        integers.add(5);
        // System.debug(integers);

    }
}
