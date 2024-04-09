trigger CTLocationTracingTrigger on Location_Tracing__c (before insert) {

    switch on trigger.operationType {
        when  BEFORE_INSERT
        {
            CTLocationTracingTriggerHandler.beforeInsert(trigger.new);
        }
    }

}