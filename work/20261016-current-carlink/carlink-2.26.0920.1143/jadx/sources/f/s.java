package f;

import com.google.android.projection.protocol.VideoSink;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f858b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f860e;

    public /* synthetic */ s(Object obj, int i2, int i3, int i4) {
        this.f858b = i4;
        this.f860e = obj;
        this.c = i2;
        this.f859d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f858b;
        int i3 = this.f859d;
        int i4 = this.c;
        switch (i2) {
            case 0:
                if (i4 != VideoSink.VIDEO_FOCUS_PROJECTED && i3 == 0) {
                    o.e eVar = CarLink.f562i.f().f592l;
                    eVar.getClass();
                    eVar.c(0, 133, new int[]{3}, null, null);
                    break;
                }
                break;
            default:
                AutoFragment autoFragment = (AutoFragment) this.f860e;
                if (autoFragment.c.isTouchScreenEnabled()) {
                    n.b.a("HDL", String.format("0101 Auto width: %d, height: %d surfaceViewW: %d, surfaceViewH: %d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(autoFragment.f651i.getWidth()), Integer.valueOf(autoFragment.f651i.getHeight())));
                    ProjectionRenderer projectionRenderer = autoFragment.f650h;
                    if (projectionRenderer != null) {
                        projectionRenderer.updatePreviewSize(i4, i3);
                    }
                }
                break;
        }
    }
}
