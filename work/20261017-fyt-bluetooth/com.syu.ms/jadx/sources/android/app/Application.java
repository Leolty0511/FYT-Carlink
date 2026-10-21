package android.app;

import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Application extends ContextWrapper implements ComponentCallbacks2 {
    private ArrayList<ActivityLifecycleCallbacks> mActivityLifecycleCallbacks;
    private ArrayList<OnProvideAssistDataListener> mAssistCallbacks;
    private ArrayList<ComponentCallbacks> mComponentCallbacks;
    public LoadedApk mLoadedApk;

    public interface ActivityLifecycleCallbacks {
        void onActivityCreated(Activity activity, Bundle bundle);

        void onActivityDestroyed(Activity activity);

        void onActivityPaused(Activity activity);

        void onActivityResumed(Activity activity);

        void onActivitySaveInstanceState(Activity activity, Bundle bundle);

        void onActivityStarted(Activity activity);

        void onActivityStopped(Activity activity);
    }

    public interface OnProvideAssistDataListener {
        void onProvideAssistData(Activity activity, Bundle bundle);
    }

    public Application() {
        super(null);
        this.mComponentCallbacks = new ArrayList<>();
        this.mActivityLifecycleCallbacks = new ArrayList<>();
        this.mAssistCallbacks = null;
    }

    private Object[] collectActivityLifecycleCallbacks() {
        Object[] array;
        synchronized (this.mActivityLifecycleCallbacks) {
            array = this.mActivityLifecycleCallbacks.size() > 0 ? this.mActivityLifecycleCallbacks.toArray() : null;
        }
        return array;
    }

    private Object[] collectComponentCallbacks() {
        Object[] array;
        synchronized (this.mComponentCallbacks) {
            array = this.mComponentCallbacks.size() > 0 ? this.mComponentCallbacks.toArray() : null;
        }
        return array;
    }

    public final void attach(Context context) {
        attachBaseContext(context);
        this.mLoadedApk = ContextImpl.getImpl(context).mPackageInfo;
    }

    public void dispatchActivityCreated(Activity activity, Bundle bundle) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityCreated(activity, bundle);
            }
        }
    }

    public void dispatchActivityDestroyed(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityDestroyed(activity);
            }
        }
    }

    public void dispatchActivityPaused(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityPaused(activity);
            }
        }
    }

    public void dispatchActivityResumed(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityResumed(activity);
            }
        }
    }

    public void dispatchActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivitySaveInstanceState(activity, bundle);
            }
        }
    }

    public void dispatchActivityStarted(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityStarted(activity);
            }
        }
    }

    public void dispatchActivityStopped(Activity activity) {
        Object[] objArrCollectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (objArrCollectActivityLifecycleCallbacks != null) {
            for (Object obj : objArrCollectActivityLifecycleCallbacks) {
                ((ActivityLifecycleCallbacks) obj).onActivityStopped(activity);
            }
        }
    }

    public void dispatchOnProvideAssistData(Activity activity, Bundle bundle) {
        synchronized (this) {
            ArrayList<OnProvideAssistDataListener> arrayList = this.mAssistCallbacks;
            if (arrayList == null) {
                return;
            }
            Object[] array = arrayList.toArray();
            if (array != null) {
                for (Object obj : array) {
                    ((OnProvideAssistDataListener) obj).onProvideAssistData(activity, bundle);
                }
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Object[] objArrCollectComponentCallbacks = collectComponentCallbacks();
        if (objArrCollectComponentCallbacks != null) {
            for (Object obj : objArrCollectComponentCallbacks) {
                ((ComponentCallbacks) obj).onConfigurationChanged(configuration);
            }
        }
    }

    public void onCreate() {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        Object[] objArrCollectComponentCallbacks = collectComponentCallbacks();
        if (objArrCollectComponentCallbacks != null) {
            for (Object obj : objArrCollectComponentCallbacks) {
                ((ComponentCallbacks) obj).onLowMemory();
            }
        }
    }

    public void onTerminate() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        Object[] objArrCollectComponentCallbacks = collectComponentCallbacks();
        if (objArrCollectComponentCallbacks != null) {
            for (Object obj : objArrCollectComponentCallbacks) {
                if (obj instanceof ComponentCallbacks2) {
                    ((ComponentCallbacks2) obj).onTrimMemory(i2);
                }
            }
        }
    }

    public void registerActivityLifecycleCallbacks(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        synchronized (this.mActivityLifecycleCallbacks) {
            this.mActivityLifecycleCallbacks.add(activityLifecycleCallbacks);
        }
    }

    @Override // android.content.Context
    public void registerComponentCallbacks(ComponentCallbacks componentCallbacks) {
        synchronized (this.mComponentCallbacks) {
            this.mComponentCallbacks.add(componentCallbacks);
        }
    }

    public void registerOnProvideAssistDataListener(OnProvideAssistDataListener onProvideAssistDataListener) {
        synchronized (this) {
            if (this.mAssistCallbacks == null) {
                this.mAssistCallbacks = new ArrayList<>();
            }
            this.mAssistCallbacks.add(onProvideAssistDataListener);
        }
    }

    public void unregisterActivityLifecycleCallbacks(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        synchronized (this.mActivityLifecycleCallbacks) {
            this.mActivityLifecycleCallbacks.remove(activityLifecycleCallbacks);
        }
    }

    @Override // android.content.Context
    public void unregisterComponentCallbacks(ComponentCallbacks componentCallbacks) {
        synchronized (this.mComponentCallbacks) {
            this.mComponentCallbacks.remove(componentCallbacks);
        }
    }

    public void unregisterOnProvideAssistDataListener(OnProvideAssistDataListener onProvideAssistDataListener) {
        synchronized (this) {
            ArrayList<OnProvideAssistDataListener> arrayList = this.mAssistCallbacks;
            if (arrayList != null) {
                arrayList.remove(onProvideAssistDataListener);
            }
        }
    }
}
