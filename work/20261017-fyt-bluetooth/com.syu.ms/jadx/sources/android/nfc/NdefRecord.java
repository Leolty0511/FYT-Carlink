package android.nfc;

import android.content.ClipDescription;
import android.content.Intent;
import android.net.ProxyProperties;
import android.net.Uri;
import android.net.dhcp.DhcpPacket;
import android.os.Parcel;
import android.os.Parcelable;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NdefRecord implements Parcelable {
    private static final byte FLAG_CF = 32;
    private static final byte FLAG_IL = 8;
    private static final byte FLAG_MB = -128;
    private static final byte FLAG_ME = 64;
    private static final byte FLAG_SR = 16;
    private static final int MAX_PAYLOAD_SIZE = 10485760;
    public static final short TNF_ABSOLUTE_URI = 3;
    public static final short TNF_EMPTY = 0;
    public static final short TNF_EXTERNAL_TYPE = 4;
    public static final short TNF_MIME_MEDIA = 2;
    public static final short TNF_RESERVED = 7;
    public static final short TNF_UNCHANGED = 6;
    public static final short TNF_UNKNOWN = 5;
    public static final short TNF_WELL_KNOWN = 1;
    private final byte[] mId;
    private final byte[] mPayload;
    private final short mTnf;
    private final byte[] mType;
    public static final byte[] RTD_TEXT = {84};
    public static final byte[] RTD_URI = {85};
    public static final byte[] RTD_SMART_POSTER = {83, 112};
    public static final byte[] RTD_ALTERNATIVE_CARRIER = {97, 99};
    public static final byte[] RTD_HANDOVER_CARRIER = {72, 99};
    public static final byte[] RTD_HANDOVER_REQUEST = {72, 114};
    public static final byte[] RTD_HANDOVER_SELECT = {72, 115};
    public static final byte[] RTD_ANDROID_APP = "android.com:pkg".getBytes();
    private static final String[] URI_PREFIX_MAP = {ProxyProperties.LOCAL_EXCL_LIST, "http://www.", "https://www.", "http://", "https://", WebView.SCHEME_TEL, "mailto:", "ftp://anonymous:anonymous@", "ftp://ftp.", "ftps://", "sftp://", "smb://", "nfs://", "ftp://", "dav://", "news:", "telnet://", "imap:", "rtsp://", "urn:", "pop:", "sip:", "sips:", "tftp:", "btspp://", "btl2cap://", "btgoep://", "tcpobex://", "irdaobex://", URLUtil.FILE_BASE, "urn:epc:id:", "urn:epc:tag:", "urn:epc:pat:", "urn:epc:raw:", "urn:epc:"};
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Parcelable.Creator<NdefRecord> CREATOR = new Parcelable.Creator<NdefRecord>() { // from class: android.nfc.NdefRecord.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefRecord createFromParcel(Parcel parcel) {
            short s2 = (short) parcel.readInt();
            byte[] bArr = new byte[parcel.readInt()];
            parcel.readByteArray(bArr);
            byte[] bArr2 = new byte[parcel.readInt()];
            parcel.readByteArray(bArr2);
            byte[] bArr3 = new byte[parcel.readInt()];
            parcel.readByteArray(bArr3);
            return new NdefRecord(s2, bArr, bArr2, bArr3);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefRecord[] newArray(int i2) {
            return new NdefRecord[i2];
        }
    };

    public NdefRecord(short s2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        bArr = bArr == null ? EMPTY_BYTE_ARRAY : bArr;
        bArr2 = bArr2 == null ? EMPTY_BYTE_ARRAY : bArr2;
        bArr3 = bArr3 == null ? EMPTY_BYTE_ARRAY : bArr3;
        String strValidateTnf = validateTnf(s2, bArr, bArr2, bArr3);
        if (strValidateTnf != null) {
            throw new IllegalArgumentException(strValidateTnf);
        }
        this.mTnf = s2;
        this.mType = bArr;
        this.mId = bArr2;
        this.mPayload = bArr3;
    }

    private static StringBuilder bytesToString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append(String.format("%02X", Byte.valueOf(b2)));
        }
        return sb;
    }

    public static NdefRecord createApplicationRecord(String str) {
        Objects.requireNonNull(str, "packageName is null");
        if (str.length() != 0) {
            return new NdefRecord((short) 4, RTD_ANDROID_APP, null, str.getBytes(StandardCharsets.UTF_8));
        }
        throw new IllegalArgumentException("packageName is empty");
    }

    public static NdefRecord createExternal(String str, String str2, byte[] bArr) {
        Objects.requireNonNull(str, "domain is null");
        Objects.requireNonNull(str2, "type is null");
        String strTrim = str.trim();
        Locale locale = Locale.ROOT;
        String lowerCase = strTrim.toLowerCase(locale);
        String lowerCase2 = str2.trim().toLowerCase(locale);
        if (lowerCase.length() == 0) {
            throw new IllegalArgumentException("domain is empty");
        }
        if (lowerCase2.length() == 0) {
            throw new IllegalArgumentException("type is empty");
        }
        byte[] bytes = lowerCase.getBytes(StandardCharsets.UTF_8);
        byte[] bytes2 = lowerCase2.getBytes(StandardCharsets.UTF_8);
        byte[] bArr2 = new byte[bytes.length + 1 + bytes2.length];
        System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
        bArr2[bytes.length] = DhcpPacket.DHCP_RENEWAL_TIME;
        System.arraycopy(bytes2, 0, bArr2, bytes.length + 1, bytes2.length);
        return new NdefRecord((short) 4, bArr2, null, bArr);
    }

    public static NdefRecord createMime(String str, byte[] bArr) {
        Objects.requireNonNull(str, "mimeType is null");
        String strNormalizeMimeType = Intent.normalizeMimeType(str);
        if (strNormalizeMimeType.length() == 0) {
            throw new IllegalArgumentException("mimeType is empty");
        }
        int iIndexOf = strNormalizeMimeType.indexOf(47);
        if (iIndexOf == 0) {
            throw new IllegalArgumentException("mimeType must have major type");
        }
        if (iIndexOf != strNormalizeMimeType.length() - 1) {
            return new NdefRecord((short) 2, strNormalizeMimeType.getBytes(StandardCharsets.US_ASCII), null, bArr);
        }
        throw new IllegalArgumentException("mimeType must have minor type");
    }

    public static NdefRecord createUri(Uri uri) {
        byte b2;
        Objects.requireNonNull(uri, "uri is null");
        String string = uri.normalizeScheme().toString();
        if (string.length() == 0) {
            throw new IllegalArgumentException("uri is empty");
        }
        int i2 = 1;
        while (true) {
            String[] strArr = URI_PREFIX_MAP;
            if (i2 >= strArr.length) {
                b2 = 0;
                break;
            }
            if (string.startsWith(strArr[i2])) {
                b2 = (byte) i2;
                string = string.substring(strArr[i2].length());
                break;
            }
            i2++;
        }
        byte[] bytes = string.getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[bytes.length + 1];
        bArr[0] = b2;
        System.arraycopy(bytes, 0, bArr, 1, bytes.length);
        return new NdefRecord((short) 1, RTD_URI, null, bArr);
    }

    private static void ensureSanePayloadSize(long j2) throws FormatException {
        if (j2 <= 10485760) {
            return;
        }
        throw new FormatException("payload above max limit: " + j2 + " > " + MAX_PAYLOAD_SIZE);
    }

    public static NdefRecord[] parse(ByteBuffer byteBuffer, boolean z2) throws FormatException {
        boolean z3;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList<byte[]> arrayList2 = new ArrayList();
            short s2 = -1;
            byte[] bArr = null;
            byte[] bArr2 = null;
            boolean z4 = false;
            boolean z5 = false;
            while (!z4) {
                byte b2 = byteBuffer.get();
                boolean z6 = (b2 & FLAG_MB) != 0;
                z4 = (b2 & FLAG_ME) != 0;
                boolean z7 = (b2 & FLAG_CF) != 0;
                boolean z8 = (b2 & FLAG_SR) != 0;
                boolean z9 = (b2 & 8) != 0;
                short s3 = (short) (b2 & 7);
                if (!z6 && arrayList.size() == 0 && !z5 && !z2) {
                    throw new FormatException("expected MB flag");
                }
                if (z6 && arrayList.size() != 0 && !z2) {
                    throw new FormatException("unexpected MB flag");
                }
                if (z5 && z9) {
                    throw new FormatException("unexpected IL flag in non-leading chunk");
                }
                if (z7 && z4) {
                    throw new FormatException("unexpected ME flag in non-trailing chunk");
                }
                if (z5 && s3 != 6) {
                    throw new FormatException("expected TNF_UNCHANGED in non-leading chunk");
                }
                if (!z5 && s3 == 6) {
                    throw new FormatException("unexpected TNF_UNCHANGED in first chunk or unchunked record");
                }
                int i2 = byteBuffer.get() & 255;
                long j2 = z8 ? byteBuffer.get() & 255 : ((long) byteBuffer.getInt()) & ExpandableListView.PACKED_POSITION_VALUE_NULL;
                int i3 = z9 ? byteBuffer.get() & 255 : 0;
                if (z5 && i2 != 0) {
                    throw new FormatException("expected zero-length type in non-leading chunk");
                }
                if (!z5) {
                    bArr = i2 > 0 ? new byte[i2] : EMPTY_BYTE_ARRAY;
                    bArr2 = i3 > 0 ? new byte[i3] : EMPTY_BYTE_ARRAY;
                    byteBuffer.get(bArr);
                    byteBuffer.get(bArr2);
                }
                ensureSanePayloadSize(j2);
                long length = 0;
                byte[] bArr3 = j2 > 0 ? new byte[(int) j2] : EMPTY_BYTE_ARRAY;
                byteBuffer.get(bArr3);
                if (z7 && !z5) {
                    arrayList2.clear();
                    s2 = s3;
                }
                if (z7 || z5) {
                    arrayList2.add(bArr3);
                }
                if (z7 || !z5) {
                    z3 = false;
                } else {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        length += (long) ((byte[]) it.next()).length;
                    }
                    ensureSanePayloadSize(length);
                    bArr3 = new byte[(int) length];
                    int length2 = 0;
                    for (byte[] bArr4 : arrayList2) {
                        System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
                        length2 += bArr4.length;
                    }
                    z3 = false;
                    s3 = s2;
                }
                if (z7) {
                    z5 = true;
                } else {
                    String strValidateTnf = validateTnf(s3, bArr, bArr2, bArr3);
                    if (strValidateTnf != null) {
                        throw new FormatException(strValidateTnf);
                    }
                    arrayList.add(new NdefRecord(s3, bArr, bArr2, bArr3));
                    if (z2) {
                        break;
                    }
                    z5 = z3;
                }
            }
            return (NdefRecord[]) arrayList.toArray(new NdefRecord[arrayList.size()]);
        } catch (BufferUnderflowException e2) {
            throw new FormatException("expected more data", e2);
        }
    }

    private Uri parseWktUri() {
        int i2;
        byte[] bArr = this.mPayload;
        if (bArr.length >= 2 && (i2 = bArr[0] & (-1)) >= 0) {
            String[] strArr = URI_PREFIX_MAP;
            if (i2 < strArr.length) {
                return Uri.parse(strArr[i2] + new String(Arrays.copyOfRange(bArr, 1, bArr.length), StandardCharsets.UTF_8));
            }
        }
        return null;
    }

    public static String validateTnf(short s2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        switch (s2) {
            case 0:
                if (bArr.length == 0 && bArr2.length == 0 && bArr3.length == 0) {
                    return null;
                }
                return "unexpected data in TNF_EMPTY record";
            case 5:
            case 7:
                if (bArr.length != 0) {
                    return "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record";
                }
            case 1:
            case 2:
            case 3:
            case 4:
                return null;
            case 6:
                return "unexpected TNF_UNCHANGED in first chunk or logical record";
            default:
                return String.format("unexpected tnf value: 0x%02x", Short.valueOf(s2));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NdefRecord.class != obj.getClass()) {
            return false;
        }
        NdefRecord ndefRecord = (NdefRecord) obj;
        if (Arrays.equals(this.mId, ndefRecord.mId) && Arrays.equals(this.mPayload, ndefRecord.mPayload) && this.mTnf == ndefRecord.mTnf) {
            return Arrays.equals(this.mType, ndefRecord.mType);
        }
        return false;
    }

    public int getByteLength() {
        int length = this.mType.length + 3;
        byte[] bArr = this.mId;
        int length2 = length + bArr.length;
        byte[] bArr2 = this.mPayload;
        int length3 = length2 + bArr2.length;
        boolean z2 = bArr2.length < 256;
        boolean z3 = bArr.length > 0;
        if (!z2) {
            length3 += 3;
        }
        return z3 ? length3 + 1 : length3;
    }

    public byte[] getId() {
        return (byte[]) this.mId.clone();
    }

    public byte[] getPayload() {
        return (byte[]) this.mPayload.clone();
    }

    public short getTnf() {
        return this.mTnf;
    }

    public byte[] getType() {
        return (byte[]) this.mType.clone();
    }

    public int hashCode() {
        return ((((((Arrays.hashCode(this.mId) + 31) * 31) + Arrays.hashCode(this.mPayload)) * 31) + this.mTnf) * 31) + Arrays.hashCode(this.mType);
    }

    @Deprecated
    public byte[] toByteArray() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(getByteLength());
        writeToByteBuffer(byteBufferAllocate, true, true);
        return byteBufferAllocate.array();
    }

    public String toMimeType() {
        short s2 = this.mTnf;
        if (s2 != 1) {
            if (s2 != 2) {
                return null;
            }
            return Intent.normalizeMimeType(new String(this.mType, StandardCharsets.US_ASCII));
        }
        if (Arrays.equals(this.mType, RTD_TEXT)) {
            return ClipDescription.MIMETYPE_TEXT_PLAIN;
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(String.format("NdefRecord tnf=%X", Short.valueOf(this.mTnf)));
        if (this.mType.length > 0) {
            sb.append(" type=");
            sb.append((CharSequence) bytesToString(this.mType));
        }
        if (this.mId.length > 0) {
            sb.append(" id=");
            sb.append((CharSequence) bytesToString(this.mId));
        }
        if (this.mPayload.length > 0) {
            sb.append(" payload=");
            sb.append((CharSequence) bytesToString(this.mPayload));
        }
        return sb.toString();
    }

    public Uri toUri() {
        return toUri(false);
    }

    public void writeToByteBuffer(ByteBuffer byteBuffer, boolean z2, boolean z3) {
        boolean z4 = this.mPayload.length < 256;
        boolean z5 = this.mId.length > 0;
        byteBuffer.put((byte) ((z2 ? -128 : 0) | (z3 ? 64 : 0) | (z4 ? 16 : 0) | (z5 ? 8 : 0) | this.mTnf));
        byteBuffer.put((byte) this.mType.length);
        if (z4) {
            byteBuffer.put((byte) this.mPayload.length);
        } else {
            byteBuffer.putInt(this.mPayload.length);
        }
        if (z5) {
            byteBuffer.put((byte) this.mId.length);
        }
        byteBuffer.put(this.mType);
        byteBuffer.put(this.mId);
        byteBuffer.put(this.mPayload);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mTnf);
        parcel.writeInt(this.mType.length);
        parcel.writeByteArray(this.mType);
        parcel.writeInt(this.mId.length);
        parcel.writeByteArray(this.mId);
        parcel.writeInt(this.mPayload.length);
        parcel.writeByteArray(this.mPayload);
    }

    private Uri toUri(boolean z2) {
        Uri wktUri;
        short s2 = this.mTnf;
        if (s2 != 1) {
            if (s2 == 3) {
                return Uri.parse(new String(this.mType, StandardCharsets.UTF_8)).normalizeScheme();
            }
            if (s2 != 4 || z2) {
                return null;
            }
            return Uri.parse("vnd.android.nfc://ext/" + new String(this.mType, StandardCharsets.US_ASCII));
        }
        if (!Arrays.equals(this.mType, RTD_SMART_POSTER) || z2) {
            if (!Arrays.equals(this.mType, RTD_URI) || (wktUri = parseWktUri()) == null) {
                return null;
            }
            return wktUri.normalizeScheme();
        }
        try {
            for (NdefRecord ndefRecord : new NdefMessage(this.mPayload).getRecords()) {
                Uri uri = ndefRecord.toUri(true);
                if (uri != null) {
                    return uri;
                }
            }
            return null;
        } catch (FormatException unused) {
            return null;
        }
    }

    @Deprecated
    public NdefRecord(byte[] bArr) throws FormatException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        NdefRecord[] ndefRecordArr = parse(byteBufferWrap, true);
        if (byteBufferWrap.remaining() <= 0) {
            this.mTnf = ndefRecordArr[0].mTnf;
            this.mType = ndefRecordArr[0].mType;
            this.mId = ndefRecordArr[0].mId;
            this.mPayload = ndefRecordArr[0].mPayload;
            return;
        }
        throw new FormatException("data too long");
    }

    public static NdefRecord createUri(String str) {
        return createUri(Uri.parse(str));
    }
}
