package android.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.WindowManagerGlobal;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperManager {
    public static final String ACTION_CHANGE_LIVE_WALLPAPER = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER";
    public static final String ACTION_CROP_AND_SET_WALLPAPER = "android.service.wallpaper.CROP_AND_SET_WALLPAPER";
    public static final String ACTION_LIVE_WALLPAPER_CHOOSER = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER";
    public static final String COMMAND_DROP = "android.home.drop";
    public static final String COMMAND_SECONDARY_TAP = "android.wallpaper.secondaryTap";
    public static final String COMMAND_TAP = "android.wallpaper.tap";
    private static boolean DEBUG = false;
    public static final String EXTRA_LIVE_WALLPAPER_COMPONENT = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT";
    private static String TAG = "WallpaperManager";
    public static final String WALLPAPER_PREVIEW_META_DATA = "android.wallpaper.preview";
    private static Globals sGlobals;
    private static final Object sSync = new Object[0];
    private final Context mContext;
    private float mWallpaperXStep = -1.0f;
    private float mWallpaperYStep = -1.0f;

    public static class FastBitmapDrawable extends Drawable {
        private final Bitmap mBitmap;
        private int mDrawLeft;
        private int mDrawTop;
        private final int mHeight;
        private final Paint mPaint;
        private final int mWidth;

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawBitmap(this.mBitmap, this.mDrawLeft, this.mDrawTop, this.mPaint);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.mHeight;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.mWidth;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return this.mHeight;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return this.mWidth;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i2) {
            throw new UnsupportedOperationException("Not supported with this drawable");
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i2, int i3, int i4, int i5) {
            this.mDrawLeft = i2 + (((i4 - i2) - this.mWidth) / 2);
            this.mDrawTop = i3 + (((i5 - i3) - this.mHeight) / 2);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Not supported with this drawable");
        }

        @Override // android.graphics.drawable.Drawable
        public void setDither(boolean z2) {
            throw new UnsupportedOperationException("Not supported with this drawable");
        }

        @Override // android.graphics.drawable.Drawable
        public void setFilterBitmap(boolean z2) {
            throw new UnsupportedOperationException("Not supported with this drawable");
        }

        private FastBitmapDrawable(Bitmap bitmap) {
            this.mBitmap = bitmap;
            int width = bitmap.getWidth();
            this.mWidth = width;
            int height = bitmap.getHeight();
            this.mHeight = height;
            setBounds(0, 0, width, height);
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
    }

    public static class Globals extends IWallpaperManagerCallback.Stub {
        private static final int MSG_CLEAR_WALLPAPER = 1;
        private Bitmap mDefaultWallpaper;
        private final Handler mHandler;
        private IWallpaperManager mService = IWallpaperManager.Stub.asInterface(ServiceManager.getService(Context.WALLPAPER_SERVICE));
        private Bitmap mWallpaper;

        public Globals(Looper looper) {
            this.mHandler = new Handler(looper) { // from class: android.app.WallpaperManager.Globals.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what != 1) {
                        return;
                    }
                    synchronized (this) {
                        Globals.this.mWallpaper = null;
                        Globals.this.mDefaultWallpaper = null;
                    }
                }
            };
        }

        private Bitmap getCurrentWallpaperLocked(Context context) {
            try {
                Bundle bundle = new Bundle();
                ParcelFileDescriptor wallpaper = this.mService.getWallpaper(this, bundle);
                if (wallpaper != null) {
                    bundle.getInt("width", 0);
                    bundle.getInt("height", 0);
                    try {
                        try {
                            return BitmapFactory.decodeFileDescriptor(wallpaper.getFileDescriptor(), null, new BitmapFactory.Options());
                        } catch (OutOfMemoryError e2) {
                            Log.w(WallpaperManager.TAG, "Can't decode file", e2);
                            wallpaper.close();
                            return null;
                        }
                    } finally {
                        try {
                            wallpaper.close();
                        } catch (IOException unused) {
                        }
                    }
                }
            } catch (RemoteException | IOException unused2) {
            }
            return null;
        }

        private Bitmap getDefaultWallpaperLocked(Context context) {
            try {
                File file = new File("system/media/rkfactory");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File("system/media/rkfactory/default_wallpaper.jpg");
                InputStream fileInputStream = file2.exists() ? new FileInputStream(file2) : context.getResources().openRawResource(17302049);
                if (fileInputStream != null) {
                    this.mService.getWidthHint();
                    this.mService.getHeightHint();
                    try {
                        try {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, new BitmapFactory.Options());
                            try {
                                fileInputStream.close();
                            } catch (IOException unused) {
                            }
                            return bitmapDecodeStream;
                        } catch (OutOfMemoryError e2) {
                            Log.w(WallpaperManager.TAG, "Can't decode stream", e2);
                            fileInputStream.close();
                            return null;
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                        throw th;
                    }
                }
            } catch (RemoteException | IOException unused3) {
            }
            return null;
        }

        public void forgetLoadedWallpaper() {
            synchronized (this) {
                this.mWallpaper = null;
                this.mDefaultWallpaper = null;
                this.mHandler.removeMessages(1);
            }
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperChanged() {
            this.mHandler.sendEmptyMessage(1);
        }

        public Bitmap peekWallpaperBitmap(Context context, boolean z2) {
            synchronized (this) {
                Bitmap bitmap = this.mWallpaper;
                if (bitmap != null) {
                    return bitmap;
                }
                Bitmap bitmap2 = this.mDefaultWallpaper;
                if (bitmap2 != null) {
                    return bitmap2;
                }
                this.mWallpaper = null;
                try {
                    this.mWallpaper = getCurrentWallpaperLocked(context);
                } catch (OutOfMemoryError e2) {
                    Log.w(WallpaperManager.TAG, "No memory load current wallpaper", e2);
                }
                if (z2) {
                    if (this.mWallpaper == null) {
                        Bitmap defaultWallpaperLocked = getDefaultWallpaperLocked(context);
                        this.mDefaultWallpaper = defaultWallpaperLocked;
                        return defaultWallpaperLocked;
                    }
                    this.mDefaultWallpaper = null;
                }
                return this.mWallpaper;
            }
        }
    }

    public WallpaperManager(Context context, Handler handler) {
        this.mContext = context;
        initGlobals(context.getMainLooper());
    }

    public static WallpaperManager getInstance(Context context) {
        return (WallpaperManager) context.getSystemService(Context.WALLPAPER_SERVICE);
    }

    private static RectF getMaxCropRect(int i2, int i3, int i4, int i5, float f2, float f3) {
        RectF rectF = new RectF();
        float f4 = i2;
        float f5 = i3;
        float f6 = i4;
        float f7 = i5;
        if (f4 / f5 > f6 / f7) {
            rectF.top = 0.0f;
            rectF.bottom = f5;
            float f8 = f6 * (f5 / f7);
            float f9 = (f4 - f8) * f2;
            rectF.left = f9;
            rectF.right = f9 + f8;
        } else {
            rectF.left = 0.0f;
            rectF.right = f4;
            float f10 = f7 * (f4 / f6);
            float f11 = (f5 - f10) * f3;
            rectF.top = f11;
            rectF.bottom = f11 + f10;
        }
        return rectF;
    }

    public static void initGlobals(Looper looper) {
        synchronized (sSync) {
            if (sGlobals == null) {
                sGlobals = new Globals(looper);
            }
        }
    }

    private void setWallpaper(InputStream inputStream, FileOutputStream fileOutputStream) throws IOException {
        byte[] bArr = new byte[32768];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 <= 0) {
                return;
            } else {
                fileOutputStream.write(bArr, 0, i2);
            }
        }
    }

    public void clear() {
        setResource(17302049);
    }

    public void clearWallpaperOffsets(IBinder iBinder) {
        try {
            WindowManagerGlobal.getWindowSession().setWallpaperPosition(iBinder, -1.0f, -1.0f, -1.0f, -1.0f);
        } catch (RemoteException unused) {
        }
    }

    public void forgetLoadedWallpaper() {
        sGlobals.forgetLoadedWallpaper();
    }

    public Bitmap getBitmap() {
        return sGlobals.peekWallpaperBitmap(this.mContext, true);
    }

    public Drawable getBuiltInDrawable() {
        return getBuiltInDrawable(0, 0, false, 0.0f, 0.0f);
    }

    public Intent getCropAndSetWallpaperIntent(Uri uri) {
        if (!"content".equals(uri.getScheme())) {
            throw new IllegalArgumentException("Image URI must be of the content scheme type");
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent(ACTION_CROP_AND_SET_WALLPAPER, uri);
        intent.addFlags(1);
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME), 65536);
        if (resolveInfoResolveActivity != null) {
            intent.setPackage(resolveInfoResolveActivity.activityInfo.packageName);
            if (packageManager.queryIntentActivities(intent, 0).size() > 0) {
                return intent;
            }
        }
        intent.setPackage("com.android.wallpapercropper");
        if (packageManager.queryIntentActivities(intent, 0).size() > 0) {
            return intent;
        }
        throw new IllegalArgumentException("Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*");
    }

    public int getDesiredMinimumHeight() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return 0;
        }
        try {
            return sGlobals.mService.getHeightHint();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public int getDesiredMinimumWidth() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return 0;
        }
        try {
            return sGlobals.mService.getWidthHint();
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public Drawable getDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, true);
        if (bitmapPeekWallpaperBitmap == null) {
            return null;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmapPeekWallpaperBitmap);
        bitmapDrawable.setDither(false);
        return bitmapDrawable;
    }

    public Drawable getFastDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, true);
        if (bitmapPeekWallpaperBitmap != null) {
            return new FastBitmapDrawable(bitmapPeekWallpaperBitmap);
        }
        return null;
    }

    public IWallpaperManager getIWallpaperManager() {
        return sGlobals.mService;
    }

    public WallpaperInfo getWallpaperInfo() {
        try {
            if (sGlobals.mService != null) {
                return sGlobals.mService.getWallpaperInfo();
            }
            Log.w(TAG, "WallpaperService not running");
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean hasResourceWallpaper(int i2) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return false;
        }
        try {
            return sGlobals.mService.hasNamedWallpaper("res:" + this.mContext.getResources().getResourceName(i2));
        } catch (RemoteException unused) {
            return false;
        }
    }

    public Drawable peekDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, false);
        if (bitmapPeekWallpaperBitmap == null) {
            return null;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmapPeekWallpaperBitmap);
        bitmapDrawable.setDither(false);
        return bitmapDrawable;
    }

    public Drawable peekFastDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, false);
        if (bitmapPeekWallpaperBitmap != null) {
            return new FastBitmapDrawable(bitmapPeekWallpaperBitmap);
        }
        return null;
    }

    public void sendWallpaperCommand(IBinder iBinder, String str, int i2, int i3, int i4, Bundle bundle) {
        try {
            WindowManagerGlobal.getWindowSession().sendWallpaperCommand(iBinder, str, i2, i3, i4, bundle, false);
        } catch (RemoteException unused) {
        }
    }

    public void setBitmap(Bitmap bitmap) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return;
        }
        try {
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
            ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper(null);
            if (wallpaper == null) {
                return;
            }
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, autoCloseOutputStream2);
                    autoCloseOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    autoCloseOutputStream = autoCloseOutputStream2;
                    if (autoCloseOutputStream != null) {
                        autoCloseOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException unused) {
        }
    }

    public void setResource(int i2) throws Throwable {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return;
        }
        try {
            Resources resources = this.mContext.getResources();
            ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper("res:" + resources.getResourceName(i2));
            if (wallpaper == null) {
                return;
            }
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                try {
                    setWallpaper(resources.openRawResource(i2), autoCloseOutputStream2);
                    autoCloseOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    autoCloseOutputStream = autoCloseOutputStream2;
                    if (autoCloseOutputStream != null) {
                        autoCloseOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException unused) {
        }
    }

    public void setStream(InputStream inputStream) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return;
        }
        try {
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
            ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper(null);
            if (wallpaper == null) {
                return;
            }
            try {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                try {
                    setWallpaper(inputStream, autoCloseOutputStream2);
                    autoCloseOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    autoCloseOutputStream = autoCloseOutputStream2;
                    if (autoCloseOutputStream != null) {
                        autoCloseOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException unused) {
        }
    }

    public void setWallpaperOffsetSteps(float f2, float f3) {
        this.mWallpaperXStep = f2;
        this.mWallpaperYStep = f3;
    }

    public void setWallpaperOffsets(IBinder iBinder, float f2, float f3) {
        if (Build.USE_LCDC_COMPOSER) {
            return;
        }
        try {
            WindowManagerGlobal.getWindowSession().setWallpaperPosition(iBinder, f2, f3, this.mWallpaperXStep, this.mWallpaperYStep);
        } catch (RemoteException unused) {
        }
    }

    public void suggestDesiredDimensions(int i2, int i3) {
        try {
            if (sGlobals.mService == null) {
                Log.w(TAG, "WallpaperService not running");
            } else {
                sGlobals.mService.setDimensionHints(i2, i3);
            }
        } catch (RemoteException unused) {
        }
    }

    public Drawable getBuiltInDrawable(int i2, int i3, boolean z2, float f2, float f3) {
        int i4;
        RectF rectF;
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        Bitmap bitmapCreateBitmap;
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            return null;
        }
        Resources resources = this.mContext.getResources();
        float fMax = Math.max(0.0f, Math.min(1.0f, f2));
        float fMax2 = Math.max(0.0f, Math.min(1.0f, f3));
        BufferedInputStream bufferedInputStream = new BufferedInputStream(resources.openRawResource(17302049));
        if (i2 <= 0 || i3 <= 0) {
            return new BitmapDrawable(resources, BitmapFactory.decodeStream(bufferedInputStream, null, null));
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(bufferedInputStream, null, options);
        int i5 = options.outWidth;
        if (i5 == 0 || (i4 = options.outHeight) == 0) {
            Log.e(TAG, "default wallpaper dimensions are 0");
            return null;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(resources.openRawResource(17302049));
        int iMin = Math.min(i5, i2);
        int iMin2 = Math.min(i4, i3);
        if (z2) {
            rectF = getMaxCropRect(i5, i4, iMin, iMin2, fMax, fMax2);
        } else {
            float f4 = (i5 - iMin) * fMax;
            float f5 = (i4 - iMin2) * fMax2;
            rectF = new RectF(f4, f5, iMin + f4, iMin2 + f5);
        }
        Rect rect = new Rect();
        rectF.roundOut(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            Log.w(TAG, "crop has bad values for full size image");
            return null;
        }
        int iMin3 = Math.min(rect.width() / iMin, rect.height() / iMin2);
        try {
            bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance((InputStream) bufferedInputStream2, true);
        } catch (IOException unused) {
            Log.w(TAG, "cannot open region decoder for default wallpaper");
            bitmapRegionDecoderNewInstance = null;
        }
        if (bitmapRegionDecoderNewInstance != null) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            if (iMin3 > 1) {
                options2.inSampleSize = iMin3;
            }
            bitmapCreateBitmap = bitmapRegionDecoderNewInstance.decodeRegion(rect, options2);
            bitmapRegionDecoderNewInstance.recycle();
        } else {
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            BufferedInputStream bufferedInputStream3 = new BufferedInputStream(resources.openRawResource(17302049));
            BitmapFactory.Options options3 = new BitmapFactory.Options();
            if (iMin3 > 1) {
                options3.inSampleSize = iMin3;
            }
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(bufferedInputStream3, null, options3);
            if (bitmapDecodeStream != null) {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, rect.left, rect.top, rect.width(), rect.height());
            }
        }
        if (bitmapCreateBitmap == null) {
            Log.w(TAG, "cannot decode default wallpaper");
            return null;
        }
        if (iMin > 0 && iMin2 > 0 && (bitmapCreateBitmap.getWidth() != iMin || bitmapCreateBitmap.getHeight() != iMin2)) {
            Matrix matrix = new Matrix();
            RectF rectF2 = new RectF(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
            RectF rectF3 = new RectF(0.0f, 0.0f, iMin, iMin2);
            matrix.setRectToRect(rectF2, rectF3, Matrix.ScaleToFit.FILL);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap((int) rectF3.width(), (int) rectF3.height(), Bitmap.Config.ARGB_8888);
            if (bitmapCreateBitmap2 != null) {
                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                Paint paint = new Paint();
                paint.setFilterBitmap(true);
                canvas.drawBitmap(bitmapCreateBitmap, matrix, paint);
                bitmapCreateBitmap = bitmapCreateBitmap2;
            }
        }
        return new BitmapDrawable(resources, bitmapCreateBitmap);
    }
}
