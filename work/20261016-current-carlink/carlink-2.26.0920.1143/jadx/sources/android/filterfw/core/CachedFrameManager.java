package android.filterfw.core;

import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class CachedFrameManager extends SimpleFrameManager {
    private int mStorageCapacity = 25165824;
    private int mStorageSize = 0;
    private int mTimeStamp = 0;
    private SortedMap<Integer, Frame> mAvailableFrames = new TreeMap();

    private void dropOldestFrame() {
        int iIntValue = this.mAvailableFrames.firstKey().intValue();
        Frame frame = this.mAvailableFrames.get(Integer.valueOf(iIntValue));
        this.mStorageSize -= frame.getFormat().getSize();
        frame.releaseNativeAllocation();
        this.mAvailableFrames.remove(Integer.valueOf(iIntValue));
    }

    private Frame findAvailableFrame(FrameFormat frameFormat, int i2, long j2) {
        synchronized (this.mAvailableFrames) {
            for (Map.Entry<Integer, Frame> entry : this.mAvailableFrames.entrySet()) {
                Frame value = entry.getValue();
                if (value.getFormat().isReplaceableBy(frameFormat) && i2 == value.getBindingType() && (i2 == 0 || j2 == value.getBindingId())) {
                    super.retainFrame(value);
                    this.mAvailableFrames.remove(entry.getKey());
                    value.onFrameFetch();
                    value.reset(frameFormat);
                    this.mStorageSize -= frameFormat.getSize();
                    return value;
                }
            }
            return null;
        }
    }

    private boolean storeFrame(Frame frame) {
        synchronized (this.mAvailableFrames) {
            int size = frame.getFormat().getSize();
            if (size > this.mStorageCapacity) {
                return false;
            }
            int i2 = this.mStorageSize;
            while (true) {
                int i3 = i2 + size;
                if (i3 <= this.mStorageCapacity) {
                    frame.onFrameStore();
                    this.mStorageSize = i3;
                    this.mAvailableFrames.put(Integer.valueOf(this.mTimeStamp), frame);
                    this.mTimeStamp++;
                    return true;
                }
                dropOldestFrame();
                i2 = this.mStorageSize;
            }
        }
    }

    public void clearCache() {
        Iterator<Frame> it = this.mAvailableFrames.values().iterator();
        while (it.hasNext()) {
            it.next().releaseNativeAllocation();
        }
        this.mAvailableFrames.clear();
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame newBoundFrame(FrameFormat frameFormat, int i2, long j2) {
        Frame frameFindAvailableFrame = findAvailableFrame(frameFormat, i2, j2);
        if (frameFindAvailableFrame == null) {
            frameFindAvailableFrame = super.newBoundFrame(frameFormat, i2, j2);
        }
        frameFindAvailableFrame.setTimestamp(-2L);
        return frameFindAvailableFrame;
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame newFrame(FrameFormat frameFormat) {
        Frame frameFindAvailableFrame = findAvailableFrame(frameFormat, 0, 0L);
        if (frameFindAvailableFrame == null) {
            frameFindAvailableFrame = super.newFrame(frameFormat);
        }
        frameFindAvailableFrame.setTimestamp(-2L);
        return frameFindAvailableFrame;
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame releaseFrame(Frame frame) {
        if (frame.isReusable()) {
            int iDecRefCount = frame.decRefCount();
            if (iDecRefCount == 0 && frame.hasNativeAllocation()) {
                if (storeFrame(frame)) {
                    return null;
                }
                frame.releaseNativeAllocation();
                return null;
            }
            if (iDecRefCount < 0) {
                throw new RuntimeException("Frame reference count dropped below 0!");
            }
        } else {
            super.releaseFrame(frame);
        }
        return frame;
    }

    @Override // android.filterfw.core.SimpleFrameManager, android.filterfw.core.FrameManager
    public Frame retainFrame(Frame frame) {
        return super.retainFrame(frame);
    }

    @Override // android.filterfw.core.FrameManager
    public void tearDown() {
        clearCache();
    }
}
