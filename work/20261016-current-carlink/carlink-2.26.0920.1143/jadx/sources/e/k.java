package e;

import android.os.Parcel;
import android.util.Size;
import com.android.internal.transition.EpicenterTranslateClipReveal;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CarLinkService f769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f770b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ z.l f772e;

    public k(CarLinkService carLinkService, int i2, int i3, String str, z.l lVar) {
        this.f769a = carLinkService;
        this.f770b = i2;
        this.c = i3;
        this.f771d = str;
        this.f772e = lVar;
    }

    public final void a(h.c cVar) {
        t.b.h(cVar, "carplay");
        n.b.a("HDL", "LinkManager ============>>> CarPlay Server Linked!!");
        CarLinkService carLinkService = this.f769a;
        z.a aVar = carLinkService.E;
        Size size = aVar != null ? (Size) aVar.invoke() : null;
        int width = size != null ? size.getWidth() : carLinkService.f597q;
        int height = size != null ? size.getHeight() : carLinkService.f598r;
        if (width > 0 && height > 0 && (width != carLinkService.f597q || height != carLinkService.f598r)) {
            n.b.a("HDL", "setup onStart correct display size: " + carLinkService.f597q + EpicenterTranslateClipReveal.StateProperty.TARGET_X + carLinkService.f598r + " -> " + width + EpicenterTranslateClipReveal.StateProperty.TARGET_X + height);
            carLinkService.f597q = width;
            carLinkService.f598r = height;
        }
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        boolean zU = carLink.u();
        String str = this.f771d;
        Size sizeB = cVar.b(width, height);
        cVar.f914b = sizeB.getWidth();
        cVar.f915d = sizeB.getWidth();
        cVar.c = sizeB.getHeight();
        cVar.f916e = sizeB.getHeight();
        int i2 = this.f770b;
        cVar.f919h = i2;
        int i3 = cVar.f917f;
        cVar.f918g = (int) (((height / width) * i3) + 0.5f);
        StringBuilder sbT = android.accessibilityservice.c.t(" =================>>>>>>>   width: ", width, " height: ", height, " displayW : ");
        sbT.append(cVar.f914b);
        sbT.append("  displayH :  ");
        android.app.m.u(sbT, cVar.c, "   FPS:", i2, " phyW: ");
        sbT.append(i3);
        sbT.append("   phyH: ");
        sbT.append(cVar.f918g);
        sbT.append("  driveMode: ");
        int i4 = this.c;
        sbT.append(i4);
        n.b.a("HDL", sbT.toString());
        int i5 = 4;
        cVar.n(218, null, new int[]{0, 0, cVar.f914b, cVar.c, cVar.f915d, cVar.f916e, i3, cVar.f918g, 0, 1399222387, i2});
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("CarplayServer.ICarplayService");
                parcelObtain.writeString(str);
                parcelObtain.writeString("/sdcard/carlink/logo/car_log.png");
                parcelObtain.writeInt(180);
                parcelObtain.writeInt(180);
                t.b.g(parcelObtain2, "outparam");
                if (cVar.d(213, parcelObtain, parcelObtain2)) {
                    parcelObtain2.readInt();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            cVar.n(214, null, new int[]{i4});
            cVar.n(219, null, new int[0]);
            cVar.n(223, null, new int[]{zU ? 1 : 0});
            if (!cVar.f926p) {
                cVar.f926p = true;
            }
            int iF = cVar.f(215, new int[0]);
            n.b.a("HDL", "===================>>   CarPlayerServer GET >>> state: " + iF);
            if (iF == 0) {
                i5 = 3;
            } else if (iF != 1) {
                if (iF == 2) {
                    i5 = 6;
                } else if (iF != 3) {
                    i5 = iF != 4 ? 3 : 5;
                } else {
                    i5 = 7;
                }
            }
            CarLink carLink2 = CarLink.f562i;
            if (carLink2 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink2.C() != 2) {
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink3.j().f901u.postValue(Integer.valueOf(i5));
            }
            n.b.a("HDL", "LinkManager ============>>> CarPlay Start " + carLinkService.f597q + " x " + carLinkService.f598r + "  driveMode:" + i4);
            z.l lVar = this.f772e;
            if (lVar != null) {
                lVar.invoke(Boolean.TRUE);
            }
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            throw th;
        }
    }
}
