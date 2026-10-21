package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ParceledListSlice<T extends Parcelable> implements Parcelable {
    public static final Parcelable.ClassLoaderCreator<ParceledListSlice> CREATOR = new Parcelable.ClassLoaderCreator<ParceledListSlice>() { // from class: android.content.pm.ParceledListSlice.2
        @Override // android.os.Parcelable.Creator
        public ParceledListSlice[] newArray(int i2) {
            return new ParceledListSlice[i2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        public ParceledListSlice createFromParcel(Parcel parcel) {
            return new ParceledListSlice(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ParceledListSlice createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParceledListSlice(parcel, classLoader);
        }
    };
    private static boolean DEBUG = false;
    private static final int MAX_FIRST_IPC_SIZE = 131072;
    private static final int MAX_IPC_SIZE = 262144;
    private static String TAG = "ParceledListSlice";
    private final List<T> mList;

    @Override // android.os.Parcelable
    public int describeContents() {
        int iDescribeContents = 0;
        for (int i2 = 0; i2 < this.mList.size(); i2++) {
            iDescribeContents |= this.mList.get(i2).describeContents();
        }
        return iDescribeContents;
    }

    public List<T> getList() {
        return this.mList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, final int i2) {
        final int size = this.mList.size();
        parcel.writeInt(size);
        if (DEBUG) {
            Log.d(TAG, "Writing " + size + " items");
        }
        if (size > 0) {
            parcel.writeParcelableCreator(this.mList.get(0));
            int i3 = 0;
            while (i3 < size && parcel.dataSize() < 131072) {
                parcel.writeInt(1);
                this.mList.get(i3).writeToParcel(parcel, i2);
                if (DEBUG) {
                    Log.d(TAG, "Wrote inline #" + i3 + ": " + this.mList.get(i3));
                }
                i3++;
            }
            if (i3 < size) {
                parcel.writeInt(0);
                Binder binder = new Binder() { // from class: android.content.pm.ParceledListSlice.1
                    @Override // android.os.Binder
                    public boolean onTransact(int i4, Parcel parcel2, Parcel parcel3, int i5) {
                        if (i4 != 1) {
                            return super.onTransact(i4, parcel2, parcel3, i5);
                        }
                        int i6 = parcel2.readInt();
                        if (ParceledListSlice.DEBUG) {
                            Log.d(ParceledListSlice.TAG, "Writing more @" + i6 + " of " + size);
                        }
                        while (i6 < size && parcel3.dataSize() < 262144) {
                            parcel3.writeInt(1);
                            ((Parcelable) ParceledListSlice.this.mList.get(i6)).writeToParcel(parcel3, i2);
                            if (ParceledListSlice.DEBUG) {
                                Log.d(ParceledListSlice.TAG, "Wrote extra #" + i6 + ": " + ParceledListSlice.this.mList.get(i6));
                            }
                            i6++;
                        }
                        if (i6 < size) {
                            if (ParceledListSlice.DEBUG) {
                                Log.d(ParceledListSlice.TAG, "Breaking @" + i6 + " of " + size);
                            }
                            parcel3.writeInt(0);
                        }
                        return true;
                    }
                };
                if (DEBUG) {
                    Log.d(TAG, "Breaking @" + i3 + " of " + size + ": retriever=" + binder);
                }
                parcel.writeStrongBinder(binder);
            }
        }
    }

    public ParceledListSlice(List<T> list) {
        this.mList = list;
    }

    private ParceledListSlice(Parcel parcel, ClassLoader classLoader) {
        int i2 = parcel.readInt();
        this.mList = new ArrayList(i2);
        if (DEBUG) {
            Log.d(TAG, "Retrieving " + i2 + " items");
        }
        if (i2 <= 0) {
            return;
        }
        Parcelable.Creator<T> parcelableCreator = parcel.readParcelableCreator(classLoader);
        int i3 = 0;
        while (i3 < i2 && parcel.readInt() != 0) {
            this.mList.add((T) parcel.readCreator(parcelableCreator, classLoader));
            if (DEBUG) {
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Read inline #");
                sb.append(i3);
                sb.append(": ");
                List<T> list = this.mList;
                sb.append(list.get(list.size() - 1));
                Log.d(str, sb.toString());
            }
            i3++;
        }
        if (i3 >= i2) {
            return;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        while (i3 < i2) {
            if (DEBUG) {
                Log.d(TAG, "Reading more @" + i3 + " of " + i2 + ": retriever=" + strongBinder);
            }
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            parcelObtain.writeInt(i3);
            try {
                strongBinder.transact(1, parcelObtain, parcelObtain2, 0);
                while (i3 < i2 && parcelObtain2.readInt() != 0) {
                    this.mList.add((T) parcelObtain2.readCreator(parcelableCreator, classLoader));
                    if (DEBUG) {
                        String str2 = TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Read extra #");
                        sb2.append(i3);
                        sb2.append(": ");
                        List<T> list2 = this.mList;
                        sb2.append(list2.get(list2.size() - 1));
                        Log.d(str2, sb2.toString());
                    }
                    i3++;
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
            } catch (RemoteException e2) {
                Log.w(TAG, "Failure retrieving array; only received " + i3 + " of " + i2, e2);
                return;
            }
        }
    }
}
