package android.net.wifi;

import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiSsid implements Parcelable {
    public static final Parcelable.Creator<WifiSsid> CREATOR = new Parcelable.Creator<WifiSsid>() { // from class: android.net.wifi.WifiSsid.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiSsid createFromParcel(Parcel parcel) {
            WifiSsid wifiSsid = new WifiSsid();
            int i2 = parcel.readInt();
            byte[] bArr = new byte[i2];
            parcel.readByteArray(bArr);
            wifiSsid.octets.write(bArr, 0, i2);
            return wifiSsid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WifiSsid[] newArray(int i2) {
            return new WifiSsid[i2];
        }
    };
    private static final int HEX_RADIX = 16;
    public static final String NONE = "<unknown ssid>";
    private static final String TAG = "WifiSsid";
    public ByteArrayOutputStream octets;

    private void convertToBytes(String str) {
        int i2;
        int i3 = 0;
        while (i3 < str.length()) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != '\\') {
                this.octets.write(cCharAt);
            } else {
                i3++;
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 == '\"') {
                    this.octets.write(34);
                } else if (cCharAt2 == '\\') {
                    this.octets.write(92);
                } else if (cCharAt2 == 'e') {
                    this.octets.write(27);
                } else if (cCharAt2 == 'n') {
                    this.octets.write(10);
                } else if (cCharAt2 == 'r') {
                    this.octets.write(13);
                } else if (cCharAt2 == 't') {
                    this.octets.write(9);
                } else if (cCharAt2 != 'x') {
                    switch (cCharAt2) {
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                            int iCharAt = str.charAt(i3) - '0';
                            i3++;
                            if (str.charAt(i3) >= '0' && str.charAt(i3) <= '7') {
                                iCharAt = ((iCharAt * 8) + str.charAt(i3)) - 48;
                                i3++;
                            }
                            if (str.charAt(i3) >= '0' && str.charAt(i3) <= '7') {
                                iCharAt = ((iCharAt * 8) + str.charAt(i3)) - 48;
                                i3++;
                            }
                            this.octets.write(iCharAt);
                            break;
                    }
                } else {
                    i3++;
                    int i4 = i3 + 2;
                    try {
                        i2 = Integer.parseInt(str.substring(i3, i4), 16);
                    } catch (NumberFormatException unused) {
                        i2 = -1;
                    }
                    if (i2 < 0) {
                        int iDigit = Character.digit(str.charAt(i3), 16);
                        if (iDigit >= 0) {
                            this.octets.write(iDigit);
                        }
                    } else {
                        this.octets.write(i2);
                        i3 = i4;
                    }
                }
            }
            i3++;
        }
    }

    public static WifiSsid createFromAsciiEncoded(String str) {
        WifiSsid wifiSsid = new WifiSsid();
        wifiSsid.convertToBytes(str);
        return wifiSsid;
    }

    public static WifiSsid createFromHex(String str) {
        int i2;
        WifiSsid wifiSsid = new WifiSsid();
        if (str == null) {
            return wifiSsid;
        }
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        }
        int i3 = 0;
        while (i3 < str.length() - 1) {
            int i4 = i3 + 2;
            try {
                i2 = Integer.parseInt(str.substring(i3, i4), 16);
            } catch (NumberFormatException unused) {
                i2 = 0;
            }
            wifiSsid.octets.write(i2);
            i3 = i4;
        }
        return wifiSsid;
    }

    private boolean isArrayAllZeroes(byte[] bArr) {
        for (byte b2 : bArr) {
            if (b2 != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHexString() {
        byte[] octets = getOctets();
        String str = "0x";
        for (int i2 = 0; i2 < this.octets.size(); i2++) {
            str = str + String.format(Locale.US, "%02x", Byte.valueOf(octets[i2]));
        }
        return str;
    }

    public byte[] getOctets() {
        return this.octets.toByteArray();
    }

    public String toString() {
        byte[] byteArray = this.octets.toByteArray();
        if (this.octets.size() <= 0 || isArrayAllZeroes(byteArray)) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
        CharsetDecoder charsetDecoderOnUnmappableCharacter = Charset.forName("UTF-8").newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        CharBuffer charBufferAllocate = CharBuffer.allocate(32);
        CoderResult coderResultDecode = charsetDecoderOnUnmappableCharacter.decode(ByteBuffer.wrap(byteArray), charBufferAllocate, true);
        charBufferAllocate.flip();
        return coderResultDecode.isError() ? NONE : charBufferAllocate.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.octets.size());
        parcel.writeByteArray(this.octets.toByteArray());
    }

    private WifiSsid() {
        this.octets = new ByteArrayOutputStream(32);
    }
}
