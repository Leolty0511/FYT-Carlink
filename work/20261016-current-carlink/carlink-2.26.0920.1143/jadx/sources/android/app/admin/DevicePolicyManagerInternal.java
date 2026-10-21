package android.app.admin;

import android.content.Intent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DevicePolicyManagerInternal {

    public interface OnCrossProfileWidgetProvidersChangeListener {
        void onCrossProfileWidgetProvidersChanged(int i2, List<String> list);
    }

    public abstract void addOnCrossProfileWidgetProvidersChangeListener(OnCrossProfileWidgetProvidersChangeListener onCrossProfileWidgetProvidersChangeListener);

    public abstract Intent createShowAdminSupportIntent(int i2, boolean z2);

    public abstract Intent createUserRestrictionSupportIntent(int i2, String str);

    public abstract List<String> getCrossProfileWidgetProviders(int i2);

    public abstract boolean isActiveAdminWithPolicy(int i2, int i3);
}
