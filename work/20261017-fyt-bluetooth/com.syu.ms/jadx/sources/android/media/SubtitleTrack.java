package android.media;

import android.graphics.Canvas;
import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public abstract class SubtitleTrack implements MediaTimeProvider.OnMediaTimeListener {
    private static final String TAG = "SubtitleTrack";
    private MediaFormat mFormat;
    private long mLastTimeMs;
    private long mLastUpdateTimeMs;
    private Runnable mRunnable;
    public MediaTimeProvider mTimeProvider;
    public boolean mVisible;
    public final LongSparseArray<Run> mRunsByEndTime = new LongSparseArray<>();
    public final LongSparseArray<Run> mRunsByID = new LongSparseArray<>();
    public final Vector<Cue> mActiveCues = new Vector<>();
    public boolean DEBUG = false;
    public Handler mHandler = new Handler();
    private long mNextScheduledTimeMs = -1;
    public CueList mCues = new CueList();

    public static class Cue {
        public long mEndTimeMs;
        public long[] mInnerTimesMs;
        public Cue mNextInRun;
        public long mRunID;
        public long mStartTimeMs;

        public void onTime(long j2) {
        }
    }

    public static class CueList {
        private static final String TAG = "CueList";
        public boolean DEBUG = false;
        private SortedMap<Long, Vector<Cue>> mCues = new TreeMap();

        public class EntryIterator implements Iterator<Pair<Long, Cue>> {
            private long mCurrentTimeMs;
            private boolean mDone;
            private Pair<Long, Cue> mLastEntry;
            private Iterator<Cue> mLastListIterator;
            private Iterator<Cue> mListIterator;
            private SortedMap<Long, Vector<Cue>> mRemainingCues;

            public EntryIterator(SortedMap<Long, Vector<Cue>> sortedMap) {
                if (CueList.this.DEBUG) {
                    Log.v(CueList.TAG, sortedMap + ProxyProperties.LOCAL_EXCL_LIST);
                }
                this.mRemainingCues = sortedMap;
                this.mLastListIterator = null;
                nextKey();
            }

            private void nextKey() {
                do {
                    try {
                        SortedMap<Long, Vector<Cue>> sortedMap = this.mRemainingCues;
                        if (sortedMap == null) {
                            throw new NoSuchElementException(ProxyProperties.LOCAL_EXCL_LIST);
                        }
                        long jLongValue = sortedMap.firstKey().longValue();
                        this.mCurrentTimeMs = jLongValue;
                        this.mListIterator = this.mRemainingCues.get(Long.valueOf(jLongValue)).iterator();
                        try {
                            this.mRemainingCues = this.mRemainingCues.tailMap(Long.valueOf(this.mCurrentTimeMs + 1));
                        } catch (IllegalArgumentException unused) {
                            this.mRemainingCues = null;
                        }
                        this.mDone = false;
                    } catch (NoSuchElementException unused2) {
                        this.mDone = true;
                        this.mRemainingCues = null;
                        this.mListIterator = null;
                        return;
                    }
                    this.mDone = true;
                    this.mRemainingCues = null;
                    this.mListIterator = null;
                    return;
                } while (!this.mListIterator.hasNext());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.mDone;
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.mLastListIterator != null) {
                    Pair<Long, Cue> pair = this.mLastEntry;
                    if (pair.second.mEndTimeMs == pair.first.longValue()) {
                        this.mLastListIterator.remove();
                        this.mLastListIterator = null;
                        if (((Vector) CueList.this.mCues.get(this.mLastEntry.first)).size() == 0) {
                            CueList.this.mCues.remove(this.mLastEntry.first);
                        }
                        Cue cue = this.mLastEntry.second;
                        CueList.this.removeEvent(cue, cue.mStartTimeMs);
                        long[] jArr = cue.mInnerTimesMs;
                        if (jArr != null) {
                            for (long j2 : jArr) {
                                CueList.this.removeEvent(cue, j2);
                            }
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException(ProxyProperties.LOCAL_EXCL_LIST);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Pair<Long, Cue> next() {
                if (this.mDone) {
                    throw new NoSuchElementException(ProxyProperties.LOCAL_EXCL_LIST);
                }
                this.mLastEntry = new Pair<>(Long.valueOf(this.mCurrentTimeMs), this.mListIterator.next());
                Iterator<Cue> it = this.mListIterator;
                this.mLastListIterator = it;
                if (!it.hasNext()) {
                    nextKey();
                }
                return this.mLastEntry;
            }
        }

        private boolean addEvent(Cue cue, long j2) {
            Vector<Cue> vector = this.mCues.get(Long.valueOf(j2));
            if (vector == null) {
                vector = new Vector<>(2);
                this.mCues.put(Long.valueOf(j2), vector);
            } else if (vector.contains(cue)) {
                return false;
            }
            vector.add(cue);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeEvent(Cue cue, long j2) {
            Vector<Cue> vector = this.mCues.get(Long.valueOf(j2));
            if (vector != null) {
                vector.remove(cue);
                if (vector.size() == 0) {
                    this.mCues.remove(Long.valueOf(j2));
                }
            }
        }

        public void add(Cue cue) {
            long j2 = cue.mStartTimeMs;
            if (j2 < cue.mEndTimeMs && addEvent(cue, j2)) {
                long j3 = cue.mStartTimeMs;
                long[] jArr = cue.mInnerTimesMs;
                if (jArr != null) {
                    for (long j4 : jArr) {
                        if (j4 > j3 && j4 < cue.mEndTimeMs) {
                            addEvent(cue, j4);
                            j3 = j4;
                        }
                    }
                }
                addEvent(cue, cue.mEndTimeMs);
            }
        }

        public Iterable<Pair<Long, Cue>> entriesBetween(final long j2, final long j3) {
            return new Iterable<Pair<Long, Cue>>() { // from class: android.media.SubtitleTrack.CueList.1
                @Override // java.lang.Iterable
                public Iterator<Pair<Long, Cue>> iterator() {
                    if (CueList.this.DEBUG) {
                        Log.d(CueList.TAG, "slice (" + j2 + ", " + j3 + "]=");
                    }
                    try {
                        CueList cueList = CueList.this;
                        return cueList.new EntryIterator(cueList.mCues.subMap(Long.valueOf(j2 + 1), Long.valueOf(j3 + 1)));
                    } catch (IllegalArgumentException unused) {
                        return CueList.this.new EntryIterator(null);
                    }
                }
            };
        }

        public long nextTimeAfter(long j2) {
            try {
                SortedMap<Long, Vector<Cue>> sortedMapTailMap = this.mCues.tailMap(Long.valueOf(j2 + 1));
                if (sortedMapTailMap != null) {
                    return sortedMapTailMap.firstKey().longValue();
                }
            } catch (IllegalArgumentException | NoSuchElementException unused) {
            }
            return -1L;
        }

        public void remove(Cue cue) {
            removeEvent(cue, cue.mStartTimeMs);
            long[] jArr = cue.mInnerTimesMs;
            if (jArr != null) {
                for (long j2 : jArr) {
                    removeEvent(cue, j2);
                }
            }
            removeEvent(cue, cue.mEndTimeMs);
        }
    }

    public interface RenderingWidget {

        public interface OnChangedListener {
            void onChanged(RenderingWidget renderingWidget);
        }

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();

        void setOnChangedListener(OnChangedListener onChangedListener);

        void setSize(int i2, int i3);

        void setVisible(boolean z2);
    }

    public static class Run {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public long mEndTimeMs;
        public Cue mFirstCue;
        public Run mNextRunAtEndTimeMs;
        public Run mPrevRunAtEndTimeMs;
        public long mRunID;
        private long mStoredEndTimeMs;

        private Run() {
            this.mEndTimeMs = -1L;
            this.mRunID = 0L;
            this.mStoredEndTimeMs = -1L;
        }

        public void removeAtEndTimeMs() {
            Run run = this.mPrevRunAtEndTimeMs;
            if (run != null) {
                run.mNextRunAtEndTimeMs = this.mNextRunAtEndTimeMs;
                this.mPrevRunAtEndTimeMs = null;
            }
            Run run2 = this.mNextRunAtEndTimeMs;
            if (run2 != null) {
                run2.mPrevRunAtEndTimeMs = run;
                this.mNextRunAtEndTimeMs = null;
            }
        }

        public void storeByEndTimeMs(LongSparseArray<Run> longSparseArray) {
            int iIndexOfKey = longSparseArray.indexOfKey(this.mStoredEndTimeMs);
            if (iIndexOfKey >= 0) {
                if (this.mPrevRunAtEndTimeMs == null) {
                    Run run = this.mNextRunAtEndTimeMs;
                    if (run == null) {
                        longSparseArray.removeAt(iIndexOfKey);
                    } else {
                        longSparseArray.setValueAt(iIndexOfKey, run);
                    }
                }
                removeAtEndTimeMs();
            }
            long j2 = this.mEndTimeMs;
            if (j2 >= 0) {
                this.mPrevRunAtEndTimeMs = null;
                Run run2 = longSparseArray.get(j2);
                this.mNextRunAtEndTimeMs = run2;
                if (run2 != null) {
                    run2.mPrevRunAtEndTimeMs = this;
                }
                longSparseArray.put(this.mEndTimeMs, this);
                this.mStoredEndTimeMs = this.mEndTimeMs;
            }
        }
    }

    public SubtitleTrack(MediaFormat mediaFormat) {
        this.mFormat = mediaFormat;
        clearActiveCues();
        this.mLastTimeMs = -1L;
    }

    private void removeRunsByEndTimeIndex(int i2) {
        Run runValueAt = this.mRunsByEndTime.valueAt(i2);
        while (runValueAt != null) {
            Cue cue = runValueAt.mFirstCue;
            while (cue != null) {
                this.mCues.remove(cue);
                Cue cue2 = cue.mNextInRun;
                cue.mNextInRun = null;
                cue = cue2;
            }
            this.mRunsByID.remove(runValueAt.mRunID);
            Run run = runValueAt.mNextRunAtEndTimeMs;
            runValueAt.mPrevRunAtEndTimeMs = null;
            runValueAt.mNextRunAtEndTimeMs = null;
            runValueAt = run;
        }
        this.mRunsByEndTime.removeAt(i2);
    }

    private synchronized void takeTime(long j2) {
        this.mLastTimeMs = j2;
    }

    public synchronized boolean addCue(Cue cue) {
        this.mCues.add(cue);
        long j2 = cue.mRunID;
        if (j2 != 0) {
            Run run = this.mRunsByID.get(j2);
            if (run == null) {
                run = new Run();
                this.mRunsByID.put(cue.mRunID, run);
                run.mEndTimeMs = cue.mEndTimeMs;
            } else {
                long j3 = run.mEndTimeMs;
                long j4 = cue.mEndTimeMs;
                if (j3 < j4) {
                    run.mEndTimeMs = j4;
                }
            }
            cue.mNextInRun = run.mFirstCue;
            run.mFirstCue = cue;
        }
        final long currentTimeUs = -1;
        MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
        if (mediaTimeProvider != null) {
            try {
                currentTimeUs = mediaTimeProvider.getCurrentTimeUs(false, true) / 1000;
            } catch (IllegalStateException unused) {
            }
        }
        if (this.DEBUG) {
            Log.v(TAG, "mVisible=" + this.mVisible + ", " + cue.mStartTimeMs + " <= " + currentTimeUs + ", " + cue.mEndTimeMs + " >= " + this.mLastTimeMs);
        }
        boolean z2 = this.mVisible;
        if (!z2 || cue.mStartTimeMs > currentTimeUs || cue.mEndTimeMs < this.mLastTimeMs) {
            if (z2 && cue.mEndTimeMs >= this.mLastTimeMs) {
                long j5 = cue.mStartTimeMs;
                long j6 = this.mNextScheduledTimeMs;
                if (j5 < j6 || j6 < 0) {
                    scheduleTimedEvents();
                }
            }
            return false;
        }
        Runnable runnable = this.mRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: android.media.SubtitleTrack.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    SubtitleTrack.this.mRunnable = null;
                    SubtitleTrack.this.updateActiveCues(true, currentTimeUs);
                    SubtitleTrack subtitleTrack = SubtitleTrack.this;
                    subtitleTrack.updateView(subtitleTrack.mActiveCues);
                }
            }
        };
        this.mRunnable = runnable2;
        if (this.mHandler.postDelayed(runnable2, 10L)) {
            if (this.DEBUG) {
                Log.v(TAG, "scheduling update");
            }
        } else if (this.DEBUG) {
            Log.w(TAG, "failed to schedule subtitle view update");
        }
        return true;
    }

    public synchronized void clearActiveCues() {
        if (this.DEBUG) {
            Log.v(TAG, "Clearing " + this.mActiveCues.size() + " active cues");
        }
        this.mActiveCues.clear();
        this.mLastUpdateTimeMs = -1L;
    }

    public void finalize() throws Throwable {
        for (int size = this.mRunsByEndTime.size() - 1; size >= 0; size--) {
            removeRunsByEndTimeIndex(size);
        }
        super.finalize();
    }

    public void finishedRun(long j2) {
        Run run;
        if (j2 == 0 || j2 == -1 || (run = this.mRunsByID.get(j2)) == null) {
            return;
        }
        run.storeByEndTimeMs(this.mRunsByEndTime);
    }

    public final MediaFormat getFormat() {
        return this.mFormat;
    }

    public abstract RenderingWidget getRenderingWidget();

    public void hide() {
        if (this.mVisible) {
            MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
            if (mediaTimeProvider != null) {
                mediaTimeProvider.cancelNotifications(this);
            }
            getRenderingWidget().setVisible(false);
            this.mVisible = false;
        }
    }

    public abstract void onData(String str, boolean z2, long j2);

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onSeek(long j2) {
        if (this.DEBUG) {
            Log.d(TAG, "onSeek " + j2);
        }
        synchronized (this) {
            long j3 = j2 / 1000;
            updateActiveCues(true, j3);
            takeTime(j3);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onStop() {
        synchronized (this) {
            if (this.DEBUG) {
                Log.d(TAG, "onStop");
            }
            clearActiveCues();
            this.mLastTimeMs = -1L;
        }
        updateView(this.mActiveCues);
        this.mNextScheduledTimeMs = -1L;
        this.mTimeProvider.notifyAt(-1L, this);
    }

    @Override // android.media.MediaTimeProvider.OnMediaTimeListener
    public void onTimedEvent(long j2) {
        if (this.DEBUG) {
            Log.d(TAG, "onTimedEvent " + j2);
        }
        synchronized (this) {
            long j3 = j2 / 1000;
            updateActiveCues(false, j3);
            takeTime(j3);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    public void scheduleTimedEvents() {
        if (this.mTimeProvider != null) {
            this.mNextScheduledTimeMs = this.mCues.nextTimeAfter(this.mLastTimeMs);
            if (this.DEBUG) {
                Log.d(TAG, "sched @" + this.mNextScheduledTimeMs + " after " + this.mLastTimeMs);
            }
            MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
            long j2 = this.mNextScheduledTimeMs;
            mediaTimeProvider.notifyAt(j2 >= 0 ? j2 * 1000 : -1L, this);
        }
    }

    public void setRunDiscardTimeMs(long j2, long j3) {
        Run run;
        if (j2 == 0 || j2 == -1 || (run = this.mRunsByID.get(j2)) == null) {
            return;
        }
        run.mEndTimeMs = j3;
        run.storeByEndTimeMs(this.mRunsByEndTime);
    }

    public synchronized void setTimeProvider(MediaTimeProvider mediaTimeProvider) {
        MediaTimeProvider mediaTimeProvider2 = this.mTimeProvider;
        if (mediaTimeProvider2 == mediaTimeProvider) {
            return;
        }
        if (mediaTimeProvider2 != null) {
            mediaTimeProvider2.cancelNotifications(this);
        }
        this.mTimeProvider = mediaTimeProvider;
        if (mediaTimeProvider != null) {
            mediaTimeProvider.scheduleUpdate(this);
        }
    }

    public void show() {
        if (this.mVisible) {
            return;
        }
        this.mVisible = true;
        getRenderingWidget().setVisible(true);
        MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
        if (mediaTimeProvider != null) {
            mediaTimeProvider.scheduleUpdate(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001e A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:8:0x0018, B:10:0x001e, B:12:0x0036, B:14:0x003a, B:15:0x0050, B:17:0x005d, B:18:0x0061, B:20:0x006f, B:22:0x0073, B:23:0x0089, B:25:0x008d, B:26:0x0090, B:27:0x0096, B:29:0x009a, B:30:0x009f, B:32:0x00a7, B:34:0x00b2, B:35:0x00b6, B:6:0x0009), top: B:41:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x003a A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:8:0x0018, B:10:0x001e, B:12:0x0036, B:14:0x003a, B:15:0x0050, B:17:0x005d, B:18:0x0061, B:20:0x006f, B:22:0x0073, B:23:0x0089, B:25:0x008d, B:26:0x0090, B:27:0x0096, B:29:0x009a, B:30:0x009f, B:32:0x00a7, B:34:0x00b2, B:35:0x00b6, B:6:0x0009), top: B:41:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0073 A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:8:0x0018, B:10:0x001e, B:12:0x0036, B:14:0x003a, B:15:0x0050, B:17:0x005d, B:18:0x0061, B:20:0x006f, B:22:0x0073, B:23:0x0089, B:25:0x008d, B:26:0x0090, B:27:0x0096, B:29:0x009a, B:30:0x009f, B:32:0x00a7, B:34:0x00b2, B:35:0x00b6, B:6:0x0009), top: B:41:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x008d A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:8:0x0018, B:10:0x001e, B:12:0x0036, B:14:0x003a, B:15:0x0050, B:17:0x005d, B:18:0x0061, B:20:0x006f, B:22:0x0073, B:23:0x0089, B:25:0x008d, B:26:0x0090, B:27:0x0096, B:29:0x009a, B:30:0x009f, B:32:0x00a7, B:34:0x00b2, B:35:0x00b6, B:6:0x0009), top: B:41:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x006f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0018 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x0018 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x0009 A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x000c, B:8:0x0018, B:10:0x001e, B:12:0x0036, B:14:0x003a, B:15:0x0050, B:17:0x005d, B:18:0x0061, B:20:0x006f, B:22:0x0073, B:23:0x0089, B:25:0x008d, B:26:0x0090, B:27:0x0096, B:29:0x009a, B:30:0x009f, B:32:0x00a7, B:34:0x00b2, B:35:0x00b6, B:6:0x0009), top: B:41:0x0003 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:14:0x003a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0073, please report this as an issue */
    public synchronized void updateActiveCues(boolean z2, long j2) {
        Iterator<Pair<Long, Cue>> it;
        Pair<Long, Cue> next;
        Cue cue;
        if (z2) {
            clearActiveCues();
            it = this.mCues.entriesBetween(this.mLastUpdateTimeMs, j2).iterator();
            while (it.hasNext()) {
                next = it.next();
                cue = next.second;
                if (cue.mEndTimeMs == next.first.longValue()) {
                    if (this.DEBUG) {
                        Log.v(TAG, "Removing " + cue);
                    }
                    this.mActiveCues.remove(cue);
                    if (cue.mRunID == 0) {
                        it.remove();
                    }
                } else if (cue.mStartTimeMs == next.first.longValue()) {
                    if (this.DEBUG) {
                        Log.v(TAG, "Adding " + cue);
                    }
                    if (cue.mInnerTimesMs != null) {
                        cue.onTime(j2);
                    }
                    this.mActiveCues.add(cue);
                } else if (cue.mInnerTimesMs != null) {
                    cue.onTime(j2);
                }
            }
            while (this.mRunsByEndTime.size() > 0) {
                removeRunsByEndTimeIndex(0);
            }
            this.mLastUpdateTimeMs = j2;
        } else {
            if (this.mLastUpdateTimeMs > j2) {
                clearActiveCues();
            }
            it = this.mCues.entriesBetween(this.mLastUpdateTimeMs, j2).iterator();
            while (it.hasNext()) {
                next = it.next();
                cue = next.second;
                if (cue.mEndTimeMs == next.first.longValue()) {
                    if (this.DEBUG) {
                        Log.v(TAG, "Removing " + cue);
                    }
                    this.mActiveCues.remove(cue);
                    if (cue.mRunID == 0) {
                        it.remove();
                    }
                } else if (cue.mStartTimeMs == next.first.longValue()) {
                    if (this.DEBUG) {
                        Log.v(TAG, "Adding " + cue);
                    }
                    if (cue.mInnerTimesMs != null) {
                        cue.onTime(j2);
                    }
                    this.mActiveCues.add(cue);
                } else if (cue.mInnerTimesMs != null) {
                    cue.onTime(j2);
                }
            }
            while (this.mRunsByEndTime.size() > 0 && this.mRunsByEndTime.keyAt(0) <= j2) {
                removeRunsByEndTimeIndex(0);
            }
            this.mLastUpdateTimeMs = j2;
        }
        throw th;
    }

    public abstract void updateView(Vector<Cue> vector);
}
