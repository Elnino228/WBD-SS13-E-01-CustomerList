package customer;

import java.util.Date;

public class Customer {
    private String name;
    private String birthDay;
    private String address;
//    private String image;

    public Customer() {
    }
    public Customer(String name,String birthDay,String address) {
        this.name=name;
        this.address=address;
        this.birthDay=birthDay;
//        this.image=image;
    }

    public String getName() {
        return name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public String getAddress() {
        return address;
    }

//    public String getImage() {
//        return image;
//    }
}

