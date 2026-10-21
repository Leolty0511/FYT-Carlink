package com.syu.bt.util;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import android.widget.Toast;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ToastUtil {
    private static ToastUtil sInstance = null;
    String mMsg;
    TextView mTextView;
    Toast mToast;
    HashMap<String, Drawable> mapDrawables = new HashMap<>();

    public static ToastUtil getInstance() {
        if (sInstance == null) {
            sInstance = new ToastUtil();
        }
        return sInstance;
    }

    public ToastUtil() {
        Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.util.ToastUtil.1
            @Override // java.lang.Runnable
            public void run() {
                ToastUtil.this.mTextView = new TextView(App_Bt.getInstance().uiApp.mContext);
                ToastUtil.this.mTextView.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("toast_bg", ToastUtil.this.mapDrawables, null));
                ToastUtil.this.mTextView.setMaxWidth((int) (600.0f * App_Bt.getInstance().uiApp.mScale));
                ToastUtil.this.mTextView.setMaxHeight((int) (360.0f * App_Bt.getInstance().uiApp.mScale));
                ToastUtil.this.mTextView.setGravity(17);
                if (CustomerUtil.isYFConfig()) {
                    ToastUtil.this.mTextView.setTextColor(Color.rgb(255, 255, 255));
                } else if (CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") || App_Bt.bAI_JZ2) {
                    ToastUtil.this.mTextView.setTextColor(-1);
                } else {
                    ToastUtil.this.mTextView.setTextColor(-16711936);
                }
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                    ToastUtil.this.mTextView.setPadding(50, 30, 50, 30);
                    ToastUtil.this.mTextView.setSingleLine();
                    ToastUtil.this.mTextView.setTextSize(0, 36.0f * App_Bt.getInstance().uiApp.mScale);
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                        ToastUtil.this.mTextView.setPadding(80, 50, 80, 50);
                        ToastUtil.this.mTextView.setTextSize(0, 45.0f * App_Bt.getInstance().uiApp.mScale);
                    } else {
                        ToastUtil.this.mTextView.setPadding(50, 30, 50, 30);
                        ToastUtil.this.mTextView.setTextSize(0, 35.0f * App_Bt.getInstance().uiApp.mScale);
                    }
                } else if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                    ToastUtil.this.mTextView.setPadding(80, 50, 80, 50);
                    ToastUtil.this.mTextView.setTextSize(0, 45.0f * App_Bt.getInstance().uiApp.mScale);
                } else {
                    ToastUtil.this.mTextView.setPadding(50, 30, 50, 30);
                    ToastUtil.this.mTextView.setTextSize(0, 35.0f * App_Bt.getInstance().uiApp.mScale);
                }
                ToastUtil.this.mToast = new Toast(App_Bt.getInstance().uiApp.mContext);
                ToastUtil.this.mToast.setDuration(1);
                Toast toast = ToastUtil.this.mToast;
                App_Bt.getInstance();
                toast.setGravity(17, App_Bt.ToastUtil_XY[0], (int) (60.0f * App_Bt.getInstance().uiApp.mScale));
                ToastUtil.this.mToast.setView(ToastUtil.this.mTextView);
            }
        });
    }

    public void showMessage(String msg) {
        this.mMsg = msg;
        if (this.mMsg == null) {
            this.mMsg = FinalChip.BSP_PLATFORM_Null;
        }
        Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.util.ToastUtil.2
            @Override // java.lang.Runnable
            public void run() {
                ToastUtil.this.mTextView.setText(ToastUtil.this.mMsg);
                ToastUtil.this.mToast.show();
            }
        });
    }
}
