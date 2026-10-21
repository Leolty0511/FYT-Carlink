package com.android.server.wifi.hotspot2.soap.command;

import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import org.ksoap2.serialization.PropertyInfo;

/* JADX INFO: loaded from: classes.dex */
public class BrowserUri implements SppCommand.SppCommandData {
    private static final String TAG = "PasspointBrowserUri";
    private final String mUri;

    private BrowserUri(PropertyInfo command) {
        this.mUri = command.getValue().toString();
    }

    public static BrowserUri createInstance(PropertyInfo command) {
        if (!TextUtils.equals(command.getName(), "launchBrowserToURI")) {
            Log.e(TAG, "received wrong command : " + command.getName());
            return null;
        }
        return new BrowserUri(command);
    }

    public String getUri() {
        return this.mUri;
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof BrowserUri)) {
            return false;
        }
        BrowserUri that = (BrowserUri) thatObject;
        return TextUtils.equals(this.mUri, that.mUri);
    }

    public int hashCode() {
        return Objects.hash(this.mUri);
    }

    public String toString() {
        return "BrowserUri{mUri: " + this.mUri + "}";
    }
}
