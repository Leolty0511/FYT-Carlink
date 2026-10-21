package h;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends Thread {
    public MediaCodec c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.syu.carlink.carplay.b f950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f951f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalServerSocket f948b = new LocalServerSocket("/proc/mysocket");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinkedBlockingDeque f952g = new LinkedBlockingDeque(10000);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f953h = new Object();

    public i() {
        HandlerThread handlerThread = new HandlerThread("logcat-thread");
        handlerThread.start();
        new Handler(handlerThread.getLooper());
    }

    public final void a() {
        synchronized (this.f953h) {
            this.f952g.clear();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004e A[Catch: all -> 0x0065, Exception -> 0x0074, TryCatch #7 {Exception -> 0x0074, all -> 0x0065, blocks: (B:13:0x0045, B:15:0x004e, B:16:0x0051, B:18:0x0055, B:19:0x0058), top: B:86:0x0045, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0055 A[Catch: all -> 0x0065, Exception -> 0x0074, TryCatch #7 {Exception -> 0x0074, all -> 0x0065, blocks: (B:13:0x0045, B:15:0x004e, B:16:0x0051, B:18:0x0055, B:19:0x0058), top: B:86:0x0045, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x007b A[Catch: Exception -> 0x007e, PHI: r1
  0x007b: PHI (r1v2 android.media.MediaCodec) = (r1v1 android.media.MediaCodec), (r1v8 android.media.MediaCodec) binds: [B:33:0x0079, B:22:0x0062] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {Exception -> 0x007e, blocks: (B:21:0x0060, B:34:0x007b, B:32:0x0077, B:13:0x0045, B:15:0x004e, B:16:0x0051, B:18:0x0055, B:19:0x0058), top: B:86:0x0045, inners: #6, #7 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b2 A[Catch: Exception -> 0x00cb, TryCatch #2 {Exception -> 0x00cb, blocks: (B:36:0x00ae, B:38:0x00b2, B:39:0x00b5, B:41:0x00b9, B:42:0x00bc, B:44:0x00c0, B:45:0x00c3), top: B:88:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b9 A[Catch: Exception -> 0x00cb, TryCatch #2 {Exception -> 0x00cb, blocks: (B:36:0x00ae, B:38:0x00b2, B:39:0x00b5, B:41:0x00b9, B:42:0x00bc, B:44:0x00c0, B:45:0x00c3), top: B:88:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c0 A[Catch: Exception -> 0x00cb, TryCatch #2 {Exception -> 0x00cb, blocks: (B:36:0x00ae, B:38:0x00b2, B:39:0x00b5, B:41:0x00b9, B:42:0x00bc, B:44:0x00c0, B:45:0x00c3), top: B:88:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00da A[PHI: r0
  0x00da: PHI (r0v7 android.media.MediaCodec) = (r0v5 android.media.MediaCodec), (r0v9 android.media.MediaCodec) binds: [B:61:0x00e9, B:53:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    public final void b(String str, int i2, int i3, int i4, Surface surface) {
        MediaCodec mediaCodec;
        MediaCodec mediaCodec2;
        MediaFormat mediaFormatCreateVideoFormat;
        MediaCodec mediaCodec3;
        MediaCodec mediaCodec4;
        MediaCodec mediaCodec5;
        MediaCodec mediaCodec6;
        MediaCodec mediaCodec7;
        MediaCodec mediaCodec8;
        t.b.h(str, "type");
        if (this.c == null) {
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(str);
            this.c = mediaCodecCreateDecoderByType;
            if (mediaCodecCreateDecoderByType != null) {
                mediaCodecCreateDecoderByType.reset();
            }
            MediaFormat mediaFormatCreateVideoFormat2 = MediaFormat.createVideoFormat(str, i2, i3);
            MediaCodec mediaCodec9 = this.c;
            if (mediaCodec9 != null) {
                mediaCodec9.configure(mediaFormatCreateVideoFormat2, surface, (MediaCrypto) null, 0);
            }
            MediaCodec mediaCodec10 = this.c;
            if (mediaCodec10 != null) {
                mediaCodec10.setVideoScalingMode(1);
            }
            n.b.a("HDL", "initMediaCodec ============>>> init and configure");
            if (this.f949d || (mediaCodec = this.c) == null) {
                return;
            }
            mediaCodec.start();
            n.b.a("HDL", "initMediaCodec ============>>>01 mediaCodec?.start()");
            this.f949d = true;
            return;
        }
        n.b.a("HDL", "initMediaCodec ============>>> configure");
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (true) {
                MediaCodec mediaCodec11 = this.c;
                t.b.e(mediaCodec11);
                int iDequeueOutputBuffer = mediaCodec11.dequeueOutputBuffer(bufferInfo, 1000L);
                if (iDequeueOutputBuffer < 0) {
                    break;
                }
                MediaCodec mediaCodec12 = this.c;
                if (mediaCodec12 != null) {
                    mediaCodec12.releaseOutputBuffer(iDequeueOutputBuffer, true);
                }
                n.b.a("HDL", "initMediaCodec ============>>> dequeueOutputBuffer " + iDequeueOutputBuffer);
            }
        } catch (Exception unused) {
        }
        n.b.a("HDL", "initMediaCodec ============>>> stop 0");
        mediaCodec7 = this.c;
        if (mediaCodec7 != null) {
            mediaCodec7.flush();
        }
        mediaCodec8 = this.c;
        if (mediaCodec8 != null) {
            mediaCodec8.stop();
        }
        n.b.a("HDL", "initMediaCodec ============>>> stop 1");
        n.b.a("HDL", "initMediaCodec ============>>> reset 0");
        mediaCodec2 = this.c;
        if (mediaCodec2 != null) {
            mediaCodec2.reset();
        }
        n.b.a("HDL", "initMediaCodec ============>>> reset 1");
        n.b.a("HDL", "initMediaCodec ============>>>  000 type : " + str + "  width : " + i2 + "  height : " + i3 + " fps : " + i4);
        mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, i2, i3);
        try {
            mediaCodec4 = this.c;
            if (mediaCodec4 != null) {
                mediaCodec4.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
            }
            mediaCodec5 = this.c;
            if (mediaCodec5 != null) {
                mediaCodec5.setVideoScalingMode(1);
            }
            mediaCodec6 = this.c;
            if (mediaCodec6 != null) {
                mediaCodec6.start();
            }
            n.b.a("HDL", "initMediaCodec ============>>>00 mediaCodec?.start()");
            this.f949d = true;
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                MediaCodec mediaCodec13 = this.c;
                if (mediaCodec13 != null) {
                    mediaCodec13.stop();
                }
                mediaCodec3 = this.c;
                if (mediaCodec3 != null) {
                    mediaCodec3.release();
                }
            } catch (Exception unused2) {
                mediaCodec3 = this.c;
                if (mediaCodec3 != null) {
                    mediaCodec3.release();
                }
            } catch (Throwable th) {
                MediaCodec mediaCodec14 = this.c;
                if (mediaCodec14 != null) {
                    mediaCodec14.release();
                }
                throw th;
            }
            this.c = null;
            n.b.a("HDL", "initMediaCodec ============>>>  005 mediaCodec ERROR!!");
            b(str, i2, i3, i4, surface);
            return;
        }
        try {
            try {
                n.b.a("HDL", "initMediaCodec ============>>> stop 0");
                mediaCodec7 = this.c;
                if (mediaCodec7 != null) {
                    mediaCodec7.flush();
                }
                mediaCodec8 = this.c;
                if (mediaCodec8 != null) {
                    mediaCodec8.stop();
                }
                n.b.a("HDL", "initMediaCodec ============>>> stop 1");
                n.b.a("HDL", "initMediaCodec ============>>> reset 0");
                mediaCodec2 = this.c;
                if (mediaCodec2 != null) {
                    mediaCodec2.reset();
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
            n.b.a("HDL", "initMediaCodec ============>>> reset 0");
            mediaCodec2 = this.c;
            if (mediaCodec2 != null) {
                mediaCodec2.reset();
            }
        } catch (Throwable th2) {
            n.b.a("HDL", "initMediaCodec ============>>> reset 0");
            try {
                MediaCodec mediaCodec15 = this.c;
                if (mediaCodec15 != null) {
                    mediaCodec15.reset();
                }
            } catch (Exception unused5) {
            }
            n.b.a("HDL", "initMediaCodec ============>>> reset 1");
            throw th2;
        }
        n.b.a("HDL", "initMediaCodec ============>>> reset 1");
        n.b.a("HDL", "initMediaCodec ============>>>  000 type : " + str + "  width : " + i2 + "  height : " + i3 + " fps : " + i4);
        mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, i2, i3);
        mediaCodec4 = this.c;
        if (mediaCodec4 != null) {
            mediaCodec4.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
        }
        mediaCodec5 = this.c;
        if (mediaCodec5 != null) {
            mediaCodec5.setVideoScalingMode(1);
        }
        mediaCodec6 = this.c;
        if (mediaCodec6 != null) {
            mediaCodec6.start();
        }
        n.b.a("HDL", "initMediaCodec ============>>>00 mediaCodec?.start()");
        this.f949d = true;
    }

    public final synchronized void c() {
        try {
            com.syu.carlink.carplay.b bVar = this.f950e;
            if (bVar != null) {
                bVar.a();
            }
        } catch (Exception unused) {
        }
        this.f950e = null;
        a();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (this.f951f && !isInterrupted()) {
            n.b.a("HDL", "localServerSocket accept()  Waitting!! ---- ");
            try {
                LocalServerSocket localServerSocket = this.f948b;
                LocalSocket localSocketAccept = localServerSocket != null ? localServerSocket.accept() : null;
                n.b.a("HDL", "localServerSocket accept()  last tableware : " + this.f950e + "  mediaCodec: " + this.c + "  codecStarted : " + this.f949d);
                n.b.a("HDL", "===============>>>>  localServerSocket accept new localSocket！！");
                c();
                t.b.e(localSocketAccept);
                com.syu.carlink.carplay.b bVar = new com.syu.carlink.carplay.b(this, localSocketAccept);
                bVar.start();
                this.f950e = bVar;
                n.b.a("HDL", "localServerSocket accept()  new tableware : " + this.f950e);
                if (isInterrupted()) {
                    n.b.a("HDL", "===============>>>>  Receiver exit！！");
                    break;
                }
                continue;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        c();
    }

    @Override // java.lang.Thread
    public final void start() {
        this.f951f = true;
        super.start();
    }
}
