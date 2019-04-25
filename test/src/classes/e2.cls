public class e2 {
    public e2 (ApexPages.StandardController cont){}
    List<Campaign> camps = [select Name,Description,StartDate,EndDate,ActualCost,Status from Campaign];
    
    Public List<Campaign> getcamps(){
        return camps;
       
    }

}