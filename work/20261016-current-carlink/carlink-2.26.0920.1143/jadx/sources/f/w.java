package f;

import android.content.BroadcastReceiver;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.audio.MicrophoneRecorder;
import com.google.android.projection.sink.sensors.SensorManager;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f866b;

    public w(AutoFragment autoFragment) {
        this.f866b = autoFragment;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        AutoFragment autoFragment;
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Transport disconnected");
        if (this.f866b.f650h != null) {
            Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "shutdown renderer");
            this.f866b.f650h.stop();
            this.f866b.f650h = null;
        }
        MicrophoneRecorder microphoneRecorder = this.f866b.I;
        if (microphoneRecorder != null) {
            microphoneRecorder.stop();
            this.f866b.I = null;
        }
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "shutdown media audio");
        this.f866b.D.tearDown();
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "shutdown tts audio");
        this.f866b.E.setCallback(null);
        this.f866b.E.tearDown();
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "shutdown system audio");
        this.f866b.F.tearDown();
        synchronized (this.f866b.f645b) {
            GalIntegration galIntegration = this.f866b.f647e;
            if (galIntegration != null) {
                galIntegration.destroy();
                this.f866b.f647e = null;
            }
            autoFragment = this.f866b;
            autoFragment.f646d = null;
        }
        if (k.f825y.f831h == 2) {
            SurfaceView surfaceView = autoFragment.f651i;
            if (surfaceView != null) {
                surfaceView.setVisibility(4);
            }
            View view = this.f866b.f652j;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        SensorManager sensorManager = autoFragment.f653k;
        if (sensorManager != null) {
            sensorManager.shutdown();
            this.f866b.f653k = null;
        }
        BroadcastReceiver broadcastReceiver = this.f866b.f666y;
        if (broadcastReceiver != null) {
            k.f825y.f833j.unregisterReceiver(broadcastReceiver);
            this.f866b.f666y = null;
        }
        this.f866b.c();
    }
}
