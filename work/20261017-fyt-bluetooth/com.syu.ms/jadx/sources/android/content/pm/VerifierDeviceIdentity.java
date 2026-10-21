package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import android.text.format.DateFormat;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class VerifierDeviceIdentity implements Parcelable {
    private static final int GROUP_SIZE = 4;
    private static final int LONG_SIZE = 13;
    private static final char SEPARATOR = '-';
    private final long mIdentity;
    private final String mIdentityString;
    private static final char[] ENCODE = {DateFormat.CAPITAL_AM_PM, 'B', 'C', 'D', DateFormat.DAY, 'F', 'G', 'H', 'I', 'J', 'K', DateFormat.STANDALONE_MONTH, DateFormat.MONTH, PhoneNumberUtils.WILD, 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '2', '3', '4', '5', '6', '7'};
    public static final Parcelable.Creator<VerifierDeviceIdentity> CREATOR = new Parcelable.Creator<VerifierDeviceIdentity>() { // from class: android.content.pm.VerifierDeviceIdentity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerifierDeviceIdentity createFromParcel(Parcel parcel) {
            return new VerifierDeviceIdentity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerifierDeviceIdentity[] newArray(int i2) {
            return new VerifierDeviceIdentity[i2];
        }
    };

    private static final long decodeBase32(byte[] bArr) {
        int i2;
        long j2 = 0;
        int i3 = 0;
        for (byte b2 : bArr) {
            if (65 <= b2 && b2 <= 90) {
                i2 = b2 - 65;
            } else if (50 > b2 || b2 > 55) {
                if (b2 == 45) {
                    continue;
                } else if (97 <= b2 && b2 <= 122) {
                    i2 = b2 - 97;
                } else if (b2 == 48) {
                    i2 = 14;
                } else {
                    if (b2 != 49) {
                        throw new IllegalArgumentException("base base-32 character: " + ((int) b2));
                    }
                    i2 = 8;
                }
            } else {
                i2 = b2 - 24;
            }
            j2 = (j2 << 5) | ((long) i2);
            i3++;
            if (i3 == 1) {
                if ((i2 & 15) != i2) {
                    throw new IllegalArgumentException("illegal start character; will overflow");
                }
            } else if (i3 > 13) {
                throw new IllegalArgumentException("too long; should have 13 characters");
            }
        }
        if (i3 == 13) {
            return j2;
        }
        throw new IllegalArgumentException("too short; should have 13 characters");
    }

    private static final String encodeBase32(long j2) {
        char[] cArr = ENCODE;
        int i2 = 16;
        char[] cArr2 = new char[16];
        for (int i3 = 0; i3 < 13; i3++) {
            if (i3 > 0 && i3 % 4 == 1) {
                i2--;
                cArr2[i2] = SEPARATOR;
            }
            int i4 = (int) (31 & j2);
            j2 >>>= 5;
            i2--;
            cArr2[i2] = cArr[i4];
        }
        return String.valueOf(cArr2);
    }

    public static VerifierDeviceIdentity generate() {
        return generate(new SecureRandom());
    }

    public static VerifierDeviceIdentity parse(String str) {
        try {
            return new VerifierDeviceIdentity(decodeBase32(str.getBytes("US-ASCII")));
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException("bad base-32 characters in input");
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof VerifierDeviceIdentity) && this.mIdentity == ((VerifierDeviceIdentity) obj).mIdentity;
    }

    public int hashCode() {
        return (int) this.mIdentity;
    }

    public String toString() {
        return this.mIdentityString;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mIdentity);
    }

    public VerifierDeviceIdentity(long j2) {
        this.mIdentity = j2;
        this.mIdentityString = encodeBase32(j2);
    }

    public static VerifierDeviceIdentity generate(Random random) {
        return new VerifierDeviceIdentity(random.nextLong());
    }

    private VerifierDeviceIdentity(Parcel parcel) {
        long j2 = parcel.readLong();
        this.mIdentity = j2;
        this.mIdentityString = encodeBase32(j2);
    }
}
