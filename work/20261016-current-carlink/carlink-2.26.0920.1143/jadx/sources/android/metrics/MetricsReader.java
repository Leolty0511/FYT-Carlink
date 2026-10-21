package android.metrics;

import android.util.EventLog;
import com.android.internal.logging.MetricsLogger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class MetricsReader {
    private Queue<LogMaker> mPendingQueue = new LinkedList();
    private Queue<LogMaker> mSeenQueue = new LinkedList();
    private int[] LOGTAGS = {524292};
    private LogReader mReader = new LogReader();
    private int mCheckpointTag = -1;

    public static class LogReader {
        public void readEvents(int[] iArr, long j2, Collection<Event> collection) {
            ArrayList arrayList = new ArrayList();
            EventLog.readEventsOnWrapping(iArr, TimeUnit.NANOSECONDS.convert(j2, TimeUnit.MILLISECONDS), arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                collection.add(new Event((EventLog.Event) it.next()));
            }
        }

        public void writeCheckpoint(int i2) {
            new MetricsLogger().action(920, i2);
        }
    }

    public void checkpoint() {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() % 2147483647L);
        this.mCheckpointTag = iCurrentTimeMillis;
        this.mReader.writeCheckpoint(iCurrentTimeMillis);
        this.mPendingQueue.clear();
        this.mSeenQueue.clear();
    }

    public boolean hasNext() {
        return !this.mPendingQueue.isEmpty();
    }

    public LogMaker next() {
        LogMaker logMakerPoll = this.mPendingQueue.poll();
        if (logMakerPoll != null) {
            this.mSeenQueue.offer(logMakerPoll);
        }
        return logMakerPoll;
    }

    public void read(long j2) {
        ArrayList<Event> arrayList = new ArrayList();
        try {
            this.mReader.readEvents(this.LOGTAGS, j2, arrayList);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.mPendingQueue.clear();
        this.mSeenQueue.clear();
        for (Event event : arrayList) {
            long timeMillis = event.getTimeMillis();
            Object data = event.getData();
            LogMaker processId = new LogMaker(data instanceof Object[] ? (Object[]) data : new Object[]{data}).setTimestamp(timeMillis).setUid(event.getUid()).setProcessId(event.getProcessId());
            if (processId.getCategory() != 920) {
                this.mPendingQueue.offer(processId);
            } else if (processId.getSubtype() == this.mCheckpointTag) {
                this.mPendingQueue.clear();
            }
        }
    }

    public void reset() {
        this.mSeenQueue.addAll(this.mPendingQueue);
        this.mPendingQueue.clear();
        this.mCheckpointTag = -1;
        Queue<LogMaker> queue = this.mPendingQueue;
        this.mPendingQueue = this.mSeenQueue;
        this.mSeenQueue = queue;
    }

    public void setLogReader(LogReader logReader) {
        this.mReader = logReader;
    }

    public static class Event {
        Object mData;
        int mPid;
        long mTimeMillis;
        int mUid;

        public Event(long j2, int i2, int i3, Object obj) {
            this.mTimeMillis = j2;
            this.mPid = i2;
            this.mUid = i3;
            this.mData = obj;
        }

        public Object getData() {
            return this.mData;
        }

        public int getProcessId() {
            return this.mPid;
        }

        public long getTimeMillis() {
            return this.mTimeMillis;
        }

        public int getUid() {
            return this.mUid;
        }

        public void setData(Object obj) {
            this.mData = obj;
        }

        public Event(EventLog.Event event) {
            this.mTimeMillis = TimeUnit.MILLISECONDS.convert(event.getTimeNanos(), TimeUnit.NANOSECONDS);
            this.mPid = event.getProcessId();
            this.mUid = event.getUid();
            this.mData = event.getData();
        }
    }
}
