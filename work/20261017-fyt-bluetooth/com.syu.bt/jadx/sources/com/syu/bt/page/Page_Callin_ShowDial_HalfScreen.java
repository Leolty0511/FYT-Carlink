package com.syu.bt.page;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_Callin_ShowDial_HalfScreen extends MyPage {
    public Act_Bt actBt;
    View mCallin_Half_ShowCall;
    View mCallin_Half_ShowDial;
    View mCallin_Half_ShowKey;
    public TextView tvTxtName;
    public TextView tvTxtNumber;

    public Page_Callin_ShowDial_HalfScreen(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mCallin_Half_ShowKey = null;
        this.mCallin_Half_ShowDial = null;
        this.mCallin_Half_ShowCall = null;
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        if (this.actBt.myActivity.bTop) {
            if (!App_Bt.bResumeByDial) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(10003);
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Callin_HalfScreen();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        App_Bt.bResumeByDial = false;
        super.pause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mCallin_Half_ShowKey = getPage().getChildViewByid(FinalBtCtrl.Callin_Half_ViewShowKey);
        this.mCallin_Half_ShowDial = getPage().getChildViewByid(FinalBtCtrl.Callin_Half_ViewShowDial);
        this.mCallin_Half_ShowCall = getPage().getChildViewByid(FinalBtCtrl.Callin_Half_ViewShowCall);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay() && !btnClick(v)) {
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
            } else {
                if (this.actBt.MenuClick(v)) {
                }
            }
        }
    }

    private boolean btnClick(View v) {
        boolean bRet = true;
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Callin_Btn_ShowKeyboard /* 10125 */:
                App_Bt.getInstance().setFullScreenMode(1);
                App_Bt.bShowKeyFlag = true;
                break;
            case FinalBtCtrl.Callin_Btn_HideGPS /* 10128 */:
                App_Bt.getInstance().setFullScreenMode(1);
                break;
            case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                App_Bt.getInstance().mIpcObj.FuncDial();
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Hang /* 10132 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (Bt_IpcObj.isInCall()) {
                    Bt_IpcObj.hang();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_VoiceSwitch /* 10161 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.VoiceSwitch();
                break;
                break;
            default:
                bRet = false;
                break;
        }
        return bRet;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                Bt_IpcObj.LongClick0();
                break;
        }
        return false;
    }

    public void updatePhoneName() {
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
        JText text2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name2);
        if (text != null) {
            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                text.setText(FinalChip.BSP_PLATFORM_Null);
            } else {
                String strName = App_Bt.mBtInfo.getNameByNumber(Bt.sPhoneNumber);
                if (!TextUtils.isEmpty(strName)) {
                    text.setText(strName);
                } else if (!App_Bt.getInstance().mIpcObj.isCalling()) {
                    text.setText(FinalChip.BSP_PLATFORM_Null);
                }
            }
            if (text2 != null) {
                text2.setText(text.getText());
            }
        }
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }
}
