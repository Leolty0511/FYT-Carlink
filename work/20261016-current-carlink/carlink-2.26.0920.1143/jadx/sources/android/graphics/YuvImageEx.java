package android.graphics;

import android.app.m;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class YuvImageEx {
    private static final String TAG = "YuvImageEx";
    public static final int YUV_FORMAT_NV12 = 18;
    public static final int YUV_FORMAT_NV21 = 17;
    public static final int YUV_FORMAT_YUY2 = 20;
    private static boolean sLoadLibrarySuccess = true;
    private byte[] mData;
    private int mFormat;
    private int mHeight;
    private int mWidth;
    private YuvImage mYuvImage;

    static {
        try {
            System.loadLibrary("yuv_jpeg_converter_jni");
        } catch (UnsatisfiedLinkError e2) {
            sLoadLibrarySuccess = false;
            Log.e(TAG, "load libyuv_jpeg_converter_jni.so fail!");
            e2.printStackTrace();
        }
    }

    public YuvImageEx(byte[] bArr, int i2, int i3, int i4, int[] iArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("YuvImageEx yuv cann't be null");
        }
        if (i2 != 17 && i2 != 18 && i2 != 20) {
            throw new IllegalArgumentException("YuvImageEx format parameter must be NV12, NV21 or YUY2!");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new IllegalArgumentException("YuvImageEx width and height must be larger than 0");
        }
        if (i2 == 17 || i2 == 20) {
            this.mYuvImage = new YuvImage(bArr, i2, i3, i4, iArr);
        } else {
            this.mYuvImage = null;
        }
        this.mData = bArr;
        this.mWidth = i3;
        this.mHeight = i4;
        this.mFormat = i2;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static YuvImage decodeJpegToYuv(String str) throws Throwable {
        FileInputStream fileInputStream;
        YuvImage yuvImageNativeDecodeJpegToYuvEx;
        if (!sLoadLibrarySuccess) {
            throw new IllegalStateException("decodeJpegToYuv load libyuv_jpeg_converter_jni.so fail");
        }
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(str);
            if (file.exists()) {
                long length = file.length();
                if (length == 0) {
                    Log.d(TAG, "file is empty, filePath: " + str);
                    return null;
                }
                FileInputStream fileInputStream3 = new FileInputStream(file);
                try {
                    fileInputStream2 = fileInputStream3;
                    yuvImageNativeDecodeJpegToYuvEx = nativeDecodeJpegToYuvEx(fileInputStream3, (int) length);
                } catch (Exception e2) {
                    fileInputStream = fileInputStream3;
                    e = e2;
                    try {
                        Log.e(TAG, "decodeJpegToYuv file error");
                        e.printStackTrace();
                        if (fileInputStream == null) {
                            return null;
                        }
                        try {
                            fileInputStream.close();
                            return null;
                        } catch (IOException e3) {
                            Log.d(TAG, "decodeJpegToYuv close inputstrem error");
                            e3.printStackTrace();
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e4) {
                                Log.d(TAG, "decodeJpegToYuv close inputstrem error");
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    fileInputStream2 = fileInputStream3;
                    th = th2;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    throw th;
                }
            } else {
                Log.d(TAG, "file is not exist: " + str);
                yuvImageNativeDecodeJpegToYuvEx = null;
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e5) {
                    Log.d(TAG, "decodeJpegToYuv close inputstrem error");
                    e5.printStackTrace();
                }
            }
            return yuvImageNativeDecodeJpegToYuvEx;
        } catch (Exception e6) {
            e = e6;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean isJpegHwCodecAvailable() {
        return sLoadLibrarySuccess;
    }

    private static native YuvImage nativeDecodeJpegToYuv(byte[] bArr, int i2);

    private static native YuvImage nativeDecodeJpegToYuvEx(InputStream inputStream, int i2);

    private static native boolean nativeEncodeYuvToJpeg(byte[] bArr, int i2, int i3, int i4, int i5, int i6, OutputStream outputStream);

    public boolean encodeYuvToJpeg(Rect rect, int i2, int i3, OutputStream outputStream) {
        boolean zNativeEncodeYuvToJpeg;
        if (!sLoadLibrarySuccess) {
            throw new IllegalStateException("encodeYuvToJpeg load libyuv_jpeg_converter_jni.so fail");
        }
        if (i2 < 0 || i2 > 100) {
            throw new IllegalArgumentException("encodeYuvToJpeg quality must be 0..100");
        }
        if (i3 != 0 && i3 != 90 && i3 != 180 && i3 != 270) {
            throw new IllegalArgumentException("encodeYuvToJpeg rotation parameter invalid, must be 0, 90, 180 or 270!");
        }
        if (outputStream == null) {
            throw new IllegalArgumentException("encodeYuvToJpeg stream cannot be null");
        }
        int i4 = this.mFormat;
        if (i4 == 17 || i4 == 18) {
            zNativeEncodeYuvToJpeg = nativeEncodeYuvToJpeg(this.mData, i4, this.mWidth, this.mHeight, i2, i3, outputStream);
            if (!zNativeEncodeYuvToJpeg) {
                m.t(new StringBuilder("sprd jpeg hardware encoder failed, mFormat: "), this.mFormat, TAG);
            }
        } else {
            zNativeEncodeYuvToJpeg = false;
        }
        if (zNativeEncodeYuvToJpeg || this.mYuvImage == null) {
            return zNativeEncodeYuvToJpeg;
        }
        int i5 = this.mFormat;
        if (i5 != 17 && i5 != 20) {
            return zNativeEncodeYuvToJpeg;
        }
        m.t(new StringBuilder("try to use software encoder YuvImage, mFormat: "), this.mFormat, TAG);
        if (i3 == 0) {
            return this.mYuvImage.compressToJpeg(rect, i2, outputStream);
        }
        Log.e(TAG, "software encoder YuvImage donn't support rotate!");
        return false;
    }

    public static boolean encodeYuvToJpeg(byte[] bArr, int i2, int i3, int i4, int[] iArr, Rect rect, int i5, int i6, OutputStream outputStream) {
        boolean zNativeEncodeYuvToJpeg;
        if (!sLoadLibrarySuccess) {
            throw new IllegalStateException("encodeYuvToJpeg load libyuv_jpeg_converter_jni.so fail");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("encodeYuvToJpeg yuv cannot be null");
        }
        if (i2 != 17 && i2 != 18 && i2 != 20) {
            throw new IllegalArgumentException("encodeYuvToJpeg format parameter must be NV12, NV21 or YUY2!");
        }
        if (i3 <= 0 || i4 <= 0) {
            throw new IllegalArgumentException("encodeYuvToJpeg width and height must be larger than 0");
        }
        if (i5 < 0 || i5 > 100) {
            throw new IllegalArgumentException("encodeYuvToJpeg quality must be 0..100");
        }
        if (i6 != 0 && i6 != 90 && i6 != 180 && i6 != 270) {
            throw new IllegalArgumentException("encodeYuvToJpeg rotation parameter invalid!");
        }
        if (outputStream == null) {
            throw new IllegalArgumentException("encodeYuvToJpeg stream cann't be null");
        }
        if (i2 == 17 || i2 == 18) {
            zNativeEncodeYuvToJpeg = nativeEncodeYuvToJpeg(bArr, i2, i3, i4, i5, i6, outputStream);
            if (!zNativeEncodeYuvToJpeg) {
                Log.d(TAG, "sprd jpeg hardware encoder failed, format: " + i2);
            }
        } else {
            zNativeEncodeYuvToJpeg = false;
        }
        if (zNativeEncodeYuvToJpeg) {
            return zNativeEncodeYuvToJpeg;
        }
        if (i2 != 17 && i2 != 20) {
            return zNativeEncodeYuvToJpeg;
        }
        Log.d(TAG, "try to use software encoder of YuvImage, format: " + i2);
        if (i6 != 0) {
            Log.e(TAG, "software encoder YuvImage donn't support rotate!");
            return false;
        }
        return new YuvImage(bArr, i2, i3, i4, iArr).compressToJpeg(rect, i5, outputStream);
    }

    public static YuvImage decodeJpegToYuv(byte[] bArr) {
        if (!sLoadLibrarySuccess) {
            throw new IllegalStateException("decodeJpegToYuv load libyuv_jpeg_converter_jni.so fail");
        }
        if (bArr == null) {
            return null;
        }
        return nativeDecodeJpegToYuv(bArr, bArr.length);
    }
}
