package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ThumbnailUtils {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    private static final int MAX_NUM_PIXELS_THUMBNAIL = 196608;
    private static final int OPTIONS_NONE = 0;
    public static final int OPTIONS_RECYCLE_INPUT = 2;
    private static final int OPTIONS_SCALE_UP = 1;
    private static final String TAG = "ThumbnailUtils";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    public static final int TARGET_SIZE_MINI_THUMBNAIL = 320;
    private static final int UNCONSTRAINED = -1;

    public static class SizedThumbnailBitmap {
        public Bitmap mBitmap;
        public byte[] mThumbnailData;
        public int mThumbnailHeight;
        public int mThumbnailWidth;

        private SizedThumbnailBitmap() {
        }
    }

    private static void closeSilently(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            return;
        }
        try {
            parcelFileDescriptor.close();
        } catch (Throwable unused) {
        }
    }

    private static int computeInitialSampleSize(BitmapFactory.Options options, int i2, int i3) {
        int iMin;
        double d2 = options.outWidth;
        double d3 = options.outHeight;
        int iCeil = i3 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d2 * d3) / ((double) i3)));
        if (i2 == -1) {
            iMin = 128;
        } else {
            double d4 = i2;
            iMin = (int) Math.min(Math.floor(d2 / d4), Math.floor(d3 / d4));
        }
        if (iMin < iCeil) {
            return iCeil;
        }
        if (i3 == -1 && i2 == -1) {
            return 1;
        }
        return i2 == -1 ? iCeil : iMin;
    }

    private static int computeSampleSize(BitmapFactory.Options options, int i2, int i3) {
        int iComputeInitialSampleSize = computeInitialSampleSize(options, i2, i3);
        if (iComputeInitialSampleSize > 8) {
            return 8 * ((iComputeInitialSampleSize + 7) / 8);
        }
        int i4 = 1;
        while (i4 < iComputeInitialSampleSize) {
            i4 <<= 1;
        }
        return i4;
    }

    /* JADX INFO: Removed unreachable split cross block B:73:0x00bc */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.media.ThumbnailUtils$1] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static Bitmap createImageThumbnail(String str, int i2) throws Throwable {
        Bitmap bitmapDecodeFileDescriptor;
        boolean z2 = i2 == 1;
        int i3 = z2 ? 320 : 96;
        int i4 = z2 ? 196608 : MAX_NUM_PIXELS_MICRO_THUMBNAIL;
        ?? r8 = 0;
        r8 = 0;
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        r8 = 0;
        SizedThumbnailBitmap sizedThumbnailBitmap = new SizedThumbnailBitmap();
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        if (fileType == null || fileType.fileType != 31) {
            bitmapDecodeFileDescriptor = null;
        } else {
            createThumbnailFromEXIF(str, i3, i4, sizedThumbnailBitmap);
            bitmapDecodeFileDescriptor = sizedThumbnailBitmap.mBitmap;
        }
        try {
            try {
                if (bitmapDecodeFileDescriptor == null) {
                    try {
                        FileInputStream fileInputStream3 = new FileInputStream(str);
                        try {
                            FileDescriptor fd = fileInputStream3.getFD();
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inSampleSize = 1;
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFileDescriptor(fd, null, options);
                            if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
                                options.inSampleSize = computeSampleSize(options, i3, i4);
                                options.inJustDecodeBounds = false;
                                options.inDither = false;
                                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fd, null, options);
                                fileInputStream3.close();
                            }
                            try {
                                fileInputStream3.close();
                            } catch (IOException e2) {
                                Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e2);
                            }
                            return null;
                        } catch (IOException e3) {
                            e = e3;
                            fileInputStream = fileInputStream3;
                            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e);
                            r8 = fileInputStream;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                                r8 = fileInputStream;
                            }
                        } catch (OutOfMemoryError e4) {
                            e = e4;
                            fileInputStream2 = fileInputStream3;
                            Log.e(TAG, "Unable to decode file " + str + ". OutOfMemoryError.", e);
                            r8 = fileInputStream2;
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                                r8 = fileInputStream2;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r8 = fileInputStream3;
                            if (r8 != 0) {
                                try {
                                    r8.close();
                                } catch (IOException e5) {
                                    Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e5);
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e6) {
                        e = e6;
                    } catch (OutOfMemoryError e7) {
                        e = e7;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e8) {
            Log.e(TAG, ProxyProperties.LOCAL_EXCL_LIST, e8);
        }
        return i2 == 3 ? extractThumbnail(bitmapDecodeFileDescriptor, 96, 96, 2) : bitmapDecodeFileDescriptor;
    }

    private static void createThumbnailFromEXIF(String str, int i2, int i3, SizedThumbnailBitmap sizedThumbnailBitmap) {
        int i4;
        if (str == null) {
            return;
        }
        byte[] thumbnail = null;
        try {
            thumbnail = new ExifInterface(str).getThumbnail();
        } catch (IOException e2) {
            Log.w(TAG, e2);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        if (thumbnail != null) {
            options2.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(thumbnail, 0, thumbnail.length, options2);
            int iComputeSampleSize = computeSampleSize(options2, i2, i3);
            options2.inSampleSize = iComputeSampleSize;
            i4 = options2.outWidth / iComputeSampleSize;
        } else {
            i4 = 0;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int iComputeSampleSize2 = computeSampleSize(options, i2, i3);
        options.inSampleSize = iComputeSampleSize2;
        int i5 = options.outWidth / iComputeSampleSize2;
        if (thumbnail == null || i4 < i5) {
            options.inJustDecodeBounds = false;
            sizedThumbnailBitmap.mBitmap = BitmapFactory.decodeFile(str, options);
            return;
        }
        int i6 = options2.outWidth;
        int i7 = options2.outHeight;
        options2.inJustDecodeBounds = false;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(thumbnail, 0, thumbnail.length, options2);
        sizedThumbnailBitmap.mBitmap = bitmapDecodeByteArray;
        if (bitmapDecodeByteArray != null) {
            sizedThumbnailBitmap.mThumbnailData = thumbnail;
            sizedThumbnailBitmap.mThumbnailWidth = i6;
            sizedThumbnailBitmap.mThumbnailHeight = i7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0022  */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:20:0x004a  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    public static Bitmap createVideoThumbnail(String str, int i2) {
        Bitmap frameAtTime;
        int width;
        int height;
        int iMax;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                } catch (RuntimeException unused) {
                }
            } catch (RuntimeException unused2) {
                frameAtTime = null;
            }
        } catch (IllegalArgumentException | RuntimeException unused3) {
            mediaMetadataRetriever.release();
            frameAtTime = null;
            if (frameAtTime == null) {
                return null;
            }
            if (i2 == 1) {
                if (i2 == 3) {
                    return extractThumbnail(frameAtTime, 96, 96, 2);
                }
                return frameAtTime;
            }
            width = frameAtTime.getWidth();
            height = frameAtTime.getHeight();
            iMax = Math.max(width, height);
            if (iMax > 512) {
                return frameAtTime;
            }
            float f2 = 512.0f / iMax;
            return Bitmap.createScaledBitmap(frameAtTime, Math.round(width * f2), Math.round(f2 * height), true);
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused4) {
            }
            throw th;
        }
        if (frameAtTime == null) {
            return null;
        }
        if (i2 == 1) {
            if (i2 == 3) {
                return extractThumbnail(frameAtTime, 96, 96, 2);
            }
            return frameAtTime;
        }
        width = frameAtTime.getWidth();
        height = frameAtTime.getHeight();
        iMax = Math.max(width, height);
        if (iMax > 512) {
            return frameAtTime;
        }
        float f3 = 512.0f / iMax;
        return Bitmap.createScaledBitmap(frameAtTime, Math.round(width * f3), Math.round(f3 * height), true);
    }

    public static Bitmap extractThumbnail(Bitmap bitmap, int i2, int i3) {
        return extractThumbnail(bitmap, i2, i3, 0);
    }

    private static Bitmap makeBitmap(int i2, int i3, Uri uri, ContentResolver contentResolver, ParcelFileDescriptor parcelFileDescriptor, BitmapFactory.Options options) {
        if (parcelFileDescriptor == null) {
            try {
                try {
                    parcelFileDescriptor = makeInputStream(uri, contentResolver);
                } catch (OutOfMemoryError e2) {
                    Log.e(TAG, "Got oom exception ", e2);
                    return null;
                }
            } finally {
                closeSilently(parcelFileDescriptor);
            }
        }
        if (parcelFileDescriptor == null) {
            return null;
        }
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
        options.inSampleSize = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
            options.inSampleSize = computeSampleSize(options, i2, i3);
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }
        return null;
    }

    private static ParcelFileDescriptor makeInputStream(Uri uri, ContentResolver contentResolver) {
        try {
            return contentResolver.openFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c4  */
    private static Bitmap transform(Matrix matrix, Bitmap bitmap, int i2, int i3, int i4) {
        Matrix matrix2;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        Matrix matrix3 = matrix;
        boolean z2 = (i4 & 1) != 0;
        boolean z3 = (i4 & 2) != 0;
        int width = bitmap.getWidth() - i2;
        int height = bitmap.getHeight() - i3;
        if (!z2 && (width < 0 || height < 0)) {
            Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap3);
            int iMax = Math.max(0, width / 2);
            int iMax2 = Math.max(0, height / 2);
            Rect rect = new Rect(iMax, iMax2, Math.min(i2, bitmap.getWidth()) + iMax, Math.min(i3, bitmap.getHeight()) + iMax2);
            int iWidth = (i2 - rect.width()) / 2;
            int iHeight = (i3 - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(iWidth, iHeight, i2 - iWidth, i3 - iHeight), (Paint) null);
            if (z3) {
                bitmap.recycle();
            }
            canvas.setBitmap(null);
            return bitmapCreateBitmap3;
        }
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        float f2 = i2;
        float f3 = i3;
        if (width2 / height2 <= f2 / f3) {
            float f4 = f2 / width2;
            if (f4 < 0.9f || f4 > 1.0f) {
                matrix.setScale(f4, f4);
            } else {
                matrix2 = null;
            }
            if (matrix2 != null) {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
            } else {
                bitmapCreateBitmap = bitmap;
            }
            if (z3 && bitmapCreateBitmap != bitmap) {
                bitmap.recycle();
            }
            bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i2) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i3) / 2, i2, i3);
            if (bitmapCreateBitmap2 != bitmapCreateBitmap && (z3 || bitmapCreateBitmap != bitmap)) {
                bitmapCreateBitmap.recycle();
            }
            return bitmapCreateBitmap2;
        }
        float f5 = f3 / height2;
        if (f5 < 0.9f || f5 > 1.0f) {
            matrix.setScale(f5, f5);
        } else {
            matrix3 = null;
        }
        matrix2 = matrix3;
        if (matrix2 != null) {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
        } else {
            bitmapCreateBitmap = bitmap;
        }
        if (z3) {
            bitmap.recycle();
        }
        bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i2) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i3) / 2, i2, i3);
        if (bitmapCreateBitmap2 != bitmapCreateBitmap) {
            bitmapCreateBitmap.recycle();
        }
        return bitmapCreateBitmap2;
    }

    public static Bitmap extractThumbnail(Bitmap bitmap, int i2, int i3, int i4) {
        float f2;
        int height;
        if (bitmap == null) {
            return null;
        }
        if (bitmap.getWidth() < bitmap.getHeight()) {
            f2 = i2;
            height = bitmap.getWidth();
        } else {
            f2 = i3;
            height = bitmap.getHeight();
        }
        float f3 = f2 / height;
        Matrix matrix = new Matrix();
        matrix.setScale(f3, f3);
        return transform(matrix, bitmap, i2, i3, i4 | 1);
    }
}
