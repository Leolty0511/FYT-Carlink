package com.google.android.projection.protocol;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.media.Image;
import android.os.SystemClock;
import com.google.android.projection.common.UsedByNative;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class VideoResampler {
    private final AssetManager assetManager;
    private final int height;

    @UsedByNative
    private long mNativeVideoResampler;
    private final int width;

    public VideoResampler(AssetManager assetManager, int i2, int i3) {
        this.assetManager = assetManager;
        this.width = i2;
        this.height = i3;
    }

    private native void nativeEnqueueFrame(long j2, ByteBuffer byteBuffer, int i2, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i3, int i4, int i5, int i6);

    private native void nativeInit(AssetManager assetManager, int i2, int i3);

    private native void nativeRequestFrame(long j2, Bitmap bitmap, int i2, int i3);

    private native void nativeShutdown();

    public void create() {
        nativeInit(this.assetManager, this.width, this.height);
    }

    public void destroy() {
        nativeShutdown();
    }

    public void enqueueFrame(Image image) {
        Image.Plane[] planes = image.getPlanes();
        nativeEnqueueFrame(SystemClock.elapsedRealtime(), planes[0].getBuffer(), planes[0].getRowStride(), planes[1].getBuffer(), planes[2].getBuffer(), planes[1].getRowStride(), planes[1].getPixelStride(), image.getWidth(), image.getHeight());
    }

    public void requestFrame(Bitmap bitmap, int i2) {
        nativeRequestFrame(SystemClock.elapsedRealtime() - ((long) i2), bitmap, this.width, this.height);
    }
}
