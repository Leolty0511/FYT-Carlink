package android.app;

import android.content.ComponentName;
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
import android.os.Bundle;
import android.os.DeadSystemException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.WindowManagerGlobal;
import com.android.internal.R;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
import libcore.io.IoUtils;

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
    public static final String EXTRA_NEW_WALLPAPER_ID = "android.service.wallpaper.extra.ID";
    public static final int FLAG_LOCK = 2;
    public static final int FLAG_SYSTEM = 1;
    private static final String PROP_LOCK_WALLPAPER = "ro.config.lock_wallpaper";
    private static final String PROP_WALLPAPER = "ro.config.wallpaper";
    private static final String PROP_WALLPAPER_COMPONENT = "ro.build.fytlivewallpaper";
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
            this.mDrawLeft = m.b(i4 - i2, this.mWidth, 2, i2);
            this.mDrawTop = m.b(i5 - i3, this.mHeight, 2, i3);
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
        private Bitmap mCachedWallpaper;
        private int mCachedWallpaperUserId;
        private boolean mColorCallbackRegistered;
        private Bitmap mDefaultWallpaper;
        private Handler mMainLooperHandler;
        private final ArrayList<Pair<OnColorsChangedListener, Handler>> mColorListeners = new ArrayList<>();
        private final IWallpaperManager mService = IWallpaperManager.Stub.asInterface(ServiceManager.getService(Context.WALLPAPER_SERVICE));

        public Globals(Looper looper) {
            this.mMainLooperHandler = new Handler(looper);
            forgetLoadedWallpaper();
        }

        private Bitmap getCurrentWallpaperLocked(Context context, int i2) {
            if (this.mService == null) {
                Log.w(WallpaperManager.TAG, "WallpaperService not running");
                return null;
            }
            try {
                ParcelFileDescriptor wallpaper = this.mService.getWallpaper(context.getOpPackageName(), this, 1, new Bundle(), i2);
                if (wallpaper != null) {
                    try {
                        return BitmapFactory.decodeFileDescriptor(wallpaper.getFileDescriptor(), null, new BitmapFactory.Options());
                    } catch (OutOfMemoryError e2) {
                        Log.w(WallpaperManager.TAG, "Can't decode file", e2);
                        return null;
                    } finally {
                        IoUtils.closeQuietly(wallpaper);
                    }
                }
                return null;
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }

        private Bitmap getDefaultWallpaper(Context context, int i2) {
            InputStream inputStreamOpenDefaultWallpaper = WallpaperManager.openDefaultWallpaper(context, i2);
            if (inputStreamOpenDefaultWallpaper != null) {
                try {
                    return BitmapFactory.decodeStream(inputStreamOpenDefaultWallpaper, null, new BitmapFactory.Options());
                } catch (OutOfMemoryError e2) {
                    Log.w(WallpaperManager.TAG, "Can't decode stream", e2);
                    return null;
                } finally {
                    IoUtils.closeQuietly(inputStreamOpenDefaultWallpaper);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWallpaperColorsChanged$1(Pair pair, WallpaperColors wallpaperColors, int i2, int i3) {
            boolean zContains;
            synchronized (WallpaperManager.sGlobals) {
                zContains = this.mColorListeners.contains(pair);
            }
            if (zContains) {
                ((OnColorsChangedListener) pair.first).onColorsChanged(wallpaperColors, i2, i3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$removeOnColorsChangedListener$0(OnColorsChangedListener onColorsChangedListener, Pair pair) {
            return pair.first == onColorsChangedListener;
        }

        public void addOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener, Handler handler, int i2) {
            synchronized (this) {
                if (this.mColorCallbackRegistered) {
                    this.mColorListeners.add(new Pair<>(onColorsChangedListener, handler));
                } else {
                    try {
                        this.mService.registerWallpaperColorsCallback(this, i2);
                        this.mColorCallbackRegistered = true;
                    } catch (RemoteException e2) {
                        Log.w(WallpaperManager.TAG, "Can't register for color updates", e2);
                    }
                    this.mColorListeners.add(new Pair<>(onColorsChangedListener, handler));
                }
                throw th;
            }
        }

        public void forgetLoadedWallpaper() {
            synchronized (this) {
                this.mCachedWallpaper = null;
                this.mCachedWallpaperUserId = 0;
                this.mDefaultWallpaper = null;
            }
        }

        public WallpaperColors getWallpaperColors(int i2, int i3) {
            if (i2 != 2 && i2 != 1) {
                throw new IllegalArgumentException("Must request colors for exactly one kind of wallpaper");
            }
            try {
                return this.mService.getWallpaperColors(i2, i3);
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperChanged() {
            forgetLoadedWallpaper();
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperColorsChanged(final WallpaperColors wallpaperColors, final int i2, final int i3) {
            synchronized (this) {
                for (final Pair<OnColorsChangedListener, Handler> pair : this.mColorListeners) {
                    Handler handler = pair.second;
                    Handler handler2 = handler;
                    if (handler == null) {
                        handler2 = this.mMainLooperHandler;
                    }
                    handler2.post(new Runnable() { // from class: android.app.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f48b.lambda$onWallpaperColorsChanged$1(pair, wallpaperColors, i2, i3);
                        }
                    });
                }
            }
        }

        public Bitmap peekWallpaperBitmap(Context context, boolean z2, int i2) {
            return peekWallpaperBitmap(context, z2, i2, context.getUserId());
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [android.app.t] */
        public void removeOnColorsChangedListener(final OnColorsChangedListener onColorsChangedListener, int i2) {
            synchronized (this) {
                this.mColorListeners.removeIf(new Predicate() { // from class: android.app.t
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return WallpaperManager.Globals.lambda$removeOnColorsChangedListener$0(onColorsChangedListener, (Pair) obj);
                    }
                });
                if (this.mColorListeners.size() == 0 && this.mColorCallbackRegistered) {
                    this.mColorCallbackRegistered = false;
                    try {
                        this.mService.unregisterWallpaperColorsCallback(this, i2);
                    } catch (RemoteException e2) {
                        Log.w(WallpaperManager.TAG, "Can't unregister color updates", e2);
                    }
                }
            }
        }

        public Bitmap peekWallpaperBitmap(Context context, boolean z2, int i2, int i3) {
            IWallpaperManager iWallpaperManager = this.mService;
            if (iWallpaperManager != null) {
                try {
                    if (!iWallpaperManager.isWallpaperSupported(context.getOpPackageName())) {
                        return null;
                    }
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            synchronized (this) {
                Bitmap bitmap = this.mCachedWallpaper;
                if (bitmap != null && this.mCachedWallpaperUserId == i3) {
                    return bitmap;
                }
                this.mCachedWallpaper = null;
                this.mCachedWallpaperUserId = 0;
                try {
                    this.mCachedWallpaper = getCurrentWallpaperLocked(context, i3);
                    this.mCachedWallpaperUserId = i3;
                } catch (OutOfMemoryError e3) {
                    Log.w(WallpaperManager.TAG, "Out of memory loading the current wallpaper: " + e3);
                } catch (SecurityException e4) {
                    if (context.getApplicationInfo().targetSdkVersion > 26) {
                        throw e4;
                    }
                    Log.w(WallpaperManager.TAG, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app.");
                }
                Bitmap bitmap2 = this.mCachedWallpaper;
                if (bitmap2 != null) {
                    return bitmap2;
                }
                if (!z2) {
                    return null;
                }
                Bitmap defaultWallpaper = this.mDefaultWallpaper;
                if (defaultWallpaper == null) {
                    defaultWallpaper = getDefaultWallpaper(context, i2);
                    synchronized (this) {
                        this.mDefaultWallpaper = defaultWallpaper;
                    }
                }
                return defaultWallpaper;
            }
        }
    }

    public interface OnColorsChangedListener {
        void onColorsChanged(WallpaperColors wallpaperColors, int i2);

        void onColorsChanged(WallpaperColors wallpaperColors, int i2, int i3);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SetWallpaperFlags {
    }

    public class WallpaperSetCompletion extends IWallpaperManagerCallback.Stub {
        final CountDownLatch mLatch = new CountDownLatch(1);

        public WallpaperSetCompletion() {
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperChanged() {
            this.mLatch.countDown();
        }

        @Override // android.app.IWallpaperManagerCallback
        public void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i2, int i3) {
            WallpaperManager.sGlobals.onWallpaperColorsChanged(wallpaperColors, i2, i3);
        }

        public void waitForCompletion() {
            try {
                this.mLatch.await(30L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
            }
        }
    }

    public WallpaperManager(Context context, Handler handler) {
        this.mContext = context;
        initGlobals(context.getMainLooper());
    }

    private void copyStreamToWallpaperFile(InputStream inputStream, FileOutputStream fileOutputStream) throws IOException {
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

    public static ComponentName getDefaultWallpaperComponent(Context context) {
        ComponentName componentNameUnflattenFromString;
        ComponentName componentNameUnflattenFromString2;
        String str = SystemProperties.get(PROP_WALLPAPER_COMPONENT);
        if (!TextUtils.isEmpty(str) && (componentNameUnflattenFromString2 = ComponentName.unflattenFromString(str)) != null) {
            return componentNameUnflattenFromString2;
        }
        String string = context.getString(R.string.default_wallpaper_component);
        if (TextUtils.isEmpty(string) || (componentNameUnflattenFromString = ComponentName.unflattenFromString(string)) == null) {
            return null;
        }
        return componentNameUnflattenFromString;
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
            float f8 = (f5 / f7) * f6;
            float f9 = (f4 - f8) * f2;
            rectF.left = f9;
            rectF.right = f9 + f8;
        } else {
            rectF.left = 0.0f;
            rectF.right = f4;
            float f10 = (f4 / f6) * f7;
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

    public static InputStream openDefaultWallpaper(Context context, int i2) {
        if (i2 == 2) {
            return null;
        }
        String str = SystemProperties.get(PROP_WALLPAPER);
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (file.exists()) {
                try {
                    return new FileInputStream(file);
                } catch (IOException unused) {
                }
            }
        }
        try {
            return context.getResources().openRawResource(R.drawable.default_wallpaper);
        } catch (Resources.NotFoundException unused2) {
            return null;
        }
    }

    private final void validateRect(Rect rect) {
        if (rect != null && rect.isEmpty()) {
            throw new IllegalArgumentException("visibleCrop rectangle must be valid and non-empty");
        }
    }

    public void addOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener, Handler handler) {
        addOnColorsChangedListener(onColorsChangedListener, handler, this.mContext.getUserId());
    }

    public void clear() {
        setStream(openDefaultWallpaper(this.mContext, 1), null, false);
    }

    public void clearWallpaper() {
        clearWallpaper(2, this.mContext.getUserId());
        clearWallpaper(1, this.mContext.getUserId());
    }

    public void clearWallpaperOffsets(IBinder iBinder) {
        try {
            WindowManagerGlobal.getWindowSession().setWallpaperPosition(iBinder, -1.0f, -1.0f, -1.0f, -1.0f);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void forgetLoadedWallpaper() {
        sGlobals.forgetLoadedWallpaper();
    }

    public Bitmap getBitmap() {
        return getBitmapAsUser(this.mContext.getUserId());
    }

    public Bitmap getBitmapAsUser(int i2) {
        return sGlobals.peekWallpaperBitmap(this.mContext, true, 1, i2);
    }

    public Drawable getBuiltInDrawable() {
        return getBuiltInDrawable(0, 0, false, 0.0f, 0.0f, 1);
    }

    public Intent getCropAndSetWallpaperIntent(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Image URI must not be null");
        }
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
        intent.setPackage(this.mContext.getString(R.string.config_wallpaperCropperPackage));
        if (packageManager.queryIntentActivities(intent, 0).size() > 0) {
            return intent;
        }
        throw new IllegalArgumentException("Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*");
    }

    public int getDesiredMinimumHeight() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.getHeightHint();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getDesiredMinimumWidth() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.getWidthHint();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Drawable getDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, true, 1);
        if (bitmapPeekWallpaperBitmap == null) {
            return null;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmapPeekWallpaperBitmap);
        bitmapDrawable.setDither(false);
        return bitmapDrawable;
    }

    public Drawable getFastDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, true, 1);
        if (bitmapPeekWallpaperBitmap != null) {
            return new FastBitmapDrawable(bitmapPeekWallpaperBitmap);
        }
        return null;
    }

    public IWallpaperManager getIWallpaperManager() {
        return sGlobals.mService;
    }

    public WallpaperColors getWallpaperColors(int i2) {
        return getWallpaperColors(i2, this.mContext.getUserId());
    }

    public ParcelFileDescriptor getWallpaperFile(int i2) {
        return getWallpaperFile(i2, this.mContext.getUserId());
    }

    public int getWallpaperId(int i2) {
        return getWallpaperIdForUser(i2, this.mContext.getUserId());
    }

    public int getWallpaperIdForUser(int i2, int i3) {
        try {
            if (sGlobals.mService != null) {
                return sGlobals.mService.getWallpaperIdForUser(i2, i3);
            }
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public WallpaperInfo getWallpaperInfo() {
        try {
            if (sGlobals.mService != null) {
                return sGlobals.mService.getWallpaperInfo(UserHandle.myUserId());
            }
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasResourceWallpaper(int i2) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.hasNamedWallpaper("res:" + this.mContext.getResources().getResourceName(i2));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isSetWallpaperAllowed() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.isSetWallpaperAllowed(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isWallpaperBackupEligible(int i2) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.isWallpaperBackupEligible(i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            Log.e(TAG, "Exception querying wallpaper backup eligibility: " + e2.getMessage());
            return false;
        }
    }

    public boolean isWallpaperSupported() {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.isWallpaperSupported(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Drawable peekDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, false, 1);
        if (bitmapPeekWallpaperBitmap == null) {
            return null;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmapPeekWallpaperBitmap);
        bitmapDrawable.setDither(false);
        return bitmapDrawable;
    }

    public Drawable peekFastDrawable() {
        Bitmap bitmapPeekWallpaperBitmap = sGlobals.peekWallpaperBitmap(this.mContext, false, 1);
        if (bitmapPeekWallpaperBitmap != null) {
            return new FastBitmapDrawable(bitmapPeekWallpaperBitmap);
        }
        return null;
    }

    public void removeOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener) {
        removeOnColorsChangedListener(onColorsChangedListener, this.mContext.getUserId());
    }

    public void sendWallpaperCommand(IBinder iBinder, String str, int i2, int i3, int i4, Bundle bundle) {
        try {
            WindowManagerGlobal.getWindowSession().sendWallpaperCommand(iBinder, str, i2, i3, i4, bundle, false);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setBitmap(Bitmap bitmap) {
        setBitmap(bitmap, null, true);
    }

    public void setDisplayOffset(IBinder iBinder, int i2, int i3) {
        try {
            WindowManagerGlobal.getWindowSession().setWallpaperDisplayOffset(iBinder, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setDisplayPadding(Rect rect) {
        try {
            if (sGlobals.mService != null) {
                sGlobals.mService.setDisplayPadding(rect, this.mContext.getOpPackageName());
            } else {
                Log.w(TAG, "WallpaperService not running");
                throw new RuntimeException(new DeadSystemException());
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean setLockWallpaperCallback(IWallpaperManagerCallback iWallpaperManagerCallback) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.setLockWallpaperCallback(iWallpaperManagerCallback);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setResource(int i2) throws Throwable {
        setResource(i2, 3);
    }

    public void setStream(InputStream inputStream) {
        setStream(inputStream, null, true);
    }

    public boolean setWallpaperComponent(ComponentName componentName) {
        return setWallpaperComponent(componentName, UserHandle.myUserId());
    }

    public void setWallpaperOffsetSteps(float f2, float f3) {
        this.mWallpaperXStep = f2;
        this.mWallpaperYStep = f3;
    }

    public void setWallpaperOffsets(IBinder iBinder, float f2, float f3) {
        try {
            WindowManagerGlobal.getWindowSession().setWallpaperPosition(iBinder, f2, f3, this.mWallpaperXStep, this.mWallpaperYStep);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void suggestDesiredDimensions(int i2, int i3) {
        int i4 = 0;
        try {
            i4 = SystemProperties.getInt("sys.max_texture_size", 0);
        } catch (Exception unused) {
        }
        if (i4 > 0 && (i2 > i4 || i3 > i4)) {
            float f2 = i3 / i2;
            if (i2 > i3) {
                i3 = (int) (((double) (i4 * f2)) + 0.5d);
                i2 = i4;
            } else {
                i2 = (int) (((double) (i4 / f2)) + 0.5d);
                i3 = i4;
            }
        }
        try {
            if (sGlobals.mService != null) {
                sGlobals.mService.setDimensionHints(i2, i3, this.mContext.getOpPackageName());
            } else {
                Log.w(TAG, "WallpaperService not running");
                throw new RuntimeException(new DeadSystemException());
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener, Handler handler, int i2) {
        sGlobals.addOnColorsChangedListener(onColorsChangedListener, handler, i2);
    }

    public void clear(int i2) {
        if ((i2 & 1) != 0) {
            clear();
        }
        if ((i2 & 2) != 0) {
            clearWallpaper(2, this.mContext.getUserId());
        }
    }

    public Drawable getBuiltInDrawable(int i2) {
        return getBuiltInDrawable(0, 0, false, 0.0f, 0.0f, i2);
    }

    public WallpaperColors getWallpaperColors(int i2, int i3) {
        return sGlobals.getWallpaperColors(i2, i3);
    }

    public ParcelFileDescriptor getWallpaperFile(int i2, int i3) {
        if (i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("Must request exactly one kind of wallpaper");
        }
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            return sGlobals.mService.getWallpaper(this.mContext.getOpPackageName(), null, i2, new Bundle(), i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        } catch (SecurityException e3) {
            if (this.mContext.getApplicationInfo().targetSdkVersion > 26) {
                throw e3;
            }
            Log.w(TAG, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app.");
            return null;
        }
    }

    public void removeOnColorsChangedListener(OnColorsChangedListener onColorsChangedListener, int i2) {
        sGlobals.removeOnColorsChangedListener(onColorsChangedListener, i2);
    }

    public int setBitmap(Bitmap bitmap, Rect rect, boolean z2) {
        return setBitmap(bitmap, rect, z2, 3);
    }

    public int setResource(int i2, int i3) throws Throwable {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        Bundle bundle = new Bundle();
        WallpaperSetCompletion wallpaperSetCompletion = new WallpaperSetCompletion();
        try {
            Resources resources = this.mContext.getResources();
            ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper("res:" + resources.getResourceName(i2), this.mContext.getOpPackageName(), null, false, bundle, i3, wallpaperSetCompletion, UserHandle.myUserId());
            if (wallpaper != null) {
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                    try {
                        copyStreamToWallpaperFile(resources.openRawResource(i2), autoCloseOutputStream2);
                        autoCloseOutputStream2.close();
                        wallpaperSetCompletion.waitForCompletion();
                        IoUtils.closeQuietly(autoCloseOutputStream2);
                    } catch (Throwable th) {
                        th = th;
                        autoCloseOutputStream = autoCloseOutputStream2;
                        IoUtils.closeQuietly(autoCloseOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return bundle.getInt(EXTRA_NEW_WALLPAPER_ID, 0);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int setStream(InputStream inputStream, Rect rect, boolean z2) {
        return setStream(inputStream, rect, z2, 1);
    }

    public boolean setWallpaperComponent(ComponentName componentName, int i2) {
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        try {
            sGlobals.mService.setWallpaperComponentChecked(componentName, this.mContext.getOpPackageName(), i2);
            return true;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void clearWallpaper(int i2, int i3) {
        if (sGlobals.mService != null) {
            try {
                sGlobals.mService.clearWallpaper(this.mContext.getOpPackageName(), i2, i3);
                return;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        Log.w(TAG, "WallpaperService not running");
        throw new RuntimeException(new DeadSystemException());
    }

    public Drawable getBuiltInDrawable(int i2, int i3, boolean z2, float f2, float f3) {
        return getBuiltInDrawable(i2, i3, z2, f2, f3, 1);
    }

    public int setBitmap(Bitmap bitmap, Rect rect, boolean z2, int i2) {
        return setBitmap(bitmap, rect, z2, i2, UserHandle.myUserId());
    }

    public int setStream(InputStream inputStream, Rect rect, boolean z2, int i2) throws Throwable {
        validateRect(rect);
        if (sGlobals.mService != null) {
            Bundle bundle = new Bundle();
            WallpaperSetCompletion wallpaperSetCompletion = new WallpaperSetCompletion();
            try {
                ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper(null, this.mContext.getOpPackageName(), rect, z2, bundle, i2, wallpaperSetCompletion, UserHandle.myUserId());
                if (wallpaper != null) {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                        try {
                            copyStreamToWallpaperFile(inputStream, autoCloseOutputStream2);
                            autoCloseOutputStream2.close();
                            wallpaperSetCompletion.waitForCompletion();
                            IoUtils.closeQuietly(autoCloseOutputStream2);
                        } catch (Throwable th) {
                            th = th;
                            autoCloseOutputStream = autoCloseOutputStream2;
                            IoUtils.closeQuietly(autoCloseOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return bundle.getInt(EXTRA_NEW_WALLPAPER_ID, 0);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        Log.w(TAG, "WallpaperService not running");
        throw new RuntimeException(new DeadSystemException());
    }

    public Drawable getBuiltInDrawable(int i2, int i3, boolean z2, float f2, float f3, int i4) {
        int i5;
        RectF rectF;
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        Bitmap bitmapCreateBitmap;
        if (sGlobals.mService == null) {
            Log.w(TAG, "WallpaperService not running");
            throw new RuntimeException(new DeadSystemException());
        }
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("Must request exactly one kind of wallpaper");
        }
        Resources resources = this.mContext.getResources();
        float fMax = Math.max(0.0f, Math.min(1.0f, f2));
        float fMax2 = Math.max(0.0f, Math.min(1.0f, f3));
        InputStream inputStreamOpenDefaultWallpaper = openDefaultWallpaper(this.mContext, i4);
        if (inputStreamOpenDefaultWallpaper == null) {
            if (DEBUG) {
                Log.w(TAG, "default wallpaper stream " + i4 + " is null");
            }
            return null;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamOpenDefaultWallpaper);
        if (i2 > 0 && i3 > 0) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(bufferedInputStream, null, options);
            int i6 = options.outWidth;
            if (i6 != 0 && (i5 = options.outHeight) != 0) {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(openDefaultWallpaper(this.mContext, i4));
                int iMin = Math.min(i6, i2);
                int iMin2 = Math.min(i5, i3);
                if (z2) {
                    rectF = getMaxCropRect(i6, i5, iMin, iMin2, fMax, fMax2);
                } else {
                    float f4 = (i6 - iMin) * fMax;
                    float f5 = (i5 - iMin2) * fMax2;
                    rectF = new RectF(f4, f5, iMin + f4, iMin2 + f5);
                }
                Rect rect = new Rect();
                rectF.roundOut(rect);
                if (rect.width() > 0 && rect.height() > 0) {
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
                        BufferedInputStream bufferedInputStream3 = new BufferedInputStream(openDefaultWallpaper(this.mContext, i4));
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
                Log.w(TAG, "crop has bad values for full size image");
                return null;
            }
            Log.e(TAG, "default wallpaper dimensions are 0");
            return null;
        }
        return new BitmapDrawable(resources, BitmapFactory.decodeStream(bufferedInputStream, null, null));
    }

    public int setBitmap(Bitmap bitmap, Rect rect, boolean z2, int i2, int i3) throws Throwable {
        validateRect(rect);
        if (sGlobals.mService != null) {
            Bundle bundle = new Bundle();
            WallpaperSetCompletion wallpaperSetCompletion = new WallpaperSetCompletion();
            try {
                ParcelFileDescriptor wallpaper = sGlobals.mService.setWallpaper(null, this.mContext.getOpPackageName(), rect, z2, bundle, i2, wallpaperSetCompletion, i3);
                if (wallpaper != null) {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = new ParcelFileDescriptor.AutoCloseOutputStream(wallpaper);
                        try {
                            bitmap.compress(Bitmap.CompressFormat.PNG, 90, autoCloseOutputStream2);
                            autoCloseOutputStream2.close();
                            wallpaperSetCompletion.waitForCompletion();
                            IoUtils.closeQuietly(autoCloseOutputStream2);
                        } catch (Throwable th) {
                            th = th;
                            autoCloseOutputStream = autoCloseOutputStream2;
                            IoUtils.closeQuietly(autoCloseOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return bundle.getInt(EXTRA_NEW_WALLPAPER_ID, 0);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        Log.w(TAG, "WallpaperService not running");
        throw new RuntimeException(new DeadSystemException());
    }
}
