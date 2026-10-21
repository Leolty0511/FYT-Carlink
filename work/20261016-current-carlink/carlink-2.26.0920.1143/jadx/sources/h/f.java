package h;

import android.media.MediaCodec;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f935b;
    public final /* synthetic */ h c;

    public f(h hVar) {
        this.c = hVar;
    }

    public final void a(byte[] bArr) {
        h hVar = this.c;
        MediaCodec mediaCodec = hVar.f940e.c;
        if (mediaCodec == null || bArr == null) {
            return;
        }
        int iDequeueInputBuffer = -1;
        int i2 = 0;
        while (!this.f935b && (iDequeueInputBuffer = mediaCodec.dequeueInputBuffer(hVar.f943h)) < 0) {
            n.b.a("HDL", "=================================>> dequeueInputBuffer index: " + iDequeueInputBuffer + "  dequeFails: " + i2);
            i2++;
            if (i2 >= hVar.f944i) {
                i iVar = hVar.f940e;
                iVar.getClass();
                synchronized (iVar.f953h) {
                    iVar.f952g.putFirst(bArr);
                    break;
                }
            }
        }
        long jNanoTime = System.nanoTime() / ((long) 1000);
        if (iDequeueInputBuffer < 0) {
            n.b.a("HDL", "111 =================================>> dequeueInputBuffer index: " + iDequeueInputBuffer + "  presentationTimeUs: " + jNanoTime);
            return;
        }
        ByteBuffer inputBuffer = mediaCodec.getInputBuffer(iDequeueInputBuffer);
        if (inputBuffer != null) {
            try {
                int length = bArr.length;
                inputBuffer.clear();
                inputBuffer.put(bArr);
                n.b.a("Data", getName() + " =========>> Codec Len: " + length + "  presentationTimeUs: " + jNanoTime);
                mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, length, jNanoTime, length > 0 ? 1 : 0);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            h hVar = this.c;
            if (!hVar.f945j.get()) {
                return;
            }
            if (hVar.c || hVar.f940e.f952g.size() <= 0) {
                try {
                    Thread.sleep(hVar.c ? 800L : 1000 / ((long) hVar.f941f));
                } catch (Exception unused) {
                }
            } else {
                try {
                    a((byte[]) hVar.f940e.f952g.poll(200L, TimeUnit.MILLISECONDS));
                } catch (Exception unused2) {
                    if (!hVar.f945j.get()) {
                        return;
                    }
                }
            }
        }
    }
}
