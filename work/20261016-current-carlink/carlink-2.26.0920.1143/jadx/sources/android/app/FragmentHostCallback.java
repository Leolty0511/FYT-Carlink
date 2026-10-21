package android.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.SettingsStringUtil;
import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentHostCallback<E> extends FragmentContainer {
    private final Activity mActivity;
    private ArrayMap<String, LoaderManager> mAllLoaderManagers;
    private boolean mCheckedForLoaderManager;
    final Context mContext;
    final FragmentManagerImpl mFragmentManager;
    private final Handler mHandler;
    private LoaderManagerImpl mLoaderManager;
    private boolean mLoadersStarted;
    private boolean mRetainLoaders;
    final int mWindowAnimations;

    public FragmentHostCallback(Context context, Handler handler, int i2) {
        this(context instanceof Activity ? (Activity) context : null, context, chooseHandler(context, handler), i2);
    }

    private static Handler chooseHandler(Context context, Handler handler) {
        return (handler == null && (context instanceof Activity)) ? ((Activity) context).mHandler : handler;
    }

    public void doLoaderDestroy() {
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl == null) {
            return;
        }
        loaderManagerImpl.doDestroy();
    }

    public void doLoaderRetain() {
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl == null) {
            return;
        }
        loaderManagerImpl.doRetain();
    }

    public void doLoaderStart() {
        if (this.mLoadersStarted) {
            return;
        }
        this.mLoadersStarted = true;
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl != null) {
            loaderManagerImpl.doStart();
        } else if (!this.mCheckedForLoaderManager) {
            this.mLoaderManager = getLoaderManager("(root)", true, false);
        }
        this.mCheckedForLoaderManager = true;
    }

    public void doLoaderStop(boolean z2) {
        this.mRetainLoaders = z2;
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl != null && this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (z2) {
                loaderManagerImpl.doRetain();
            } else {
                loaderManagerImpl.doStop();
            }
        }
    }

    public void dumpLoaders(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.mLoadersStarted);
        if (this.mLoaderManager != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            printWriter.println(SettingsStringUtil.DELIMITER);
            this.mLoaderManager.dump(android.accessibilityservice.c.D(str, "  "), fileDescriptor, printWriter, strArr);
        }
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public Context getContext() {
        return this.mContext;
    }

    public FragmentManagerImpl getFragmentManagerImpl() {
        return this.mFragmentManager;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public LoaderManagerImpl getLoaderManager(String str, boolean z2, boolean z3) {
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new ArrayMap<>();
        }
        LoaderManagerImpl loaderManagerImpl = (LoaderManagerImpl) this.mAllLoaderManagers.get(str);
        if (loaderManagerImpl == null && z3) {
            LoaderManagerImpl loaderManagerImpl2 = new LoaderManagerImpl(str, this, z2);
            this.mAllLoaderManagers.put(str, loaderManagerImpl2);
            return loaderManagerImpl2;
        }
        if (!z2 || loaderManagerImpl == null || loaderManagerImpl.mStarted) {
            return loaderManagerImpl;
        }
        loaderManagerImpl.doStart();
        return loaderManagerImpl;
    }

    public LoaderManagerImpl getLoaderManagerImpl() {
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl != null) {
            return loaderManagerImpl;
        }
        this.mCheckedForLoaderManager = true;
        LoaderManagerImpl loaderManager = getLoaderManager("(root)", this.mLoadersStarted, true);
        this.mLoaderManager = loaderManager;
        return loaderManager;
    }

    public boolean getRetainLoaders() {
        return this.mRetainLoaders;
    }

    public void inactivateFragment(String str) {
        LoaderManagerImpl loaderManagerImpl;
        ArrayMap<String, LoaderManager> arrayMap = this.mAllLoaderManagers;
        if (arrayMap == null || (loaderManagerImpl = (LoaderManagerImpl) arrayMap.get(str)) == null || loaderManagerImpl.mRetaining) {
            return;
        }
        loaderManagerImpl.doDestroy();
        this.mAllLoaderManagers.remove(str);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.app.FragmentContainer
    public <T extends View> T onFindViewById(int i2) {
        return null;
    }

    public abstract E onGetHost();

    public LayoutInflater onGetLayoutInflater() {
        return (LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    public int onGetWindowAnimations() {
        return this.mWindowAnimations;
    }

    @Override // android.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    public void onInvalidateOptionsMenu() {
    }

    public void onRequestPermissionsFromFragment(Fragment fragment, String[] strArr, int i2) {
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        return true;
    }

    public void onStartActivityAsUserFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle, UserHandle userHandle) {
        if (i2 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.mContext.startActivityAsUser(intent, userHandle);
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle) {
        if (i2 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.mContext.startActivity(intent);
    }

    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (i2 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        this.mContext.startIntentSender(intentSender, intent, i3, i4, i5, bundle);
    }

    public boolean onUseFragmentManagerInflaterFactory() {
        return false;
    }

    public void reportLoaderStart() {
        ArrayMap<String, LoaderManager> arrayMap = this.mAllLoaderManagers;
        if (arrayMap != null) {
            int size = arrayMap.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            for (int i2 = size - 1; i2 >= 0; i2--) {
                loaderManagerImplArr[i2] = (LoaderManagerImpl) this.mAllLoaderManagers.valueAt(i2);
            }
            for (int i3 = 0; i3 < size; i3++) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i3];
                loaderManagerImpl.finishRetain();
                loaderManagerImpl.doReportStart();
            }
        }
    }

    public void restoreLoaderNonConfig(ArrayMap<String, LoaderManager> arrayMap) {
        if (arrayMap != null) {
            int size = arrayMap.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((LoaderManagerImpl) arrayMap.valueAt(i2)).updateHostController(this);
            }
        }
        this.mAllLoaderManagers = arrayMap;
    }

    public ArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        ArrayMap<String, LoaderManager> arrayMap = this.mAllLoaderManagers;
        int i2 = 0;
        if (arrayMap != null) {
            int size = arrayMap.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            for (int i3 = size - 1; i3 >= 0; i3--) {
                loaderManagerImplArr[i3] = (LoaderManagerImpl) this.mAllLoaderManagers.valueAt(i3);
            }
            boolean retainLoaders = getRetainLoaders();
            int i4 = 0;
            while (i2 < size) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i2];
                if (!loaderManagerImpl.mRetaining && retainLoaders) {
                    if (!loaderManagerImpl.mStarted) {
                        loaderManagerImpl.doStart();
                    }
                    loaderManagerImpl.doRetain();
                }
                if (loaderManagerImpl.mRetaining) {
                    i4 = 1;
                } else {
                    loaderManagerImpl.doDestroy();
                    this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
                }
                i2++;
            }
            i2 = i4;
        }
        if (i2 != 0) {
            return this.mAllLoaderManagers;
        }
        return null;
    }

    public FragmentHostCallback(Activity activity) {
        this(activity, activity, activity.mHandler, 0);
    }

    public FragmentHostCallback(Activity activity, Context context, Handler handler, int i2) {
        this.mFragmentManager = new FragmentManagerImpl();
        this.mActivity = activity;
        this.mContext = context;
        this.mHandler = handler;
        this.mWindowAnimations = i2;
    }
}
