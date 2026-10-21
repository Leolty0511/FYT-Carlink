package android.os;

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
    public final ClassLoader mClassLoader;
    public final Parcel mParcel;

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
        int iDataPosition = parcel.dataPosition();
        parcelObtain.appendFrom(parcel, parcel.dataPosition(), i2);
        parcel.setDataPosition(iDataPosition + i2);
    }
}
