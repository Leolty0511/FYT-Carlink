package f;

import android.app.AlertDialog;
import android.util.Log;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.VideoFrame;
import com.google.android.projection.protocol.VideoSink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class t extends VideoSink.ProjectionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AlertDialog f861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f862b;

    public t(AutoFragment autoFragment) {
        this.f862b = autoFragment;
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onCodecConfig(byte[] bArr) {
        this.f862b.f650h.handleCodecConfig(bArr);
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onCodecSetup(int i2) {
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onProjectionUpdate(VideoFrame videoFrame) {
        this.f862b.f650h.decodeBuffer(videoFrame);
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onSourceVideoConfigChanged(int i2, int i3, Protos.VideoConfiguration videoConfiguration) {
        AutoFragment autoFragment = this.f862b;
        autoFragment.f650h.prepareStart(i2, i3);
        if (autoFragment.isResumed()) {
            autoFragment.f658q.post(new p(this));
        }
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "======================>> onSourceVideoConfigChanged");
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onVideoFocusModeChange(int i2, int i3) {
        this.f862b.getActivity().runOnUiThread(new s(this, i2, i3, 0));
    }

    @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
    public final void onVideoFocusRequest(int i2, int i3) {
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "======================>> onVideoFocusRequest focus : " + i2 + " reason : " + i3);
        AutoFragment autoFragment = this.f862b;
        if (autoFragment.getActivity() == null) {
            return;
        }
        autoFragment.getActivity().runOnUiThread(new r(this, i2, i3));
    }
}
