package android.content;

import android.app.IApplicationThread;
import android.app.IServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.UserHandle;
import android.view.Display;
import android.view.DisplayAdjustments;
import android.view.autofill.AutofillManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ContextWrapper extends Context {
    Context mBase;

    public ContextWrapper(Context context) {
        this.mBase = context;
    }

    public void attachBaseContext(Context context) {
        if (this.mBase != null) {
            throw new IllegalStateException("Base context already set");
        }
        this.mBase = context;
    }

    @Override // android.content.Context
    public boolean bindService(Intent intent, ServiceConnection serviceConnection, int i2) {
        return this.mBase.bindService(intent, serviceConnection, i2);
    }

    @Override // android.content.Context
    public boolean bindServiceAsUser(Intent intent, ServiceConnection serviceConnection, int i2, UserHandle userHandle) {
        return this.mBase.bindServiceAsUser(intent, serviceConnection, i2, userHandle);
    }

    @Override // android.content.Context
    public boolean canLoadUnsafeResources() {
        return this.mBase.canLoadUnsafeResources();
    }

    @Override // android.content.Context
    public boolean canStartActivityForResult() {
        return this.mBase.canStartActivityForResult();
    }

    @Override // android.content.Context
    public int checkCallingOrSelfPermission(String str) {
        return this.mBase.checkCallingOrSelfPermission(str);
    }

    @Override // android.content.Context
    public int checkCallingOrSelfUriPermission(Uri uri, int i2) {
        return this.mBase.checkCallingOrSelfUriPermission(uri, i2);
    }

    @Override // android.content.Context
    public int checkCallingPermission(String str) {
        return this.mBase.checkCallingPermission(str);
    }

    @Override // android.content.Context
    public int checkCallingUriPermission(Uri uri, int i2) {
        return this.mBase.checkCallingUriPermission(uri, i2);
    }

    @Override // android.content.Context
    public int checkPermission(String str, int i2, int i3) {
        return this.mBase.checkPermission(str, i2, i3);
    }

    @Override // android.content.Context
    public int checkSelfPermission(String str) {
        return this.mBase.checkSelfPermission(str);
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, int i2, int i3, int i4) {
        return this.mBase.checkUriPermission(uri, i2, i3, i4);
    }

    @Override // android.content.Context
    @Deprecated
    public void clearWallpaper() {
        this.mBase.clearWallpaper();
    }

    @Override // android.content.Context
    public Context createApplicationContext(ApplicationInfo applicationInfo, int i2) {
        return this.mBase.createApplicationContext(applicationInfo, i2);
    }

    @Override // android.content.Context
    public Context createConfigurationContext(Configuration configuration) {
        return this.mBase.createConfigurationContext(configuration);
    }

    @Override // android.content.Context
    public Context createContextForSplit(String str) {
        return this.mBase.createContextForSplit(str);
    }

    @Override // android.content.Context
    public Context createCredentialProtectedStorageContext() {
        return this.mBase.createCredentialProtectedStorageContext();
    }

    @Override // android.content.Context
    public Context createDeviceProtectedStorageContext() {
        return this.mBase.createDeviceProtectedStorageContext();
    }

    @Override // android.content.Context
    public Context createDisplayContext(Display display) {
        return this.mBase.createDisplayContext(display);
    }

    @Override // android.content.Context
    public Context createPackageContext(String str, int i2) {
        return this.mBase.createPackageContext(str, i2);
    }

    @Override // android.content.Context
    public Context createPackageContextAsUser(String str, int i2, UserHandle userHandle) {
        return this.mBase.createPackageContextAsUser(str, i2, userHandle);
    }

    @Override // android.content.Context
    public String[] databaseList() {
        return this.mBase.databaseList();
    }

    @Override // android.content.Context
    public boolean deleteDatabase(String str) {
        return this.mBase.deleteDatabase(str);
    }

    @Override // android.content.Context
    public boolean deleteFile(String str) {
        return this.mBase.deleteFile(str);
    }

    @Override // android.content.Context
    public boolean deleteSharedPreferences(String str) {
        return this.mBase.deleteSharedPreferences(str);
    }

    @Override // android.content.Context
    public void enforceCallingOrSelfPermission(String str, String str2) {
        this.mBase.enforceCallingOrSelfPermission(str, str2);
    }

    @Override // android.content.Context
    public void enforceCallingOrSelfUriPermission(Uri uri, int i2, String str) {
        this.mBase.enforceCallingOrSelfUriPermission(uri, i2, str);
    }

    @Override // android.content.Context
    public void enforceCallingPermission(String str, String str2) {
        this.mBase.enforceCallingPermission(str, str2);
    }

    @Override // android.content.Context
    public void enforceCallingUriPermission(Uri uri, int i2, String str) {
        this.mBase.enforceCallingUriPermission(uri, i2, str);
    }

    @Override // android.content.Context
    public void enforcePermission(String str, int i2, int i3, String str2) {
        this.mBase.enforcePermission(str, i2, i3, str2);
    }

    @Override // android.content.Context
    public void enforceUriPermission(Uri uri, int i2, int i3, int i4, String str) {
        this.mBase.enforceUriPermission(uri, i2, i3, i4, str);
    }

    @Override // android.content.Context
    public String[] fileList() {
        return this.mBase.fileList();
    }

    @Override // android.content.Context
    public IBinder getActivityToken() {
        return this.mBase.getActivityToken();
    }

    @Override // android.content.Context
    public Context getApplicationContext() {
        return this.mBase.getApplicationContext();
    }

    @Override // android.content.Context
    public ApplicationInfo getApplicationInfo() {
        return this.mBase.getApplicationInfo();
    }

    @Override // android.content.Context
    public AssetManager getAssets() {
        return this.mBase.getAssets();
    }

    @Override // android.content.Context
    public AutofillManager.AutofillClient getAutofillClient() {
        return this.mBase.getAutofillClient();
    }

    public Context getBaseContext() {
        return this.mBase;
    }

    @Override // android.content.Context
    public String getBasePackageName() {
        return this.mBase.getBasePackageName();
    }

    @Override // android.content.Context
    public File getCacheDir() {
        return this.mBase.getCacheDir();
    }

    @Override // android.content.Context
    public ClassLoader getClassLoader() {
        return this.mBase.getClassLoader();
    }

    @Override // android.content.Context
    public File getCodeCacheDir() {
        return this.mBase.getCodeCacheDir();
    }

    @Override // android.content.Context
    public ContentResolver getContentResolver() {
        return this.mBase.getContentResolver();
    }

    @Override // android.content.Context
    public File getDataDir() {
        return this.mBase.getDataDir();
    }

    @Override // android.content.Context
    public File getDatabasePath(String str) {
        return this.mBase.getDatabasePath(str);
    }

    @Override // android.content.Context
    public File getDir(String str, int i2) {
        return this.mBase.getDir(str, i2);
    }

    @Override // android.content.Context
    public Display getDisplay() {
        return this.mBase.getDisplay();
    }

    @Override // android.content.Context
    public DisplayAdjustments getDisplayAdjustments(int i2) {
        return this.mBase.getDisplayAdjustments(i2);
    }

    @Override // android.content.Context
    public File getExternalCacheDir() {
        return this.mBase.getExternalCacheDir();
    }

    @Override // android.content.Context
    public File[] getExternalCacheDirs() {
        return this.mBase.getExternalCacheDirs();
    }

    @Override // android.content.Context
    public File getExternalFilesDir(String str) {
        return this.mBase.getExternalFilesDir(str);
    }

    @Override // android.content.Context
    public File[] getExternalFilesDirs(String str) {
        return this.mBase.getExternalFilesDirs(str);
    }

    @Override // android.content.Context
    public File[] getExternalMediaDirs() {
        return this.mBase.getExternalMediaDirs();
    }

    @Override // android.content.Context
    public File getFileStreamPath(String str) {
        return this.mBase.getFileStreamPath(str);
    }

    @Override // android.content.Context
    public File getFilesDir() {
        return this.mBase.getFilesDir();
    }

    @Override // android.content.Context
    public IApplicationThread getIApplicationThread() {
        return this.mBase.getIApplicationThread();
    }

    @Override // android.content.Context
    public Looper getMainLooper() {
        return this.mBase.getMainLooper();
    }

    @Override // android.content.Context
    public Handler getMainThreadHandler() {
        return this.mBase.getMainThreadHandler();
    }

    @Override // android.content.Context
    public int getNextAutofillId() {
        return this.mBase.getNextAutofillId();
    }

    @Override // android.content.Context
    public File getNoBackupFilesDir() {
        return this.mBase.getNoBackupFilesDir();
    }

    @Override // android.content.Context
    public File getObbDir() {
        return this.mBase.getObbDir();
    }

    @Override // android.content.Context
    public File[] getObbDirs() {
        return this.mBase.getObbDirs();
    }

    @Override // android.content.Context
    public String getOpPackageName() {
        return this.mBase.getOpPackageName();
    }

    @Override // android.content.Context
    public String getPackageCodePath() {
        return this.mBase.getPackageCodePath();
    }

    @Override // android.content.Context
    public PackageManager getPackageManager() {
        return this.mBase.getPackageManager();
    }

    @Override // android.content.Context
    public String getPackageName() {
        return this.mBase.getPackageName();
    }

    @Override // android.content.Context
    public String getPackageResourcePath() {
        return this.mBase.getPackageResourcePath();
    }

    @Override // android.content.Context
    public File getPreloadsFileCache() {
        return this.mBase.getPreloadsFileCache();
    }

    @Override // android.content.Context
    public Resources getResources() {
        return this.mBase.getResources();
    }

    @Override // android.content.Context
    public IServiceConnection getServiceDispatcher(ServiceConnection serviceConnection, Handler handler, int i2) {
        return this.mBase.getServiceDispatcher(serviceConnection, handler, i2);
    }

    @Override // android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i2) {
        return this.mBase.getSharedPreferences(str, i2);
    }

    @Override // android.content.Context
    public File getSharedPreferencesPath(String str) {
        return this.mBase.getSharedPreferencesPath(str);
    }

    @Override // android.content.Context
    public Object getSystemService(String str) {
        return this.mBase.getSystemService(str);
    }

    @Override // android.content.Context
    public String getSystemServiceName(Class<?> cls) {
        return this.mBase.getSystemServiceName(cls);
    }

    @Override // android.content.Context
    public Resources.Theme getTheme() {
        return this.mBase.getTheme();
    }

    @Override // android.content.Context
    public int getThemeResId() {
        return this.mBase.getThemeResId();
    }

    @Override // android.content.Context
    public int getUserId() {
        return this.mBase.getUserId();
    }

    @Override // android.content.Context
    @Deprecated
    public Drawable getWallpaper() {
        return this.mBase.getWallpaper();
    }

    @Override // android.content.Context
    @Deprecated
    public int getWallpaperDesiredMinimumHeight() {
        return this.mBase.getWallpaperDesiredMinimumHeight();
    }

    @Override // android.content.Context
    @Deprecated
    public int getWallpaperDesiredMinimumWidth() {
        return this.mBase.getWallpaperDesiredMinimumWidth();
    }

    @Override // android.content.Context
    public void grantUriPermission(String str, Uri uri, int i2) {
        this.mBase.grantUriPermission(str, uri, i2);
    }

    @Override // android.content.Context
    public boolean isCredentialProtectedStorage() {
        return this.mBase.isCredentialProtectedStorage();
    }

    @Override // android.content.Context
    public boolean isDeviceProtectedStorage() {
        return this.mBase.isDeviceProtectedStorage();
    }

    @Override // android.content.Context
    public boolean isRestricted() {
        return this.mBase.isRestricted();
    }

    @Override // android.content.Context
    public boolean moveDatabaseFrom(Context context, String str) {
        return this.mBase.moveDatabaseFrom(context, str);
    }

    @Override // android.content.Context
    public boolean moveSharedPreferencesFrom(Context context, String str) {
        return this.mBase.moveSharedPreferencesFrom(context, str);
    }

    @Override // android.content.Context
    public FileInputStream openFileInput(String str) {
        return this.mBase.openFileInput(str);
    }

    @Override // android.content.Context
    public FileOutputStream openFileOutput(String str, int i2) {
        return this.mBase.openFileOutput(str, i2);
    }

    @Override // android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory) {
        return this.mBase.openOrCreateDatabase(str, i2, cursorFactory);
    }

    @Override // android.content.Context
    @Deprecated
    public Drawable peekWallpaper() {
        return this.mBase.peekWallpaper();
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return this.mBase.registerReceiver(broadcastReceiver, intentFilter);
    }

    @Override // android.content.Context
    public Intent registerReceiverAsUser(BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return this.mBase.registerReceiverAsUser(broadcastReceiver, userHandle, intentFilter, str, handler);
    }

    @Override // android.content.Context
    public void reloadSharedPreferences() {
        this.mBase.reloadSharedPreferences();
    }

    @Override // android.content.Context
    @Deprecated
    public void removeStickyBroadcast(Intent intent) {
        this.mBase.removeStickyBroadcast(intent);
    }

    @Override // android.content.Context
    @Deprecated
    public void removeStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.mBase.removeStickyBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public void revokeUriPermission(Uri uri, int i2) {
        this.mBase.revokeUriPermission(uri, i2);
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent) {
        this.mBase.sendBroadcast(intent);
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.mBase.sendBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public void sendBroadcastMultiplePermissions(Intent intent, String[] strArr) {
        this.mBase.sendBroadcastMultiplePermissions(intent, strArr);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str) {
        this.mBase.sendOrderedBroadcast(intent, str);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle) {
        this.mBase.sendOrderedBroadcastAsUser(intent, userHandle, str, broadcastReceiver, handler, i2, str2, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcast(Intent intent) {
        this.mBase.sendStickyBroadcast(intent);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        this.mBase.sendStickyBroadcastAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyOrderedBroadcast(Intent intent, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str, Bundle bundle) {
        this.mBase.sendStickyOrderedBroadcast(intent, broadcastReceiver, handler, i2, str, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str, Bundle bundle) {
        this.mBase.sendStickyOrderedBroadcastAsUser(intent, userHandle, broadcastReceiver, handler, i2, str, bundle);
    }

    @Override // android.content.Context
    public void setAutofillClient(AutofillManager.AutofillClient autofillClient) {
        this.mBase.setAutofillClient(autofillClient);
    }

    @Override // android.content.Context
    public void setTheme(int i2) {
        this.mBase.setTheme(i2);
    }

    @Override // android.content.Context
    @Deprecated
    public void setWallpaper(Bitmap bitmap) {
        this.mBase.setWallpaper(bitmap);
    }

    @Override // android.content.Context
    public void startActivities(Intent[] intentArr) {
        this.mBase.startActivities(intentArr);
    }

    @Override // android.content.Context
    public void startActivitiesAsUser(Intent[] intentArr, Bundle bundle, UserHandle userHandle) {
        this.mBase.startActivitiesAsUser(intentArr, bundle, userHandle);
    }

    @Override // android.content.Context
    public void startActivity(Intent intent) {
        this.mBase.startActivity(intent);
    }

    @Override // android.content.Context
    public void startActivityAsUser(Intent intent, UserHandle userHandle) {
        this.mBase.startActivityAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public void startActivityForResult(String str, Intent intent, int i2, Bundle bundle) {
        this.mBase.startActivityForResult(str, intent, i2, bundle);
    }

    @Override // android.content.Context
    public ComponentName startForegroundService(Intent intent) {
        return this.mBase.startForegroundService(intent);
    }

    @Override // android.content.Context
    public ComponentName startForegroundServiceAsUser(Intent intent, UserHandle userHandle) {
        return this.mBase.startForegroundServiceAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        return this.mBase.startInstrumentation(componentName, str, bundle);
    }

    @Override // android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4) {
        this.mBase.startIntentSender(intentSender, intent, i2, i3, i4);
    }

    @Override // android.content.Context
    public ComponentName startService(Intent intent) {
        return this.mBase.startService(intent);
    }

    @Override // android.content.Context
    public ComponentName startServiceAsUser(Intent intent, UserHandle userHandle) {
        return this.mBase.startServiceAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public boolean stopService(Intent intent) {
        return this.mBase.stopService(intent);
    }

    @Override // android.content.Context
    public boolean stopServiceAsUser(Intent intent, UserHandle userHandle) {
        return this.mBase.stopServiceAsUser(intent, userHandle);
    }

    @Override // android.content.Context
    public void unbindService(ServiceConnection serviceConnection) {
        this.mBase.unbindService(serviceConnection);
    }

    @Override // android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        this.mBase.unregisterReceiver(broadcastReceiver);
    }

    @Override // android.content.Context
    public void updateDisplay(int i2) {
        this.mBase.updateDisplay(i2);
    }

    @Override // android.content.Context
    public boolean bindServiceAsUser(Intent intent, ServiceConnection serviceConnection, int i2, Handler handler, UserHandle userHandle) {
        return this.mBase.bindServiceAsUser(intent, serviceConnection, i2, handler, userHandle);
    }

    @Override // android.content.Context
    public int checkPermission(String str, int i2, int i3, IBinder iBinder) {
        return this.mBase.checkPermission(str, i2, i3, iBinder);
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, int i2, int i3, int i4, IBinder iBinder) {
        return this.mBase.checkUriPermission(uri, i2, i3, i4, iBinder);
    }

    @Override // android.content.Context
    public void enforceUriPermission(Uri uri, String str, String str2, int i2, int i3, int i4, String str3) {
        this.mBase.enforceUriPermission(uri, str, str2, i2, i3, i4, str3);
    }

    @Override // android.content.Context
    public SharedPreferences getSharedPreferences(File file, int i2) {
        return this.mBase.getSharedPreferences(file, i2);
    }

    @Override // android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return this.mBase.openOrCreateDatabase(str, i2, cursorFactory, databaseErrorHandler);
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i2) {
        return this.mBase.registerReceiver(broadcastReceiver, intentFilter, i2);
    }

    @Override // android.content.Context
    public void revokeUriPermission(String str, Uri uri, int i2) {
        this.mBase.revokeUriPermission(str, uri, i2);
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str) {
        this.mBase.sendBroadcast(intent, str);
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str) {
        this.mBase.sendBroadcastAsUser(intent, userHandle, str);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle) {
        this.mBase.sendOrderedBroadcast(intent, str, broadcastReceiver, handler, i2, str2, bundle);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle) {
        this.mBase.sendOrderedBroadcastAsUser(intent, userHandle, str, i2, broadcastReceiver, handler, i3, str2, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle userHandle, Bundle bundle) {
        this.mBase.sendStickyBroadcastAsUser(intent, userHandle, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void setWallpaper(InputStream inputStream) {
        this.mBase.setWallpaper(inputStream);
    }

    @Override // android.content.Context
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        this.mBase.startActivities(intentArr, bundle);
    }

    @Override // android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        this.mBase.startActivity(intent, bundle);
    }

    @Override // android.content.Context
    public void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) {
        this.mBase.startActivityAsUser(intent, bundle, userHandle);
    }

    @Override // android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.mBase.startIntentSender(intentSender, intent, i2, i3, i4, bundle);
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, String str, String str2, int i2, int i3, int i4) {
        return this.mBase.checkUriPermission(uri, str, str2, i2, i3, i4);
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return this.mBase.registerReceiver(broadcastReceiver, intentFilter, str, handler);
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str, Bundle bundle) {
        this.mBase.sendBroadcast(intent, str, bundle);
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str, Bundle bundle) {
        this.mBase.sendBroadcastAsUser(intent, userHandle, str, bundle);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, Bundle bundle, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle2) {
        this.mBase.sendOrderedBroadcast(intent, str, bundle, broadcastReceiver, handler, i2, str2, bundle2);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2, Bundle bundle, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle2) {
        this.mBase.sendOrderedBroadcastAsUser(intent, userHandle, str, i2, bundle, broadcastReceiver, handler, i3, str2, bundle2);
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2) {
        return this.mBase.registerReceiver(broadcastReceiver, intentFilter, str, handler, i2);
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str, int i2) {
        this.mBase.sendBroadcast(intent, str, i2);
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2) {
        this.mBase.sendBroadcastAsUser(intent, userHandle, str, i2);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, int i2, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle) {
        this.mBase.sendOrderedBroadcast(intent, str, i2, broadcastReceiver, handler, i3, str2, bundle);
    }
}
