public class Car {
    public String make = '';
    public String model = '';
    public Car() {
        System.debug('constructor called...');
    }

    public Car(String make, String model) {
        this.make = make;
        this.model = model;
    }
    public void drive() {
        System.debug(this.make+ ' ' + this.model+ ' is on drive...');
    }   

    
}

