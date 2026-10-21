package l;

import android.bluetooth.BluetoothAdapter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.PersistableBundle;
import android.util.ArrayMap;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f1054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BluetoothAdapter f1055b = BluetoothAdapter.getDefaultAdapter();
    public final Handler c;

    public b() {
        HandlerThread handlerThread = new HandlerThread("BluetoothUtils-thread");
        handlerThread.start();
        t.b.g(handlerThread.getLooper(), "looper");
        this.c = new Handler(handlerThread.getLooper());
    }

    public static void a(String str) {
        h.c cVar;
        PersistableBundle persistableBundle;
        t.b.h(str, "state");
        Bundle bundle = new Bundle();
        bundle.putString("_btcmd", str);
        StringBuilder sb = new StringBuilder("bundle2Service=================>>> data : ");
        sb.append(bundle);
        sb.append("  carplay:");
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink.f();
        sb.append(carLinkServiceF != null ? carLinkServiceF.A : null);
        n.b.a("HDL", sb.toString());
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF2 = carLink2.f();
        if (carLinkServiceF2 == null || (cVar = carLinkServiceF2.A) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT <= 23) {
            Object objB = p.a.b(bundle, "mMap");
            ArrayMap arrayMap = objB instanceof ArrayMap ? (ArrayMap) objB : null;
            Constructor declaredConstructor = PersistableBundle.class.getDeclaredConstructor(ArrayMap.class);
            declaredConstructor.setAccessible(true);
            persistableBundle = (PersistableBundle) declaredConstructor.newInstance(arrayMap);
        } else {
            persistableBundle = (PersistableBundle) PersistableBundle.class.getConstructor(Bundle.class).newInstance(bundle);
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                parcelObtain.writeInt(1);
                persistableBundle.writeToParcel(parcelObtain, 1);
                t.b.g(parcelObtain2, "outparam");
                if (cVar.d(229, parcelObtain, parcelObtain2)) {
                    parcelObtain2.readInt();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public static boolean b(ParcelUuid[] parcelUuidArr) {
        if (parcelUuidArr == null) {
            return false;
        }
        return t.c.I(parcelUuidArr, ParcelUuid.fromString("00000000-deca-fade-deca-deafdecacafe")) || t.c.I(parcelUuidArr, ParcelUuid.fromString("fecacade-afde-cade-defa-cade00000000"));
    }
}
