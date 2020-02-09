@isTest
public class MonthEndAgeCalculatorTester {
    private static final Date PURCHASE_DATE = Date.newInstance(2015, 1, 1);
    
    @isTest
    static void getAge_givenOneAndHalfYearsGap_returnsExpectedAge(){
        Date endDate = Date.newInstance(2016, 7, 1);
        Decimal actual = MonthEndAgeCalculator.getAge(PURCHASE_DATE, endDate);
        System.assertEquals(1.497268, actual);
    }
    
    @isTest
    static void getAge_givenTwoPointSixYearsGap_returnsExpectedAge(){
        Date endDate = Date.newInstance(2017, 8, 7);
        Decimal actual = MonthEndAgeCalculator.getAge(PURCHASE_DATE, endDate);
        System.assertEquals(2.597260, actual);
    }
    
    @isTest
    static void getAge_givenThreeAndHalfYearsGap_returnsExpectedAge(){
        Date endDate = Date.newInstance(2018, 7, 2);
        Decimal actual = MonthEndAgeCalculator.getAge(PURCHASE_DATE, endDate);
        System.assertEquals(3.498630, actual);
    }
    
    @isTest
    static void getAge_givenThreePointSixFiveYearsGap_returnsExpectedAge(){
        Date endDate = Date.newInstance(2018, 8, 26);
        Decimal actual = MonthEndAgeCalculator.getAge(PURCHASE_DATE, endDate);
        System.assertEquals(3.649315, actual);
    }    

    @isTest
    static void getAge_givenEndDateBeforePurchaseDate_returnsZeroAge(){
        Date endDate = Date.newInstance(2014, 8, 26);
        Decimal actual = MonthEndAgeCalculator.getAge(PURCHASE_DATE, endDate);
        System.assertEquals(0.00000, actual);
    } 
}