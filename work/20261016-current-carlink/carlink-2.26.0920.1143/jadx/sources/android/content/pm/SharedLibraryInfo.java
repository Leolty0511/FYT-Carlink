package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedLibraryInfo implements Parcelable {
    public static final Parcelable.Creator<SharedLibraryInfo> CREATOR = new Parcelable.Creator<SharedLibraryInfo>() { // from class: android.content.pm.SharedLibraryInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharedLibraryInfo createFromParcel(Parcel parcel) {
            return new SharedLibraryInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SharedLibraryInfo[] newArray(int i2) {
            return new SharedLibraryInfo[i2];
        }
    };
    public static final int TYPE_BUILTIN = 0;
    public static final int TYPE_DYNAMIC = 1;
    public static final int TYPE_STATIC = 2;
    public static final int VERSION_UNDEFINED = -1;
    private final VersionedPackage mDeclaringPackage;
    private final List<VersionedPackage> mDependentPackages;
    private final String mName;
    private final int mType;
    private final int mVersion;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    private static String typeToString(int i2) {
        if (i2 == 0) {
            return "builtin";
        }
        if (i2 != 1) {
            return i2 != 2 ? "unknown" : "static";
        }
        return "dynamic";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VersionedPackage getDeclaringPackage() {
        return this.mDeclaringPackage;
    }

    public List<VersionedPackage> getDependentPackages() {
        List<VersionedPackage> list = this.mDependentPackages;
        return list == null ? Collections.emptyList() : list;
    }

    public String getName() {
        return this.mName;
    }

    public int getType() {
        return this.mType;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean isBuiltin() {
        return this.mType == 0;
    }

    public boolean isDynamic() {
        return this.mType == 1;
    }

    public boolean isStatic() {
        return this.mType == 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SharedLibraryInfo[name:");
        sb.append(this.mName);
        sb.append(", type:");
        sb.append(typeToString(this.mType));
        sb.append(", version:");
        sb.append(this.mVersion);
        sb.append(!getDependentPackages().isEmpty() ? " has dependents" : "");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mName);
        parcel.writeInt(this.mVersion);
        parcel.writeInt(this.mType);
        parcel.writeParcelable(this.mDeclaringPackage, i2);
        parcel.writeList(this.mDependentPackages);
    }

    public SharedLibraryInfo(String str, int i2, int i3, VersionedPackage versionedPackage, List<VersionedPackage> list) {
        this.mName = str;
        this.mVersion = i2;
        this.mType = i3;
        this.mDeclaringPackage = versionedPackage;
        this.mDependentPackages = list;
    }

    private SharedLibraryInfo(Parcel parcel) {
        this(parcel.readString(), parcel.readInt(), parcel.readInt(), (VersionedPackage) parcel.readParcelable(null), parcel.readArrayList(null));
    }
}
