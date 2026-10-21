package androidx.core.view;

import android.hardware.Camera;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(16)
final class Api16Impl {
    public static final Api16Impl INSTANCE = new Api16Impl();

    private Api16Impl() {
    }

    @DoNotInline
    public static final void postOnAnimationDelayed(View view, Runnable runnable, long j2) {
        t.b.h(view, "view");
        t.b.h(runnable, Camera.Parameters.SCENE_MODE_ACTION);
        view.postOnAnimationDelayed(runnable, j2);
    }
}
