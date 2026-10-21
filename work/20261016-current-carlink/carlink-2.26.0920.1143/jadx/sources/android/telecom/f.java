package android.telecom;

import android.os.Parcel;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f202b = 0;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f204e;

    public /* synthetic */ f(RemoteConnection.Callback callback, RemoteConnection remoteConnection, int i2) {
        this.f203d = callback;
        this.f204e = remoteConnection;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h.c cVar;
        int i2 = this.f202b;
        int i3 = this.c;
        Object obj = this.f204e;
        Object obj2 = this.f203d;
        switch (i2) {
            case 0:
                ((RemoteConnection.Callback) obj2).onRttInitiationFailure((RemoteConnection) obj, i3);
                return;
            default:
                byte[] bArr = (byte[]) obj2;
                int i4 = l.a.f1050f;
                t.b.h(bArr, "$byteArray");
                t.b.h((l.b) obj, "this$0");
                n.b.a("BluetoothUtils", "=======>>> read socket msg: ".concat(new String(t.c.J(bArr, i3), f0.a.f870a)));
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                CarLinkService carLinkServiceF = carLink.f();
                if (carLinkServiceF == null || (cVar = carLinkServiceF.A) == null) {
                    return;
                }
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    try {
                        parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                        parcelObtain.writeInt(i3);
                        parcelObtain.writeByteArray(bArr);
                        t.b.g(parcelObtain2, "outparam");
                        if (cVar.d(230, parcelObtain, parcelObtain2)) {
                            parcelObtain2.readInt();
                        }
                        break;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        break;
                    }
                    return;
                } finally {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
        }
    }

    public /* synthetic */ f(byte[] bArr, int i2, l.b bVar) {
        this.f203d = bArr;
        this.c = i2;
        this.f204e = bVar;
    }
}
