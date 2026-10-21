package android.net.wifi.p2p.nsd;

import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WifiP2pServiceResponse implements Parcelable {
    public static final Parcelable.Creator<WifiP2pServiceResponse> CREATOR = new Parcelable.Creator<WifiP2pServiceResponse>() { // from class: android.net.wifi.p2p.nsd.WifiP2pServiceResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pServiceResponse createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            byte[] bArr = null;
            WifiP2pDevice wifiP2pDevice = (WifiP2pDevice) parcel.readParcelable(null);
            int i5 = parcel.readInt();
            if (i5 > 0) {
                bArr = new byte[i5];
                parcel.readByteArray(bArr);
            }
            byte[] bArr2 = bArr;
            if (i2 == 1) {
                return WifiP2pDnsSdServiceResponse.newInstance(i3, i4, wifiP2pDevice, bArr2);
            }
            return i2 == 2 ? WifiP2pUpnpServiceResponse.newInstance(i3, i4, wifiP2pDevice, bArr2) : new WifiP2pServiceResponse(i2, i3, i4, wifiP2pDevice, bArr2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiP2pServiceResponse[] newArray(int i2) {
            return new WifiP2pServiceResponse[i2];
        }
    };
    private static int MAX_BUF_SIZE = 1024;
    public byte[] mData;
    public WifiP2pDevice mDevice;
    public int mServiceType;
    public int mStatus;
    public int mTransId;

    public static class Status {
        public static final int BAD_REQUEST = 3;
        public static final int REQUESTED_INFORMATION_NOT_AVAILABLE = 2;
        public static final int SERVICE_PROTOCOL_NOT_AVAILABLE = 1;
        public static final int SUCCESS = 0;

        private Status() {
        }

        public static String toString(int i2) {
            if (i2 == 0) {
                return "SUCCESS";
            }
            if (i2 == 1) {
                return "SERVICE_PROTOCOL_NOT_AVAILABLE";
            }
            if (i2 != 2) {
                return i2 != 3 ? "UNKNOWN" : "BAD_REQUEST";
            }
            return "REQUESTED_INFORMATION_NOT_AVAILABLE";
        }
    }

    public WifiP2pServiceResponse(int i2, int i3, int i4, WifiP2pDevice wifiP2pDevice, byte[] bArr) {
        this.mServiceType = i2;
        this.mStatus = i3;
        this.mTransId = i4;
        this.mDevice = wifiP2pDevice;
        this.mData = bArr;
    }

    private static byte[] hexStr2Bin(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            try {
                bArr[i2] = (byte) Integer.parseInt(str.substring(i3, i3 + 2), 16);
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return bArr;
    }

    public static List<WifiP2pServiceResponse> newInstance(String str) {
        WifiP2pServiceResponse wifiP2pServiceResponseNewInstance;
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length != 4) {
            return null;
        }
        WifiP2pDevice wifiP2pDevice = new WifiP2pDevice();
        wifiP2pDevice.deviceAddress = strArrSplit[1];
        byte[] bArrHexStr2Bin = hexStr2Bin(strArrSplit[3]);
        if (bArrHexStr2Bin == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArrHexStr2Bin));
        while (dataInputStream.available() > 0) {
            try {
                int unsignedByte = (dataInputStream.readUnsignedByte() + (dataInputStream.readUnsignedByte() << 8)) - 3;
                int unsignedByte2 = dataInputStream.readUnsignedByte();
                int unsignedByte3 = dataInputStream.readUnsignedByte();
                int unsignedByte4 = dataInputStream.readUnsignedByte();
                if (unsignedByte < 0) {
                    return null;
                }
                if (unsignedByte == 0) {
                    if (unsignedByte4 == 0) {
                        arrayList.add(new WifiP2pServiceResponse(unsignedByte2, unsignedByte4, unsignedByte3, wifiP2pDevice, null));
                    }
                } else if (unsignedByte > MAX_BUF_SIZE) {
                    dataInputStream.skip(unsignedByte);
                } else {
                    byte[] bArr = new byte[unsignedByte];
                    dataInputStream.readFully(bArr);
                    if (unsignedByte2 == 1) {
                        wifiP2pServiceResponseNewInstance = WifiP2pDnsSdServiceResponse.newInstance(unsignedByte4, unsignedByte3, wifiP2pDevice, bArr);
                    } else {
                        wifiP2pServiceResponseNewInstance = unsignedByte2 == 2 ? WifiP2pUpnpServiceResponse.newInstance(unsignedByte4, unsignedByte3, wifiP2pDevice, bArr) : new WifiP2pServiceResponse(unsignedByte2, unsignedByte4, unsignedByte3, wifiP2pDevice, bArr);
                    }
                    if (wifiP2pServiceResponseNewInstance != null && wifiP2pServiceResponseNewInstance.getStatus() == 0) {
                        arrayList.add(wifiP2pServiceResponseNewInstance);
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                if (arrayList.size() > 0) {
                    return arrayList;
                }
                return null;
            }
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof WifiP2pServiceResponse)) {
            return false;
        }
        WifiP2pServiceResponse wifiP2pServiceResponse = (WifiP2pServiceResponse) obj;
        return wifiP2pServiceResponse.mServiceType == this.mServiceType && wifiP2pServiceResponse.mStatus == this.mStatus && equals(wifiP2pServiceResponse.mDevice.deviceAddress, this.mDevice.deviceAddress) && Arrays.equals(wifiP2pServiceResponse.mData, this.mData);
    }

    public byte[] getRawData() {
        return this.mData;
    }

    public int getServiceType() {
        return this.mServiceType;
    }

    public WifiP2pDevice getSrcDevice() {
        return this.mDevice;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public int getTransactionId() {
        return this.mTransId;
    }

    public int hashCode() {
        int i2 = (((((527 + this.mServiceType) * 31) + this.mStatus) * 31) + this.mTransId) * 31;
        String str = this.mDevice.deviceAddress;
        int iHashCode = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        byte[] bArr = this.mData;
        return iHashCode + (bArr != null ? bArr.hashCode() : 0);
    }

    public void setSrcDevice(WifiP2pDevice wifiP2pDevice) {
        if (wifiP2pDevice == null) {
            return;
        }
        this.mDevice = wifiP2pDevice;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("serviceType:");
        stringBuffer.append(this.mServiceType);
        stringBuffer.append(" status:");
        stringBuffer.append(Status.toString(this.mStatus));
        stringBuffer.append(" srcAddr:");
        stringBuffer.append(this.mDevice.deviceAddress);
        stringBuffer.append(" data:");
        stringBuffer.append(this.mData);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mServiceType);
        parcel.writeInt(this.mStatus);
        parcel.writeInt(this.mTransId);
        parcel.writeParcelable(this.mDevice, i2);
        byte[] bArr = this.mData;
        if (bArr == null || bArr.length == 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(this.mData);
        }
    }

    private boolean equals(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj != null) {
            return obj.equals(obj2);
        }
        return false;
    }
}
