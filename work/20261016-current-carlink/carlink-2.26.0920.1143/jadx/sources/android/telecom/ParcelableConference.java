package android.telecom;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telecom.IVideoProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ParcelableConference implements Parcelable {
    public static final Parcelable.Creator<ParcelableConference> CREATOR = new Parcelable.Creator<ParcelableConference>() { // from class: android.telecom.ParcelableConference.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConference createFromParcel(Parcel parcel) {
            ClassLoader classLoader = ParcelableConference.class.getClassLoader();
            PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) parcel.readParcelable(classLoader);
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            ArrayList arrayList = new ArrayList(2);
            parcel.readList(arrayList, classLoader);
            long j2 = parcel.readLong();
            return new ParcelableConference(phoneAccountHandle, i2, i3, parcel.readInt(), arrayList, IVideoProvider.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), j2, parcel.readLong(), (StatusHints) parcel.readParcelable(classLoader), parcel.readBundle(classLoader));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConference[] newArray(int i2) {
            return new ParcelableConference[i2];
        }
    };
    private long mConnectElapsedTimeMillis;
    private long mConnectTimeMillis;
    private int mConnectionCapabilities;
    private List<String> mConnectionIds;
    private int mConnectionProperties;
    private Bundle mExtras;
    private PhoneAccountHandle mPhoneAccount;
    private int mState;
    private StatusHints mStatusHints;
    private final IVideoProvider mVideoProvider;
    private final int mVideoState;

    public ParcelableConference(PhoneAccountHandle phoneAccountHandle, int i2, int i3, int i4, List<String> list, IVideoProvider iVideoProvider, int i5, long j2, long j3, StatusHints statusHints, Bundle bundle) {
        this.mPhoneAccount = phoneAccountHandle;
        this.mState = i2;
        this.mConnectionCapabilities = i3;
        this.mConnectionProperties = i4;
        this.mConnectionIds = list;
        this.mVideoProvider = iVideoProvider;
        this.mVideoState = i5;
        this.mConnectTimeMillis = j2;
        this.mStatusHints = statusHints;
        this.mExtras = bundle;
        this.mConnectElapsedTimeMillis = j3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getConnectElapsedTimeMillis() {
        return this.mConnectElapsedTimeMillis;
    }

    public long getConnectTimeMillis() {
        return this.mConnectTimeMillis;
    }

    public int getConnectionCapabilities() {
        return this.mConnectionCapabilities;
    }

    public List<String> getConnectionIds() {
        return this.mConnectionIds;
    }

    public int getConnectionProperties() {
        return this.mConnectionProperties;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public PhoneAccountHandle getPhoneAccount() {
        return this.mPhoneAccount;
    }

    public int getState() {
        return this.mState;
    }

    public StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public IVideoProvider getVideoProvider() {
        return this.mVideoProvider;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("account: ");
        stringBuffer.append(this.mPhoneAccount);
        stringBuffer.append(", state: ");
        stringBuffer.append(Connection.stateToString(this.mState));
        stringBuffer.append(", capabilities: ");
        stringBuffer.append(Connection.capabilitiesToString(this.mConnectionCapabilities));
        stringBuffer.append(", properties: ");
        stringBuffer.append(Connection.propertiesToString(this.mConnectionProperties));
        stringBuffer.append(", connectTime: ");
        stringBuffer.append(this.mConnectTimeMillis);
        stringBuffer.append(", children: ");
        stringBuffer.append(this.mConnectionIds);
        stringBuffer.append(", VideoState: ");
        stringBuffer.append(this.mVideoState);
        stringBuffer.append(", VideoProvider: ");
        stringBuffer.append(this.mVideoProvider);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mPhoneAccount, 0);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mConnectionCapabilities);
        parcel.writeList(this.mConnectionIds);
        parcel.writeLong(this.mConnectTimeMillis);
        IVideoProvider iVideoProvider = this.mVideoProvider;
        parcel.writeStrongBinder(iVideoProvider != null ? iVideoProvider.asBinder() : null);
        parcel.writeInt(this.mVideoState);
        parcel.writeParcelable(this.mStatusHints, 0);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mConnectionProperties);
        parcel.writeLong(this.mConnectElapsedTimeMillis);
    }
}
