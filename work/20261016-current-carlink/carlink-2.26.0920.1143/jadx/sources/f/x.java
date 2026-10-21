package f;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.projection.sink.audio.AudioLatencyChecker;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.google.android.projection.sink.video.VideoLatencyChecker;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class x implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f867b;

    public x(AutoFragment autoFragment) {
        this.f867b = autoFragment;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ProjectionRenderer projectionRenderer;
        if (!this.f867b.c.isTouchScreenEnabled()) {
            return true;
        }
        synchronized (this.f867b.f645b) {
            AutoFragment autoFragment = this.f867b;
            if (autoFragment.f647e != null && (projectionRenderer = autoFragment.f650h) != null) {
                MotionEvent motionEventTransformMotion = projectionRenderer.transformMotion(motionEvent);
                VideoLatencyChecker videoLatencyChecker = this.f867b.f667z;
                if (videoLatencyChecker != null) {
                    videoLatencyChecker.onInputEvent(motionEvent);
                }
                AudioLatencyChecker audioLatencyChecker = this.f867b.A;
                if (audioLatencyChecker != null) {
                    audioLatencyChecker.onInputEvent(motionEvent);
                }
                this.f867b.f647e.mainDisplayInputSource.sendTouchEvent(motionEventTransformMotion);
                motionEventTransformMotion.recycle();
            }
        }
        return true;
    }
}
