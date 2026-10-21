package com.google.android.projection.common;

import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@UsedByNative
public class BufferPool {

    @VisibleForTesting
    static final int LARGE_BUFFER_SIZE = 262144;
    private static final int MAX_CACHE_LARGE_BUFFERS = 10;
    private static final int MAX_CACHE_MEDIUM_BUFFERS = 20;
    private static final int MAX_CACHE_SMALL_BUFFERS = 120;

    @VisibleForTesting
    static final int MEDIUM_BUFFER_SIZE = 16384;

    @VisibleForTesting
    static final int SMALL_BUFFER_SIZE = 512;
    private static final BufferPool instance = new BufferPool();
    private final List<ByteBuffer> largeBufferPool = new ArrayList(10);
    private final List<ByteBuffer> mediumBufferPool = new ArrayList(20);
    private final List<ByteBuffer> smallBufferPool = new ArrayList(120);

    @VisibleForTesting
    public BufferPool() {
        for (int i2 = 0; i2 < 5; i2++) {
            this.largeBufferPool.add(ByteBuffer.allocateDirect(262144));
        }
        for (int i3 = 0; i3 < 10; i3++) {
            this.mediumBufferPool.add(ByteBuffer.allocateDirect(16384));
        }
        for (int i4 = 0; i4 < 60; i4++) {
            this.smallBufferPool.add(ByteBuffer.allocateDirect(512));
        }
    }

    @UsedByNative
    public static ByteBuffer getBuffer(int i2) {
        return instance.checkoutBuffer(i2);
    }

    private static int getCacheSizeForBufferSize(int i2) {
        if (i2 <= 512) {
            return 120;
        }
        return i2 <= 16384 ? 20 : 10;
    }

    private List<ByteBuffer> getPoolForBufferSize(int i2) {
        if (i2 <= 512) {
            return this.smallBufferPool;
        }
        return i2 <= 16384 ? this.mediumBufferPool : this.largeBufferPool;
    }

    public static void returnBuffer(ByteBuffer byteBuffer) {
        instance.returnByteBuffer(byteBuffer);
    }

    @VisibleForTesting
    public ByteBuffer checkoutBuffer(int i2) {
        ByteBuffer byteBufferAllocateDirect;
        List<ByteBuffer> poolForBufferSize = getPoolForBufferSize(i2);
        synchronized (poolForBufferSize) {
            byteBufferAllocateDirect = null;
            if (!poolForBufferSize.isEmpty()) {
                int size = poolForBufferSize.size() - 1;
                ByteBuffer byteBufferRemove = poolForBufferSize.remove(size);
                if (byteBufferRemove.capacity() >= i2) {
                    byteBufferAllocateDirect = byteBufferRemove;
                } else {
                    for (int i3 = size - 1; i3 >= 0; i3--) {
                        if (poolForBufferSize.get(i3).capacity() >= i2) {
                            byteBufferAllocateDirect = poolForBufferSize.get(i3);
                            poolForBufferSize.set(i3, byteBufferRemove);
                            break;
                        }
                    }
                    if (byteBufferAllocateDirect == null) {
                        poolForBufferSize.add(byteBufferRemove);
                    }
                }
            }
            if (byteBufferAllocateDirect == null) {
                byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2);
            }
        }
        byteBufferAllocateDirect.limit(i2);
        return byteBufferAllocateDirect;
    }

    @VisibleForTesting
    public List<ByteBuffer> getLargePool() {
        return this.largeBufferPool;
    }

    @VisibleForTesting
    public List<ByteBuffer> getMediumPool() {
        return this.mediumBufferPool;
    }

    @VisibleForTesting
    public List<ByteBuffer> getSmallPool() {
        return this.smallBufferPool;
    }

    @VisibleForTesting
    public void returnByteBuffer(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        byteBuffer.rewind();
        List<ByteBuffer> poolForBufferSize = getPoolForBufferSize(iCapacity);
        int cacheSizeForBufferSize = getCacheSizeForBufferSize(iCapacity);
        synchronized (poolForBufferSize) {
            if (poolForBufferSize.size() < cacheSizeForBufferSize) {
                poolForBufferSize.add(byteBuffer);
            } else {
                poolForBufferSize.set(Math.abs(System.identityHashCode(byteBuffer)) % cacheSizeForBufferSize, byteBuffer);
            }
        }
    }
}
