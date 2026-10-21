package android.preference;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.provider.SettingsStringUtil;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceManager {
    public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";
    public static final String METADATA_KEY_PREFERENCES = "android.preference";
    private static final int STORAGE_CREDENTIAL_PROTECTED = 2;
    private static final int STORAGE_DEFAULT = 0;
    private static final int STORAGE_DEVICE_PROTECTED = 1;
    private static final String TAG = "PreferenceManager";
    private Activity mActivity;
    private List<OnActivityDestroyListener> mActivityDestroyListeners;
    private List<OnActivityResultListener> mActivityResultListeners;
    private List<OnActivityStopListener> mActivityStopListeners;
    private Context mContext;
    private SharedPreferences.Editor mEditor;
    private PreferenceFragment mFragment;
    private int mNextRequestCode;
    private boolean mNoCommit;
    private OnPreferenceTreeClickListener mOnPreferenceTreeClickListener;
    private PreferenceDataStore mPreferenceDataStore;
    private PreferenceScreen mPreferenceScreen;
    private List<DialogInterface> mPreferencesScreens;
    private SharedPreferences mSharedPreferences;
    private int mSharedPreferencesMode;
    private String mSharedPreferencesName;
    private long mNextId = 0;
    private int mStorage = 0;

    public interface OnActivityDestroyListener {
        void onActivityDestroy();
    }

    public interface OnActivityResultListener {
        boolean onActivityResult(int i2, int i3, Intent intent);
    }

    public interface OnActivityStopListener {
        void onActivityStop();
    }

    public interface OnPreferenceTreeClickListener {
        boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference);
    }

    public PreferenceManager(Activity activity, int i2) {
        this.mActivity = activity;
        this.mNextRequestCode = i2;
        init(activity);
    }

    private void dismissAllScreens() {
        synchronized (this) {
            if (this.mPreferencesScreens == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.mPreferencesScreens);
            this.mPreferencesScreens.clear();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((DialogInterface) arrayList.get(size)).dismiss();
            }
        }
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        return context.getSharedPreferences(getDefaultSharedPreferencesName(context), getDefaultSharedPreferencesMode());
    }

    private static int getDefaultSharedPreferencesMode() {
        return 0;
    }

    public static String getDefaultSharedPreferencesName(Context context) {
        return context.getPackageName() + "_preferences";
    }

    private void init(Context context) {
        this.mContext = context;
        setSharedPreferencesName(getDefaultSharedPreferencesName(context));
    }

    private List<ResolveInfo> queryIntentActivities(Intent intent) {
        return this.mContext.getPackageManager().queryIntentActivities(intent, 128);
    }

    public static void setDefaultValues(Context context, int i2, boolean z2) {
        setDefaultValues(context, getDefaultSharedPreferencesName(context), getDefaultSharedPreferencesMode(), i2, z2);
    }

    private void setNoCommit(boolean z2) {
        SharedPreferences.Editor editor;
        if (!z2 && (editor = this.mEditor) != null) {
            try {
                editor.apply();
            } catch (AbstractMethodError unused) {
                this.mEditor.commit();
            }
        }
        this.mNoCommit = z2;
    }

    public void addPreferencesScreen(DialogInterface dialogInterface) {
        synchronized (this) {
            if (this.mPreferencesScreens == null) {
                this.mPreferencesScreens = new ArrayList();
            }
            this.mPreferencesScreens.add(dialogInterface);
        }
    }

    public PreferenceScreen createPreferenceScreen(Context context) {
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.onAttachedToHierarchy(this);
        return preferenceScreen;
    }

    public void dispatchActivityDestroy() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = this.mActivityDestroyListeners != null ? new ArrayList(this.mActivityDestroyListeners) : null;
        }
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((OnActivityDestroyListener) arrayList.get(i2)).onActivityDestroy();
            }
        }
        dismissAllScreens();
    }

    public void dispatchActivityResult(int i2, int i3, Intent intent) {
        synchronized (this) {
            if (this.mActivityResultListeners == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.mActivityResultListeners);
            int size = arrayList.size();
            for (int i4 = 0; i4 < size && !((OnActivityResultListener) arrayList.get(i4)).onActivityResult(i2, i3, intent); i4++) {
            }
        }
    }

    public void dispatchActivityStop() {
        synchronized (this) {
            if (this.mActivityStopListeners == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.mActivityStopListeners);
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((OnActivityStopListener) arrayList.get(i2)).onActivityStop();
            }
        }
    }

    public void dispatchNewIntent(Intent intent) {
        dismissAllScreens();
    }

    public Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.mPreferenceScreen;
        if (preferenceScreen == null) {
            return null;
        }
        return preferenceScreen.findPreference(charSequence);
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public Context getContext() {
        return this.mContext;
    }

    public SharedPreferences.Editor getEditor() {
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (!this.mNoCommit) {
            return getSharedPreferences().edit();
        }
        if (this.mEditor == null) {
            this.mEditor = getSharedPreferences().edit();
        }
        return this.mEditor;
    }

    public PreferenceFragment getFragment() {
        return this.mFragment;
    }

    public long getNextId() {
        long j2;
        synchronized (this) {
            j2 = this.mNextId;
            this.mNextId = 1 + j2;
        }
        return j2;
    }

    public int getNextRequestCode() {
        int i2;
        synchronized (this) {
            i2 = this.mNextRequestCode;
            this.mNextRequestCode = i2 + 1;
        }
        return i2;
    }

    public OnPreferenceTreeClickListener getOnPreferenceTreeClickListener() {
        return this.mOnPreferenceTreeClickListener;
    }

    public PreferenceDataStore getPreferenceDataStore() {
        return this.mPreferenceDataStore;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceScreen;
    }

    public SharedPreferences getSharedPreferences() {
        Context contextCreateDeviceProtectedStorageContext;
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (this.mSharedPreferences == null) {
            int i2 = this.mStorage;
            if (i2 != 1) {
                contextCreateDeviceProtectedStorageContext = i2 != 2 ? this.mContext : this.mContext.createCredentialProtectedStorageContext();
            } else {
                contextCreateDeviceProtectedStorageContext = this.mContext.createDeviceProtectedStorageContext();
            }
            this.mSharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences(this.mSharedPreferencesName, this.mSharedPreferencesMode);
        }
        return this.mSharedPreferences;
    }

    public int getSharedPreferencesMode() {
        return this.mSharedPreferencesMode;
    }

    public String getSharedPreferencesName() {
        return this.mSharedPreferencesName;
    }

    public PreferenceScreen inflateFromIntent(Intent intent, PreferenceScreen preferenceScreen) {
        List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(intent);
        HashSet hashSet = new HashSet();
        for (int size = listQueryIntentActivities.size() - 1; size >= 0; size--) {
            ActivityInfo activityInfo = listQueryIntentActivities.get(size).activityInfo;
            Bundle bundle = activityInfo.metaData;
            if (bundle != null && bundle.containsKey(METADATA_KEY_PREFERENCES)) {
                String str = activityInfo.packageName + SettingsStringUtil.DELIMITER + activityInfo.metaData.getInt(METADATA_KEY_PREFERENCES);
                if (!hashSet.contains(str)) {
                    hashSet.add(str);
                    try {
                        Context contextCreatePackageContext = this.mContext.createPackageContext(activityInfo.packageName, 0);
                        PreferenceInflater preferenceInflater = new PreferenceInflater(contextCreatePackageContext, this);
                        XmlResourceParser xmlResourceParserLoadXmlMetaData = activityInfo.loadXmlMetaData(contextCreatePackageContext.getPackageManager(), METADATA_KEY_PREFERENCES);
                        preferenceScreen = (PreferenceScreen) preferenceInflater.inflate((XmlPullParser) xmlResourceParserLoadXmlMetaData, preferenceScreen, true);
                        xmlResourceParserLoadXmlMetaData.close();
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.w(TAG, "Could not create context for " + activityInfo.packageName + ": " + Log.getStackTraceString(e2));
                    }
                }
            }
        }
        preferenceScreen.onAttachedToHierarchy(this);
        return preferenceScreen;
    }

    public PreferenceScreen inflateFromResource(Context context, int i2, PreferenceScreen preferenceScreen) {
        setNoCommit(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new PreferenceInflater(context, this).inflate(i2, preferenceScreen, true);
        preferenceScreen2.onAttachedToHierarchy(this);
        setNoCommit(false);
        return preferenceScreen2;
    }

    public boolean isStorageCredentialProtected() {
        return this.mStorage == 2;
    }

    public boolean isStorageDefault() {
        return this.mStorage == 0;
    }

    public boolean isStorageDeviceProtected() {
        return this.mStorage == 1;
    }

    public void registerOnActivityDestroyListener(OnActivityDestroyListener onActivityDestroyListener) {
        synchronized (this) {
            if (this.mActivityDestroyListeners == null) {
                this.mActivityDestroyListeners = new ArrayList();
            }
            if (!this.mActivityDestroyListeners.contains(onActivityDestroyListener)) {
                this.mActivityDestroyListeners.add(onActivityDestroyListener);
            }
        }
    }

    public void registerOnActivityResultListener(OnActivityResultListener onActivityResultListener) {
        synchronized (this) {
            if (this.mActivityResultListeners == null) {
                this.mActivityResultListeners = new ArrayList();
            }
            if (!this.mActivityResultListeners.contains(onActivityResultListener)) {
                this.mActivityResultListeners.add(onActivityResultListener);
            }
        }
    }

    public void registerOnActivityStopListener(OnActivityStopListener onActivityStopListener) {
        synchronized (this) {
            if (this.mActivityStopListeners == null) {
                this.mActivityStopListeners = new ArrayList();
            }
            if (!this.mActivityStopListeners.contains(onActivityStopListener)) {
                this.mActivityStopListeners.add(onActivityStopListener);
            }
        }
    }

    public void removePreferencesScreen(DialogInterface dialogInterface) {
        synchronized (this) {
            List<DialogInterface> list = this.mPreferencesScreens;
            if (list == null) {
                return;
            }
            list.remove(dialogInterface);
        }
    }

    public void setFragment(PreferenceFragment preferenceFragment) {
        this.mFragment = preferenceFragment;
    }

    public void setOnPreferenceTreeClickListener(OnPreferenceTreeClickListener onPreferenceTreeClickListener) {
        this.mOnPreferenceTreeClickListener = onPreferenceTreeClickListener;
    }

    public void setPreferenceDataStore(PreferenceDataStore preferenceDataStore) {
        this.mPreferenceDataStore = preferenceDataStore;
    }

    public boolean setPreferences(PreferenceScreen preferenceScreen) {
        if (preferenceScreen == this.mPreferenceScreen) {
            return false;
        }
        this.mPreferenceScreen = preferenceScreen;
        return true;
    }

    public void setSharedPreferencesMode(int i2) {
        this.mSharedPreferencesMode = i2;
        this.mSharedPreferences = null;
    }

    public void setSharedPreferencesName(String str) {
        this.mSharedPreferencesName = str;
        this.mSharedPreferences = null;
    }

    public void setStorageCredentialProtected() {
        this.mStorage = 2;
        this.mSharedPreferences = null;
    }

    public void setStorageDefault() {
        this.mStorage = 0;
        this.mSharedPreferences = null;
    }

    public void setStorageDeviceProtected() {
        this.mStorage = 1;
        this.mSharedPreferences = null;
    }

    public boolean shouldCommit() {
        return !this.mNoCommit;
    }

    public void unregisterOnActivityDestroyListener(OnActivityDestroyListener onActivityDestroyListener) {
        synchronized (this) {
            List<OnActivityDestroyListener> list = this.mActivityDestroyListeners;
            if (list != null) {
                list.remove(onActivityDestroyListener);
            }
        }
    }

    public void unregisterOnActivityResultListener(OnActivityResultListener onActivityResultListener) {
        synchronized (this) {
            List<OnActivityResultListener> list = this.mActivityResultListeners;
            if (list != null) {
                list.remove(onActivityResultListener);
            }
        }
    }

    public void unregisterOnActivityStopListener(OnActivityStopListener onActivityStopListener) {
        synchronized (this) {
            List<OnActivityStopListener> list = this.mActivityStopListeners;
            if (list != null) {
                list.remove(onActivityStopListener);
            }
        }
    }

    public static void setDefaultValues(Context context, String str, int i2, int i3, boolean z2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(KEY_HAS_SET_DEFAULT_VALUES, 0);
        if (z2 || !sharedPreferences.getBoolean(KEY_HAS_SET_DEFAULT_VALUES, false)) {
            PreferenceManager preferenceManager = new PreferenceManager(context);
            preferenceManager.setSharedPreferencesName(str);
            preferenceManager.setSharedPreferencesMode(i2);
            preferenceManager.inflateFromResource(context, i3, null);
            SharedPreferences.Editor editorPutBoolean = sharedPreferences.edit().putBoolean(KEY_HAS_SET_DEFAULT_VALUES, true);
            try {
                editorPutBoolean.apply();
            } catch (AbstractMethodError unused) {
                editorPutBoolean.commit();
            }
        }
    }

    public PreferenceManager(Context context) {
        init(context);
    }
}
