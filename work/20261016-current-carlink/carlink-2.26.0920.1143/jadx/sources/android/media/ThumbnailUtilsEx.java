package android.media;

import android.drm.DecryptHandle;
import android.drm.DrmManagerClientEx;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactoryEx;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ThumbnailUtilsEx extends ThumbnailUtils {
    private static final String TAG = "ThumbnailUtilsEx";
    private static DrmManagerClientEx mDrmClient;

    public static Bitmap createImageThumbnailEx(String str, int i2, int i3, Bitmap bitmap) throws Throwable {
        boolean zIsDrmFileType;
        DrmManagerClientEx drmClient;
        DecryptHandle decryptHandleOpenDecryptSession;
        Throwable th;
        try {
            zIsDrmFileType = MediaFile.isDrmFileType(MediaFile.getFileType(str).fileType);
        } catch (NullPointerException unused) {
            zIsDrmFileType = false;
        }
        FileInputStream fileInputStream = null;
        if (zIsDrmFileType) {
            drmClient = getDrmClient();
            decryptHandleOpenDecryptSession = drmClient.openDecryptSession(str);
            if (decryptHandleOpenDecryptSession == null) {
                return null;
            }
        } else {
            drmClient = null;
            decryptHandleOpenDecryptSession = null;
        }
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(str);
                    try {
                        FileDescriptor fd = fileInputStream2.getFD();
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inSampleSize = 1;
                        options.inJustDecodeBounds = true;
                        if (zIsDrmFileType) {
                            BitmapFactoryEx.decodeDrmStream(drmClient, decryptHandleOpenDecryptSession, options);
                        } else {
                            BitmapFactory.decodeFileDescriptor(fd, null, options);
                        }
                        if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
                            new ThumbnailUtils();
                            options.inSampleSize = ThumbnailUtils.computeSampleSize(options, i2, i3);
                            options.inJustDecodeBounds = false;
                            options.inDither = false;
                            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                            Bitmap bitmapDecodeDrmStream = zIsDrmFileType ? BitmapFactoryEx.decodeDrmStream(drmClient, decryptHandleOpenDecryptSession, options) : BitmapFactory.decodeFileDescriptor(fd, null, options);
                            try {
                                fileInputStream2.close();
                                if (decryptHandleOpenDecryptSession == null) {
                                    return bitmapDecodeDrmStream;
                                }
                                drmClient.closeDecryptSession(decryptHandleOpenDecryptSession);
                                return bitmapDecodeDrmStream;
                            } catch (IOException e2) {
                                Log.e(TAG, "", e2);
                                return bitmapDecodeDrmStream;
                            }
                        }
                        try {
                            fileInputStream2.close();
                            if (decryptHandleOpenDecryptSession != null) {
                                drmClient.closeDecryptSession(decryptHandleOpenDecryptSession);
                            }
                        } catch (IOException e3) {
                            Log.e(TAG, "", e3);
                        }
                        return null;
                    } catch (IOException e4) {
                        e = e4;
                        fileInputStream = fileInputStream2;
                        Log.e(TAG, "", e);
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (decryptHandleOpenDecryptSession != null) {
                            drmClient.closeDecryptSession(decryptHandleOpenDecryptSession);
                        }
                        return bitmap;
                    } catch (OutOfMemoryError e5) {
                        e = e5;
                        fileInputStream = fileInputStream2;
                        Log.e(TAG, "Unable to decode file " + str + ". OutOfMemoryError.", e);
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (decryptHandleOpenDecryptSession != null) {
                            drmClient.closeDecryptSession(decryptHandleOpenDecryptSession);
                        }
                        return bitmap;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e6) {
                                Log.e(TAG, "", e6);
                                throw th;
                            }
                        }
                        if (decryptHandleOpenDecryptSession == null) {
                            throw th;
                        }
                        drmClient.closeDecryptSession(decryptHandleOpenDecryptSession);
                        throw th;
                    }
                } catch (IOException e7) {
                    Log.e(TAG, "", e7);
                    return bitmap;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e8) {
            e = e8;
        } catch (OutOfMemoryError e9) {
            e = e9;
        }
    }

    private static DrmManagerClientEx getDrmClient() {
        synchronized (ThumbnailUtils.class) {
            if (mDrmClient == null) {
                mDrmClient = new DrmManagerClientEx(null);
            }
        }
        return mDrmClient;
    }
}
