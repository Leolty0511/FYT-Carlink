package android.filterfw.core;

import android.filterfw.format.ObjectFormat;
import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SimpleFrame extends Frame {
    private Object mObject;

    public SimpleFrame(FrameFormat frameFormat, FrameManager frameManager) {
        super(frameFormat, frameManager);
        initWithFormat(frameFormat);
        setReusable(false);
    }

    private void initWithFormat(FrameFormat frameFormat) {
        int length = frameFormat.getLength();
        int baseType = frameFormat.getBaseType();
        if (baseType == 2) {
            this.mObject = new byte[length];
            return;
        }
        if (baseType == 3) {
            this.mObject = new short[length];
            return;
        }
        if (baseType == 4) {
            this.mObject = new int[length];
            return;
        }
        if (baseType == 5) {
            this.mObject = new float[length];
        } else if (baseType != 6) {
            this.mObject = null;
        } else {
            this.mObject = new double[length];
        }
    }

    private void setFormatObjectClass(Class cls) {
        MutableFrameFormat mutableFrameFormatMutableCopy = getFormat().mutableCopy();
        mutableFrameFormatMutableCopy.setObjectClass(cls);
        setFormat(mutableFrameFormatMutableCopy);
    }

    public static SimpleFrame wrapObject(Object obj, FrameManager frameManager) {
        SimpleFrame simpleFrame = new SimpleFrame(ObjectFormat.fromObject(obj, 1), frameManager);
        simpleFrame.setObjectValue(obj);
        return simpleFrame;
    }

    @Override // android.filterfw.core.Frame
    public Bitmap getBitmap() {
        Object obj = this.mObject;
        if (obj instanceof Bitmap) {
            return (Bitmap) obj;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public ByteBuffer getData() {
        Object obj = this.mObject;
        if (obj instanceof ByteBuffer) {
            return (ByteBuffer) obj;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public float[] getFloats() {
        Object obj = this.mObject;
        if (obj instanceof float[]) {
            return (float[]) obj;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public int[] getInts() {
        Object obj = this.mObject;
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public Object getObjectValue() {
        return this.mObject;
    }

    @Override // android.filterfw.core.Frame
    public boolean hasNativeAllocation() {
        return false;
    }

    @Override // android.filterfw.core.Frame
    public void releaseNativeAllocation() {
    }

    @Override // android.filterfw.core.Frame
    public void setBitmap(Bitmap bitmap) {
        assertFrameMutable();
        setGenericObjectValue(bitmap);
    }

    @Override // android.filterfw.core.Frame
    public void setData(ByteBuffer byteBuffer, int i2, int i3) {
        assertFrameMutable();
        setGenericObjectValue(ByteBuffer.wrap(byteBuffer.array(), i2, i3));
    }

    @Override // android.filterfw.core.Frame
    public void setFloats(float[] fArr) {
        assertFrameMutable();
        setGenericObjectValue(fArr);
    }

    @Override // android.filterfw.core.Frame
    public void setGenericObjectValue(Object obj) {
        FrameFormat format = getFormat();
        if (format.getObjectClass() == null) {
            setFormatObjectClass(obj.getClass());
        } else if (!format.getObjectClass().isAssignableFrom(obj.getClass())) {
            throw new RuntimeException("Attempting to set object value of type '" + obj.getClass() + "' on SimpleFrame of type '" + format.getObjectClass() + "'!");
        }
        this.mObject = obj;
    }

    @Override // android.filterfw.core.Frame
    public void setInts(int[] iArr) {
        assertFrameMutable();
        setGenericObjectValue(iArr);
    }

    public String toString() {
        return "SimpleFrame (" + getFormat() + ")";
    }
}
