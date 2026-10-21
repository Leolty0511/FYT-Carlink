package com.android.internal.midi;

import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class EventScheduler {
    private static final long NANOS_PER_MILLI = 1000000;
    private boolean mClosed;
    private final Object mLock = new Object();
    private FastEventQueue mEventPool = null;
    private int mMaxPoolSize = 200;
    private volatile SortedMap<Long, FastEventQueue> mEventBuffer = new TreeMap();

    public class FastEventQueue {
        volatile long mEventsAdded = 1;
        volatile long mEventsRemoved = 0;
        volatile SchedulableEvent mFirst;
        volatile SchedulableEvent mLast;

        public FastEventQueue(SchedulableEvent schedulableEvent) {
            this.mFirst = schedulableEvent;
            this.mLast = this.mFirst;
        }

        public void add(SchedulableEvent schedulableEvent) {
            schedulableEvent.mNext = null;
            this.mLast.mNext = schedulableEvent;
            this.mLast = schedulableEvent;
            this.mEventsAdded++;
        }

        public SchedulableEvent remove() {
            this.mEventsRemoved++;
            SchedulableEvent schedulableEvent = this.mFirst;
            this.mFirst = schedulableEvent.mNext;
            schedulableEvent.mNext = null;
            return schedulableEvent;
        }

        public int size() {
            return (int) (this.mEventsAdded - this.mEventsRemoved);
        }
    }

    public static class SchedulableEvent {
        private volatile SchedulableEvent mNext = null;
        private long mTimestamp;

        public SchedulableEvent(long j2) {
            this.mTimestamp = j2;
        }

        public long getTimestamp() {
            return this.mTimestamp;
        }

        public void setTimestamp(long j2) {
            this.mTimestamp = j2;
        }
    }

    private SchedulableEvent removeNextEventLocked(long j2) {
        FastEventQueue fastEventQueue = this.mEventBuffer.get(Long.valueOf(j2));
        if (fastEventQueue.size() == 1) {
            this.mEventBuffer.remove(Long.valueOf(j2));
        }
        return fastEventQueue.remove();
    }

    public void add(SchedulableEvent schedulableEvent) {
        synchronized (this.mLock) {
            FastEventQueue fastEventQueue = this.mEventBuffer.get(Long.valueOf(schedulableEvent.getTimestamp()));
            if (fastEventQueue == null) {
                long jLongValue = this.mEventBuffer.isEmpty() ? Long.MAX_VALUE : this.mEventBuffer.firstKey().longValue();
                this.mEventBuffer.put(Long.valueOf(schedulableEvent.getTimestamp()), new FastEventQueue(schedulableEvent));
                if (schedulableEvent.getTimestamp() < jLongValue) {
                    this.mLock.notify();
                }
            } else {
                fastEventQueue.add(schedulableEvent);
            }
        }
    }

    public void addEventToPool(SchedulableEvent schedulableEvent) {
        FastEventQueue fastEventQueue = this.mEventPool;
        if (fastEventQueue == null) {
            this.mEventPool = new FastEventQueue(schedulableEvent);
        } else if (fastEventQueue.size() < this.mMaxPoolSize) {
            this.mEventPool.add(schedulableEvent);
        }
    }

    public void close() {
        synchronized (this.mLock) {
            this.mClosed = true;
            this.mLock.notify();
        }
    }

    public void flush() {
        this.mEventBuffer = new TreeMap();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public SchedulableEvent getNextEvent(long j2) {
        SchedulableEvent schedulableEventRemoveNextEventLocked;
        synchronized (this.mLock) {
            if (this.mEventBuffer.isEmpty()) {
                schedulableEventRemoveNextEventLocked = null;
            } else {
                long jLongValue = this.mEventBuffer.firstKey().longValue();
                if (jLongValue <= j2) {
                    schedulableEventRemoveNextEventLocked = removeNextEventLocked(jLongValue);
                } else {
                    schedulableEventRemoveNextEventLocked = null;
                }
            }
        }
        return schedulableEventRemoveNextEventLocked;
    }

    public SchedulableEvent removeEventfromPool() {
        FastEventQueue fastEventQueue = this.mEventPool;
        if (fastEventQueue == null || fastEventQueue.size() <= 1) {
            return null;
        }
        return this.mEventPool.remove();
    }

    public SchedulableEvent waitNextEvent() {
        SchedulableEvent schedulableEventRemoveNextEventLocked;
        synchronized (this.mLock) {
            while (!this.mClosed) {
                long j2 = 2147483647L;
                if (!this.mEventBuffer.isEmpty()) {
                    long jNanoTime = System.nanoTime();
                    long jLongValue = this.mEventBuffer.firstKey().longValue();
                    if (jLongValue <= jNanoTime) {
                        schedulableEventRemoveNextEventLocked = removeNextEventLocked(jLongValue);
                    } else {
                        long j3 = ((jLongValue - jNanoTime) / 1000000) + 1;
                        if (j3 <= 2147483647L) {
                            j2 = j3;
                        }
                    }
                }
                this.mLock.wait((int) j2);
            }
            schedulableEventRemoveNextEventLocked = null;
        }
        return schedulableEventRemoveNextEventLocked;
    }
}
