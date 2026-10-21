package android.content;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SyncRequest implements Parcelable {
    public static final Parcelable.Creator<SyncRequest> CREATOR = new Parcelable.Creator<SyncRequest>() { // from class: android.content.SyncRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncRequest createFromParcel(Parcel parcel) {
            return new SyncRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncRequest[] newArray(int i2) {
            return new SyncRequest[i2];
        }
    };
    private static final String TAG = "SyncRequest";
    private final Account mAccountToSync;
    private final String mAuthority;
    private final ComponentName mComponentInfo;
    private final boolean mDisallowMetered;
    private final Bundle mExtras;
    private final boolean mIsAuthority;
    private final boolean mIsExpedited;
    private final boolean mIsPeriodic;
    private final long mRxBytes;
    private final long mSyncFlexTimeSecs;
    private final long mSyncRunTimeSecs;
    private final long mTxBytes;

    public static class Builder {
        private static final int SYNC_TARGET_ADAPTER = 2;
        private static final int SYNC_TARGET_SERVICE = 1;
        private static final int SYNC_TARGET_UNKNOWN = 0;
        private static final int SYNC_TYPE_ONCE = 2;
        private static final int SYNC_TYPE_PERIODIC = 1;
        private static final int SYNC_TYPE_UNKNOWN = 0;
        private Account mAccount;
        private String mAuthority;
        private ComponentName mComponentName;
        private Bundle mCustomExtras;
        private boolean mDisallowMetered;
        private boolean mExpedited;
        private boolean mIgnoreBackoff;
        private boolean mIgnoreSettings;
        private boolean mIsManual;
        private boolean mNoRetry;
        private Bundle mSyncConfigExtras;
        private long mSyncFlexTimeSecs;
        private long mSyncRunTimeSecs;
        private long mTxBytes = -1;
        private long mRxBytes = -1;
        private int mPriority = 0;
        private int mSyncType = 0;
        private int mSyncTarget = 0;

        private void setupInterval(long j2, long j3) {
            if (j3 > j2) {
                throw new IllegalArgumentException("Specified run time for the sync must be after the specified flex time.");
            }
            this.mSyncRunTimeSecs = j2;
            this.mSyncFlexTimeSecs = j3;
        }

        private void validatePeriodicExtras(Bundle bundle) {
            if (bundle.getBoolean("force", false) || bundle.getBoolean(ContentResolver.SYNC_EXTRAS_DO_NOT_RETRY, false) || bundle.getBoolean(ContentResolver.SYNC_EXTRAS_IGNORE_BACKOFF, false) || bundle.getBoolean(ContentResolver.SYNC_EXTRAS_IGNORE_SETTINGS, false) || bundle.getBoolean(ContentResolver.SYNC_EXTRAS_INITIALIZE, false) || bundle.getBoolean("force", false) || bundle.getBoolean(ContentResolver.SYNC_EXTRAS_EXPEDITED, false)) {
                throw new IllegalArgumentException("Illegal extras were set");
            }
        }

        public SyncRequest build() {
            if (this.mCustomExtras == null) {
                this.mCustomExtras = new Bundle();
            }
            ContentResolver.validateSyncExtrasBundle(this.mCustomExtras);
            Bundle bundle = new Bundle();
            this.mSyncConfigExtras = bundle;
            if (this.mIgnoreBackoff) {
                bundle.putBoolean(ContentResolver.SYNC_EXTRAS_IGNORE_BACKOFF, true);
            }
            if (this.mDisallowMetered) {
                this.mSyncConfigExtras.putBoolean(ContentResolver.SYNC_EXTRAS_DISALLOW_METERED, true);
            }
            if (this.mIgnoreSettings) {
                this.mSyncConfigExtras.putBoolean(ContentResolver.SYNC_EXTRAS_IGNORE_SETTINGS, true);
            }
            if (this.mNoRetry) {
                this.mSyncConfigExtras.putBoolean(ContentResolver.SYNC_EXTRAS_DO_NOT_RETRY, true);
            }
            if (this.mExpedited) {
                this.mSyncConfigExtras.putBoolean(ContentResolver.SYNC_EXTRAS_EXPEDITED, true);
            }
            if (this.mIsManual) {
                this.mSyncConfigExtras.putBoolean("force", true);
            }
            this.mSyncConfigExtras.putLong(ContentResolver.SYNC_EXTRAS_EXPECTED_UPLOAD, this.mTxBytes);
            this.mSyncConfigExtras.putLong(ContentResolver.SYNC_EXTRAS_EXPECTED_DOWNLOAD, this.mRxBytes);
            this.mSyncConfigExtras.putInt(ContentResolver.SYNC_EXTRAS_PRIORITY, this.mPriority);
            int i2 = this.mSyncType;
            if (i2 == 1) {
                validatePeriodicExtras(this.mCustomExtras);
                validatePeriodicExtras(this.mSyncConfigExtras);
                if (this.mAccount == null) {
                    throw new IllegalArgumentException("Account must not be null for periodic sync.");
                }
                if (this.mAuthority == null) {
                    throw new IllegalArgumentException("Authority must not be null for periodic sync.");
                }
            } else if (i2 == 0) {
                throw new IllegalArgumentException("Must call either syncOnce() or syncPeriodic()");
            }
            if (this.mSyncTarget != 0) {
                return new SyncRequest(this);
            }
            throw new IllegalArgumentException("Must specify an adapter with setSyncAdapter(Account, String");
        }

        public Builder setDisallowMetered(boolean z2) {
            this.mDisallowMetered = z2;
            return this;
        }

        public Builder setExpedited(boolean z2) {
            this.mExpedited = z2;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mCustomExtras = bundle;
            return this;
        }

        public Builder setIgnoreBackoff(boolean z2) {
            this.mIgnoreBackoff = z2;
            return this;
        }

        public Builder setIgnoreSettings(boolean z2) {
            this.mIgnoreSettings = z2;
            return this;
        }

        public Builder setManual(boolean z2) {
            this.mIsManual = z2;
            return this;
        }

        public Builder setNoRetry(boolean z2) {
            this.mNoRetry = z2;
            return this;
        }

        public Builder setPriority(int i2) {
            if (i2 < -2 || i2 > 2) {
                throw new IllegalArgumentException("Priority must be within range [-2, 2]");
            }
            this.mPriority = i2;
            return this;
        }

        public Builder setSyncAdapter(Account account, String str) {
            if (this.mSyncTarget != 0) {
                throw new IllegalArgumentException("Sync target has already been defined.");
            }
            if (str != null && str.length() == 0) {
                throw new IllegalArgumentException("Authority must be non-empty");
            }
            this.mSyncTarget = 2;
            this.mAccount = account;
            this.mAuthority = str;
            this.mComponentName = null;
            return this;
        }

        public Builder setTransferSize(long j2, long j3) {
            this.mRxBytes = j2;
            this.mTxBytes = j3;
            return this;
        }

        public Builder syncOnce() {
            if (this.mSyncType != 0) {
                throw new IllegalArgumentException("Sync type has already been defined.");
            }
            this.mSyncType = 2;
            setupInterval(0L, 0L);
            return this;
        }

        public Builder syncPeriodic(long j2, long j3) {
            if (this.mSyncType != 0) {
                throw new IllegalArgumentException("Sync type has already been defined.");
            }
            this.mSyncType = 1;
            setupInterval(j2, j3);
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        if (hasAuthority()) {
            return this.mAccountToSync;
        }
        throw new IllegalArgumentException("Cannot getAccount() for a sync that does notspecify an authority.");
    }

    public Bundle getBundle() {
        return this.mExtras;
    }

    public String getProvider() {
        if (hasAuthority()) {
            return this.mAuthority;
        }
        throw new IllegalArgumentException("Cannot getProvider() for a sync that does notspecify a provider.");
    }

    public long getSyncFlexTime() {
        return this.mSyncFlexTimeSecs;
    }

    public long getSyncRunTime() {
        return this.mSyncRunTimeSecs;
    }

    public boolean hasAuthority() {
        return this.mIsAuthority;
    }

    public boolean isExpedited() {
        return this.mIsExpedited;
    }

    public boolean isPeriodic() {
        return this.mIsPeriodic;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeBundle(this.mExtras);
        parcel.writeLong(this.mSyncFlexTimeSecs);
        parcel.writeLong(this.mSyncRunTimeSecs);
        parcel.writeInt(this.mIsPeriodic ? 1 : 0);
        parcel.writeInt(this.mDisallowMetered ? 1 : 0);
        parcel.writeLong(this.mTxBytes);
        parcel.writeLong(this.mRxBytes);
        parcel.writeInt(this.mIsAuthority ? 1 : 0);
        parcel.writeInt(this.mIsExpedited ? 1 : 0);
        if (!this.mIsAuthority) {
            parcel.writeParcelable(this.mComponentInfo, i2);
        } else {
            parcel.writeParcelable(this.mAccountToSync, i2);
            parcel.writeString(this.mAuthority);
        }
    }

    private SyncRequest(Parcel parcel) {
        this.mExtras = parcel.readBundle();
        this.mSyncFlexTimeSecs = parcel.readLong();
        this.mSyncRunTimeSecs = parcel.readLong();
        this.mIsPeriodic = parcel.readInt() != 0;
        this.mDisallowMetered = parcel.readInt() != 0;
        this.mTxBytes = parcel.readLong();
        this.mRxBytes = parcel.readLong();
        boolean z2 = parcel.readInt() != 0;
        this.mIsAuthority = z2;
        this.mIsExpedited = parcel.readInt() != 0;
        if (z2) {
            this.mComponentInfo = null;
            this.mAccountToSync = (Account) parcel.readParcelable(null);
            this.mAuthority = parcel.readString();
        } else {
            this.mComponentInfo = (ComponentName) parcel.readParcelable(null);
            this.mAccountToSync = null;
            this.mAuthority = null;
        }
    }

    public SyncRequest(Builder builder) {
        this.mSyncFlexTimeSecs = builder.mSyncFlexTimeSecs;
        this.mSyncRunTimeSecs = builder.mSyncRunTimeSecs;
        this.mAccountToSync = builder.mAccount;
        this.mAuthority = builder.mAuthority;
        this.mComponentInfo = builder.mComponentName;
        this.mIsPeriodic = builder.mSyncType == 1;
        this.mIsAuthority = builder.mSyncTarget == 2;
        this.mIsExpedited = builder.mExpedited;
        Bundle bundle = new Bundle(builder.mCustomExtras);
        this.mExtras = bundle;
        bundle.putAll(builder.mSyncConfigExtras);
        this.mDisallowMetered = builder.mDisallowMetered;
        this.mTxBytes = builder.mTxBytes;
        this.mRxBytes = builder.mRxBytes;
    }
}
