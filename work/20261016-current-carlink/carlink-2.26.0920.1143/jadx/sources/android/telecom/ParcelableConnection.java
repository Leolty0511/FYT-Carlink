package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telecom.IVideoProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ParcelableConnection implements Parcelable {
    public static final Parcelable.Creator<ParcelableConnection> CREATOR = new Parcelable.Creator<ParcelableConnection>() { // from class: android.telecom.ParcelableConnection.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConnection createFromParcel(Parcel parcel) {
            ClassLoader classLoader = ParcelableConnection.class.getClassLoader();
            PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) parcel.readParcelable(classLoader);
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            Uri uri = (Uri) parcel.readParcelable(classLoader);
            int i4 = parcel.readInt();
            String string = parcel.readString();
            int i5 = parcel.readInt();
            IVideoProvider iVideoProviderAsInterface = IVideoProvider.Stub.asInterface(parcel.readStrongBinder());
            int i6 = parcel.readInt();
            boolean z2 = parcel.readByte() == 1;
            boolean z3 = parcel.readByte() == 1;
            long j2 = parcel.readLong();
            StatusHints statusHints = (StatusHints) parcel.readParcelable(classLoader);
            DisconnectCause disconnectCause = (DisconnectCause) parcel.readParcelable(classLoader);
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            return new ParcelableConnection(phoneAccountHandle, i2, i3, parcel.readInt(), parcel.readInt(), uri, i4, string, i5, iVideoProviderAsInterface, i6, z2, z3, j2, parcel.readLong(), statusHints, disconnectCause, arrayList, Bundle.setDefusable(parcel.readBundle(classLoader), true), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableConnection[] newArray(int i2) {
            return new ParcelableConnection[i2];
        }
    };
    private final Uri mAddress;
    private final int mAddressPresentation;
    private final String mCallerDisplayName;
    private final int mCallerDisplayNamePresentation;
    private final List<String> mConferenceableConnectionIds;
    private final long mConnectElapsedTimeMillis;
    private final long mConnectTimeMillis;
    private final int mConnectionCapabilities;
    private final int mConnectionProperties;
    private final DisconnectCause mDisconnectCause;
    private final Bundle mExtras;
    private final boolean mIsVoipAudioMode;
    private String mParentCallId;
    private final PhoneAccountHandle mPhoneAccount;
    private final boolean mRingbackRequested;
    private final int mState;
    private final StatusHints mStatusHints;
    private final int mSupportedAudioRoutes;
    private final IVideoProvider mVideoProvider;
    private final int mVideoState;

    public ParcelableConnection(PhoneAccountHandle phoneAccountHandle, int i2, int i3, int i4, int i5, Uri uri, int i6, String str, int i7, IVideoProvider iVideoProvider, int i8, boolean z2, boolean z3, long j2, long j3, StatusHints statusHints, DisconnectCause disconnectCause, List<String> list, Bundle bundle, String str2) {
        this(phoneAccountHandle, i2, i3, i4, i5, uri, i6, str, i7, iVideoProvider, i8, z2, z3, j2, j3, statusHints, disconnectCause, list, bundle);
        this.mParentCallId = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCallerDisplayName() {
        return this.mCallerDisplayName;
    }

    public int getCallerDisplayNamePresentation() {
        return this.mCallerDisplayNamePresentation;
    }

    public final List<String> getConferenceableConnectionIds() {
        return this.mConferenceableConnectionIds;
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

    public int getConnectionProperties() {
        return this.mConnectionProperties;
    }

    public final DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public Uri getHandle() {
        return this.mAddress;
    }

    public int getHandlePresentation() {
        return this.mAddressPresentation;
    }

    public boolean getIsVoipAudioMode() {
        return this.mIsVoipAudioMode;
    }

    public final String getParentCallId() {
        return this.mParentCallId;
    }

    public PhoneAccountHandle getPhoneAccount() {
        return this.mPhoneAccount;
    }

    public int getState() {
        return this.mState;
    }

    public final StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public int getSupportedAudioRoutes() {
        return this.mSupportedAudioRoutes;
    }

    public IVideoProvider getVideoProvider() {
        return this.mVideoProvider;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public boolean isRingbackRequested() {
        return this.mRingbackRequested;
    }

    public String toString() {
        return "ParcelableConnection [act:" + this.mPhoneAccount + "], state:" + this.mState + ", capabilities:" + Connection.capabilitiesToString(this.mConnectionCapabilities) + ", properties:" + Connection.propertiesToString(this.mConnectionProperties) + ", extras:" + this.mExtras + ", parent:" + this.mParentCallId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mPhoneAccount, 0);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mConnectionCapabilities);
        parcel.writeParcelable(this.mAddress, 0);
        parcel.writeInt(this.mAddressPresentation);
        parcel.writeString(this.mCallerDisplayName);
        parcel.writeInt(this.mCallerDisplayNamePresentation);
        IVideoProvider iVideoProvider = this.mVideoProvider;
        parcel.writeStrongBinder(iVideoProvider != null ? iVideoProvider.asBinder() : null);
        parcel.writeInt(this.mVideoState);
        parcel.writeByte(this.mRingbackRequested ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mIsVoipAudioMode ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.mConnectTimeMillis);
        parcel.writeParcelable(this.mStatusHints, 0);
        parcel.writeParcelable(this.mDisconnectCause, 0);
        parcel.writeStringList(this.mConferenceableConnectionIds);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mConnectionProperties);
        parcel.writeInt(this.mSupportedAudioRoutes);
        parcel.writeString(this.mParentCallId);
        parcel.writeLong(this.mConnectElapsedTimeMillis);
    }

    public ParcelableConnection(PhoneAccountHandle phoneAccountHandle, int i2, int i3, int i4, int i5, Uri uri, int i6, String str, int i7, IVideoProvider iVideoProvider, int i8, boolean z2, boolean z3, long j2, long j3, StatusHints statusHints, DisconnectCause disconnectCause, List<String> list, Bundle bundle) {
        this.mPhoneAccount = phoneAccountHandle;
        this.mState = i2;
        this.mConnectionCapabilities = i3;
        this.mConnectionProperties = i4;
        this.mSupportedAudioRoutes = i5;
        this.mAddress = uri;
        this.mAddressPresentation = i6;
        this.mCallerDisplayName = str;
        this.mCallerDisplayNamePresentation = i7;
        this.mVideoProvider = iVideoProvider;
        this.mVideoState = i8;
        this.mRingbackRequested = z2;
        this.mIsVoipAudioMode = z3;
        this.mConnectTimeMillis = j2;
        this.mConnectElapsedTimeMillis = j3;
        this.mStatusHints = statusHints;
        this.mDisconnectCause = disconnectCause;
        this.mConferenceableConnectionIds = list;
        this.mExtras = bundle;
        this.mParentCallId = null;
    }
}
