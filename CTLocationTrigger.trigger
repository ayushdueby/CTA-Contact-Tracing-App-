trigger CTLocationTrigger on Location__c (before insert,before update) {
    switch on trigger.operationType {
        when  BEFORE_INSERT
        {
            CTLocationTriggerHandler.beforeInsert(trigger.new);
        }
        when BEFORE_UPDATE 
        {
            
            CTLocationTriggerHandler.beforeUpdate(trigger.new,trigger.oldMap);
        }
        when AFTER_UPDATE
        {
            CTLocationTriggerHandler.afterUpdate(trigger.new,trigger.oldMap);
        }
    }
}