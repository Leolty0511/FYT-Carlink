package android.graphics;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Trace;
import android.util.Log;
import android.util.TypedValue;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class BitmapFactory {
    private static final int DECODE_BUFFER_SIZE = 16384;

    public static class Options {
        public Bitmap inBitmap;
        public int inDensity;
        public boolean inDither;

        @Deprecated
        public boolean inInputShareable;
        public boolean inJustDecodeBounds;
        public boolean inMutable;
        public boolean inPreferQualityOverSpeed;

        @Deprecated
        public boolean inPurgeable;
        public int inSampleSize;
        public int inScreenDensity;
        public int inTargetDensity;
        public byte[] inTempStorage;
        public boolean mCancel;
        public ColorSpace outColorSpace;
        public Bitmap.Config outConfig;
        public int outHeight;
        public String outMimeType;
        public int outWidth;
        public Bitmap.Config inPreferredConfig = Bitmap.Config.ARGB_8888;
        public ColorSpace inPreferredColorSpace = null;
        public boolean inScaled = true;
        public boolean inPremultiplied = true;

        public static void validate(Options options) {
            if (options == null) {
                return;
            }
            Bitmap bitmap = options.inBitmap;
            if (bitmap != null && bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Bitmaps with Config.HARWARE are always immutable");
            }
            if (options.inMutable && options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable");
            }
            ColorSpace colorSpace = options.inPreferredColorSpace;
            if (colorSpace != null) {
                if (!(colorSpace instanceof ColorSpace.Rgb)) {
                    throw new IllegalArgumentException("The destination color space must use the RGB color model");
                }
                if (((ColorSpace.Rgb) colorSpace).getTransferParameters() == null) {
                    throw new IllegalArgumentException("The destination color space must use an ICC parametric transfer function");
                }
            }
        }

        public void requestCancelDecode() {
            this.mCancel = true;
        }
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i2, int i3, Options options) {
        if ((i2 | i3) < 0 || bArr.length < i2 + i3) {
            throw new ArrayIndexOutOfBoundsException();
        }
        Options.validate(options);
        Trace.traceBegin(2L, "decodeBitmap");
        try {
            Bitmap bitmapNativeDecodeByteArray = nativeDecodeByteArray(bArr, i2, i3, options);
            if (bitmapNativeDecodeByteArray == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(bitmapNativeDecodeByteArray, options);
            Trace.traceEnd(2L);
            return bitmapNativeDecodeByteArray;
        } catch (Throwable th) {
            Trace.traceEnd(2L);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static Bitmap decodeFile(String str, Options options) throws Throwable {
        FileInputStream fileInputStream;
        Options.validate(options);
        FileInputStream fileInputStream2 = null;
        bitmapDecodeStream = null;
        Bitmap bitmapDecodeStream = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                try {
                    bitmapDecodeStream = decodeStream(fileInputStream, null, options);
                } catch (Exception e2) {
                    e = e2;
                    Log.e("BitmapFactory", "Unable to decode stream: " + e);
                    if (fileInputStream != null) {
                    }
                    return bitmapDecodeStream;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
        try {
            fileInputStream.close();
        } catch (IOException unused2) {
        }
        return bitmapDecodeStream;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, Options options) {
        Bitmap bitmapDecodeStreamInternal;
        Options.validate(options);
        Trace.traceBegin(2L, "decodeFileDescriptor");
        try {
            if (nativeIsSeekable(fileDescriptor)) {
                bitmapDecodeStreamInternal = nativeDecodeFileDescriptor(fileDescriptor, rect, options);
            } else {
                FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                try {
                    bitmapDecodeStreamInternal = decodeStreamInternal(fileInputStream, rect, options);
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused2) {
                    }
                    throw th;
                }
            }
            if (bitmapDecodeStreamInternal == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(bitmapDecodeStreamInternal, options);
            Trace.traceEnd(2L);
            return bitmapDecodeStreamInternal;
        } catch (Throwable th2) {
            Trace.traceEnd(2L);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0013 A[EXC_TOP_SPLITTER, PHI: r0 r3
  0x0013: PHI (r0v3 android.graphics.Bitmap) = (r0v9 android.graphics.Bitmap), (r0v7 android.graphics.Bitmap) binds: [B:15:0x0022, B:5:0x0011] A[DONT_GENERATE, DONT_INLINE]
  0x0013: PHI (r3v3 java.io.InputStream) = (r3v2 java.io.InputStream), (r3v5 java.io.InputStream) binds: [B:15:0x0022, B:5:0x0011] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public static Bitmap decodeResource(Resources resources, int i2, Options options) throws Throwable {
        InputStream inputStreamOpenRawResource;
        Options.validate(options);
        InputStream inputStream = null;
        bitmapDecodeResourceStream = null;
        Bitmap bitmapDecodeResourceStream = null;
        try {
            TypedValue typedValue = new TypedValue();
            inputStreamOpenRawResource = resources.openRawResource(i2, typedValue);
            try {
                bitmapDecodeResourceStream = decodeResourceStream(resources, typedValue, inputStreamOpenRawResource, null, options);
                if (inputStreamOpenRawResource != null) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Exception unused2) {
                if (inputStreamOpenRawResource != null) {
                    inputStreamOpenRawResource.close();
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenRawResource;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
            inputStreamOpenRawResource = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (bitmapDecodeResourceStream != null || options == null || options.inBitmap == null) {
            return bitmapDecodeResourceStream;
        }
        throw new IllegalArgumentException("Problem decoding into existing bitmap");
    }

    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, Options options) {
        Options.validate(options);
        if (options == null) {
            options = new Options();
        }
        if (options.inDensity == 0 && typedValue != null) {
            int i2 = typedValue.density;
            if (i2 == 0) {
                options.inDensity = 160;
            } else if (i2 != 65535) {
                options.inDensity = i2;
            }
        }
        if (options.inTargetDensity == 0 && resources != null) {
            options.inTargetDensity = resources.getDisplayMetrics().densityDpi;
        }
        return decodeStream(inputStream, rect, options);
    }

    public static Bitmap decodeStream(InputStream inputStream, Rect rect, Options options) {
        if (inputStream == null) {
            return null;
        }
        Options.validate(options);
        Trace.traceBegin(2L, "decodeBitmap");
        try {
            Bitmap bitmapNativeDecodeAsset = inputStream instanceof AssetManager.AssetInputStream ? nativeDecodeAsset(((AssetManager.AssetInputStream) inputStream).getNativeAsset(), rect, options) : decodeStreamInternal(inputStream, rect, options);
            if (bitmapNativeDecodeAsset == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(bitmapNativeDecodeAsset, options);
            Trace.traceEnd(2L);
            return bitmapNativeDecodeAsset;
        } catch (Throwable th) {
            Trace.traceEnd(2L);
            throw th;
        }
    }

    private static Bitmap decodeStreamInternal(InputStream inputStream, Rect rect, Options options) {
        byte[] bArr = options != null ? options.inTempStorage : null;
        if (bArr == null) {
            bArr = new byte[16384];
        }
        return nativeDecodeStream(inputStream, bArr, rect, options);
    }

    private static native Bitmap nativeDecodeAsset(long j2, Rect rect, Options options);

    private static native Bitmap nativeDecodeByteArray(byte[] bArr, int i2, int i3, Options options);

    private static native Bitmap nativeDecodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, Options options);

    private static native Bitmap nativeDecodeStream(InputStream inputStream, byte[] bArr, Rect rect, Options options);

    private static native boolean nativeIsSeekable(FileDescriptor fileDescriptor);

    private static void setDensityFromOptions(Bitmap bitmap, Options options) {
        if (bitmap == null || options == null) {
            return;
        }
        int i2 = options.inDensity;
        if (i2 == 0) {
            if (options.inBitmap != null) {
                bitmap.setDensity(Bitmap.getDefaultDensity());
                return;
            }
            return;
        }
        bitmap.setDensity(i2);
        int i3 = options.inTargetDensity;
        if (i3 == 0 || i2 == i3 || i2 == options.inScreenDensity) {
            return;
        }
        byte[] ninePatchChunk = bitmap.getNinePatchChunk();
        boolean z2 = ninePatchChunk != null && NinePatch.isNinePatchChunk(ninePatchChunk);
        if (options.inScaled || z2) {
            bitmap.setDensity(i3);
        }
    }

    public static Bitmap decodeFile(String str) {
        return decodeFile(str, null);
    }

    public static Bitmap decodeResource(Resources resources, int i2) {
        return decodeResource(resources, i2, null);
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i2, int i3) {
        return decodeByteArray(bArr, i2, i3, null);
    }

    public static Bitmap decodeStream(InputStream inputStream) {
        return decodeStream(inputStream, null, null);
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        return decodeFileDescriptor(fileDescriptor, null, null);
    }
}
