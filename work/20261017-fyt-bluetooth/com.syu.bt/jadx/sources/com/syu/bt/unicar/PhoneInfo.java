package com.syu.bt.unicar;

import android.telephony.TelephonyManager;
import com.lsec.core.frame.app.MyApplication;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class PhoneInfo {
    private static PhoneInfo info = new PhoneInfo();
    String deviceid;
    String iccid;
    String imsi;
    String tel;

    public static PhoneInfo getInstance() {
        return info;
    }

    private PhoneInfo() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getIccid() {
        return this.iccid;
    }

    public void setIccid(String iccid) {
        this.iccid = iccid;
    }

    public String getImsi() {
        return this.imsi;
    }

    public void setImsi(String imsi) {
        this.imsi = imsi;
    }

    public String toString() {
        return "PhoneInfo [deviceid=" + this.deviceid + ", tel=" + this.tel + ", iccid=" + this.iccid + ", imsi=" + this.imsi + "]";
    }

    public void Init() {
        App_Bt.mTelephonyManager = (TelephonyManager) MyApplication.myApp.getSystemService("phone");
        try {
            if (App_Bt.mTelephonyManager != null) {
                setDeviceid(App_Bt.mTelephonyManager.getDeviceId());
                setTel(App_Bt.mTelephonyManager.getLine1Number());
                setIccid(App_Bt.mTelephonyManager.getSimSerialNumber());
                setImsi(App_Bt.mTelephonyManager.getSubscriberId());
            }
        } catch (Exception e) {
        }
    }
}
