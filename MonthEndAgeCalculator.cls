public class MonthEndAgeCalculator {
    public static Decimal getAge(Date purchaseDate, Date endDate){
        Date startOfPeriod = purchaseDate;
        Double remainingDays = purchaseDate.daysBetween(endDate);
        Decimal countYears = 0;
        
        while(remainingDays >=0){
            Date dateInNextYear = Date.newInstance(startOfPeriod.year()+1, startOfPeriod.month(), startOfPeriod.day());
            Integer daysInMostRecentYear = startOfPeriod.daysBetween(dateInNextYear);
            if(remainingDays >= daysInMostRecentYear){
                countYears += 1;
                startOfPeriod = dateInNextYear;
            }
            else{
		countYears += remainingDays / daysInMostRecentYear;                
            }
            remainingDays -= daysInMostRecentYear;
        }
        
        return countYears.setScale(6, RoundingMode.HALF_EVEN);
    }
}
