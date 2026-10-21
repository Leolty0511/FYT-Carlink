package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.android.internal.telecom.IVideoProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ParcelableCall implements Parcelable {
    public static final Parcelable.Creator<ParcelableCall> CREATOR = new Parcelable.Creator<ParcelableCall>() { // from class: android.telecom.ParcelableCall.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableCall createFromParcel(Parcel parcel) {
            ClassLoader classLoader = ParcelableCall.class.getClassLoader();
            String string = parcel.readString();
            int i2 = parcel.readInt();
            DisconnectCause disconnectCause = (DisconnectCause) parcel.readParcelable(classLoader);
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, classLoader);
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            long j2 = parcel.readLong();
            Uri uri = (Uri) parcel.readParcelable(classLoader);
            int i5 = parcel.readInt();
            String string2 = parcel.readString();
            int i6 = parcel.readInt();
            GatewayInfo gatewayInfo = (GatewayInfo) parcel.readParcelable(classLoader);
            PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) parcel.readParcelable(classLoader);
            boolean z2 = parcel.readByte() == 1;
            IVideoProvider iVideoProviderAsInterface = IVideoProvider.Stub.asInterface(parcel.readStrongBinder());
            String string3 = parcel.readString();
            ArrayList arrayList2 = new ArrayList();
            parcel.readList(arrayList2, classLoader);
            StatusHints statusHints = (StatusHints) parcel.readParcelable(classLoader);
            int i7 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList();
            parcel.readList(arrayList3, classLoader);
            return new ParcelableCall(string, i2, disconnectCause, arrayList, i3, i4, parcel.readInt(), j2, uri, i5, string2, i6, gatewayInfo, phoneAccountHandle, z2, iVideoProviderAsInterface, parcel.readByte() == 1, (ParcelableRttCall) parcel.readParcelable(classLoader), string3, arrayList2, statusHints, i7, arrayList3, parcel.readBundle(classLoader), parcel.readBundle(classLoader), parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableCall[] newArray(int i2) {
            return new ParcelableCall[i2];
        }
    };
    private final PhoneAccountHandle mAccountHandle;
    private final String mCallerDisplayName;
    private final int mCallerDisplayNamePresentation;
    private final List<String> mCannedSmsResponses;
    private final int mCapabilities;
    private final List<String> mChildCallIds;
    private final List<String> mConferenceableCallIds;
    private final long mConnectTimeMillis;
    private final long mCreationTimeMillis;
    private final DisconnectCause mDisconnectCause;
    private final Bundle mExtras;
    private final GatewayInfo mGatewayInfo;
    private final Uri mHandle;
    private final int mHandlePresentation;
    private final String mId;
    private final Bundle mIntentExtras;
    private final boolean mIsRttCallChanged;
    private final boolean mIsVideoCallProviderChanged;
    private final String mParentCallId;
    private final int mProperties;
    private final ParcelableRttCall mRttCall;
    private final int mState;
    private final StatusHints mStatusHints;
    private final int mSupportedAudioRoutes;
    private VideoCallImpl mVideoCall;
    private final IVideoProvider mVideoCallProvider;
    private final int mVideoState;

    public ParcelableCall(String str, int i2, DisconnectCause disconnectCause, List<String> list, int i3, int i4, int i5, long j2, Uri uri, int i6, String str2, int i7, GatewayInfo gatewayInfo, PhoneAccountHandle phoneAccountHandle, boolean z2, IVideoProvider iVideoProvider, boolean z3, ParcelableRttCall parcelableRttCall, String str3, List<String> list2, StatusHints statusHints, int i8, List<String> list3, Bundle bundle, Bundle bundle2, long j3) {
        this.mId = str;
        this.mState = i2;
        this.mDisconnectCause = disconnectCause;
        this.mCannedSmsResponses = list;
        this.mCapabilities = i3;
        this.mProperties = i4;
        this.mSupportedAudioRoutes = i5;
        this.mConnectTimeMillis = j2;
        this.mHandle = uri;
        this.mHandlePresentation = i6;
        this.mCallerDisplayName = str2;
        this.mCallerDisplayNamePresentation = i7;
        this.mGatewayInfo = gatewayInfo;
        this.mAccountHandle = phoneAccountHandle;
        this.mIsVideoCallProviderChanged = z2;
        this.mVideoCallProvider = iVideoProvider;
        this.mIsRttCallChanged = z3;
        this.mRttCall = parcelableRttCall;
        this.mParentCallId = str3;
        this.mChildCallIds = list2;
        this.mStatusHints = statusHints;
        this.mVideoState = i8;
        this.mConferenceableCallIds = Collections.unmodifiableList(list3);
        this.mIntentExtras = bundle;
        this.mExtras = bundle2;
        this.mCreationTimeMillis = j3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PhoneAccountHandle getAccountHandle() {
        return this.mAccountHandle;
    }

    public String getCallerDisplayName() {
        return this.mCallerDisplayName;
    }

    public int getCallerDisplayNamePresentation() {
        return this.mCallerDisplayNamePresentation;
    }

    public List<String> getCannedSmsResponses() {
        return this.mCannedSmsResponses;
    }

    public int getCapabilities() {
        return this.mCapabilities;
    }

    public List<String> getChildCallIds() {
        return this.mChildCallIds;
    }

    public List<String> getConferenceableCallIds() {
        return this.mConferenceableCallIds;
    }

    public long getConnectTimeMillis() {
        return this.mConnectTimeMillis;
    }

    public long getCreationTimeMillis() {
        return this.mCreationTimeMillis;
    }

    public DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public GatewayInfo getGatewayInfo() {
        return this.mGatewayInfo;
    }

    public Uri getHandle() {
        return this.mHandle;
    }

    public int getHandlePresentation() {
        return this.mHandlePresentation;
    }

    public String getId() {
        return this.mId;
    }

    public Bundle getIntentExtras() {
        return this.mIntentExtras;
    }

    public boolean getIsRttCallChanged() {
        return this.mIsRttCallChanged;
    }

    public ParcelableRttCall getParcelableRttCall() {
        return this.mRttCall;
    }

    public String getParentCallId() {
        return this.mParentCallId;
    }

    public int getProperties() {
        return this.mProperties;
    }

    public int getState() {
        return this.mState;
    }

    public StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public int getSupportedAudioRoutes() {
        return this.mSupportedAudioRoutes;
    }

    public VideoCallImpl getVideoCallImpl(String str, int i2) {
        IVideoProvider iVideoProvider;
        if (this.mVideoCall == null && (iVideoProvider = this.mVideoCallProvider) != null) {
            try {
                this.mVideoCall = new VideoCallImpl(iVideoProvider, str, i2);
            } catch (RemoteException unused) {
            }
        }
        return this.mVideoCall;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public boolean isVideoCallProviderChanged() {
        return this.mIsVideoCallProviderChanged;
    }

    public String toString() {
        return String.format("[%s, parent:%s, children:%s]", this.mId, this.mParentCallId, this.mChildCallIds);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeInt(this.mState);
        parcel.writeParcelable(this.mDisconnectCause, 0);
        parcel.writeList(this.mCannedSmsResponses);
        parcel.writeInt(this.mCapabilities);
        parcel.writeInt(this.mProperties);
        parcel.writeLong(this.mConnectTimeMillis);
        parcel.writeParcelable(this.mHandle, 0);
        parcel.writeInt(this.mHandlePresentation);
        parcel.writeString(this.mCallerDisplayName);
        parcel.writeInt(this.mCallerDisplayNamePresentation);
        parcel.writeParcelable(this.mGatewayInfo, 0);
        parcel.writeParcelable(this.mAccountHandle, 0);
        parcel.writeByte(this.mIsVideoCallProviderChanged ? (byte) 1 : (byte) 0);
        IVideoProvider iVideoProvider = this.mVideoCallProvider;
        parcel.writeStrongBinder(iVideoProvider != null ? iVideoProvider.asBinder() : null);
        parcel.writeString(this.mParentCallId);
        parcel.writeList(this.mChildCallIds);
        parcel.writeParcelable(this.mStatusHints, 0);
        parcel.writeInt(this.mVideoState);
        parcel.writeList(this.mConferenceableCallIds);
        parcel.writeBundle(this.mIntentExtras);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mSupportedAudioRoutes);
        parcel.writeByte(this.mIsRttCallChanged ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.mRttCall, 0);
        parcel.writeLong(this.mCreationTimeMillis);
    }
}
