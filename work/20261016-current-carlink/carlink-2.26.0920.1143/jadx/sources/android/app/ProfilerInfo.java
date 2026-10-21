package android.app;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Slog;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ProfilerInfo implements Parcelable {
    public static final Parcelable.Creator<ProfilerInfo> CREATOR = new Parcelable.Creator<ProfilerInfo>() { // from class: android.app.ProfilerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProfilerInfo createFromParcel(Parcel parcel) {
            return new ProfilerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProfilerInfo[] newArray(int i2) {
            return new ProfilerInfo[i2];
        }
    };
    private static final String TAG = "ProfilerInfo";
    public final String agent;
    public final boolean autoStopProfiler;
    public ParcelFileDescriptor profileFd;
    public final String profileFile;
    public final int samplingInterval;
    public final boolean streamingOutput;

    public void closeFd() {
        ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e2) {
                Slog.w(TAG, "Failure closing profile fd", e2);
            }
            this.profileFd = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor.describeContents();
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.profileFile);
        if (this.profileFd != null) {
            parcel.writeInt(1);
            this.profileFd.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.samplingInterval);
        parcel.writeInt(this.autoStopProfiler ? 1 : 0);
        parcel.writeInt(this.streamingOutput ? 1 : 0);
        parcel.writeString(this.agent);
    }

    public ProfilerInfo(String str, ParcelFileDescriptor parcelFileDescriptor, int i2, boolean z2, boolean z3, String str2) {
        this.profileFile = str;
        this.profileFd = parcelFileDescriptor;
        this.samplingInterval = i2;
        this.autoStopProfiler = z2;
        this.streamingOutput = z3;
        this.agent = str2;
    }

    public ProfilerInfo(ProfilerInfo profilerInfo) {
        this.profileFile = profilerInfo.profileFile;
        this.profileFd = profilerInfo.profileFd;
        this.samplingInterval = profilerInfo.samplingInterval;
        this.autoStopProfiler = profilerInfo.autoStopProfiler;
        this.streamingOutput = profilerInfo.streamingOutput;
        this.agent = profilerInfo.agent;
    }

    private ProfilerInfo(Parcel parcel) {
        this.profileFile = parcel.readString();
        this.profileFd = parcel.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null;
        this.samplingInterval = parcel.readInt();
        this.autoStopProfiler = parcel.readInt() != 0;
        this.streamingOutput = parcel.readInt() != 0;
        this.agent = parcel.readString();
    }
}
