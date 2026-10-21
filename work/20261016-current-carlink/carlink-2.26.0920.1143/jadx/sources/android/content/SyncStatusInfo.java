package android.content;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class SyncStatusInfo implements Parcelable {
    public static final Parcelable.Creator<SyncStatusInfo> CREATOR = new Parcelable.Creator<SyncStatusInfo>() { // from class: android.content.SyncStatusInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo createFromParcel(Parcel parcel) {
            return new SyncStatusInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncStatusInfo[] newArray(int i2) {
            return new SyncStatusInfo[i2];
        }
    };
    private static final int MAX_EVENT_COUNT = 10;
    private static final String TAG = "Sync";
    static final int VERSION = 4;
    public final int authorityId;
    public long initialFailureTime;
    public boolean initialize;
    public String lastFailureMesg;
    public int lastFailureSource;
    public long lastFailureTime;
    public int lastSuccessSource;
    public long lastSuccessTime;
    private final ArrayList<Long> mLastEventTimes;
    private final ArrayList<String> mLastEvents;
    public int numSourceLocal;
    public int numSourcePeriodic;
    public int numSourcePoll;
    public int numSourceServer;
    public int numSourceUser;
    public int numSyncs;
    public boolean pending;
    private ArrayList<Long> periodicSyncTimes;
    public long totalElapsedTime;

    public SyncStatusInfo(int i2) {
        this.mLastEventTimes = new ArrayList<>();
        this.mLastEvents = new ArrayList<>();
        this.authorityId = i2;
    }

    private void ensurePeriodicSyncTimeSize(int i2) {
        if (this.periodicSyncTimes == null) {
            this.periodicSyncTimes = new ArrayList<>(0);
        }
        int i3 = i2 + 1;
        if (this.periodicSyncTimes.size() < i3) {
            for (int size = this.periodicSyncTimes.size(); size < i3; size++) {
                this.periodicSyncTimes.add(0L);
            }
        }
    }

    public void addEvent(String str) {
        if (this.mLastEventTimes.size() >= 10) {
            this.mLastEventTimes.remove(9);
            this.mLastEvents.remove(9);
        }
        this.mLastEventTimes.add(0, Long.valueOf(System.currentTimeMillis()));
        this.mLastEvents.add(0, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getEvent(int i2) {
        return this.mLastEvents.get(i2);
    }

    public int getEventCount() {
        return this.mLastEventTimes.size();
    }

    public long getEventTime(int i2) {
        return this.mLastEventTimes.get(i2).longValue();
    }

    public int getLastFailureMesgAsInt(int i2) {
        int iSyncErrorStringToInt = ContentResolver.syncErrorStringToInt(this.lastFailureMesg);
        if (iSyncErrorStringToInt > 0) {
            return iSyncErrorStringToInt;
        }
        m.x(new StringBuilder("Unknown lastFailureMesg:"), this.lastFailureMesg, TAG);
        return i2;
    }

    public long getPeriodicSyncTime(int i2) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || i2 >= arrayList.size()) {
            return 0L;
        }
        return this.periodicSyncTimes.get(i2).longValue();
    }

    public void removePeriodicSyncTime(int i2) {
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList == null || i2 >= arrayList.size()) {
            return;
        }
        this.periodicSyncTimes.remove(i2);
    }

    public void setPeriodicSyncTime(int i2, long j2) {
        ensurePeriodicSyncTimeSize(i2);
        this.periodicSyncTimes.set(i2, Long.valueOf(j2));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(4);
        parcel.writeInt(this.authorityId);
        parcel.writeLong(this.totalElapsedTime);
        parcel.writeInt(this.numSyncs);
        parcel.writeInt(this.numSourcePoll);
        parcel.writeInt(this.numSourceServer);
        parcel.writeInt(this.numSourceLocal);
        parcel.writeInt(this.numSourceUser);
        parcel.writeLong(this.lastSuccessTime);
        parcel.writeInt(this.lastSuccessSource);
        parcel.writeLong(this.lastFailureTime);
        parcel.writeInt(this.lastFailureSource);
        parcel.writeString(this.lastFailureMesg);
        parcel.writeLong(this.initialFailureTime);
        parcel.writeInt(this.pending ? 1 : 0);
        parcel.writeInt(this.initialize ? 1 : 0);
        ArrayList<Long> arrayList = this.periodicSyncTimes;
        if (arrayList != null) {
            parcel.writeInt(arrayList.size());
            Iterator<Long> it = this.periodicSyncTimes.iterator();
            while (it.hasNext()) {
                parcel.writeLong(it.next().longValue());
            }
        } else {
            parcel.writeInt(-1);
        }
        parcel.writeInt(this.mLastEventTimes.size());
        for (int i3 = 0; i3 < this.mLastEventTimes.size(); i3++) {
            parcel.writeLong(this.mLastEventTimes.get(i3).longValue());
            parcel.writeString(this.mLastEvents.get(i3));
        }
        parcel.writeInt(this.numSourcePeriodic);
    }

    public SyncStatusInfo(Parcel parcel) {
        this.mLastEventTimes = new ArrayList<>();
        this.mLastEvents = new ArrayList<>();
        int i2 = parcel.readInt();
        if (i2 != 4 && i2 != 1) {
            m.A("Unknown version: ", i2, "SyncStatusInfo");
        }
        this.authorityId = parcel.readInt();
        this.totalElapsedTime = parcel.readLong();
        this.numSyncs = parcel.readInt();
        this.numSourcePoll = parcel.readInt();
        this.numSourceServer = parcel.readInt();
        this.numSourceLocal = parcel.readInt();
        this.numSourceUser = parcel.readInt();
        this.lastSuccessTime = parcel.readLong();
        this.lastSuccessSource = parcel.readInt();
        this.lastFailureTime = parcel.readLong();
        this.lastFailureSource = parcel.readInt();
        this.lastFailureMesg = parcel.readString();
        this.initialFailureTime = parcel.readLong();
        this.pending = parcel.readInt() != 0;
        this.initialize = parcel.readInt() != 0;
        if (i2 == 1) {
            this.periodicSyncTimes = null;
        } else {
            int i3 = parcel.readInt();
            if (i3 < 0) {
                this.periodicSyncTimes = null;
            } else {
                this.periodicSyncTimes = new ArrayList<>();
                for (int i4 = 0; i4 < i3; i4++) {
                    this.periodicSyncTimes.add(Long.valueOf(parcel.readLong()));
                }
            }
            if (i2 >= 3) {
                this.mLastEventTimes.clear();
                this.mLastEvents.clear();
                int i5 = parcel.readInt();
                for (int i6 = 0; i6 < i5; i6++) {
                    this.mLastEventTimes.add(Long.valueOf(parcel.readLong()));
                    this.mLastEvents.add(parcel.readString());
                }
            }
        }
        if (i2 < 4) {
            int i7 = (((this.numSyncs - this.numSourceLocal) - this.numSourcePoll) - this.numSourceServer) - this.numSourceUser;
            this.numSourcePeriodic = i7;
            if (i7 < 0) {
                this.numSourcePeriodic = 0;
                return;
            }
            return;
        }
        this.numSourcePeriodic = parcel.readInt();
    }

    public SyncStatusInfo(SyncStatusInfo syncStatusInfo) {
        ArrayList<Long> arrayList = new ArrayList<>();
        this.mLastEventTimes = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.mLastEvents = arrayList2;
        this.authorityId = syncStatusInfo.authorityId;
        this.totalElapsedTime = syncStatusInfo.totalElapsedTime;
        this.numSyncs = syncStatusInfo.numSyncs;
        this.numSourcePoll = syncStatusInfo.numSourcePoll;
        this.numSourceServer = syncStatusInfo.numSourceServer;
        this.numSourceLocal = syncStatusInfo.numSourceLocal;
        this.numSourceUser = syncStatusInfo.numSourceUser;
        this.numSourcePeriodic = syncStatusInfo.numSourcePeriodic;
        this.lastSuccessTime = syncStatusInfo.lastSuccessTime;
        this.lastSuccessSource = syncStatusInfo.lastSuccessSource;
        this.lastFailureTime = syncStatusInfo.lastFailureTime;
        this.lastFailureSource = syncStatusInfo.lastFailureSource;
        this.lastFailureMesg = syncStatusInfo.lastFailureMesg;
        this.initialFailureTime = syncStatusInfo.initialFailureTime;
        this.pending = syncStatusInfo.pending;
        this.initialize = syncStatusInfo.initialize;
        if (syncStatusInfo.periodicSyncTimes != null) {
            this.periodicSyncTimes = new ArrayList<>(syncStatusInfo.periodicSyncTimes);
        }
        arrayList.addAll(syncStatusInfo.mLastEventTimes);
        arrayList2.addAll(syncStatusInfo.mLastEvents);
    }
}
