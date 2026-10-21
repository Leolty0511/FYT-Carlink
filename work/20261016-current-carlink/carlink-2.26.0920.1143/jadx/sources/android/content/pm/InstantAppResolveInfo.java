package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class InstantAppResolveInfo implements Parcelable {
    public static final Parcelable.Creator<InstantAppResolveInfo> CREATOR = new Parcelable.Creator<InstantAppResolveInfo>() { // from class: android.content.pm.InstantAppResolveInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstantAppResolveInfo createFromParcel(Parcel parcel) {
            return new InstantAppResolveInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InstantAppResolveInfo[] newArray(int i2) {
            return new InstantAppResolveInfo[i2];
        }
    };
    private static final String SHA_ALGORITHM = "SHA-256";
    private final InstantAppDigest mDigest;
    private final List<InstantAppIntentFilter> mFilters;
    private final String mPackageName;
    private final int mVersionCode;

    public static final class InstantAppDigest implements Parcelable {
        public static final Parcelable.Creator<InstantAppDigest> CREATOR = new Parcelable.Creator<InstantAppDigest>() { // from class: android.content.pm.InstantAppResolveInfo.InstantAppDigest.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public InstantAppDigest createFromParcel(Parcel parcel) {
                return new InstantAppDigest(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public InstantAppDigest[] newArray(int i2) {
                return new InstantAppDigest[i2];
            }
        };
        private static final int DIGEST_MASK = -4096;
        private static final int DIGEST_PREFIX_COUNT = 5;
        private final byte[][] mDigestBytes;
        private final int[] mDigestPrefix;

        public InstantAppDigest(String str) {
            this(str, -1);
        }

        private static byte[][] generateDigest(String str, int i2) {
            ArrayList arrayList = new ArrayList();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                if (i2 <= 0) {
                    arrayList.add(messageDigest.digest(str.getBytes()));
                } else {
                    int iLastIndexOf = str.lastIndexOf(46, str.lastIndexOf(46) - 1);
                    if (iLastIndexOf < 0) {
                        arrayList.add(messageDigest.digest(str.getBytes()));
                    } else {
                        arrayList.add(messageDigest.digest(str.substring(iLastIndexOf + 1, str.length()).getBytes()));
                        for (int i3 = 1; iLastIndexOf >= 0 && i3 < i2; i3++) {
                            iLastIndexOf = str.lastIndexOf(46, iLastIndexOf - 1);
                            arrayList.add(messageDigest.digest(str.substring(iLastIndexOf + 1, str.length()).getBytes()));
                        }
                    }
                }
                return (byte[][]) arrayList.toArray(new byte[arrayList.size()][]);
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("could not find digest algorithm");
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public byte[][] getDigestBytes() {
            return this.mDigestBytes;
        }

        public int[] getDigestPrefix() {
            return this.mDigestPrefix;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            byte[][] bArr = this.mDigestBytes;
            if (bArr != null) {
                parcel.writeInt(bArr.length);
                int i3 = 0;
                while (true) {
                    byte[][] bArr2 = this.mDigestBytes;
                    if (i3 >= bArr2.length) {
                        break;
                    }
                    parcel.writeByteArray(bArr2[i3]);
                    i3++;
                }
            } else {
                parcel.writeInt(-1);
            }
            parcel.writeIntArray(this.mDigestPrefix);
        }

        public InstantAppDigest(String str, int i2) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            byte[][] bArrGenerateDigest = generateDigest(str.toLowerCase(Locale.ENGLISH), i2);
            this.mDigestBytes = bArrGenerateDigest;
            this.mDigestPrefix = new int[bArrGenerateDigest.length];
            int i3 = 0;
            while (true) {
                byte[][] bArr = this.mDigestBytes;
                if (i3 >= bArr.length) {
                    return;
                }
                int[] iArr = this.mDigestPrefix;
                byte[] bArr2 = bArr[i3];
                iArr[i3] = (((bArr2[3] & 255) << 0) | ((bArr2[0] & 255) << 24) | ((bArr2[1] & 255) << 16) | ((bArr2[2] & 255) << 8)) & DIGEST_MASK;
                i3++;
            }
        }

        public InstantAppDigest(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == -1) {
                this.mDigestBytes = null;
            } else {
                this.mDigestBytes = new byte[i2][];
                for (int i3 = 0; i3 < i2; i3++) {
                    this.mDigestBytes[i3] = parcel.createByteArray();
                }
            }
            this.mDigestPrefix = parcel.createIntArray();
        }
    }

    public InstantAppResolveInfo(InstantAppDigest instantAppDigest, String str, List<InstantAppIntentFilter> list, int i2) {
        if ((str == null && list != null && list.size() != 0) || (str != null && (list == null || list.size() == 0))) {
            throw new IllegalArgumentException();
        }
        this.mDigest = instantAppDigest;
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            this.mFilters = arrayList;
            arrayList.addAll(list);
        } else {
            this.mFilters = null;
        }
        this.mPackageName = str;
        this.mVersionCode = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getDigestBytes() {
        return this.mDigest.getDigestBytes()[0];
    }

    public int getDigestPrefix() {
        return this.mDigest.getDigestPrefix()[0];
    }

    public List<InstantAppIntentFilter> getIntentFilters() {
        return this.mFilters;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mDigest, i2);
        parcel.writeString(this.mPackageName);
        parcel.writeList(this.mFilters);
        parcel.writeInt(this.mVersionCode);
    }

    public InstantAppResolveInfo(String str, String str2, List<InstantAppIntentFilter> list) {
        this(new InstantAppDigest(str), str2, list, -1);
    }

    public InstantAppResolveInfo(Parcel parcel) {
        this.mDigest = (InstantAppDigest) parcel.readParcelable(null);
        this.mPackageName = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.mFilters = arrayList;
        parcel.readList(arrayList, null);
        this.mVersionCode = parcel.readInt();
    }
}
