package android.telecom.Logging;

import android.app.r;
import android.provider.SettingsStringUtil;
import android.telecom.Log;
import android.text.TextUtils;
import android.util.Pair;
import com.android.internal.util.IndentingPrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.IllegalFormatException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class EventManager {
    public static final int DEFAULT_EVENTS_TO_CACHE = 10;
    public static final String TAG = "Logging.Events";
    private static final Object mSync = new Object();
    private final Map<Loggable, EventRecord> mCallEventRecordMap;
    private List<EventListener> mEventListeners;
    private LinkedBlockingQueue<EventRecord> mEventRecords;
    private SessionManager.ISessionIdQueryHandler mSessionIdHandler;
    private final Map<String, List<TimedEventPair>> requestResponsePairs;
    private final DateFormat sDateFormat;

    public static class Event {
        public Object data;
        public String eventId;
        public String sessionId;
        public long time;

        public Event(String str, String str2, long j2, Object obj) {
            this.eventId = str;
            this.sessionId = str2;
            this.time = j2;
            this.data = obj;
        }
    }

    public interface EventListener {
        void eventRecordAdded(EventRecord eventRecord);
    }

    public class EventRecord {
        private final List<Event> mEvents = new LinkedList();
        private final Loggable mRecordEntry;

        public class EventTiming extends TimedEvent<String> {
            public String name;
            public long time;

            public EventTiming(String str, long j2) {
                this.name = str;
                this.time = j2;
            }

            @Override // android.telecom.Logging.TimedEvent
            public long getTime() {
                return this.time;
            }

            @Override // android.telecom.Logging.TimedEvent
            public String getKey() {
                return this.name;
            }
        }

        public class PendingResponse {
            String name;
            String requestEventId;
            long requestEventTimeMillis;
            long timeoutMillis;

            public PendingResponse(String str, long j2, long j3, String str2) {
                this.requestEventId = str;
                this.requestEventTimeMillis = j2;
                this.timeoutMillis = j3;
                this.name = str2;
            }
        }

        public EventRecord(Loggable loggable) {
            this.mRecordEntry = loggable;
        }

        public void addEvent(String str, String str2, Object obj) {
            this.mEvents.add(new Event(str, str2, System.currentTimeMillis(), obj));
            Log.i("Event", "RecordEntry %s: %s, %s", this.mRecordEntry.getId(), str, obj);
        }

        public void dump(IndentingPrintWriter indentingPrintWriter) {
            EventRecord eventRecord;
            indentingPrintWriter.print(this.mRecordEntry.getDescription());
            indentingPrintWriter.increaseIndent();
            for (Event event : this.mEvents) {
                indentingPrintWriter.print(EventManager.this.sDateFormat.format(new Date(event.time)));
                indentingPrintWriter.print(" - ");
                indentingPrintWriter.print(event.eventId);
                if (event.data != null) {
                    indentingPrintWriter.print(" (");
                    Object obj = event.data;
                    if ((obj instanceof Loggable) && (eventRecord = (EventRecord) EventManager.this.mCallEventRecordMap.get(obj)) != null) {
                        obj = "RecordEntry " + eventRecord.mRecordEntry.getId();
                    }
                    indentingPrintWriter.print(obj);
                    indentingPrintWriter.print(")");
                }
                if (!TextUtils.isEmpty(event.sessionId)) {
                    indentingPrintWriter.print(SettingsStringUtil.DELIMITER);
                    indentingPrintWriter.print(event.sessionId);
                }
                indentingPrintWriter.println();
            }
            indentingPrintWriter.println("Timings (average for this call, milliseconds):");
            indentingPrintWriter.increaseIndent();
            Map mapAverageTimings = TimedEvent.averageTimings(extractEventTimings());
            ArrayList<String> arrayList = new ArrayList(mapAverageTimings.keySet());
            Collections.sort(arrayList);
            for (String str : arrayList) {
                indentingPrintWriter.printf("%s: %.2f\n", str, mapAverageTimings.get(str));
            }
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.decreaseIndent();
        }

        public List<EventTiming> extractEventTimings() {
            if (this.mEvents == null) {
                return Collections.emptyList();
            }
            LinkedList linkedList = new LinkedList();
            HashMap map = new HashMap();
            for (Event event : this.mEvents) {
                if (EventManager.this.requestResponsePairs.containsKey(event.eventId)) {
                    for (TimedEventPair timedEventPair : (List) EventManager.this.requestResponsePairs.get(event.eventId)) {
                        map.put(timedEventPair.mResponse, new PendingResponse(event.eventId, event.time, timedEventPair.mTimeoutMillis, timedEventPair.mName));
                    }
                }
                PendingResponse pendingResponse = (PendingResponse) map.remove(event.eventId);
                if (pendingResponse != null) {
                    long j2 = event.time - pendingResponse.requestEventTimeMillis;
                    if (j2 < pendingResponse.timeoutMillis) {
                        linkedList.add(new EventTiming(pendingResponse.name, j2));
                    }
                }
            }
            return linkedList;
        }

        public List<Event> getEvents() {
            return this.mEvents;
        }

        public Loggable getRecordEntry() {
            return this.mRecordEntry;
        }
    }

    public interface Loggable {
        String getDescription();

        String getId();
    }

    public EventManager(SessionManager.ISessionIdQueryHandler iSessionIdQueryHandler) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss.SSS");
        this.sDateFormat = simpleDateFormat;
        this.mCallEventRecordMap = new HashMap();
        this.mEventRecords = new LinkedBlockingQueue<>(10);
        this.mEventListeners = new ArrayList();
        this.requestResponsePairs = new HashMap();
        this.mSessionIdHandler = iSessionIdQueryHandler;
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
    }

    private void addEventRecord(EventRecord eventRecord) {
        EventRecord eventRecordPoll;
        Loggable recordEntry = eventRecord.getRecordEntry();
        if (this.mEventRecords.remainingCapacity() == 0 && (eventRecordPoll = this.mEventRecords.poll()) != null) {
            this.mCallEventRecordMap.remove(eventRecordPoll.getRecordEntry());
        }
        this.mEventRecords.add(eventRecord);
        this.mCallEventRecordMap.put(recordEntry, eventRecord);
        synchronized (mSync) {
            Iterator<EventListener> it = this.mEventListeners.iterator();
            while (it.hasNext()) {
                it.next().eventRecordAdded(eventRecord);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeEventCacheSize$1(EventRecord eventRecord) {
        EventRecord eventRecordPoll;
        Loggable recordEntry = eventRecord.getRecordEntry();
        if (this.mEventRecords.remainingCapacity() == 0 && (eventRecordPoll = this.mEventRecords.poll()) != null) {
            this.mCallEventRecordMap.remove(eventRecordPoll.getRecordEntry());
        }
        this.mEventRecords.add(eventRecord);
        this.mCallEventRecordMap.put(recordEntry, eventRecord);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ int lambda$dumpEventsTimeline$0(Pair pair, Pair pair2) {
        return Long.compare(((Event) pair.second).time, ((Event) pair2.second).time);
    }

    public void addRequestResponsePair(TimedEventPair timedEventPair) {
        if (this.requestResponsePairs.containsKey(timedEventPair.mRequest)) {
            this.requestResponsePairs.get(timedEventPair.mRequest).add(timedEventPair);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(timedEventPair);
        this.requestResponsePairs.put(timedEventPair.mRequest, arrayList);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [android.telecom.Logging.a] */
    public void changeEventCacheSize(int i2) {
        LinkedBlockingQueue<EventRecord> linkedBlockingQueue = this.mEventRecords;
        this.mEventRecords = new LinkedBlockingQueue<>(i2);
        this.mCallEventRecordMap.clear();
        linkedBlockingQueue.forEach(new Consumer() { // from class: android.telecom.Logging.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f189b.lambda$changeEventCacheSize$1((EventManager.EventRecord) obj);
            }
        });
    }

    public void dumpEvents(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("Historical Events:");
        indentingPrintWriter.increaseIndent();
        Iterator<EventRecord> it = this.mEventRecords.iterator();
        while (it.hasNext()) {
            it.next().dump(indentingPrintWriter);
        }
        indentingPrintWriter.decreaseIndent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dumpEventsTimeline(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("Historical Events (sorted by time):");
        ArrayList<Pair> arrayList = new ArrayList();
        for (EventRecord eventRecord : this.mEventRecords) {
            Iterator<Event> it = eventRecord.getEvents().iterator();
            while (it.hasNext()) {
                arrayList.add(new Pair(eventRecord.getRecordEntry(), it.next()));
            }
        }
        arrayList.sort(new r(2));
        indentingPrintWriter.increaseIndent();
        for (Pair pair : arrayList) {
            indentingPrintWriter.print(this.sDateFormat.format(new Date(((Event) pair.second).time)));
            indentingPrintWriter.print(",");
            indentingPrintWriter.print(((Loggable) pair.first).getId());
            indentingPrintWriter.print(",");
            indentingPrintWriter.print(((Event) pair.second).eventId);
            indentingPrintWriter.print(",");
            indentingPrintWriter.println(((Event) pair.second).data);
        }
        indentingPrintWriter.decreaseIndent();
    }

    public void event(Loggable loggable, String str, Object obj) {
        String sessionId = this.mSessionIdHandler.getSessionId();
        if (loggable == null) {
            Log.i(TAG, "Non-call EVENT: %s, %s", str, obj);
            return;
        }
        synchronized (this.mEventRecords) {
            if (!this.mCallEventRecordMap.containsKey(loggable)) {
                addEventRecord(new EventRecord(loggable));
            }
            this.mCallEventRecordMap.get(loggable).addEvent(str, sessionId, obj);
        }
    }

    public Map<Loggable, EventRecord> getCallEventRecordMap() {
        return this.mCallEventRecordMap;
    }

    public LinkedBlockingQueue<EventRecord> getEventRecords() {
        return this.mEventRecords;
    }

    public void registerEventListener(EventListener eventListener) {
        if (eventListener != null) {
            synchronized (mSync) {
                this.mEventListeners.add(eventListener);
            }
        }
    }

    public static class TimedEventPair {
        private static final long DEFAULT_TIMEOUT = 3000;
        String mName;
        String mRequest;
        String mResponse;
        long mTimeoutMillis;

        public TimedEventPair(String str, String str2, String str3) {
            this.mTimeoutMillis = DEFAULT_TIMEOUT;
            this.mRequest = str;
            this.mResponse = str2;
            this.mName = str3;
        }

        public TimedEventPair(String str, String str2, String str3, long j2) {
            this.mRequest = str;
            this.mResponse = str2;
            this.mName = str3;
            this.mTimeoutMillis = j2;
        }
    }

    public void event(Loggable loggable, String str, String str2, Object... objArr) {
        if (objArr != null) {
            try {
                if (objArr.length != 0) {
                    str2 = String.format(Locale.US, str2, objArr);
                }
            } catch (IllegalFormatException e2) {
                Log.e(this, e2, "IllegalFormatException: formatString='%s' numArgs=%d", str2, Integer.valueOf(objArr.length));
                str2 = str2 + " (An error occurred while formatting the message.)";
            }
        }
        event(loggable, str, str2);
    }
}
