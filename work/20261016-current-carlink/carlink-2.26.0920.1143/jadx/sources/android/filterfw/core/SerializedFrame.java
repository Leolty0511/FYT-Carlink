package android.filterfw.core;

import android.filterfw.format.ObjectFormat;
import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SerializedFrame extends Frame {
    private static final int INITIAL_CAPACITY = 64;
    private DirectByteOutputStream mByteOutputStream;
    private ObjectOutputStream mObjectOut;

    public class DirectByteInputStream extends InputStream {
        private byte[] mBuffer;
        private int mPos = 0;
        private int mSize;

        public DirectByteInputStream(byte[] bArr, int i2) {
            this.mBuffer = bArr;
            this.mSize = i2;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.mSize - this.mPos;
        }

        @Override // java.io.InputStream
        public final int read() {
            int i2 = this.mPos;
            if (i2 >= this.mSize) {
                return -1;
            }
            byte[] bArr = this.mBuffer;
            this.mPos = i2 + 1;
            return bArr[i2] & 255;
        }

        @Override // java.io.InputStream
        public final long skip(long j2) {
            int i2 = this.mPos;
            long j3 = ((long) i2) + j2;
            int i3 = this.mSize;
            if (j3 > i3) {
                j2 = i3 - i2;
            }
            if (j2 < 0) {
                return 0L;
            }
            this.mPos = (int) (((long) i2) + j2);
            return j2;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i2, int i3) {
            int i4 = this.mPos;
            int i5 = this.mSize;
            if (i4 >= i5) {
                return -1;
            }
            if (i4 + i3 > i5) {
                i3 = i5 - i4;
            }
            System.arraycopy(this.mBuffer, i4, bArr, i2, i3);
            this.mPos += i3;
            return i3;
        }
    }

    public class DirectByteOutputStream extends OutputStream {
        private byte[] mBuffer;
        private int mOffset = 0;
        private int mDataOffset = 0;

        public DirectByteOutputStream(int i2) {
            this.mBuffer = null;
            this.mBuffer = new byte[i2];
        }

        private final void ensureFit(int i2) {
            int i3 = this.mOffset;
            int i4 = i3 + i2;
            byte[] bArr = this.mBuffer;
            if (i4 > bArr.length) {
                byte[] bArr2 = new byte[Math.max(i3 + i2, bArr.length * 2)];
                this.mBuffer = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, this.mOffset);
            }
        }

        public byte[] getByteArray() {
            return this.mBuffer;
        }

        public final DirectByteInputStream getInputStream() {
            return SerializedFrame.this.new DirectByteInputStream(this.mBuffer, this.mOffset);
        }

        public final int getSize() {
            return this.mOffset;
        }

        public final void markHeaderEnd() {
            this.mDataOffset = this.mOffset;
        }

        public final void reset() {
            this.mOffset = this.mDataOffset;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i2, int i3) {
            ensureFit(i3);
            System.arraycopy(bArr, i2, this.mBuffer, this.mOffset, i3);
            this.mOffset += i3;
        }

        @Override // java.io.OutputStream
        public final void write(int i2) {
            ensureFit(1);
            byte[] bArr = this.mBuffer;
            int i3 = this.mOffset;
            this.mOffset = i3 + 1;
            bArr[i3] = (byte) i2;
        }
    }

    public SerializedFrame(FrameFormat frameFormat, FrameManager frameManager) {
        super(frameFormat, frameManager);
        setReusable(false);
        try {
            this.mByteOutputStream = new DirectByteOutputStream(64);
            this.mObjectOut = new ObjectOutputStream(this.mByteOutputStream);
            this.mByteOutputStream.markHeaderEnd();
        } catch (IOException e2) {
            throw new RuntimeException("Could not create serialization streams for SerializedFrame!", e2);
        }
    }

    private final Object deserializeObjectValue() {
        try {
            return new ObjectInputStream(this.mByteOutputStream.getInputStream()).readObject();
        } catch (IOException e2) {
            throw new RuntimeException("Could not deserialize object in " + this + "!", e2);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Unable to deserialize object of unknown class in " + this + "!", e3);
        }
    }

    private final void serializeObjectValue(Object obj) {
        try {
            this.mByteOutputStream.reset();
            this.mObjectOut.writeObject(obj);
            this.mObjectOut.flush();
            this.mObjectOut.close();
        } catch (IOException e2) {
            throw new RuntimeException("Could not serialize object " + obj + " in " + this + "!", e2);
        }
    }

    public static SerializedFrame wrapObject(Object obj, FrameManager frameManager) {
        SerializedFrame serializedFrame = new SerializedFrame(ObjectFormat.fromObject(obj, 1), frameManager);
        serializedFrame.setObjectValue(obj);
        return serializedFrame;
    }

    @Override // android.filterfw.core.Frame
    public Bitmap getBitmap() {
        Object objDeserializeObjectValue = deserializeObjectValue();
        if (objDeserializeObjectValue instanceof Bitmap) {
            return (Bitmap) objDeserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public ByteBuffer getData() {
        Object objDeserializeObjectValue = deserializeObjectValue();
        if (objDeserializeObjectValue instanceof ByteBuffer) {
            return (ByteBuffer) objDeserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public float[] getFloats() {
        Object objDeserializeObjectValue = deserializeObjectValue();
        if (objDeserializeObjectValue instanceof float[]) {
            return (float[]) objDeserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public int[] getInts() {
        Object objDeserializeObjectValue = deserializeObjectValue();
        if (objDeserializeObjectValue instanceof int[]) {
            return (int[]) objDeserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public Object getObjectValue() {
        return deserializeObjectValue();
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
        serializeObjectValue(obj);
    }

    @Override // android.filterfw.core.Frame
    public void setInts(int[] iArr) {
        assertFrameMutable();
        setGenericObjectValue(iArr);
    }

    public String toString() {
        return "SerializedFrame (" + getFormat() + ")";
    }
}
