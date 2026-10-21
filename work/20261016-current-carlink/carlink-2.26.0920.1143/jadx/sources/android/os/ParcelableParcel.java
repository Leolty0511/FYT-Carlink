package android.os;

import android.util.MathUtils;

/* JADX INFO: loaded from: classes.dex */
public class ParcelableParcel implements Parcelable {
    public static final Parcelable.ClassLoaderCreator<ParcelableParcel> CREATOR = new Parcelable.ClassLoaderCreator<ParcelableParcel>() { // from class: android.os.ParcelableParcel.1
        @Override // android.os.Parcelable.Creator
        public ParcelableParcel[] newArray(int i2) {
            return new ParcelableParcel[i2];
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableParcel createFromParcel(Parcel parcel) {
            return new ParcelableParcel(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ParcelableParcel createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParcelableParcel(parcel, classLoader);
        }
    };
    final ClassLoader mClassLoader;
    final Parcel mParcel;

    public ParcelableParcel(ClassLoader classLoader) {
        this.mParcel = Parcel.obtain();
        this.mClassLoader = classLoader;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    public Parcel getParcel() {
        this.mParcel.setDataPosition(0);
        return this.mParcel;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mParcel.dataSize());
        Parcel parcel2 = this.mParcel;
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
    }

    public ParcelableParcel(Parcel parcel, ClassLoader classLoader) {
        Parcel parcelObtain = Parcel.obtain();
        this.mParcel = parcelObtain;
        this.mClassLoader = classLoader;
        int i2 = parcel.readInt();
        if (i2 >= 0) {
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(MathUtils.addOrThrow(iDataPosition, i2));
            parcelObtain.appendFrom(parcel, iDataPosition, i2);
            return;
        }
        throw new IllegalArgumentException("Negative size read from parcel");
    }
}
