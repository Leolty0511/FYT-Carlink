package android.app;

import android.content.Intent;
import android.os.Bundle;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ActivityGroup extends Activity {
    static final String PARENT_NON_CONFIG_INSTANCE_KEY = "android:parent_non_config_instance";
    private static final String STATES_KEY = "android:states";
    protected LocalActivityManager mLocalActivityManager;

    public ActivityGroup() {
        this(true);
    }

    @Override // android.app.Activity
    public void dispatchActivityResult(String str, int i2, int i3, Intent intent) {
        Activity activity;
        if (str == null || (activity = this.mLocalActivityManager.getActivity(str)) == null) {
            super.dispatchActivityResult(str, i2, i3, intent);
        } else {
            activity.onActivityResult(i2, i3, intent);
        }
    }

    public Activity getCurrentActivity() {
        return this.mLocalActivityManager.getCurrentActivity();
    }

    public final LocalActivityManager getLocalActivityManager() {
        return this.mLocalActivityManager;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mLocalActivityManager.dispatchCreate(bundle != null ? bundle.getBundle(STATES_KEY) : null);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mLocalActivityManager.dispatchDestroy(isFinishing());
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mLocalActivityManager.dispatchPause(isFinishing());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mLocalActivityManager.dispatchResume();
    }

    @Override // android.app.Activity
    public HashMap<String, Object> onRetainNonConfigurationChildInstances() {
        return this.mLocalActivityManager.dispatchRetainNonConfigurationInstance();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundleSaveInstanceState = this.mLocalActivityManager.saveInstanceState();
        if (bundleSaveInstanceState != null) {
            bundle.putBundle(STATES_KEY, bundleSaveInstanceState);
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mLocalActivityManager.dispatchStop();
    }

    public ActivityGroup(boolean z2) {
        this.mLocalActivityManager = new LocalActivityManager(this, z2);
    }
}
