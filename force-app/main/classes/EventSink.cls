public class EventSink implements EventSinkInterface {
    public EventSink() {

    }

    public void sinkIdentify(Event.Identify event) {
        EventData__c record = new EventData__c();
        record.Kind__c = 'identify';
        record.Raw__c  = JSON.serialize(event.toGeneric());

        insert record;
    }
}