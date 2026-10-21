package android.graphics;

import android.os.Parcel;
import android.os.Process;
import android.util.ArrayMap;
import com.android.internal.annotations.GuardedBy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LeakyTypefaceStorage {
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    private static final ArrayList<Typeface> sStorage = new ArrayList<>();

    @GuardedBy("sLock")
    private static final ArrayMap<Typeface, Integer> sTypefaceMap = new ArrayMap<>();

    public static Typeface readTypefaceFromParcel(Parcel parcel) {
        Typeface typeface;
        int i2 = parcel.readInt();
        int i3 = parcel.readInt();
        if (i2 != Process.myPid()) {
            return null;
        }
        synchronized (sLock) {
            typeface = sStorage.get(i3);
        }
        return typeface;
    }

    public static void writeTypefaceToParcel(Typeface typeface, Parcel parcel) {
        int iIntValue;
        parcel.writeInt(Process.myPid());
        synchronized (sLock) {
            ArrayMap<Typeface, Integer> arrayMap = sTypefaceMap;
            Integer num = arrayMap.get(typeface);
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                ArrayList<Typeface> arrayList = sStorage;
                int size = arrayList.size();
                arrayList.add(typeface);
                arrayMap.put(typeface, Integer.valueOf(size));
                iIntValue = size;
            }
            parcel.writeInt(iIntValue);
        }
    }
}
