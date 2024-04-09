trigger CTPeopleTracingTrigger on People_Tracing__c (before insert,after insert) {

    switch on trigger.operationType {
        
        when  BEFORE_INSERT
        {
            CTPersonTracingTriggerHandler.beforeInsert(trigger.new);
        }
    }
}