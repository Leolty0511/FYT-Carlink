package f;

import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements ProjectionRenderer.Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f853a;

    public o(AutoFragment autoFragment) {
        this.f853a = autoFragment;
    }

    @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
    public final void onFrameRendered(int i2) {
        synchronized (this.f853a.f645b) {
            GalIntegration galIntegration = this.f853a.f647e;
            if (galIntegration != null) {
                galIntegration.mainDisplayVideoSink.ackFrames(i2, 1);
            }
        }
    }

    @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
    public final void onSurfaceCreated(int i2, int i3, boolean z2) {
        this.f853a.f658q.postDelayed(new n(this, 0), 1000L);
    }

    @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
    public final void onSurfaceDestroyed(boolean z2) {
    }
}
