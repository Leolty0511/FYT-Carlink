package android.filterfw.core;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class MutableFrameFormat extends FrameFormat {
    public MutableFrameFormat() {
    }

    public void setBaseType(int i2) {
        this.mBaseType = i2;
        this.mBytesPerSample = FrameFormat.bytesPerSampleOf(i2);
    }

    public void setBytesPerSample(int i2) {
        this.mBytesPerSample = i2;
        this.mSize = -1;
    }

    public void setDimensionCount(int i2) {
        this.mDimensions = new int[i2];
    }

    public void setDimensions(int[] iArr) {
        this.mDimensions = iArr == null ? null : Arrays.copyOf(iArr, iArr.length);
        this.mSize = -1;
    }

    public void setMetaValue(String str, Object obj) {
        if (this.mMetaData == null) {
            this.mMetaData = new KeyValueMap();
        }
        this.mMetaData.put(str, obj);
    }

    public void setObjectClass(Class cls) {
        this.mObjectClass = cls;
    }

    public void setTarget(int i2) {
        this.mTarget = i2;
    }

    public MutableFrameFormat(int i2, int i3) {
        super(i2, i3);
    }

    public void setDimensions(int i2) {
        this.mDimensions = new int[]{i2};
        this.mSize = -1;
    }

    public void setDimensions(int i2, int i3) {
        this.mDimensions = new int[]{i2, i3};
        this.mSize = -1;
    }

    public void setDimensions(int i2, int i3, int i4) {
        this.mDimensions = new int[]{i2, i3, i4};
        this.mSize = -1;
    }
}
