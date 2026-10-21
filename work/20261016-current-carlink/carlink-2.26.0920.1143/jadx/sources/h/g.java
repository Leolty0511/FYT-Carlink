package h;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f936b;

    public g(h hVar) {
        this.f936b = hVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            h hVar = this.f936b;
            if (!hVar.f945j.get()) {
                return;
            }
            MediaCodec mediaCodec = hVar.f940e.c;
            if (mediaCodec != null) {
                try {
                    int iDequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(new MediaCodec.BufferInfo(), hVar.f943h);
                    if (iDequeueOutputBuffer >= 0) {
                        mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, true);
                    } else if (iDequeueOutputBuffer == -2) {
                        n.b.a("HDL", "MediaoCodec Format Changed New Format : " + mediaCodec.getOutputFormat());
                    }
                } catch (Exception unused) {
                }
            }
        }
    }
}
