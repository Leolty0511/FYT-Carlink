package com.syu.bt.runnable;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_UpdateText implements Runnable {
    boolean bForceDefault;
    String mStrName;
    JText mTxt;
    JText mTxt2;
    JText mTxt3;
    JText mTxt4;
    JText mTxt5;
    JText mTxt6;
    JView mView;
    JView mView2;
    String strDefault;

    public Runnable_UpdateText(JText txt, String strName, String str, boolean bDefault) {
        this.mTxt = txt;
        this.mStrName = strName;
        this.strDefault = str;
        this.bForceDefault = bDefault;
    }

    public Runnable_UpdateText(JText txt, JText txt2, JText txt3, String strName, String str, boolean bDefault) {
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.mStrName = strName;
        this.strDefault = str;
        this.bForceDefault = bDefault;
    }

    public Runnable_UpdateText(JText txt, JText txt2, JText txt3, JText txt4, JText txt5, JText txt6, String strName, String str, boolean bDefault) {
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.mTxt4 = txt4;
        this.mTxt5 = txt5;
        this.mTxt6 = txt6;
        this.mStrName = strName;
        this.strDefault = str;
        this.bForceDefault = bDefault;
    }

    public Runnable_UpdateText(JText txt, JText txt2, JText txt3, JView view, JView view2, String strName, String str, boolean bDefault) {
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.mView = view;
        this.mView2 = view2;
        this.mStrName = strName;
        this.strDefault = str;
        this.bForceDefault = bDefault;
    }

    @Override // java.lang.Runnable
    public void run() {
        Log.d("pop33", " 00 Run Bt.sPhoneNumber = " + Bt.sPhoneNumber + " Bt.DATA[FinalBt.U_PHONE_STATE] = " + Bt.DATA[9]);
        if (this.mTxt != null) {
            if (!TextUtils.isEmpty(this.mStrName)) {
                this.mTxt.setText(this.mStrName);
            } else if (App_Bt.getInstance().mIpcObj.isCalling()) {
                if (CustomerUtil.isYFConfig()) {
                    this.mTxt.setText(App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN));
                } else {
                    Log.d("pop33", " 11 Run sPhoneNumberHoldOn = " + Bt.sPhoneNumberHoldOn);
                    boolean isNotEmptyHoldOn = !TextUtils.isEmpty(Bt.sPhoneNumberHoldOn);
                    if (App_Bt.bLinkTwoPhone && isNotEmptyHoldOn) {
                        isNotEmptyHoldOn = (Bt.sPhoneNumberHoldOn.equalsIgnoreCase("0") || Bt.sPhoneNumberHoldOn.equalsIgnoreCase("1")) ? false : true;
                    }
                    Log.d("pop33", " 11 Run sPhoneNumberHoldOn = " + Bt.sPhoneNumberHoldOn + " isNotEmptyHoldOn = " + isNotEmptyHoldOn);
                    if (isNotEmptyHoldOn && Bt.DATA[9] == 4) {
                        this.mTxt.setText(Bt.sPhoneNumberHoldOn);
                    } else if (App_Bt.mStrCustomer.equals("BT_8581")) {
                        this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                    } else if ((!App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || this.bForceDefault) && App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        Log.d("pop33", " 22 Run Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                        if (this.mTxt6 == null) {
                            this.mTxt.setText(Bt.sPhoneNumber);
                            Log.d("pop33", " 33 Run Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                        } else {
                            this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    } else {
                        this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
            } else if (this.bForceDefault || !App_Bt.getInstance().mIpcObj.isCalling()) {
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") && !this.bForceDefault) {
                    this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                } else {
                    this.mTxt.setText(this.strDefault);
                    Log.d("pop33", " 44 Run strDefault = " + this.strDefault);
                }
            }
        }
        if (this.mTxt2 != null && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            if (!TextUtils.isEmpty(this.mStrName)) {
                this.mTxt2.setText(this.mStrName);
            } else if (App_Bt.getInstance().mIpcObj.isCalling()) {
                if (CustomerUtil.isYFConfig()) {
                    this.mTxt2.setText(App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN));
                } else if (!TextUtils.isEmpty(Bt.sPhoneNumberHoldOn) && Bt.DATA[9] == 4) {
                    this.mTxt2.setText(Bt.sPhoneNumberHoldOn);
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") && !this.bForceDefault) {
                    this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                } else {
                    this.mTxt2.setText(Bt.sPhoneNumber);
                }
            } else if (this.bForceDefault || !App_Bt.getInstance().mIpcObj.isCalling()) {
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") && !this.bForceDefault) {
                    this.mTxt.setText(FinalChip.BSP_PLATFORM_Null);
                } else {
                    this.mTxt2.setText(this.strDefault);
                }
            }
        }
        if (this.mTxt4 != null && this.mTxt5 != null && this.mTxt6 != null) {
            boolean isVis = true;
            if (this.mStrName == null || this.mStrName.length() < 1) {
                isVis = false;
            }
            this.mTxt4.setVisibility(isVis ? 8 : 0);
            this.mTxt6.setVisibility(isVis ? 8 : 0);
            this.mTxt5.setVisibility(isVis ? 0 : 8);
            this.mTxt.setVisibility(isVis ? 0 : 8);
            this.mTxt3.setVisibility(isVis ? 0 : 8);
            this.mTxt2.setVisibility(isVis ? 0 : 8);
        } else if (this.mTxt3 != null) {
            if (!TextUtils.isEmpty(this.mStrName)) {
                this.mTxt3.setText(this.mStrName);
            } else if (App_Bt.getInstance().mIpcObj.isCalling()) {
                if (!TextUtils.isEmpty(Bt.sPhoneNumberHoldOn) && Bt.DATA[9] == 4) {
                    this.mTxt3.setText(Bt.sPhoneNumberHoldOn);
                } else {
                    this.mTxt3.setText(Bt.sPhoneNumber);
                }
            } else if (this.bForceDefault || !App_Bt.getInstance().mIpcObj.isCalling()) {
                this.mTxt3.setText(this.strDefault);
            }
        }
        if (this.mView != null) {
            Log.d("gdy77", " 33 Runable_Upadate defaultPhone  Bt.sPhoneNumber = " + Bt.sPhoneNumber);
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                if (BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber) != null) {
                    Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.runnable.Runnable_UpdateText.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Bitmap bmp = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                            Runnable_UpdateText.this.mView.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                        }
                    }, 50L);
                } else if (this.mTxt6 == null) {
                    Log.d("gdy77", " 44 Run_UpdateText defaultPhone bmp != null Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                } else {
                    this.mView.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bt_user_icon", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                }
            } else if (App_Bt.iTalkHead > 15) {
                Bitmap bmp = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                if (bmp != null) {
                    this.mView.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                } else {
                    this.mView.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(this.mView2 == null ? "people_navi" : "people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                }
            } else if (App_Bt.iTalkHead > 0) {
                this.mView.setStrDrawable("talkhead" + App_Bt.iTalkHead, true);
            } else {
                this.mView.setStrDrawable(this.mView2 == null ? "people_navi" : "people2", true);
            }
        }
        if (this.mView2 != null) {
            if (App_Bt.iTalkHead > 15) {
                Bitmap bmp2 = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                if (bmp2 != null) {
                    this.mView2.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp2)));
                } else {
                    this.mView2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                }
            } else if (App_Bt.iTalkHead > 0) {
                this.mView2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("talkhead" + App_Bt.iTalkHead, App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
            } else {
                this.mView2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
            }
        }
        if (App_Bt.bSyncInfo) {
            Bt_IpcObj.sendName(this.mStrName);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            if (TextUtils.isEmpty(this.mStrName)) {
                if (this.mTxt != null && TextUtils.isEmpty(this.strDefault)) {
                    this.mTxt.setVisibility(8);
                }
                if (this.mTxt2 != null) {
                    this.mTxt2.setVisibility(0);
                    return;
                }
                return;
            }
            if (this.mTxt != null) {
                this.mTxt.setVisibility(0);
            }
            if (this.mTxt2 != null) {
                this.mTxt2.setVisibility(8);
            }
        }
    }
}
