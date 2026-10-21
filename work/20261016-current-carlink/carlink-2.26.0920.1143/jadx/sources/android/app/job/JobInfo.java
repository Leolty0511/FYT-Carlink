package android.app.job;

import android.accessibilityservice.c;
import android.content.ClipData;
import android.content.ComponentName;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.util.Log;
import android.util.TimeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class JobInfo implements Parcelable {
    public static final int BACKOFF_POLICY_EXPONENTIAL = 1;
    public static final int BACKOFF_POLICY_LINEAR = 0;
    public static final int CONSTRAINT_FLAG_BATTERY_NOT_LOW = 2;
    public static final int CONSTRAINT_FLAG_CHARGING = 1;
    public static final int CONSTRAINT_FLAG_DEVICE_IDLE = 4;
    public static final int CONSTRAINT_FLAG_STORAGE_NOT_LOW = 8;
    public static final Parcelable.Creator<JobInfo> CREATOR = new Parcelable.Creator<JobInfo>() { // from class: android.app.job.JobInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobInfo createFromParcel(Parcel parcel) {
            return new JobInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobInfo[] newArray(int i2) {
            return new JobInfo[i2];
        }
    };
    public static final int DEFAULT_BACKOFF_POLICY = 1;
    public static final long DEFAULT_INITIAL_BACKOFF_MILLIS = 30000;
    public static final int FLAG_WILL_BE_FOREGROUND = 1;
    public static final long MAX_BACKOFF_DELAY_MILLIS = 18000000;
    public static final long MIN_BACKOFF_MILLIS = 10000;
    private static final long MIN_FLEX_MILLIS = 300000;
    private static final long MIN_PERIOD_MILLIS = 900000;
    public static final int NETWORK_TYPE_ANY = 1;
    public static final int NETWORK_TYPE_METERED = 4;
    public static final int NETWORK_TYPE_NONE = 0;
    public static final int NETWORK_TYPE_NOT_ROAMING = 3;
    public static final int NETWORK_TYPE_UNMETERED = 2;
    public static final int PRIORITY_ADJ_ALWAYS_RUNNING = -80;
    public static final int PRIORITY_ADJ_OFTEN_RUNNING = -40;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_FOREGROUND_APP = 30;
    public static final int PRIORITY_SYNC_EXPEDITED = 10;
    public static final int PRIORITY_SYNC_INITIALIZATION = 20;
    public static final int PRIORITY_TOP_APP = 40;
    private static String TAG = "JobInfo";
    private final int backoffPolicy;
    private final ClipData clipData;
    private final int clipGrantFlags;
    private final int constraintFlags;
    private final PersistableBundle extras;
    private final int flags;
    private final long flexMillis;
    private final boolean hasEarlyConstraint;
    private final boolean hasLateConstraint;
    private final long initialBackoffMillis;
    private final long intervalMillis;
    private final boolean isPeriodic;
    private final boolean isPersisted;
    private final boolean isRescheduleEnable;
    private final int jobId;
    private final long maxExecutionDelayMillis;
    private final long minLatencyMillis;
    private final int networkType;
    private final int priority;
    private final ComponentName service;
    private final Bundle transientExtras;
    private final long triggerContentMaxDelay;
    private final long triggerContentUpdateDelay;
    private final TriggerContentUri[] triggerContentUris;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BackoffPolicy {
    }

    public static final class Builder {
        private ClipData mClipData;
        private int mClipGrantFlags;
        private int mConstraintFlags;
        private int mFlags;
        private long mFlexMillis;
        private boolean mHasEarlyConstraint;
        private boolean mHasLateConstraint;
        private long mIntervalMillis;
        private boolean mIsPeriodic;
        private boolean mIsPersisted;
        private final int mJobId;
        private final ComponentName mJobService;
        private long mMaxExecutionDelayMillis;
        private long mMinLatencyMillis;
        private int mNetworkType;
        private ArrayList<TriggerContentUri> mTriggerContentUris;
        private PersistableBundle mExtras = PersistableBundle.EMPTY;
        private Bundle mTransientExtras = Bundle.EMPTY;
        private int mPriority = 0;
        private long mTriggerContentUpdateDelay = -1;
        private long mTriggerContentMaxDelay = -1;
        private long mInitialBackoffMillis = JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS;
        private int mBackoffPolicy = 1;
        private boolean mBackoffPolicySet = false;
        private boolean mRescheduleEnable = false;

        public Builder(int i2, ComponentName componentName) {
            this.mJobService = componentName;
            this.mJobId = i2;
        }

        public Builder addTriggerContentUri(TriggerContentUri triggerContentUri) {
            if (this.mTriggerContentUris == null) {
                this.mTriggerContentUris = new ArrayList<>();
            }
            this.mTriggerContentUris.add(triggerContentUri);
            return this;
        }

        public JobInfo build() {
            if (!this.mHasEarlyConstraint && !this.mHasLateConstraint && this.mConstraintFlags == 0 && this.mNetworkType == 0 && this.mTriggerContentUris == null) {
                throw new IllegalArgumentException("You're trying to build a job with no constraints, this is not allowed.");
            }
            if (this.mIsPeriodic) {
                if (this.mMaxExecutionDelayMillis != 0) {
                    throw new IllegalArgumentException("Can't call setOverrideDeadline() on a periodic job.");
                }
                if (this.mMinLatencyMillis != 0) {
                    throw new IllegalArgumentException("Can't call setMinimumLatency() on a periodic job");
                }
                if (this.mTriggerContentUris != null) {
                    throw new IllegalArgumentException("Can't call addTriggerContentUri() on a periodic job");
                }
            }
            if (this.mIsPersisted) {
                if (this.mTriggerContentUris != null) {
                    throw new IllegalArgumentException("Can't call addTriggerContentUri() on a persisted job");
                }
                if (!this.mTransientExtras.isEmpty()) {
                    throw new IllegalArgumentException("Can't call setTransientExtras() on a persisted job");
                }
                if (this.mClipData != null) {
                    throw new IllegalArgumentException("Can't call setClipData() on a persisted job");
                }
            }
            if (this.mBackoffPolicySet && (this.mConstraintFlags & 4) != 0) {
                throw new IllegalArgumentException("An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error.");
            }
            JobInfo jobInfo = new JobInfo(this);
            if (jobInfo.isPeriodic()) {
                if (jobInfo.intervalMillis != jobInfo.getIntervalMillis()) {
                    StringBuilder sbR = c.r("Specified interval for ");
                    sbR.append(String.valueOf(this.mJobId));
                    sbR.append(" is ");
                    TimeUtils.formatDuration(this.mIntervalMillis, sbR);
                    sbR.append(". Clamped to ");
                    TimeUtils.formatDuration(jobInfo.getIntervalMillis(), sbR);
                    Log.w(JobInfo.TAG, sbR.toString());
                }
                if (jobInfo.flexMillis != jobInfo.getFlexMillis()) {
                    StringBuilder sbR2 = c.r("Specified flex for ");
                    sbR2.append(String.valueOf(this.mJobId));
                    sbR2.append(" is ");
                    TimeUtils.formatDuration(this.mFlexMillis, sbR2);
                    sbR2.append(". Clamped to ");
                    TimeUtils.formatDuration(jobInfo.getFlexMillis(), sbR2);
                    Log.w(JobInfo.TAG, sbR2.toString());
                }
            }
            return jobInfo;
        }

        public Builder setBackoffCriteria(long j2, int i2) {
            this.mBackoffPolicySet = true;
            this.mInitialBackoffMillis = j2;
            this.mBackoffPolicy = i2;
            return this;
        }

        public Builder setClipData(ClipData clipData, int i2) {
            this.mClipData = clipData;
            this.mClipGrantFlags = i2;
            return this;
        }

        public Builder setExtras(PersistableBundle persistableBundle) {
            this.mExtras = persistableBundle;
            return this;
        }

        public Builder setFlags(int i2) {
            this.mFlags = i2;
            return this;
        }

        public Builder setMinimumLatency(long j2) {
            this.mMinLatencyMillis = j2;
            this.mHasEarlyConstraint = true;
            return this;
        }

        public Builder setOverrideDeadline(long j2) {
            this.mMaxExecutionDelayMillis = j2;
            this.mHasLateConstraint = true;
            return this;
        }

        public Builder setPeriodic(long j2) {
            return setPeriodic(j2, j2);
        }

        public Builder setPersisted(boolean z2) {
            this.mIsPersisted = z2;
            return this;
        }

        public Builder setPriority(int i2) {
            this.mPriority = i2;
            return this;
        }

        public Builder setRequiredNetworkType(int i2) {
            this.mNetworkType = i2;
            return this;
        }

        public Builder setRequiresBatteryNotLow(boolean z2) {
            this.mConstraintFlags = (z2 ? 2 : 0) | (this.mConstraintFlags & (-3));
            return this;
        }

        public Builder setRequiresCharging(boolean z2) {
            this.mConstraintFlags = (z2 ? 1 : 0) | (this.mConstraintFlags & (-2));
            return this;
        }

        public Builder setRequiresDeviceIdle(boolean z2) {
            this.mConstraintFlags = (z2 ? 4 : 0) | (this.mConstraintFlags & (-5));
            return this;
        }

        public Builder setRequiresStorageNotLow(boolean z2) {
            this.mConstraintFlags = (z2 ? 8 : 0) | (this.mConstraintFlags & (-9));
            return this;
        }

        public Builder setRescheduleEnable(boolean z2) {
            this.mRescheduleEnable = z2;
            return this;
        }

        public Builder setTransientExtras(Bundle bundle) {
            this.mTransientExtras = bundle;
            return this;
        }

        public Builder setTriggerContentMaxDelay(long j2) {
            this.mTriggerContentMaxDelay = j2;
            return this;
        }

        public Builder setTriggerContentUpdateDelay(long j2) {
            this.mTriggerContentUpdateDelay = j2;
            return this;
        }

        public Builder setPeriodic(long j2, long j3) {
            this.mIsPeriodic = true;
            this.mIntervalMillis = j2;
            this.mFlexMillis = j3;
            this.mHasLateConstraint = true;
            this.mHasEarlyConstraint = true;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface NetworkType {
    }

    public static final class TriggerContentUri implements Parcelable {
        public static final Parcelable.Creator<TriggerContentUri> CREATOR = new Parcelable.Creator<TriggerContentUri>() { // from class: android.app.job.JobInfo.TriggerContentUri.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TriggerContentUri createFromParcel(Parcel parcel) {
                return new TriggerContentUri(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TriggerContentUri[] newArray(int i2) {
                return new TriggerContentUri[i2];
            }
        };
        public static final int FLAG_NOTIFY_FOR_DESCENDANTS = 1;
        private final int mFlags;
        private final Uri mUri;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Flags {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof TriggerContentUri)) {
                return false;
            }
            TriggerContentUri triggerContentUri = (TriggerContentUri) obj;
            return Objects.equals(triggerContentUri.mUri, this.mUri) && triggerContentUri.mFlags == this.mFlags;
        }

        public int getFlags() {
            return this.mFlags;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int hashCode() {
            Uri uri = this.mUri;
            return (uri == null ? 0 : uri.hashCode()) ^ this.mFlags;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.mUri.writeToParcel(parcel, i2);
            parcel.writeInt(this.mFlags);
        }

        public TriggerContentUri(Uri uri, int i2) {
            this.mUri = uri;
            this.mFlags = i2;
        }

        private TriggerContentUri(Parcel parcel) {
            this.mUri = Uri.CREATOR.createFromParcel(parcel);
            this.mFlags = parcel.readInt();
        }
    }

    public static final long getMinBackoffMillis() {
        return MIN_BACKOFF_MILLIS;
    }

    public static final long getMinFlexMillis() {
        return 300000L;
    }

    public static final long getMinPeriodMillis() {
        return 900000L;
    }

    private static boolean kindofEqualsBundle(BaseBundle baseBundle, BaseBundle baseBundle2) {
        return baseBundle == baseBundle2 || (baseBundle != null && baseBundle.kindofEquals(baseBundle2));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JobInfo)) {
            return false;
        }
        JobInfo jobInfo = (JobInfo) obj;
        return this.jobId == jobInfo.jobId && kindofEqualsBundle(this.extras, jobInfo.extras) && kindofEqualsBundle(this.transientExtras, jobInfo.transientExtras) && this.clipData == jobInfo.clipData && this.clipGrantFlags == jobInfo.clipGrantFlags && Objects.equals(this.service, jobInfo.service) && this.constraintFlags == jobInfo.constraintFlags && Arrays.equals(this.triggerContentUris, jobInfo.triggerContentUris) && this.triggerContentUpdateDelay == jobInfo.triggerContentUpdateDelay && this.triggerContentMaxDelay == jobInfo.triggerContentMaxDelay && this.hasEarlyConstraint == jobInfo.hasEarlyConstraint && this.hasLateConstraint == jobInfo.hasLateConstraint && this.networkType == jobInfo.networkType && this.minLatencyMillis == jobInfo.minLatencyMillis && this.maxExecutionDelayMillis == jobInfo.maxExecutionDelayMillis && this.isPeriodic == jobInfo.isPeriodic && this.isPersisted == jobInfo.isPersisted && this.intervalMillis == jobInfo.intervalMillis && this.flexMillis == jobInfo.flexMillis && this.initialBackoffMillis == jobInfo.initialBackoffMillis && this.backoffPolicy == jobInfo.backoffPolicy && this.priority == jobInfo.priority && this.flags == jobInfo.flags;
    }

    public int getBackoffPolicy() {
        return this.backoffPolicy;
    }

    public ClipData getClipData() {
        return this.clipData;
    }

    public int getClipGrantFlags() {
        return this.clipGrantFlags;
    }

    public int getConstraintFlags() {
        return this.constraintFlags;
    }

    public PersistableBundle getExtras() {
        return this.extras;
    }

    public int getFlags() {
        return this.flags;
    }

    public long getFlexMillis() {
        long intervalMillis = getIntervalMillis();
        long jMax = Math.max(this.flexMillis, Math.max((5 * intervalMillis) / 100, getMinFlexMillis()));
        return jMax <= intervalMillis ? jMax : intervalMillis;
    }

    public int getId() {
        return this.jobId;
    }

    public long getInitialBackoffMillis() {
        long minBackoffMillis = getMinBackoffMillis();
        long j2 = this.initialBackoffMillis;
        return j2 >= minBackoffMillis ? j2 : minBackoffMillis;
    }

    public long getIntervalMillis() {
        long minPeriodMillis = getMinPeriodMillis();
        long j2 = this.intervalMillis;
        return j2 >= minPeriodMillis ? j2 : minPeriodMillis;
    }

    public long getMaxExecutionDelayMillis() {
        return this.maxExecutionDelayMillis;
    }

    public long getMinLatencyMillis() {
        return this.minLatencyMillis;
    }

    public int getNetworkType() {
        return this.networkType;
    }

    public int getPriority() {
        return this.priority;
    }

    public ComponentName getService() {
        return this.service;
    }

    public Bundle getTransientExtras() {
        return this.transientExtras;
    }

    public long getTriggerContentMaxDelay() {
        return this.triggerContentMaxDelay;
    }

    public long getTriggerContentUpdateDelay() {
        return this.triggerContentUpdateDelay;
    }

    public TriggerContentUri[] getTriggerContentUris() {
        return this.triggerContentUris;
    }

    public boolean hasEarlyConstraint() {
        return this.hasEarlyConstraint;
    }

    public boolean hasLateConstraint() {
        return this.hasLateConstraint;
    }

    public int hashCode() {
        int iHashCode = this.jobId;
        PersistableBundle persistableBundle = this.extras;
        if (persistableBundle != null) {
            iHashCode = (iHashCode * 31) + persistableBundle.hashCode();
        }
        Bundle bundle = this.transientExtras;
        if (bundle != null) {
            iHashCode = (iHashCode * 31) + bundle.hashCode();
        }
        ClipData clipData = this.clipData;
        if (clipData != null) {
            iHashCode = (iHashCode * 31) + clipData.hashCode();
        }
        int iHashCode2 = (iHashCode * 31) + this.clipGrantFlags;
        ComponentName componentName = this.service;
        if (componentName != null) {
            iHashCode2 = (iHashCode2 * 31) + componentName.hashCode();
        }
        int iHashCode3 = (iHashCode2 * 31) + this.constraintFlags;
        TriggerContentUri[] triggerContentUriArr = this.triggerContentUris;
        if (triggerContentUriArr != null) {
            iHashCode3 = (iHashCode3 * 31) + Arrays.hashCode(triggerContentUriArr);
        }
        long j2 = this.triggerContentUpdateDelay;
        int i2 = ((iHashCode3 * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.triggerContentMaxDelay;
        int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.hasEarlyConstraint ? 1231 : 1237)) * 31) + (this.hasLateConstraint ? 1231 : 1237)) * 31) + this.networkType) * 31;
        long j4 = this.minLatencyMillis;
        int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.maxExecutionDelayMillis;
        int i5 = (((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + (this.isPeriodic ? 1231 : 1237)) * 31;
        int i6 = this.isPersisted ? 1231 : 1237;
        long j6 = this.intervalMillis;
        int i7 = (((i5 + i6) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.flexMillis;
        int i8 = (i7 + ((int) (j7 ^ (j7 >>> 32)))) * 31;
        long j8 = this.initialBackoffMillis;
        return ((((((i8 + ((int) (j8 ^ (j8 >>> 32)))) * 31) + this.backoffPolicy) * 31) + this.priority) * 31) + this.flags;
    }

    public boolean isPeriodic() {
        return this.isPeriodic;
    }

    public boolean isPersisted() {
        return this.isPersisted;
    }

    public boolean isRequireBatteryNotLow() {
        return (this.constraintFlags & 2) != 0;
    }

    public boolean isRequireCharging() {
        return (this.constraintFlags & 1) != 0;
    }

    public boolean isRequireDeviceIdle() {
        return (this.constraintFlags & 4) != 0;
    }

    public boolean isRequireStorageNotLow() {
        return (this.constraintFlags & 8) != 0;
    }

    public boolean isRescheduleEnable() {
        return this.isRescheduleEnable;
    }

    public String toString() {
        return "(job:" + this.jobId + "/" + this.service.flattenToShortString() + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.jobId);
        parcel.writePersistableBundle(this.extras);
        parcel.writeBundle(this.transientExtras);
        if (this.clipData != null) {
            parcel.writeInt(1);
            this.clipData.writeToParcel(parcel, i2);
            parcel.writeInt(this.clipGrantFlags);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeParcelable(this.service, i2);
        parcel.writeInt(this.constraintFlags);
        parcel.writeTypedArray(this.triggerContentUris, i2);
        parcel.writeLong(this.triggerContentUpdateDelay);
        parcel.writeLong(this.triggerContentMaxDelay);
        parcel.writeInt(this.networkType);
        parcel.writeLong(this.minLatencyMillis);
        parcel.writeLong(this.maxExecutionDelayMillis);
        parcel.writeInt(this.isPeriodic ? 1 : 0);
        parcel.writeInt(this.isPersisted ? 1 : 0);
        parcel.writeLong(this.intervalMillis);
        parcel.writeLong(this.flexMillis);
        parcel.writeLong(this.initialBackoffMillis);
        parcel.writeInt(this.backoffPolicy);
        parcel.writeInt(this.hasEarlyConstraint ? 1 : 0);
        parcel.writeInt(this.hasLateConstraint ? 1 : 0);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.isRescheduleEnable ? 1 : 0);
    }

    private JobInfo(Parcel parcel) {
        this.jobId = parcel.readInt();
        this.extras = parcel.readPersistableBundle();
        this.transientExtras = parcel.readBundle();
        if (parcel.readInt() != 0) {
            this.clipData = ClipData.CREATOR.createFromParcel(parcel);
            this.clipGrantFlags = parcel.readInt();
        } else {
            this.clipData = null;
            this.clipGrantFlags = 0;
        }
        this.service = (ComponentName) parcel.readParcelable(null);
        this.constraintFlags = parcel.readInt();
        this.triggerContentUris = (TriggerContentUri[]) parcel.createTypedArray(TriggerContentUri.CREATOR);
        this.triggerContentUpdateDelay = parcel.readLong();
        this.triggerContentMaxDelay = parcel.readLong();
        this.networkType = parcel.readInt();
        this.minLatencyMillis = parcel.readLong();
        this.maxExecutionDelayMillis = parcel.readLong();
        this.isPeriodic = parcel.readInt() == 1;
        this.isPersisted = parcel.readInt() == 1;
        this.intervalMillis = parcel.readLong();
        this.flexMillis = parcel.readLong();
        this.initialBackoffMillis = parcel.readLong();
        this.backoffPolicy = parcel.readInt();
        this.hasEarlyConstraint = parcel.readInt() == 1;
        this.hasLateConstraint = parcel.readInt() == 1;
        this.priority = parcel.readInt();
        this.flags = parcel.readInt();
        this.isRescheduleEnable = parcel.readInt() == 1;
    }

    private JobInfo(Builder builder) {
        this.jobId = builder.mJobId;
        this.extras = builder.mExtras.deepCopy();
        this.transientExtras = builder.mTransientExtras.deepCopy();
        this.clipData = builder.mClipData;
        this.clipGrantFlags = builder.mClipGrantFlags;
        this.service = builder.mJobService;
        this.constraintFlags = builder.mConstraintFlags;
        this.triggerContentUris = builder.mTriggerContentUris != null ? (TriggerContentUri[]) builder.mTriggerContentUris.toArray(new TriggerContentUri[builder.mTriggerContentUris.size()]) : null;
        this.triggerContentUpdateDelay = builder.mTriggerContentUpdateDelay;
        this.triggerContentMaxDelay = builder.mTriggerContentMaxDelay;
        this.networkType = builder.mNetworkType;
        this.minLatencyMillis = builder.mMinLatencyMillis;
        this.maxExecutionDelayMillis = builder.mMaxExecutionDelayMillis;
        this.isPeriodic = builder.mIsPeriodic;
        this.isPersisted = builder.mIsPersisted;
        this.intervalMillis = builder.mIntervalMillis;
        this.flexMillis = builder.mFlexMillis;
        this.initialBackoffMillis = builder.mInitialBackoffMillis;
        this.backoffPolicy = builder.mBackoffPolicy;
        this.hasEarlyConstraint = builder.mHasEarlyConstraint;
        this.hasLateConstraint = builder.mHasLateConstraint;
        this.priority = builder.mPriority;
        this.flags = builder.mFlags;
        this.isRescheduleEnable = builder.mRescheduleEnable;
    }
}
