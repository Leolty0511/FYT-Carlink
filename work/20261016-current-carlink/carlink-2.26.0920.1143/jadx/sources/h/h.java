package h;

import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Surface f939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f940e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public g f947l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f937a = 1024;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f938b = 600;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f941f = 60;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f942g = MediaFormat.MIMETYPE_VIDEO_AVC;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f943h = 100000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f944i = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f945j = new AtomicBoolean(false);

    public h(i iVar) {
        this.f940e = iVar;
        HandlerThread handlerThread = new HandlerThread("Data");
        handlerThread.start();
        new Handler(handlerThread.getLooper());
    }

    public final void a() {
        n.b.a("HDL", "Codec ------- prepare()   type: " + this.f942g + ' ' + this.f937a + " x " + this.f938b + " - " + this.f941f + " - " + this.f939d);
        this.f940e.b(this.f942g, this.f937a, this.f938b, this.f941f, this.f939d);
    }

    public final void b() throws InterruptedException {
        n.b.a("HDL", "------- stop 0");
        n.b.a("HDL", "Codec ------- pause 0");
        if (!this.c) {
            this.c = true;
            this.f940e.c();
            this.f945j.set(false);
            f fVar = this.f946k;
            if (fVar != null) {
                fVar.f935b = true;
            }
            if (fVar != null) {
                fVar.join();
            }
            this.f946k = null;
            g gVar = this.f947l;
            if (gVar != null) {
                gVar.join();
            }
            this.f947l = null;
        }
        n.b.a("HDL", "Codec  ------- pause 1");
    }
}
