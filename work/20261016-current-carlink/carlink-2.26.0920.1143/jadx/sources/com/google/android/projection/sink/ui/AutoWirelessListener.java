package com.google.android.projection.sink.ui;

/* JADX INFO: loaded from: classes3.dex */
public class AutoWirelessListener {
    public static AutoWirelessListener instance = new AutoWirelessListener();
    IAutoWirelessListener listener = null;

    public interface IAutoWirelessListener {
        void onHandleConnectStatus(String str);

        void onStateChange(boolean z2);
    }

    private AutoWirelessListener() {
    }

    public IAutoWirelessListener getListener() {
        return this.listener;
    }

    public void setListener(IAutoWirelessListener iAutoWirelessListener) {
        this.listener = iAutoWirelessListener;
    }
}
