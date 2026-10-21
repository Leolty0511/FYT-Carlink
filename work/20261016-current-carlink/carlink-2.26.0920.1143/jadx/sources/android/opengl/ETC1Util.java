package android.opengl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class ETC1Util {

    public static class ETC1Texture {
        private ByteBuffer mData;
        private int mHeight;
        private int mWidth;

        public ETC1Texture(int i2, int i3, ByteBuffer byteBuffer) {
            this.mWidth = i2;
            this.mHeight = i3;
            this.mData = byteBuffer;
        }

        public ByteBuffer getData() {
            return this.mData;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getWidth() {
            return this.mWidth;
        }
    }

    public static ETC1Texture compressTexture(Buffer buffer, int i2, int i3, int i4, int i5) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(ETC1.getEncodedDataSize(i2, i3)).order(ByteOrder.nativeOrder());
        ETC1.encodeImage(buffer, i2, i3, i4, i5, byteBufferOrder);
        return new ETC1Texture(i2, i3, byteBufferOrder);
    }

    public static ETC1Texture createTexture(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4096];
        if (inputStream.read(bArr, 0, 16) != 16) {
            throw new IOException("Unable to read PKM file header.");
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder());
        byteBufferOrder.put(bArr, 0, 16).position(0);
        if (!ETC1.isValid(byteBufferOrder)) {
            throw new IOException("Not a PKM file.");
        }
        int width = ETC1.getWidth(byteBufferOrder);
        int height = ETC1.getHeight(byteBufferOrder);
        int encodedDataSize = ETC1.getEncodedDataSize(width, height);
        ByteBuffer byteBufferOrder2 = ByteBuffer.allocateDirect(encodedDataSize).order(ByteOrder.nativeOrder());
        int i2 = 0;
        while (i2 < encodedDataSize) {
            int iMin = Math.min(4096, encodedDataSize - i2);
            if (inputStream.read(bArr, 0, iMin) != iMin) {
                throw new IOException("Unable to read PKM file data.");
            }
            byteBufferOrder2.put(bArr, 0, iMin);
            i2 += iMin;
        }
        byteBufferOrder2.position(0);
        return new ETC1Texture(width, height, byteBufferOrder2);
    }

    public static boolean isETC1Supported() {
        int[] iArr = new int[20];
        GLES10.glGetIntegerv(34466, iArr, 0);
        int i2 = iArr[0];
        if (i2 > 20) {
            iArr = new int[i2];
        }
        GLES10.glGetIntegerv(34467, iArr, 0);
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] == 36196) {
                return true;
            }
        }
        return false;
    }

    public static void loadTexture(int i2, int i3, int i4, int i5, int i6, InputStream inputStream) {
        loadTexture(i2, i3, i4, i5, i6, createTexture(inputStream));
    }

    public static void writeTexture(ETC1Texture eTC1Texture, OutputStream outputStream) {
        ByteBuffer data = eTC1Texture.getData();
        int iPosition = data.position();
        try {
            int width = eTC1Texture.getWidth();
            int height = eTC1Texture.getHeight();
            ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder());
            ETC1.formatHeader(byteBufferOrder, width, height);
            byte[] bArr = new byte[4096];
            byteBufferOrder.get(bArr, 0, 16);
            outputStream.write(bArr, 0, 16);
            int encodedDataSize = ETC1.getEncodedDataSize(width, height);
            int i2 = 0;
            while (i2 < encodedDataSize) {
                int iMin = Math.min(4096, encodedDataSize - i2);
                data.get(bArr, 0, iMin);
                outputStream.write(bArr, 0, iMin);
                i2 += iMin;
            }
            data.position(iPosition);
        } catch (Throwable th) {
            data.position(iPosition);
            throw th;
        }
    }

    public static void loadTexture(int i2, int i3, int i4, int i5, int i6, ETC1Texture eTC1Texture) {
        if (i5 != 6407) {
            throw new IllegalArgumentException("fallbackFormat must be GL_RGB");
        }
        if (i6 != 33635 && i6 != 5121) {
            throw new IllegalArgumentException("Unsupported fallbackType");
        }
        int width = eTC1Texture.getWidth();
        int height = eTC1Texture.getHeight();
        ByteBuffer data = eTC1Texture.getData();
        if (isETC1Supported()) {
            GLES10.glCompressedTexImage2D(i2, i3, 36196, width, height, i4, data.remaining(), data);
            return;
        }
        int i7 = i6 != 5121 ? 2 : 3;
        int i8 = i7 * width;
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i8 * height).order(ByteOrder.nativeOrder());
        ETC1.decodeImage(data, byteBufferOrder, width, height, i7, i8);
        GLES10.glTexImage2D(i2, i3, i5, width, height, i4, i5, i6, byteBufferOrder);
    }
}
