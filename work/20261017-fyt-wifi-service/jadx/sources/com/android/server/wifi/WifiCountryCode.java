package com.android.server.wifi;

import android.net.wifi.WifiFeaturesUtils;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WifiCountryCode {
    private static final SimpleDateFormat FORMATTER = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    private static final String TAG = "WifiCountryCode";
    private String mDefaultCountryCode;
    private boolean mRevertCountryCodeOnCellularLoss;
    private final WifiNative mWifiNative;
    private boolean DBG = false;
    private boolean mReady = false;
    private String mForceCountryCode = null;
    private String mTelephonyCountryCode = null;
    private String mDriverCountryCode = null;
    private String mTelephonyCountryTimestamp = null;
    private String mDriverCountryTimestamp = null;
    private String mReadyTimestamp = null;

    public WifiCountryCode(WifiNative wifiNative, String oemDefaultCountryCode, boolean revertCountryCodeOnCellularLoss) {
        this.mDefaultCountryCode = null;
        this.mWifiNative = wifiNative;
        this.mRevertCountryCodeOnCellularLoss = revertCountryCodeOnCellularLoss;
        if (!TextUtils.isEmpty(oemDefaultCountryCode)) {
            this.mDefaultCountryCode = oemDefaultCountryCode.toUpperCase(Locale.US);
        } else if (this.mRevertCountryCodeOnCellularLoss) {
            Log.w(TAG, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code.");
            this.mRevertCountryCodeOnCellularLoss = false;
        }
        Log.d(TAG, "mDefaultCountryCode " + this.mDefaultCountryCode + " mRevertCountryCodeOnCellularLoss " + this.mRevertCountryCodeOnCellularLoss);
    }

    public void enableVerboseLogging(int verbose) {
        if (verbose > 0) {
            this.DBG = true;
        } else {
            this.DBG = false;
        }
    }

    public synchronized void airplaneModeEnabled() {
        Log.d(TAG, "Airplane Mode Enabled");
        this.mTelephonyCountryCode = null;
    }

    public synchronized void setReadyForChange(boolean ready) {
        this.mReady = ready;
        this.mReadyTimestamp = FORMATTER.format(new Date(System.currentTimeMillis()));
        if (this.mReady) {
            updateCountryCode();
        }
    }

    synchronized void enableForceCountryCode(String countryCode) {
        Log.d(TAG, "enable force country code is " + countryCode);
        if (TextUtils.isEmpty(countryCode)) {
            Log.d(TAG, "Fail to force country code because the received country code is empty");
            return;
        }
        this.mForceCountryCode = countryCode.toUpperCase(Locale.US);
        if (this.mReady) {
            updateCountryCode();
        } else {
            Log.d(TAG, "skip update supplicant not ready yet");
        }
    }

    synchronized void disableForceCountryCode() {
        this.mForceCountryCode = null;
        if (this.mReady) {
            updateCountryCode();
        } else {
            Log.d(TAG, "skip update supplicant not ready yet");
        }
    }

    public synchronized boolean setCountryCode(String countryCode) {
        if (this.mForceCountryCode != null) {
            Log.d(TAG, "Telephony Country code ignored due to force-country-code mode");
            return false;
        }
        Log.d(TAG, "Receive set country code request: " + countryCode);
        this.mTelephonyCountryTimestamp = FORMATTER.format(new Date(System.currentTimeMillis()));
        if (TextUtils.isEmpty(countryCode)) {
            if (this.mRevertCountryCodeOnCellularLoss) {
                Log.d(TAG, "Received empty country code, reset to default country code");
                this.mTelephonyCountryCode = null;
            }
        } else {
            this.mTelephonyCountryCode = countryCode.toUpperCase(Locale.US);
        }
        if (this.mReady) {
            updateCountryCode();
        } else {
            Log.d(TAG, "skip update supplicant not ready yet");
        }
        return true;
    }

    public synchronized String getCountryCodeSentToDriver() {
        return this.mDriverCountryCode;
    }

    public synchronized String getCountryCode() {
        return pickCountryCode();
    }

    public synchronized void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("mRevertCountryCodeOnCellularLoss: " + this.mRevertCountryCodeOnCellularLoss);
        pw.println("mDefaultCountryCode: " + this.mDefaultCountryCode);
        pw.println("mDriverCountryCode: " + this.mDriverCountryCode);
        pw.println("mTelephonyCountryCode: " + this.mTelephonyCountryCode);
        pw.println("mForceCountryCode: " + this.mForceCountryCode);
        pw.println("mTelephonyCountryTimestamp: " + this.mTelephonyCountryTimestamp);
        pw.println("mDriverCountryTimestamp: " + this.mDriverCountryTimestamp);
        pw.println("mReadyTimestamp: " + this.mReadyTimestamp);
        pw.println("mReady: " + this.mReady);
    }

    private void updateCountryCode() {
        String country = pickCountryCode();
        Log.d(TAG, "updateCountryCode to " + country);
        if (country != null) {
            setCountryCodeNative(country);
        }
    }

    private String pickCountryCode() {
        if (this.mForceCountryCode != null) {
            Log.d(TAG, "pickCountryCode mForceCountryCode is not empty");
            return this.mForceCountryCode;
        }
        String str = this.mTelephonyCountryCode;
        if (str != null) {
            return str;
        }
        String str2 = this.mDefaultCountryCode;
        if (str2 != null) {
            return str2;
        }
        if (WifiFeaturesUtils.isCountryCodeUpdateByLocaleSupported()) {
            return Locale.getDefault().getCountry();
        }
        return null;
    }

    private boolean setCountryCodeNative(String country) {
        this.mDriverCountryTimestamp = FORMATTER.format(new Date(System.currentTimeMillis()));
        WifiNative wifiNative = this.mWifiNative;
        if (wifiNative.setCountryCode(wifiNative.getClientInterfaceName(), country)) {
            Log.d(TAG, "Succeeded to set country code to: " + country);
            this.mDriverCountryCode = country;
            return true;
        }
        Log.d(TAG, "Failed to set country code to: " + country);
        return false;
    }
}
