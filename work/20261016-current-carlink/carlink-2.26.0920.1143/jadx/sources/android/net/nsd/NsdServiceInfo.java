package android.net.nsd;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class NsdServiceInfo implements Parcelable {
    public static final Parcelable.Creator<NsdServiceInfo> CREATOR = new Parcelable.Creator<NsdServiceInfo>() { // from class: android.net.nsd.NsdServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NsdServiceInfo createFromParcel(Parcel parcel) {
            byte[] bArr;
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.mServiceName = parcel.readString();
            nsdServiceInfo.mServiceType = parcel.readString();
            if (parcel.readInt() == 1) {
                try {
                    nsdServiceInfo.mHost = InetAddress.getByAddress(parcel.createByteArray());
                } catch (UnknownHostException unused) {
                }
            }
            nsdServiceInfo.mPort = parcel.readInt();
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                if (parcel.readInt() == 1) {
                    bArr = new byte[parcel.readInt()];
                    parcel.readByteArray(bArr);
                } else {
                    bArr = null;
                }
                nsdServiceInfo.mTxtRecord.put(parcel.readString(), bArr);
            }
            return nsdServiceInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NsdServiceInfo[] newArray(int i2) {
            return new NsdServiceInfo[i2];
        }
    };
    private static final String TAG = "NsdServiceInfo";
    private InetAddress mHost;
    private int mPort;
    private String mServiceName;
    private String mServiceType;
    private final ArrayMap<String, byte[]> mTxtRecord = new ArrayMap<>();

    public NsdServiceInfo() {
    }

    private int getTxtRecordSize() {
        int length = 0;
        for (Map.Entry<String, byte[]> entry : this.mTxtRecord.entrySet()) {
            int length2 = entry.getKey().length() + length + 2;
            byte[] value = entry.getValue();
            length = (value == null ? 0 : value.length) + length2;
        }
        return length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map<String, byte[]> getAttributes() {
        return Collections.unmodifiableMap(this.mTxtRecord);
    }

    public InetAddress getHost() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    public String getServiceName() {
        return this.mServiceName;
    }

    public String getServiceType() {
        return this.mServiceType;
    }

    public byte[] getTxtRecord() {
        int txtRecordSize = getTxtRecordSize();
        if (txtRecordSize == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[txtRecordSize];
        int i2 = 0;
        for (Map.Entry<String, byte[]> entry : this.mTxtRecord.entrySet()) {
            String key = entry.getKey();
            byte[] value = entry.getValue();
            int i3 = i2 + 1;
            bArr[i2] = (byte) (key.length() + (value == null ? 0 : value.length) + 1);
            System.arraycopy(key.getBytes(StandardCharsets.US_ASCII), 0, bArr, i3, key.length());
            int length = key.length() + i3;
            int length2 = length + 1;
            bArr[length] = 61;
            if (value != null) {
                System.arraycopy(value, 0, bArr, length2, value.length);
                length2 += value.length;
            }
            i2 = length2;
        }
        return bArr;
    }

    public void removeAttribute(String str) {
        this.mTxtRecord.remove(str);
    }

    public void setAttribute(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Key cannot be empty");
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < ' ' || cCharAt > '~') {
                throw new IllegalArgumentException("Key strings must be printable US-ASCII");
            }
            if (cCharAt == '=') {
                throw new IllegalArgumentException("Key strings must not include '='");
            }
        }
        if (str.length() + (bArr == null ? 0 : bArr.length) >= 255) {
            throw new IllegalArgumentException("Key length + value length must be < 255 bytes");
        }
        if (str.length() > 9) {
            Log.w(TAG, "Key lengths > 9 are discouraged: ".concat(str));
        }
        int length = str.length() + getTxtRecordSize() + (bArr != null ? bArr.length : 0) + 2;
        if (length > 1300) {
            throw new IllegalArgumentException("Total length of attributes must be < 1300 bytes");
        }
        if (length > 400) {
            Log.w(TAG, "Total length of all attributes exceeds 400 bytes; truncation may occur");
        }
        this.mTxtRecord.put(str, bArr);
    }

    public void setHost(InetAddress inetAddress) {
        this.mHost = inetAddress;
    }

    public void setPort(int i2) {
        this.mPort = i2;
    }

    public void setServiceName(String str) {
        this.mServiceName = str;
    }

    public void setServiceType(String str) {
        this.mServiceType = str;
    }

    public void setTxtRecords(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        int i2 = 0;
        while (i2 < bArrDecode.length) {
            int length = bArrDecode[i2] & 255;
            int i3 = i2 + 1;
            if (length == 0) {
                throw new IllegalArgumentException("Zero sized txt record");
            }
            try {
                if (i3 + length > bArrDecode.length) {
                    Log.w(TAG, "Corrupt record length (pos = " + i3 + "): " + length);
                    length = bArrDecode.length - i3;
                }
                String str2 = null;
                int i4 = 0;
                byte[] bArr = null;
                for (int i5 = i3; i5 < i3 + length; i5++) {
                    if (str2 != null) {
                        if (bArr == null) {
                            bArr = new byte[(length - str2.length()) - 1];
                        }
                        bArr[i4] = bArrDecode[i5];
                        i4++;
                    } else if (bArrDecode[i5] == 61) {
                        str2 = new String(bArrDecode, i3, i5 - i3, StandardCharsets.US_ASCII);
                    }
                }
                if (str2 == null) {
                    str2 = new String(bArrDecode, i3, length, StandardCharsets.US_ASCII);
                }
                if (TextUtils.isEmpty(str2)) {
                    throw new IllegalArgumentException("Invalid txt record (key is empty)");
                }
                if (getAttributes().containsKey(str2)) {
                    throw new IllegalArgumentException("Invalid txt record (duplicate key \"" + str2 + "\")");
                }
                setAttribute(str2, bArr);
                i2 = i3 + length;
            } catch (IllegalArgumentException e2) {
                StringBuilder sbS = c.s("While parsing txt records (pos = ", i3, "): ");
                sbS.append(e2.getMessage());
                Log.e(TAG, sbS.toString());
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("name: ");
        stringBuffer.append(this.mServiceName);
        stringBuffer.append(", type: ");
        stringBuffer.append(this.mServiceType);
        stringBuffer.append(", host: ");
        stringBuffer.append(this.mHost);
        stringBuffer.append(", port: ");
        stringBuffer.append(this.mPort);
        byte[] txtRecord = getTxtRecord();
        if (txtRecord != null) {
            stringBuffer.append(", txtRecord: ");
            stringBuffer.append(new String(txtRecord, StandardCharsets.UTF_8));
        }
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mServiceName);
        parcel.writeString(this.mServiceType);
        if (this.mHost != null) {
            parcel.writeInt(1);
            parcel.writeByteArray(this.mHost.getAddress());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mPort);
        parcel.writeInt(this.mTxtRecord.size());
        for (String str : this.mTxtRecord.keySet()) {
            byte[] bArr = this.mTxtRecord.get(str);
            if (bArr != null) {
                parcel.writeInt(1);
                parcel.writeInt(bArr.length);
                parcel.writeByteArray(bArr);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeString(str);
        }
    }

    public NsdServiceInfo(String str, String str2) {
        this.mServiceName = str;
        this.mServiceType = str2;
    }

    public void setAttribute(String str, String str2) {
        byte[] bytes;
        if (str2 == null) {
            bytes = null;
        } else {
            try {
                bytes = str2.getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new IllegalArgumentException("Value must be UTF-8");
            }
        }
        setAttribute(str, bytes);
    }
}
