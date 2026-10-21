package android.content.pm;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class EphemeralResolveInfo implements Parcelable {
    public static final Parcelable.Creator<EphemeralResolveInfo> CREATOR = new Parcelable.Creator<EphemeralResolveInfo>() { // from class: android.content.pm.EphemeralResolveInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EphemeralResolveInfo createFromParcel(Parcel parcel) {
            return new EphemeralResolveInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EphemeralResolveInfo[] newArray(int i2) {
            return new EphemeralResolveInfo[i2];
        }
    };
    public static final String SHA_ALGORITHM = "SHA-256";
    private final InstantAppResolveInfo mInstantAppResolveInfo;

    @Deprecated
    private final List<IntentFilter> mLegacyFilters;

    public static final class EphemeralDigest implements Parcelable {
        public static final Parcelable.Creator<EphemeralDigest> CREATOR = new Parcelable.Creator<EphemeralDigest>() { // from class: android.content.pm.EphemeralResolveInfo.EphemeralDigest.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EphemeralDigest createFromParcel(Parcel parcel) {
                return new EphemeralDigest(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EphemeralDigest[] newArray(int i2) {
                return new EphemeralDigest[i2];
            }
        };
        private final InstantAppResolveInfo.InstantAppDigest mInstantAppDigest;

        public EphemeralDigest(String str) {
            this(str, -1);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public byte[][] getDigestBytes() {
            return this.mInstantAppDigest.getDigestBytes();
        }

        public int[] getDigestPrefix() {
            return this.mInstantAppDigest.getDigestPrefix();
        }

        public InstantAppResolveInfo.InstantAppDigest getInstantAppDigest() {
            return this.mInstantAppDigest;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.mInstantAppDigest, i2);
        }

        public EphemeralDigest(String str, int i2) {
            this.mInstantAppDigest = new InstantAppResolveInfo.InstantAppDigest(str, i2);
        }

        public EphemeralDigest(Parcel parcel) {
            this.mInstantAppDigest = (InstantAppResolveInfo.InstantAppDigest) parcel.readParcelable(null);
        }
    }

    @Deprecated
    public EphemeralResolveInfo(Uri uri, String str, List<IntentFilter> list) {
        if (uri == null || str == null || list == null || list.isEmpty()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new EphemeralIntentFilter(str, list));
        this.mInstantAppResolveInfo = new InstantAppResolveInfo(uri.getHost(), str, createInstantAppIntentFilterList(arrayList));
        ArrayList arrayList2 = new ArrayList(list.size());
        this.mLegacyFilters = arrayList2;
        arrayList2.addAll(list);
    }

    private static List<InstantAppIntentFilter> createInstantAppIntentFilterList(List<EphemeralIntentFilter> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(list.get(i2).getInstantAppIntentFilter());
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getDigestBytes() {
        return this.mInstantAppResolveInfo.getDigestBytes();
    }

    public int getDigestPrefix() {
        return this.mInstantAppResolveInfo.getDigestPrefix();
    }

    @Deprecated
    public List<IntentFilter> getFilters() {
        return this.mLegacyFilters;
    }

    public InstantAppResolveInfo getInstantAppResolveInfo() {
        return this.mInstantAppResolveInfo;
    }

    public List<EphemeralIntentFilter> getIntentFilters() {
        List<InstantAppIntentFilter> intentFilters = this.mInstantAppResolveInfo.getIntentFilters();
        int size = intentFilters.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new EphemeralIntentFilter(intentFilters.get(i2)));
        }
        return arrayList;
    }

    public String getPackageName() {
        return this.mInstantAppResolveInfo.getPackageName();
    }

    public int getVersionCode() {
        return this.mInstantAppResolveInfo.getVersionCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mInstantAppResolveInfo, i2);
        parcel.writeList(this.mLegacyFilters);
    }

    @Deprecated
    public EphemeralResolveInfo(EphemeralDigest ephemeralDigest, String str, List<EphemeralIntentFilter> list) {
        this(ephemeralDigest, str, list, -1);
    }

    public EphemeralResolveInfo(EphemeralDigest ephemeralDigest, String str, List<EphemeralIntentFilter> list, int i2) {
        this.mInstantAppResolveInfo = new InstantAppResolveInfo(ephemeralDigest.getInstantAppDigest(), str, createInstantAppIntentFilterList(list), i2);
        this.mLegacyFilters = null;
    }

    public EphemeralResolveInfo(String str, String str2, List<EphemeralIntentFilter> list) {
        this(new EphemeralDigest(str), str2, list);
    }

    public EphemeralResolveInfo(Parcel parcel) {
        this.mInstantAppResolveInfo = (InstantAppResolveInfo) parcel.readParcelable(null);
        ArrayList arrayList = new ArrayList();
        this.mLegacyFilters = arrayList;
        parcel.readList(arrayList, null);
    }
}
