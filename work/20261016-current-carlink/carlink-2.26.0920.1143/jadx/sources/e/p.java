package e;

import android.view.ViewTreeObserver;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class p implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f783b;
    public final /* synthetic */ MainActivity c;

    public /* synthetic */ p(MainActivity mainActivity, int i2) {
        this.f783b = i2;
        this.c = mainActivity;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i2 = this.f783b;
        MainActivity mainActivity = this.c;
        switch (i2) {
            case 0:
                n.b.a("HDL", "root size: " + mainActivity.j().getWidth() + "  " + mainActivity.j().getHeight());
                mainActivity.j().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                CarLinkService carLinkServiceF = MainActivity.f();
                if (carLinkServiceF != null) {
                    carLinkServiceF.w(mainActivity.j().getWidth(), mainActivity.j().getHeight());
                }
                break;
            default:
                n.b.a("HDL", "decorView size: " + mainActivity.j().getWidth() + "  " + mainActivity.j().getHeight());
                mainActivity.j().getViewTreeObserver().removeOnGlobalLayoutListener(this);
                CarLinkService carLinkServiceF2 = MainActivity.f();
                if (carLinkServiceF2 != null) {
                    carLinkServiceF2.w(mainActivity.j().getWidth(), mainActivity.j().getHeight());
                }
                break;
        }
    }
}
