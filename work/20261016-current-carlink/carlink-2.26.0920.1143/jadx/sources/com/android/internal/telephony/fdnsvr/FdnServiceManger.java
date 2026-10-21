package com.android.internal.telephony.fdnsvr;

import android.content.Context;
import android.util.Log;
import com.android.internal.telephony.IFdnService;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FdnServiceManger {
    public static final String FDNSERVICE_PACKAGENAME = "com.spread.cachefdn";
    private Context mContext;
    private FdnInterface mFdnInterface;
    private IFdnService mService;

    public interface FdnInterface {
        boolean getFdnEnable();

        boolean isNeedFilterMessaging();
    }

    public FdnServiceManger(Context context) {
        this.mContext = context;
        this.mService = FdnServiceUtil.getIFdnService(context);
    }

    private Context getContext() {
        return this.mContext;
    }

    private boolean getFdnEnable() {
        FdnInterface fdnInterface = this.mFdnInterface;
        if (fdnInterface != null) {
            return fdnInterface.getFdnEnable();
        }
        Log.i(FdnServiceUtil.TAG, "getFdnEnable----->mFdnInterface == null ");
        return false;
    }

    private IFdnService getIFdnService(Context context) {
        return this.mService;
    }

    private boolean isNeedFilterMessaging() {
        FdnInterface fdnInterface = this.mFdnInterface;
        if (fdnInterface == null) {
            return false;
        }
        return fdnInterface.isNeedFilterMessaging();
    }

    public int process(Context context, int i2, long j2, List<String> list, byte[] bArr) {
        try {
            if (this.mFdnInterface == null) {
                Log.i(FdnServiceUtil.TAG, "FdnServiceManger---->process()---->FdnInterface == null, FdnInterface must be imlpemeted");
                return 0;
            }
            if (!getFdnEnable()) {
                Log.i(FdnServiceUtil.TAG, "FdnServiceManger----->fdn function is unable");
                return 0;
            }
            if (!isNeedFilterMessaging()) {
                Log.i(FdnServiceUtil.TAG, "FdnServiceManger----->no need to filter");
                return 0;
            }
            if (getIFdnService(getContext()) == null) {
                Log.i(FdnServiceUtil.TAG, "FdnServiceManger----->getIFdnService() == null");
                return 0;
            }
            if (!getFdnEnable() || !isNeedFilterMessaging()) {
                return 0;
            }
            Log.i(FdnServiceUtil.TAG, "FdnServiceManger----->begin to IFdnservice process() ");
            return getIFdnService(getContext()).process(i2, j2, list, bArr);
        } catch (Exception unused) {
            return 0;
        }
    }

    public void setFdnListner(FdnInterface fdnInterface) {
        this.mFdnInterface = fdnInterface;
    }
}
