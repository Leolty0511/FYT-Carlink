package com.google.android.projection.sink.navigation;

import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.sink.GalIntegration;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class NavigationFocusManager {
    public static final String TAG = "AHU.NAVIGATION";
    private final GalIntegration mGal;
    private final List<NavigationFocusListener> mListeners = new CopyOnWriteArrayList();
    private boolean mUseNativeNavigation = true;

    public interface NavigationFocusListener {
        void onNavigationFocusChanged(boolean z2);
    }

    public NavigationFocusManager(GalIntegration galIntegration) {
        this.mGal = galIntegration;
    }

    private synchronized void dispatchNavigationFocus(boolean z2) {
        if (this.mUseNativeNavigation != z2) {
            this.mUseNativeNavigation = z2;
            Iterator<NavigationFocusListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onNavigationFocusChanged(this.mUseNativeNavigation);
            }
        }
    }

    public void enforceNavigationFocus(boolean z2) {
        this.mGal.galReceiver.sendNavigationFocusState(z2 ? GalReceiver.NAVIGATION_FOCUS_STATE_NATIVE : GalReceiver.NAVIGATION_FOCUS_STATE_PROJECTED);
        dispatchNavigationFocus(z2);
    }

    public void handleNavigationFocusRequest(int i2) {
        this.mGal.galReceiver.sendNavigationFocusState(i2);
        dispatchNavigationFocus(i2 != GalReceiver.NAVIGATION_FOCUS_STATE_PROJECTED);
    }

    public synchronized void registerListener(NavigationFocusListener navigationFocusListener) {
        if (this.mListeners.add(navigationFocusListener)) {
            navigationFocusListener.onNavigationFocusChanged(this.mUseNativeNavigation);
        }
    }

    public synchronized void unregisterListener(NavigationFocusListener navigationFocusListener) {
        this.mListeners.remove(navigationFocusListener);
    }
}
