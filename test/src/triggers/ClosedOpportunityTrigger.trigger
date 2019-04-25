trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
    
    For(Opportunity o:Trigger.New){
        If(o.StageName	== 'Closed Won'){
           o.WhatId__c=o.Id;
    }
    }
}