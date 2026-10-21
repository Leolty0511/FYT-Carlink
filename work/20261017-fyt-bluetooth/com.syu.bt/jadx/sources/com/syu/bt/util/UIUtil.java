package com.syu.bt.util;

import android.app.Activity;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class UIUtil {
    public Activity mActivity;
    public MyCircleDialog mLoadDialog;

    public UIUtil(Activity activity) {
        this.mActivity = activity;
    }

    public void showLoading(String msg) {
        Log.d("down", " ---  showLoading msg = " + msg);
        try {
            if (this.mLoadDialog == null) {
                if (this.mActivity != null) {
                    Activity activity = this.mActivity;
                    App_Bt.getInstance();
                    int i = App_Bt.UIUtil_XY[0];
                    App_Bt.getInstance();
                    this.mLoadDialog = new MyCircleDialog(activity, i, App_Bt.UIUtil_XY[1]);
                } else {
                    return;
                }
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                    this.mLoadDialog.showDialog(msg, -1, 38, null);
                } else {
                    this.mLoadDialog.showDialog(msg, -1, 25, null);
                }
                this.mLoadDialog.show();
                return;
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
                    this.mLoadDialog.showDialog(msg, ViewCompat.MEASURED_STATE_MASK, 38, null);
                } else if (BTUtil.getInstance().getWindowManeger()[0] <= 1280) {
                    this.mLoadDialog.showDialog(msg, ViewCompat.MEASURED_STATE_MASK, 20, null);
                } else {
                    this.mLoadDialog.showDialog(msg, ViewCompat.MEASURED_STATE_MASK, 25, null);
                }
                this.mLoadDialog.show();
                return;
            }
            if (!this.mLoadDialog.isShowing()) {
                if (CustomerUtil.isTZYConfig() || CustomerUtil.isYFConfig()) {
                    if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                        this.mLoadDialog.showDialog(msg, -1, 36, null);
                    } else {
                        this.mLoadDialog.showDialog(msg, -1, 22, null);
                    }
                } else if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                    this.mLoadDialog.showDialog(msg, -16711936, 30, null);
                } else {
                    this.mLoadDialog.showDialog(msg, -16711936, 22, null);
                }
                this.mLoadDialog.show();
                return;
            }
            this.mLoadDialog.showTxt(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disLoading() {
        if (this.mLoadDialog != null) {
            Log.d("down", " ---  mLoadDialog.cancel ");
            this.mLoadDialog.cancel();
        }
    }

    public String getShowMsg() {
        if (this.mLoadDialog != null) {
            return this.mLoadDialog.getTxt();
        }
        return null;
    }

    public boolean isBtReset() {
        return getShowMsg().equals(App_Bt.getInstance().uiApp.getString("bt_resetting")) && this.mLoadDialog.isShowing();
    }
}
