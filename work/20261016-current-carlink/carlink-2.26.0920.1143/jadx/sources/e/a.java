package e;

import androidx.lifecycle.Observer;
import com.syu.carlink.CarLinkService;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z.l f748b;

    public /* synthetic */ a(z.l lVar, int i2) {
        this.f747a = i2;
        this.f748b = lVar;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i2 = this.f747a;
        z.l lVar = this.f748b;
        switch (i2) {
            case 0:
                t.b.h(lVar, "$tmp0");
                lVar.invoke(obj);
                break;
            case 1:
                t.b.h(lVar, "$tmp0");
                lVar.invoke(obj);
                break;
            default:
                ArrayList arrayList = CarLinkService.n0;
                t.b.h(lVar, "$tmp0");
                lVar.invoke(obj);
                break;
        }
    }
}
