package android.content;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes.dex */
public class SyncAdapterType implements Parcelable {
    public static final Parcelable.Creator<SyncAdapterType> CREATOR = new Parcelable.Creator<SyncAdapterType>() { // from class: android.content.SyncAdapterType.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncAdapterType createFromParcel(Parcel parcel) {
            return new SyncAdapterType(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncAdapterType[] newArray(int i2) {
            return new SyncAdapterType[i2];
        }
    };
    public final String accountType;
    private final boolean allowParallelSyncs;
    public final String authority;
    private final boolean isAlwaysSyncable;
    public final boolean isKey;
    private final String packageName;
    private final String settingsActivity;
    private final boolean supportsUploading;
    private final boolean userVisible;

    public SyncAdapterType(String str, String str2, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(c.j("the authority must not be empty: ", str));
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(c.j("the accountType must not be empty: ", str2));
        }
        this.authority = str;
        this.accountType = str2;
        this.userVisible = z2;
        this.supportsUploading = z3;
        this.isAlwaysSyncable = false;
        this.allowParallelSyncs = false;
        this.settingsActivity = null;
        this.isKey = false;
        this.packageName = null;
    }

    public static SyncAdapterType newKey(String str, String str2) {
        return new SyncAdapterType(str, str2);
    }

    public boolean allowParallelSyncs() {
        if (this.isKey) {
            throw new IllegalStateException("this method is not allowed to be called when this is a key");
        }
        return this.allowParallelSyncs;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SyncAdapterType)) {
            return false;
        }
        SyncAdapterType syncAdapterType = (SyncAdapterType) obj;
        return this.authority.equals(syncAdapterType.authority) && this.accountType.equals(syncAdapterType.accountType);
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSettingsActivity() {
        if (this.isKey) {
            throw new IllegalStateException("this method is not allowed to be called when this is a key");
        }
        return this.settingsActivity;
    }

    public int hashCode() {
        return this.accountType.hashCode() + ((this.authority.hashCode() + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31);
    }

    public boolean isAlwaysSyncable() {
        if (this.isKey) {
            throw new IllegalStateException("this method is not allowed to be called when this is a key");
        }
        return this.isAlwaysSyncable;
    }

    public boolean isUserVisible() {
        if (this.isKey) {
            throw new IllegalStateException("this method is not allowed to be called when this is a key");
        }
        return this.userVisible;
    }

    public boolean supportsUploading() {
        if (this.isKey) {
            throw new IllegalStateException("this method is not allowed to be called when this is a key");
        }
        return this.supportsUploading;
    }

    public String toString() {
        if (this.isKey) {
            StringBuilder sb = new StringBuilder("SyncAdapterType Key {name=");
            sb.append(this.authority);
            sb.append(", type=");
            return c.n(sb, this.accountType, "}");
        }
        StringBuilder sb2 = new StringBuilder("SyncAdapterType {name=");
        sb2.append(this.authority);
        sb2.append(", type=");
        sb2.append(this.accountType);
        sb2.append(", userVisible=");
        sb2.append(this.userVisible);
        sb2.append(", supportsUploading=");
        sb2.append(this.supportsUploading);
        sb2.append(", isAlwaysSyncable=");
        sb2.append(this.isAlwaysSyncable);
        sb2.append(", allowParallelSyncs=");
        sb2.append(this.allowParallelSyncs);
        sb2.append(", settingsActivity=");
        sb2.append(this.settingsActivity);
        sb2.append(", packageName=");
        return c.n(sb2, this.packageName, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.isKey) {
            throw new IllegalStateException("keys aren't parcelable");
        }
        parcel.writeString(this.authority);
        parcel.writeString(this.accountType);
        parcel.writeInt(this.userVisible ? 1 : 0);
        parcel.writeInt(this.supportsUploading ? 1 : 0);
        parcel.writeInt(this.isAlwaysSyncable ? 1 : 0);
        parcel.writeInt(this.allowParallelSyncs ? 1 : 0);
        parcel.writeString(this.settingsActivity);
        parcel.writeString(this.packageName);
    }

    public SyncAdapterType(String str, String str2, boolean z2, boolean z3, boolean z4, boolean z5, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                this.authority = str;
                this.accountType = str2;
                this.userVisible = z2;
                this.supportsUploading = z3;
                this.isAlwaysSyncable = z4;
                this.allowParallelSyncs = z5;
                this.settingsActivity = str3;
                this.isKey = false;
                this.packageName = str4;
                return;
            }
            throw new IllegalArgumentException(c.j("the accountType must not be empty: ", str2));
        }
        throw new IllegalArgumentException(c.j("the authority must not be empty: ", str));
    }

    private SyncAdapterType(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                this.authority = str;
                this.accountType = str2;
                this.userVisible = true;
                this.supportsUploading = true;
                this.isAlwaysSyncable = false;
                this.allowParallelSyncs = false;
                this.settingsActivity = null;
                this.isKey = true;
                this.packageName = null;
                return;
            }
            throw new IllegalArgumentException(c.j("the accountType must not be empty: ", str2));
        }
        throw new IllegalArgumentException(c.j("the authority must not be empty: ", str));
    }

    public SyncAdapterType(Parcel parcel) {
        this(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
    }
}
