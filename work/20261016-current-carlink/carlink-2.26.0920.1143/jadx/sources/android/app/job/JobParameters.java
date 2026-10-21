package android.app.job;

import android.accessibilityservice.c;
import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;
import com.android.internal.location.GpsNetInitiatedHandler;

/* JADX INFO: loaded from: classes.dex */
public class JobParameters implements Parcelable {
    public static final Parcelable.Creator<JobParameters> CREATOR = new Parcelable.Creator<JobParameters>() { // from class: android.app.job.JobParameters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobParameters createFromParcel(Parcel parcel) {
            return new JobParameters(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobParameters[] newArray(int i2) {
            return new JobParameters[i2];
        }
    };
    public static final int REASON_CANCELED = 0;
    public static final int REASON_CONSTRAINTS_NOT_SATISFIED = 1;
    public static final int REASON_DEVICE_IDLE = 4;
    public static final int REASON_PREEMPT = 2;
    public static final int REASON_TIMEOUT = 3;
    private final IBinder callback;
    private final ClipData clipData;
    private final int clipGrantFlags;
    private final PersistableBundle extras;
    private final int jobId;
    private boolean mReschedule;
    private final String[] mTriggeredContentAuthorities;
    private final Uri[] mTriggeredContentUris;
    private final boolean overrideDeadlineExpired;
    private int stopReason;
    private final Bundle transientExtras;

    public static String getReasonName(int i2) {
        if (i2 == 0) {
            return "canceled";
        }
        if (i2 == 1) {
            return "constraints";
        }
        if (i2 == 2) {
            return "preempt";
        }
        if (i2 != 3) {
            return i2 != 4 ? c.d("unknown:", i2) : "device_idle";
        }
        return GpsNetInitiatedHandler.NI_INTENT_KEY_TIMEOUT;
    }

    public void completeWork(JobWorkItem jobWorkItem) {
        try {
            if (getCallback().completeWork(getJobId(), jobWorkItem.getWorkId())) {
                return;
            }
            throw new IllegalArgumentException("Given work is not active: " + jobWorkItem);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public JobWorkItem dequeueWork() {
        try {
            return getCallback().dequeueWork(getJobId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IJobCallback getCallback() {
        return IJobCallback.Stub.asInterface(this.callback);
    }

    public ClipData getClipData() {
        return this.clipData;
    }

    public int getClipGrantFlags() {
        return this.clipGrantFlags;
    }

    public PersistableBundle getExtras() {
        return this.extras;
    }

    public int getJobId() {
        return this.jobId;
    }

    public boolean getReshedule() {
        return this.mReschedule;
    }

    public int getStopReason() {
        return this.stopReason;
    }

    public Bundle getTransientExtras() {
        return this.transientExtras;
    }

    public String[] getTriggeredContentAuthorities() {
        return this.mTriggeredContentAuthorities;
    }

    public Uri[] getTriggeredContentUris() {
        return this.mTriggeredContentUris;
    }

    public boolean isOverrideDeadlineExpired() {
        return this.overrideDeadlineExpired;
    }

    public void setReshedule(boolean z2) {
        this.mReschedule = z2;
    }

    public void setStopReason(int i2) {
        this.stopReason = i2;
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
        parcel.writeStrongBinder(this.callback);
        parcel.writeInt(this.overrideDeadlineExpired ? 1 : 0);
        parcel.writeTypedArray(this.mTriggeredContentUris, i2);
        parcel.writeStringArray(this.mTriggeredContentAuthorities);
        parcel.writeInt(this.stopReason);
        parcel.writeInt(this.mReschedule ? 1 : 0);
    }

    public JobParameters(IBinder iBinder, int i2, PersistableBundle persistableBundle, Bundle bundle, ClipData clipData, int i3, boolean z2, Uri[] uriArr, String[] strArr) {
        this.mReschedule = true;
        this.jobId = i2;
        this.extras = persistableBundle;
        this.transientExtras = bundle;
        this.clipData = clipData;
        this.clipGrantFlags = i3;
        this.callback = iBinder;
        this.overrideDeadlineExpired = z2;
        this.mTriggeredContentUris = uriArr;
        this.mTriggeredContentAuthorities = strArr;
    }

    private JobParameters(Parcel parcel) {
        this.mReschedule = true;
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
        this.callback = parcel.readStrongBinder();
        this.overrideDeadlineExpired = parcel.readInt() == 1;
        this.mTriggeredContentUris = (Uri[]) parcel.createTypedArray(Uri.CREATOR);
        this.mTriggeredContentAuthorities = parcel.createStringArray();
        this.stopReason = parcel.readInt();
        this.mReschedule = parcel.readInt() == 1;
    }
}
