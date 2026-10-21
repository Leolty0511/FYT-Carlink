package android.app;

import android.content.Loader;
import android.os.Bundle;
import android.util.DebugUtils;
import android.util.Log;
import android.util.SparseArray;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
class LoaderManagerImpl extends LoaderManager {
    public static boolean DEBUG = false;
    public static final String TAG = "LoaderManager";
    public Activity mActivity;
    public boolean mCreatingLoader;
    public boolean mRetaining;
    public boolean mRetainingStarted;
    public boolean mStarted;
    public final String mWho;
    public final SparseArray<LoaderInfo> mLoaders = new SparseArray<>(0);
    public final SparseArray<LoaderInfo> mInactiveLoaders = new SparseArray<>(0);

    public final class LoaderInfo implements Loader.OnLoadCompleteListener<Object>, Loader.OnLoadCanceledListener<Object> {
        public final Bundle mArgs;
        public LoaderManager.LoaderCallbacks<Object> mCallbacks;
        public Object mData;
        public boolean mDeliveredData;
        public boolean mDestroyed;
        public boolean mHaveData;
        public final int mId;
        public boolean mListenerRegistered;
        public Loader<Object> mLoader;
        public LoaderInfo mPendingLoader;
        public boolean mReportNextStart;
        public boolean mRetaining;
        public boolean mRetainingStarted;
        public boolean mStarted;

        public LoaderInfo(int i2, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
            this.mId = i2;
            this.mArgs = bundle;
            this.mCallbacks = loaderCallbacks;
        }

        public void callOnLoadFinished(Loader<Object> loader, Object obj) {
            if (this.mCallbacks != null) {
                String str = null;
                Activity activity = LoaderManagerImpl.this.mActivity;
                if (activity != null) {
                    FragmentManagerImpl fragmentManagerImpl = activity.mFragments;
                    String str2 = fragmentManagerImpl.mNoTransactionsBecause;
                    fragmentManagerImpl.mNoTransactionsBecause = "onLoadFinished";
                    str = str2;
                }
                try {
                    if (LoaderManagerImpl.DEBUG) {
                        Log.v(LoaderManagerImpl.TAG, "  onLoadFinished in " + loader + ": " + loader.dataToString(obj));
                    }
                    this.mCallbacks.onLoadFinished(loader, obj);
                    Activity activity2 = LoaderManagerImpl.this.mActivity;
                    if (activity2 != null) {
                        activity2.mFragments.mNoTransactionsBecause = str;
                    }
                    this.mDeliveredData = true;
                } catch (Throwable th) {
                    Activity activity3 = LoaderManagerImpl.this.mActivity;
                    if (activity3 != null) {
                        activity3.mFragments.mNoTransactionsBecause = str;
                    }
                    throw th;
                }
            }
        }

        public void cancel() {
            Loader<Object> loader;
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Canceling: " + this);
            }
            if (!this.mStarted || (loader = this.mLoader) == null || !this.mListenerRegistered || loader.cancelLoad()) {
                return;
            }
            onLoadCanceled(this.mLoader);
        }

        public void destroy() {
            String str;
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Destroying: " + this);
            }
            this.mDestroyed = true;
            boolean z2 = this.mDeliveredData;
            this.mDeliveredData = false;
            if (this.mCallbacks != null && this.mLoader != null && this.mHaveData && z2) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Reseting: " + this);
                }
                Activity activity = LoaderManagerImpl.this.mActivity;
                if (activity != null) {
                    FragmentManagerImpl fragmentManagerImpl = activity.mFragments;
                    str = fragmentManagerImpl.mNoTransactionsBecause;
                    fragmentManagerImpl.mNoTransactionsBecause = "onLoaderReset";
                } else {
                    str = null;
                }
                try {
                    this.mCallbacks.onLoaderReset(this.mLoader);
                    Activity activity2 = LoaderManagerImpl.this.mActivity;
                    if (activity2 != null) {
                        activity2.mFragments.mNoTransactionsBecause = str;
                    }
                } catch (Throwable th) {
                    Activity activity3 = LoaderManagerImpl.this.mActivity;
                    if (activity3 != null) {
                        activity3.mFragments.mNoTransactionsBecause = str;
                    }
                    throw th;
                }
            }
            this.mCallbacks = null;
            this.mData = null;
            this.mHaveData = false;
            Loader<Object> loader = this.mLoader;
            if (loader != null) {
                if (this.mListenerRegistered) {
                    this.mListenerRegistered = false;
                    loader.unregisterListener(this);
                    this.mLoader.unregisterOnLoadCanceledListener(this);
                }
                this.mLoader.reset();
            }
            LoaderInfo loaderInfo = this.mPendingLoader;
            if (loaderInfo != null) {
                loaderInfo.destroy();
            }
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.mId);
            printWriter.print(" mArgs=");
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.mCallbacks);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.mLoader);
            Loader<Object> loader = this.mLoader;
            if (loader != null) {
                loader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.mHaveData || this.mDeliveredData) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.mHaveData);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.mDeliveredData);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.mData);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.mReportNextStart);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.mDestroyed);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.mRetaining);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.mRetainingStarted);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.mListenerRegistered);
            if (this.mPendingLoader != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.mPendingLoader);
                printWriter.println(":");
                this.mPendingLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }

        public void finishRetain() {
            if (this.mRetaining) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Finished Retaining: " + this);
                }
                this.mRetaining = false;
                boolean z2 = this.mStarted;
                if (z2 != this.mRetainingStarted && !z2) {
                    stop();
                }
            }
            if (this.mStarted && this.mHaveData && !this.mReportNextStart) {
                callOnLoadFinished(this.mLoader, this.mData);
            }
        }

        @Override // android.content.Loader.OnLoadCanceledListener
        public void onLoadCanceled(Loader<Object> loader) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadCanceled: " + this);
            }
            if (this.mDestroyed) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load canceled -- destroyed");
                    return;
                }
                return;
            }
            if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load canceled -- not active");
                    return;
                }
                return;
            }
            LoaderInfo loaderInfo = this.mPendingLoader;
            if (loaderInfo != null) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Switching to pending loader: " + loaderInfo);
                }
                this.mPendingLoader = null;
                LoaderManagerImpl.this.mLoaders.put(this.mId, null);
                destroy();
                LoaderManagerImpl.this.installLoader(loaderInfo);
            }
        }

        @Override // android.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(Loader<Object> loader, Object obj) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadComplete: " + this);
            }
            if (this.mDestroyed) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load complete -- destroyed");
                    return;
                }
                return;
            }
            if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load complete -- not active");
                    return;
                }
                return;
            }
            LoaderInfo loaderInfo = this.mPendingLoader;
            if (loaderInfo != null) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Switching to pending loader: " + loaderInfo);
                }
                this.mPendingLoader = null;
                LoaderManagerImpl.this.mLoaders.put(this.mId, null);
                destroy();
                LoaderManagerImpl.this.installLoader(loaderInfo);
                return;
            }
            if (this.mData != obj || !this.mHaveData) {
                this.mData = obj;
                this.mHaveData = true;
                if (this.mStarted) {
                    callOnLoadFinished(loader, obj);
                }
            }
            LoaderInfo loaderInfo2 = LoaderManagerImpl.this.mInactiveLoaders.get(this.mId);
            if (loaderInfo2 != null && loaderInfo2 != this) {
                loaderInfo2.mDeliveredData = false;
                loaderInfo2.destroy();
                LoaderManagerImpl.this.mInactiveLoaders.remove(this.mId);
            }
            LoaderManagerImpl loaderManagerImpl = LoaderManagerImpl.this;
            if (loaderManagerImpl.mActivity == null || loaderManagerImpl.hasRunningLoaders()) {
                return;
            }
            LoaderManagerImpl.this.mActivity.mFragments.startPendingDeferredFragments();
        }

        public void reportStart() {
            if (this.mStarted && this.mReportNextStart) {
                this.mReportNextStart = false;
                if (this.mHaveData) {
                    callOnLoadFinished(this.mLoader, this.mData);
                }
            }
        }

        public void retain() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Retaining: " + this);
            }
            this.mRetaining = true;
            this.mRetainingStarted = this.mStarted;
            this.mStarted = false;
            this.mCallbacks = null;
        }

        public void start() {
            LoaderManager.LoaderCallbacks<Object> loaderCallbacks;
            if (this.mRetaining && this.mRetainingStarted) {
                this.mStarted = true;
                return;
            }
            if (this.mStarted) {
                return;
            }
            this.mStarted = true;
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Starting: " + this);
            }
            if (this.mLoader == null && (loaderCallbacks = this.mCallbacks) != null) {
                this.mLoader = loaderCallbacks.onCreateLoader(this.mId, this.mArgs);
            }
            Loader<Object> loader = this.mLoader;
            if (loader != null) {
                if (loader.getClass().isMemberClass() && !Modifier.isStatic(this.mLoader.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
                }
                if (!this.mListenerRegistered) {
                    this.mLoader.registerListener(this.mId, this);
                    this.mLoader.registerOnLoadCanceledListener(this);
                    this.mListenerRegistered = true;
                }
                this.mLoader.startLoading();
            }
        }

        public void stop() {
            Loader<Object> loader;
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Stopping: " + this);
            }
            this.mStarted = false;
            if (this.mRetaining || (loader = this.mLoader) == null || !this.mListenerRegistered) {
                return;
            }
            this.mListenerRegistered = false;
            loader.unregisterListener(this);
            this.mLoader.unregisterOnLoadCanceledListener(this);
            this.mLoader.stopLoading();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    public LoaderManagerImpl(String str, Activity activity, boolean z2) {
        this.mWho = str;
        this.mActivity = activity;
        this.mStarted = z2;
    }

    private LoaderInfo createAndInstallLoader(int i2, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        try {
            this.mCreatingLoader = true;
            LoaderInfo loaderInfoCreateLoader = createLoader(i2, bundle, loaderCallbacks);
            installLoader(loaderInfoCreateLoader);
            return loaderInfoCreateLoader;
        } finally {
            this.mCreatingLoader = false;
        }
    }

    private LoaderInfo createLoader(int i2, Bundle bundle, LoaderManager.LoaderCallbacks<Object> loaderCallbacks) {
        LoaderInfo loaderInfo = new LoaderInfo(i2, bundle, loaderCallbacks);
        loaderInfo.mLoader = loaderCallbacks.onCreateLoader(i2, bundle);
        return loaderInfo;
    }

    @Override // android.app.LoaderManager
    public void destroyLoader(int i2) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + this + " of " + i2);
        }
        int iIndexOfKey = this.mLoaders.indexOfKey(i2);
        if (iIndexOfKey >= 0) {
            LoaderInfo loaderInfoValueAt = this.mLoaders.valueAt(iIndexOfKey);
            this.mLoaders.removeAt(iIndexOfKey);
            loaderInfoValueAt.destroy();
        }
        int iIndexOfKey2 = this.mInactiveLoaders.indexOfKey(i2);
        if (iIndexOfKey2 >= 0) {
            LoaderInfo loaderInfoValueAt2 = this.mInactiveLoaders.valueAt(iIndexOfKey2);
            this.mInactiveLoaders.removeAt(iIndexOfKey2);
            loaderInfoValueAt2.destroy();
        }
        if (this.mActivity == null || hasRunningLoaders()) {
            return;
        }
        this.mActivity.mFragments.startPendingDeferredFragments();
    }

    public void doDestroy() {
        if (!this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Destroying Active in " + this);
            }
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).destroy();
            }
            this.mLoaders.clear();
        }
        if (DEBUG) {
            Log.v(TAG, "Destroying Inactive in " + this);
        }
        for (int size2 = this.mInactiveLoaders.size() - 1; size2 >= 0; size2--) {
            this.mInactiveLoaders.valueAt(size2).destroy();
        }
        this.mInactiveLoaders.clear();
    }

    public void doReportNextStart() {
        for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
            this.mLoaders.valueAt(size).mReportNextStart = true;
        }
    }

    public void doReportStart() {
        for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
            this.mLoaders.valueAt(size).reportStart();
        }
    }

    public void doRetain() {
        if (DEBUG) {
            Log.v(TAG, "Retaining in " + this);
        }
        if (this.mStarted) {
            this.mRetaining = true;
            this.mStarted = false;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).retain();
            }
            return;
        }
        RuntimeException runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w(TAG, "Called doRetain when not started: " + this, runtimeException);
    }

    public void doStart() {
        if (DEBUG) {
            Log.v(TAG, "Starting in " + this);
        }
        if (!this.mStarted) {
            this.mStarted = true;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).start();
            }
            return;
        }
        RuntimeException runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w(TAG, "Called doStart when already started: " + this, runtimeException);
    }

    public void doStop() {
        if (DEBUG) {
            Log.v(TAG, "Stopping in " + this);
        }
        if (this.mStarted) {
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).stop();
            }
            this.mStarted = false;
            return;
        }
        RuntimeException runtimeException = new RuntimeException("here");
        runtimeException.fillInStackTrace();
        Log.w(TAG, "Called doStop when not started: " + this, runtimeException);
    }

    @Override // android.app.LoaderManager
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i2 = 0; i2 < this.mLoaders.size(); i2++) {
                LoaderInfo loaderInfoValueAt = this.mLoaders.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.keyAt(i2));
                printWriter.print(": ");
                printWriter.println(loaderInfoValueAt.toString());
                loaderInfoValueAt.dump(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.mInactiveLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i3 = 0; i3 < this.mInactiveLoaders.size(); i3++) {
                LoaderInfo loaderInfoValueAt2 = this.mInactiveLoaders.valueAt(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mInactiveLoaders.keyAt(i3));
                printWriter.print(": ");
                printWriter.println(loaderInfoValueAt2.toString());
                loaderInfoValueAt2.dump(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    public void finishRetain() {
        if (this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Finished Retaining in " + this);
            }
            this.mRetaining = false;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).finishRetain();
            }
        }
    }

    @Override // android.app.LoaderManager
    public <D> Loader<D> getLoader(int i2) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = this.mLoaders.get(i2);
        if (loaderInfo == null) {
            return null;
        }
        LoaderInfo loaderInfo2 = loaderInfo.mPendingLoader;
        return loaderInfo2 != null ? (Loader<D>) loaderInfo2.mLoader : (Loader<D>) loaderInfo.mLoader;
    }

    public boolean hasRunningLoaders() {
        int size = this.mLoaders.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            LoaderInfo loaderInfoValueAt = this.mLoaders.valueAt(i2);
            z2 |= loaderInfoValueAt.mStarted && !loaderInfoValueAt.mDeliveredData;
        }
        return z2;
    }

    @Override // android.app.LoaderManager
    public <D> Loader<D> initLoader(int i2, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfoCreateAndInstallLoader = this.mLoaders.get(i2);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfoCreateAndInstallLoader == null) {
            loaderInfoCreateAndInstallLoader = createAndInstallLoader(i2, bundle, loaderCallbacks);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderInfoCreateAndInstallLoader);
            }
        } else {
            if (DEBUG) {
                Log.v(TAG, "  Re-using existing loader " + loaderInfoCreateAndInstallLoader);
            }
            loaderInfoCreateAndInstallLoader.mCallbacks = loaderCallbacks;
        }
        if (loaderInfoCreateAndInstallLoader.mHaveData && this.mStarted) {
            loaderInfoCreateAndInstallLoader.callOnLoadFinished(loaderInfoCreateAndInstallLoader.mLoader, loaderInfoCreateAndInstallLoader.mData);
        }
        return (Loader<D>) loaderInfoCreateAndInstallLoader.mLoader;
    }

    public void installLoader(LoaderInfo loaderInfo) {
        this.mLoaders.put(loaderInfo.mId, loaderInfo);
        if (this.mStarted) {
            loaderInfo.start();
        }
    }

    @Override // android.app.LoaderManager
    public <D> Loader<D> restartLoader(int i2, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = this.mLoaders.get(i2);
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfo != null) {
            LoaderInfo loaderInfo2 = this.mInactiveLoaders.get(i2);
            if (loaderInfo2 == null) {
                if (DEBUG) {
                    Log.v(TAG, "  Making last loader inactive: " + loaderInfo);
                }
                loaderInfo.mLoader.abandon();
                this.mInactiveLoaders.put(i2, loaderInfo);
            } else if (loaderInfo.mHaveData) {
                if (DEBUG) {
                    Log.v(TAG, "  Removing last inactive loader: " + loaderInfo);
                }
                loaderInfo2.mDeliveredData = false;
                loaderInfo2.destroy();
                loaderInfo.mLoader.abandon();
                this.mInactiveLoaders.put(i2, loaderInfo);
            } else {
                if (loaderInfo.mStarted) {
                    if (DEBUG) {
                        Log.v(TAG, "  Current loader is running; attempting to cancel");
                    }
                    loaderInfo.cancel();
                    if (loaderInfo.mPendingLoader != null) {
                        if (DEBUG) {
                            Log.v(TAG, "  Removing pending loader: " + loaderInfo.mPendingLoader);
                        }
                        loaderInfo.mPendingLoader.destroy();
                        loaderInfo.mPendingLoader = null;
                    }
                    if (DEBUG) {
                        Log.v(TAG, "  Enqueuing as new pending loader");
                    }
                    LoaderInfo loaderInfoCreateLoader = createLoader(i2, bundle, loaderCallbacks);
                    loaderInfo.mPendingLoader = loaderInfoCreateLoader;
                    return (Loader<D>) loaderInfoCreateLoader.mLoader;
                }
                if (DEBUG) {
                    Log.v(TAG, "  Current loader is stopped; replacing");
                }
                this.mLoaders.put(i2, null);
                loaderInfo.destroy();
            }
        }
        return (Loader<D>) createAndInstallLoader(i2, bundle, loaderCallbacks).mLoader;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mActivity, sb);
        sb.append("}}");
        return sb.toString();
    }

    public void updateActivity(Activity activity) {
        this.mActivity = activity;
    }
}
