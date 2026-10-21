package android.hardware.camera2;

import android.accessibilityservice.c;
import android.app.m;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.location.Location;
import android.media.Image;
import android.os.SystemClock;
import android.text.format.Time;
import android.util.Log;
import android.util.Size;
import android.util.TimeUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class DngCreator implements AutoCloseable {
    private static final int BYTES_PER_RGB_PIX = 3;
    private static final int DEFAULT_PIXEL_STRIDE = 2;
    private static final String GPS_DATE_FORMAT_STR = "yyyy:MM:dd";
    private static final String GPS_LAT_REF_NORTH = "N";
    private static final String GPS_LAT_REF_SOUTH = "S";
    private static final String GPS_LONG_REF_EAST = "E";
    private static final String GPS_LONG_REF_WEST = "W";
    public static final int MAX_THUMBNAIL_DIMENSION = 256;
    private static final String TAG = "DngCreator";
    private static final int TAG_ORIENTATION_UNKNOWN = 9;
    private static final String TIFF_DATETIME_FORMAT = "yyyy:MM:dd HH:mm:ss";
    private static final DateFormat sExifGPSDateStamp;
    private final Calendar mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone(Time.TIMEZONE_UTC));
    private long mNativeContext;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(GPS_DATE_FORMAT_STR, Locale.US);
        sExifGPSDateStamp = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(Time.TIMEZONE_UTC));
        nativeClassInit();
    }

    public DngCreator(CameraCharacteristics cameraCharacteristics, CaptureResult captureResult) {
        long jUptimeMillis;
        if (cameraCharacteristics == null || captureResult == null) {
            throw new IllegalArgumentException("Null argument to DngCreator constructor");
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iIntValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE)).intValue();
        if (iIntValue == 1) {
            jUptimeMillis = SystemClock.elapsedRealtime();
        } else if (iIntValue == 0) {
            jUptimeMillis = SystemClock.uptimeMillis();
        } else {
            Log.w(TAG, "Sensor timestamp source is unexpected: " + iIntValue);
            jUptimeMillis = SystemClock.uptimeMillis();
        }
        long j2 = jCurrentTimeMillis - jUptimeMillis;
        Long l2 = (Long) captureResult.get(CaptureResult.SENSOR_TIMESTAMP);
        jCurrentTimeMillis = l2 != null ? (l2.longValue() / TimeUtils.NANOS_PER_MS) + j2 : jCurrentTimeMillis;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(TIFF_DATETIME_FORMAT, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        nativeInit(cameraCharacteristics.getNativeCopy(), captureResult.getNativeCopy(), simpleDateFormat.format(Long.valueOf(jCurrentTimeMillis)));
    }

    private static void colorToRgb(int i2, int i3, byte[] bArr) {
        bArr[i3] = (byte) Color.red(i2);
        bArr[i3 + 1] = (byte) Color.green(i2);
        bArr[i3 + 2] = (byte) Color.blue(i2);
    }

    private static ByteBuffer convertToRGB(Image image) {
        int width = image.getWidth();
        int height = image.getHeight();
        int i2 = width * 3;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2 * height);
        Image.Plane plane = image.getPlanes()[0];
        Image.Plane plane2 = image.getPlanes()[1];
        Image.Plane plane3 = image.getPlanes()[2];
        ByteBuffer buffer = plane.getBuffer();
        ByteBuffer buffer2 = plane2.getBuffer();
        ByteBuffer buffer3 = plane3.getBuffer();
        buffer.rewind();
        buffer2.rewind();
        buffer3.rewind();
        int rowStride = plane.getRowStride();
        int rowStride2 = plane3.getRowStride();
        int rowStride3 = plane2.getRowStride();
        int pixelStride = plane.getPixelStride();
        int pixelStride2 = plane3.getPixelStride();
        int pixelStride3 = plane2.getPixelStride();
        byte[] bArr = {0, 0, 0};
        byte[] bArr2 = new byte[((width - 1) * pixelStride) + 1];
        int i3 = (width / 2) - 1;
        byte[] bArr3 = new byte[(pixelStride3 * i3) + 1];
        byte[] bArr4 = new byte[(i3 * pixelStride2) + 1];
        byte[] bArr5 = new byte[i2];
        int i4 = 0;
        while (i4 < height) {
            int i5 = i4 / 2;
            int i6 = height;
            buffer.position(rowStride * i4);
            buffer.get(bArr2);
            buffer2.position(rowStride3 * i5);
            buffer2.get(bArr3);
            buffer3.position(rowStride2 * i5);
            buffer3.get(bArr4);
            int i7 = 0;
            while (i7 < width) {
                int i8 = i7 / 2;
                bArr[0] = bArr2[pixelStride * i7];
                bArr[1] = bArr3[pixelStride3 * i8];
                bArr[2] = bArr4[i8 * pixelStride2];
                yuvToRgb(bArr, i7 * 3, bArr5);
                i7++;
                width = width;
                bArr3 = bArr3;
            }
            byteBufferAllocateDirect.put(bArr5);
            i4++;
            width = width;
            height = i6;
            bArr3 = bArr3;
        }
        buffer.rewind();
        buffer2.rewind();
        buffer3.rewind();
        byteBufferAllocateDirect.rewind();
        return byteBufferAllocateDirect;
    }

    private static native void nativeClassInit();

    private native synchronized void nativeDestroy();

    private native synchronized void nativeInit(CameraMetadataNative cameraMetadataNative, CameraMetadataNative cameraMetadataNative2, String str);

    private native synchronized void nativeSetDescription(String str);

    private native synchronized void nativeSetGpsTags(int[] iArr, String str, int[] iArr2, String str2, String str3, int[] iArr3);

    private native synchronized void nativeSetOrientation(int i2);

    private native synchronized void nativeSetThumbnail(ByteBuffer byteBuffer, int i2, int i3);

    private native synchronized void nativeWriteImage(OutputStream outputStream, int i2, int i3, ByteBuffer byteBuffer, int i4, int i5, long j2, boolean z2);

    private native synchronized void nativeWriteInputStream(OutputStream outputStream, InputStream inputStream, int i2, int i3, long j2);

    private static int[] toExifLatLong(double d2) {
        double dAbs = Math.abs(d2);
        int i2 = (int) dAbs;
        double d3 = (dAbs - ((double) i2)) * 60.0d;
        int i3 = (int) d3;
        return new int[]{i2, 1, i3, 1, (int) ((d3 - ((double) i3)) * 6000.0d), 100};
    }

    private static void yuvToRgb(byte[] bArr, int i2, byte[] bArr2) {
        float f2 = bArr[0] & 255;
        float f3 = bArr[1] & 255;
        float f4 = (bArr[2] & 255) - 128.0f;
        float f5 = f3 - 128.0f;
        bArr2[i2] = (byte) Math.max(0.0f, Math.min(255.0f, (1.402f * f4) + f2));
        bArr2[i2 + 1] = (byte) Math.max(0.0f, Math.min(255.0f, (f2 - (0.34414f * f5)) - (f4 * 0.71414f)));
        bArr2[i2 + 2] = (byte) Math.max(0.0f, Math.min(255.0f, (f5 * 1.772f) + f2));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        nativeDestroy();
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public DngCreator setDescription(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Null description passed to setDescription.");
        }
        nativeSetDescription(str);
        return this;
    }

    public DngCreator setLocation(Location location) {
        if (location == null) {
            throw new IllegalArgumentException("Null location passed to setLocation");
        }
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();
        long time = location.getTime();
        int[] exifLatLong = toExifLatLong(latitude);
        int[] exifLatLong2 = toExifLatLong(longitude);
        String str = latitude >= 0.0d ? GPS_LAT_REF_NORTH : GPS_LAT_REF_SOUTH;
        String str2 = longitude >= 0.0d ? GPS_LONG_REF_EAST : GPS_LONG_REF_WEST;
        String str3 = sExifGPSDateStamp.format(Long.valueOf(time));
        this.mGPSTimeStampCalendar.setTimeInMillis(time);
        nativeSetGpsTags(exifLatLong, str, exifLatLong2, str2, str3, new int[]{this.mGPSTimeStampCalendar.get(11), 1, this.mGPSTimeStampCalendar.get(12), 1, this.mGPSTimeStampCalendar.get(13), 1});
        return this;
    }

    public DngCreator setOrientation(int i2) {
        if (i2 < 0 || i2 > 8) {
            throw new IllegalArgumentException(c.e("Orientation ", i2, " is not a valid EXIF orientation value"));
        }
        if (i2 == 0) {
            i2 = 9;
        }
        nativeSetOrientation(i2);
        return this;
    }

    public DngCreator setThumbnail(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Null argument to setThumbnail");
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width > 256 || height > 256) {
            throw new IllegalArgumentException(m.f("Thumbnail dimensions width,height (", width, ",", height, ") too large, dimensions must be smaller than 256"));
        }
        nativeSetThumbnail(convertToRGB(bitmap), width, height);
        return this;
    }

    public void writeByteBuffer(OutputStream outputStream, Size size, ByteBuffer byteBuffer, long j2) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Null dngOutput passed to writeByteBuffer");
        }
        if (size == null) {
            throw new IllegalArgumentException("Null size passed to writeByteBuffer");
        }
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Null pixels passed to writeByteBuffer");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Negative offset passed to writeByteBuffer");
        }
        int width = size.getWidth();
        writeByteBuffer(width, size.getHeight(), byteBuffer, outputStream, 2, width * 2, j2);
    }

    public void writeImage(OutputStream outputStream, Image image) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Null dngOutput to writeImage");
        }
        if (image == null) {
            throw new IllegalArgumentException("Null pixels to writeImage");
        }
        int format = image.getFormat();
        if (format != 32) {
            throw new IllegalArgumentException(c.d("Unsupported image format ", format));
        }
        Image.Plane[] planes = image.getPlanes();
        if (planes == null || planes.length <= 0) {
            throw new IllegalArgumentException("Image with no planes passed to writeImage");
        }
        writeByteBuffer(image.getWidth(), image.getHeight(), planes[0].getBuffer(), outputStream, planes[0].getPixelStride(), planes[0].getRowStride(), 0L);
    }

    public void writeInputStream(OutputStream outputStream, Size size, InputStream inputStream, long j2) {
        if (outputStream == null) {
            throw new IllegalArgumentException("Null dngOutput passed to writeInputStream");
        }
        if (size == null) {
            throw new IllegalArgumentException("Null size passed to writeInputStream");
        }
        if (inputStream == null) {
            throw new IllegalArgumentException("Null pixels passed to writeInputStream");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Negative offset passed to writeInputStream");
        }
        int width = size.getWidth();
        int height = size.getHeight();
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException(m.f("Size with invalid width, height: (", width, ",", height, ") passed to writeInputStream"));
        }
        nativeWriteInputStream(outputStream, inputStream, width, height, j2);
    }

    private void writeByteBuffer(int i2, int i3, ByteBuffer byteBuffer, OutputStream outputStream, int i4, int i5, long j2) {
        if (i2 > 0 && i3 > 0) {
            long jCapacity = byteBuffer.capacity();
            long j3 = (((long) i5) * ((long) i3)) + j2;
            if (jCapacity < j3) {
                throw new IllegalArgumentException(m.k(m.l("Image size ", jCapacity, " is too small (must be larger than "), j3, ")"));
            }
            int i6 = i4 * i2;
            if (i6 <= i5) {
                byteBuffer.clear();
                nativeWriteImage(outputStream, i2, i3, byteBuffer, i5, i4, j2, byteBuffer.isDirect());
                byteBuffer.clear();
                return;
            }
            throw new IllegalArgumentException(m.e("Invalid image pixel stride, row byte width ", i6, " is too large, expecting ", i5));
        }
        throw new IllegalArgumentException(m.f("Image with invalid width, height: (", i2, ",", i3, ") passed to write"));
    }

    public DngCreator setThumbnail(Image image) {
        if (image != null) {
            int format = image.getFormat();
            if (format == 35) {
                int width = image.getWidth();
                int height = image.getHeight();
                if (width <= 256 && height <= 256) {
                    nativeSetThumbnail(convertToRGB(image), width, height);
                    return this;
                }
                throw new IllegalArgumentException(m.f("Thumbnail dimensions width,height (", width, ",", height, ") too large, dimensions must be smaller than 256"));
            }
            throw new IllegalArgumentException(c.d("Unsupported Image format ", format));
        }
        throw new IllegalArgumentException("Null argument to setThumbnail");
    }

    private static ByteBuffer convertToRGB(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = width * 3;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i2 * height);
        int[] iArr = new int[width];
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < height; i3++) {
            bitmap.getPixels(iArr, 0, width, 0, i3, width, 1);
            for (int i4 = 0; i4 < width; i4++) {
                colorToRgb(iArr[i4], i4 * 3, bArr);
            }
            byteBufferAllocateDirect.put(bArr);
        }
        byteBufferAllocateDirect.rewind();
        return byteBufferAllocateDirect;
    }
}
