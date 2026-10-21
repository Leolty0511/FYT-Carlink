package android.app.usage;

import android.content.Context;
import android.net.INetworkStatsService;
import android.net.INetworkStatsSession;
import android.net.NetworkStatsHistory;
import android.net.NetworkTemplate;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.IntArray;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkStats implements AutoCloseable {
    private static final String TAG = "NetworkStats";
    private final CloseGuard mCloseGuard;
    private final long mEndTimeStamp;
    private int mEnumerationIndex;
    private NetworkStatsHistory mHistory;
    private NetworkStatsHistory.Entry mRecycledHistoryEntry;
    private android.net.NetworkStats.Entry mRecycledSummaryEntry;
    private INetworkStatsSession mSession;
    private final long mStartTimeStamp;
    private android.net.NetworkStats mSummary;
    private int mTag;
    private NetworkTemplate mTemplate;
    private int mUidOrUidIndex;
    private int[] mUids;

    public static class Bucket {
        public static final int METERED_ALL = -1;
        public static final int METERED_NO = 1;
        public static final int METERED_YES = 2;
        public static final int ROAMING_ALL = -1;
        public static final int ROAMING_NO = 1;
        public static final int ROAMING_YES = 2;
        public static final int STATE_ALL = -1;
        public static final int STATE_DEFAULT = 1;
        public static final int STATE_FOREGROUND = 2;
        public static final int TAG_NONE = 0;
        public static final int UID_ALL = -1;
        public static final int UID_REMOVED = -4;
        public static final int UID_TETHERING = -5;
        private long mBeginTimeStamp;
        private long mEndTimeStamp;
        private int mMetered;
        private int mRoaming;
        private long mRxBytes;
        private long mRxPackets;
        private int mState;
        private int mTag;
        private long mTxBytes;
        private long mTxPackets;
        private int mUid;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Metered {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface Roaming {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface State {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int convertMetered(int i2) {
            int i3 = -1;
            if (i2 != -1) {
                i3 = 1;
                if (i2 != 0) {
                    return i2 != 1 ? 0 : 2;
                }
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int convertRoaming(int i2) {
            int i3 = -1;
            if (i2 != -1) {
                i3 = 1;
                if (i2 != 0) {
                    return i2 != 1 ? 0 : 2;
                }
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int convertState(int i2) {
            int i3 = -1;
            if (i2 != -1) {
                i3 = 1;
                if (i2 != 0) {
                    return i2 != 1 ? 0 : 2;
                }
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int convertTag(int i2) {
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int convertUid(int i2) {
            int i3 = -5;
            if (i2 != -5) {
                i3 = -4;
                if (i2 != -4) {
                    return i2;
                }
            }
            return i3;
        }

        public long getEndTimeStamp() {
            return this.mEndTimeStamp;
        }

        public int getMetered() {
            return this.mMetered;
        }

        public int getRoaming() {
            return this.mRoaming;
        }

        public long getRxBytes() {
            return this.mRxBytes;
        }

        public long getRxPackets() {
            return this.mRxPackets;
        }

        public long getStartTimeStamp() {
            return this.mBeginTimeStamp;
        }

        public int getState() {
            return this.mState;
        }

        public int getTag() {
            return this.mTag;
        }

        public long getTxBytes() {
            return this.mTxBytes;
        }

        public long getTxPackets() {
            return this.mTxPackets;
        }

        public int getUid() {
            return this.mUid;
        }
    }

    public NetworkStats(Context context, NetworkTemplate networkTemplate, int i2, long j2, long j3) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mTag = 0;
        this.mSummary = null;
        this.mHistory = null;
        this.mEnumerationIndex = 0;
        this.mRecycledSummaryEntry = null;
        this.mRecycledHistoryEntry = null;
        this.mSession = INetworkStatsService.Stub.asInterface(ServiceManager.getService(Context.NETWORK_STATS_SERVICE)).openSessionForUsageStats(i2, context.getOpPackageName());
        closeGuard.open("close");
        this.mTemplate = networkTemplate;
        this.mStartTimeStamp = j2;
        this.mEndTimeStamp = j3;
    }

    private void fillBucketFromSummaryEntry(Bucket bucket) {
        bucket.mUid = Bucket.convertUid(this.mRecycledSummaryEntry.uid);
        bucket.mTag = Bucket.convertTag(this.mRecycledSummaryEntry.tag);
        bucket.mState = Bucket.convertState(this.mRecycledSummaryEntry.set);
        bucket.mMetered = Bucket.convertMetered(this.mRecycledSummaryEntry.metered);
        bucket.mRoaming = Bucket.convertRoaming(this.mRecycledSummaryEntry.roaming);
        bucket.mBeginTimeStamp = this.mStartTimeStamp;
        bucket.mEndTimeStamp = this.mEndTimeStamp;
        bucket.mRxBytes = this.mRecycledSummaryEntry.rxBytes;
        bucket.mRxPackets = this.mRecycledSummaryEntry.rxPackets;
        bucket.mTxBytes = this.mRecycledSummaryEntry.txBytes;
        bucket.mTxPackets = this.mRecycledSummaryEntry.txPackets;
    }

    private boolean getNextHistoryBucket(Bucket bucket) {
        NetworkStatsHistory networkStatsHistory;
        if (bucket == null || (networkStatsHistory = this.mHistory) == null) {
            return false;
        }
        if (this.mEnumerationIndex >= networkStatsHistory.size()) {
            if (!hasNextUid()) {
                return false;
            }
            stepHistory();
            return getNextHistoryBucket(bucket);
        }
        NetworkStatsHistory networkStatsHistory2 = this.mHistory;
        int i2 = this.mEnumerationIndex;
        this.mEnumerationIndex = i2 + 1;
        this.mRecycledHistoryEntry = networkStatsHistory2.getValues(i2, this.mRecycledHistoryEntry);
        bucket.mUid = Bucket.convertUid(getUid());
        bucket.mTag = Bucket.convertTag(this.mTag);
        bucket.mState = -1;
        bucket.mMetered = -1;
        bucket.mRoaming = -1;
        bucket.mBeginTimeStamp = this.mRecycledHistoryEntry.bucketStart;
        NetworkStatsHistory.Entry entry = this.mRecycledHistoryEntry;
        bucket.mEndTimeStamp = entry.bucketStart + entry.bucketDuration;
        bucket.mRxBytes = this.mRecycledHistoryEntry.rxBytes;
        bucket.mRxPackets = this.mRecycledHistoryEntry.rxPackets;
        bucket.mTxBytes = this.mRecycledHistoryEntry.txBytes;
        bucket.mTxPackets = this.mRecycledHistoryEntry.txPackets;
        return true;
    }

    private boolean getNextSummaryBucket(Bucket bucket) {
        if (bucket == null || this.mEnumerationIndex >= this.mSummary.size()) {
            return false;
        }
        android.net.NetworkStats networkStats = this.mSummary;
        int i2 = this.mEnumerationIndex;
        this.mEnumerationIndex = i2 + 1;
        this.mRecycledSummaryEntry = networkStats.getValues(i2, this.mRecycledSummaryEntry);
        fillBucketFromSummaryEntry(bucket);
        return true;
    }

    private int getUid() {
        if (!isUidEnumeration()) {
            return this.mUidOrUidIndex;
        }
        int i2 = this.mUidOrUidIndex;
        if (i2 >= 0) {
            int[] iArr = this.mUids;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
        }
        throw new IndexOutOfBoundsException("Index=" + this.mUidOrUidIndex + " mUids.length=" + this.mUids.length);
    }

    private boolean hasNextUid() {
        return isUidEnumeration() && this.mUidOrUidIndex + 1 < this.mUids.length;
    }

    private boolean isUidEnumeration() {
        return this.mUids != null;
    }

    private void setSingleUidTag(int i2, int i3) {
        this.mUidOrUidIndex = i2;
        this.mTag = i3;
    }

    private void stepHistory() {
        if (hasNextUid()) {
            stepUid();
            this.mHistory = null;
            try {
                this.mHistory = this.mSession.getHistoryIntervalForUid(this.mTemplate, getUid(), -1, 0, -1, this.mStartTimeStamp, this.mEndTimeStamp);
            } catch (RemoteException e2) {
                Log.w(TAG, e2);
            }
            this.mEnumerationIndex = 0;
        }
    }

    private void stepUid() {
        if (this.mUids != null) {
            this.mUidOrUidIndex++;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        INetworkStatsSession iNetworkStatsSession = this.mSession;
        if (iNetworkStatsSession != null) {
            try {
                iNetworkStatsSession.close();
            } catch (RemoteException e2) {
                Log.w(TAG, e2);
            }
        }
        this.mSession = null;
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.close();
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public Bucket getDeviceSummaryForNetwork() {
        android.net.NetworkStats deviceSummaryForNetwork = this.mSession.getDeviceSummaryForNetwork(this.mTemplate, this.mStartTimeStamp, this.mEndTimeStamp);
        this.mSummary = deviceSummaryForNetwork;
        this.mEnumerationIndex = deviceSummaryForNetwork.size();
        return getSummaryAggregate();
    }

    public boolean getNextBucket(Bucket bucket) {
        return this.mSummary != null ? getNextSummaryBucket(bucket) : getNextHistoryBucket(bucket);
    }

    public Bucket getSummaryAggregate() {
        if (this.mSummary == null) {
            return null;
        }
        Bucket bucket = new Bucket();
        if (this.mRecycledSummaryEntry == null) {
            this.mRecycledSummaryEntry = new android.net.NetworkStats.Entry();
        }
        this.mSummary.getTotal(this.mRecycledSummaryEntry);
        fillBucketFromSummaryEntry(bucket);
        return bucket;
    }

    public boolean hasNextBucket() {
        android.net.NetworkStats networkStats = this.mSummary;
        if (networkStats != null) {
            return this.mEnumerationIndex < networkStats.size();
        }
        NetworkStatsHistory networkStatsHistory = this.mHistory;
        if (networkStatsHistory != null) {
            return this.mEnumerationIndex < networkStatsHistory.size() || hasNextUid();
        }
        return false;
    }

    public void startHistoryEnumeration(int i2) {
        startHistoryEnumeration(i2, 0);
    }

    public void startSummaryEnumeration() {
        this.mSummary = this.mSession.getSummaryForAllUid(this.mTemplate, this.mStartTimeStamp, this.mEndTimeStamp, false);
        this.mEnumerationIndex = 0;
    }

    public void startUserUidEnumeration() {
        int[] relevantUids = this.mSession.getRelevantUids();
        IntArray intArray = new IntArray(relevantUids.length);
        for (int i2 : relevantUids) {
            try {
                NetworkStatsHistory historyIntervalForUid = this.mSession.getHistoryIntervalForUid(this.mTemplate, i2, -1, 0, -1, this.mStartTimeStamp, this.mEndTimeStamp);
                if (historyIntervalForUid != null && historyIntervalForUid.size() > 0) {
                    intArray.add(i2);
                }
            } catch (RemoteException e2) {
                Log.w(TAG, "Error while getting history of uid " + i2, e2);
            }
        }
        this.mUids = intArray.toArray();
        this.mUidOrUidIndex = -1;
        stepHistory();
    }

    public void startHistoryEnumeration(int i2, int i3) {
        this.mHistory = null;
        try {
            this.mHistory = this.mSession.getHistoryIntervalForUid(this.mTemplate, i2, -1, i3, -1, this.mStartTimeStamp, this.mEndTimeStamp);
            setSingleUidTag(i2, i3);
        } catch (RemoteException e2) {
            Log.w(TAG, e2);
        }
        this.mEnumerationIndex = 0;
    }
}
