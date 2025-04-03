package utils;

public class DiscountCalculator {

    public double calculateDiscount(double amount) {
        if (amount > 1000) {
            return amount * 0.05;
        } else {
            return amount * 0.02;
        }
    }
}