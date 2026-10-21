package android.service.gatekeeper;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class GateKeeperResponse implements Parcelable {
    public static final Parcelable.Creator<GateKeeperResponse> CREATOR = new Parcelable.Creator<GateKeeperResponse>() { // from class: android.service.gatekeeper.GateKeeperResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GateKeeperResponse createFromParcel(Parcel parcel) {
            byte[] bArr;
            int i2 = parcel.readInt();
            if (i2 == 1) {
                return GateKeeperResponse.createRetryResponse(parcel.readInt());
            }
            if (i2 != 0) {
                return GateKeeperResponse.createGenericResponse(i2);
            }
            boolean z2 = parcel.readInt() == 1;
            int i3 = parcel.readInt();
            if (i3 > 0) {
                bArr = new byte[i3];
                parcel.readByteArray(bArr);
            } else {
                bArr = null;
            }
            return GateKeeperResponse.createOkResponse(bArr, z2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GateKeeperResponse[] newArray(int i2) {
            return new GateKeeperResponse[i2];
        }
    };
    public static final int RESPONSE_ERROR = -1;
    public static final int RESPONSE_OK = 0;
    public static final int RESPONSE_RETRY = 1;
    private byte[] mPayload;
    private final int mResponseCode;
    private boolean mShouldReEnroll;
    private int mTimeout;

    private GateKeeperResponse(int i2) {
        this.mResponseCode = i2;
    }

    public static GateKeeperResponse createGenericResponse(int i2) {
        return new GateKeeperResponse(i2);
    }

    public static GateKeeperResponse createOkResponse(byte[] bArr, boolean z2) {
        GateKeeperResponse gateKeeperResponse = new GateKeeperResponse(0);
        gateKeeperResponse.mPayload = bArr;
        gateKeeperResponse.mShouldReEnroll = z2;
        return gateKeeperResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GateKeeperResponse createRetryResponse(int i2) {
        GateKeeperResponse gateKeeperResponse = new GateKeeperResponse(1);
        gateKeeperResponse.mTimeout = i2;
        return gateKeeperResponse;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getPayload() {
        return this.mPayload;
    }

    public int getResponseCode() {
        return this.mResponseCode;
    }

    public boolean getShouldReEnroll() {
        return this.mShouldReEnroll;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mResponseCode);
        int i3 = this.mResponseCode;
        if (i3 == 1) {
            parcel.writeInt(this.mTimeout);
            return;
        }
        if (i3 == 0) {
            parcel.writeInt(this.mShouldReEnroll ? 1 : 0);
            byte[] bArr = this.mPayload;
            if (bArr == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(bArr.length);
                parcel.writeByteArray(this.mPayload);
            }
        }
    }
}
