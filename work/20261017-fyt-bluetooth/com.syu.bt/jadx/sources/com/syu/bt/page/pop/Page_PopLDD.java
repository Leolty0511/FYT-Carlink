package com.syu.bt.page.pop;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.util.FuncUtils;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopLDD extends MyPage {
    long lastCalledTime;
    public JButton mBtnAccept;
    public JButton mBtnSound;
    public JText mTxtPhoneTime;

    public Page_PopLDD(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
        this.lastCalledTime = 0L;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mTxtPhoneTime = (JText) getPage().getChildViewByid(62);
        this.mBtnAccept = (JButton) getPage().getChildViewByid(58);
        this.mBtnSound = (JButton) getPage().getChildViewByid(59);
        updatePDDinfo();
    }

    public void updatePDDinfo() {
        Log.d("lddd", " 11 updatePDDinfo mTxtPhoneTime!=null U_PHONE_STATE = " + Bt.DATA[9] + "  sPhoneNumber = " + Bt.sPhoneNumber);
        boolean isTalk = Bt_IpcObj.isTalk();
        if (this.mBtnAccept != null) {
            this.mBtnAccept.setVisibility(isTalk ? 8 : 0);
        }
        if (this.mBtnSound != null) {
            this.mBtnSound.setVisibility(isTalk ? 0 : 8);
        }
        if (!isTalk && this.mTxtPhoneTime != null) {
            String strPhone = Bt.sPhoneNumber;
            String strName = App_Bt.mBtInfo.getNameByNumber(strPhone);
            Log.d("lddd", " 33 updatePDDinfo  strPhone = " + strPhone);
            if (!TextUtils.isEmpty(strName)) {
                this.mTxtPhoneTime.setText(strName);
            } else {
                this.mTxtPhoneTime.setText(strPhone);
            }
        }
        if (!Bt_IpcObj.isInCall()) {
            App_Bt.getInstance().popShowLLD(false);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        super.pause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        Log.d("ldd", " 00 Page PopLDD  ResponseClick PopLDD_Txt_Time id = " + id);
        switch (id) {
            case 58:
                if ((App_Bt.getInstance().mIpcObj.isCalling() || Bt.sPhoneNumber.contains("1")) && !FuncUtils.isFastDoubleClick()) {
                    App_Bt.getInstance().mIpcObj.FuncDial();
                }
                break;
            case 59:
                if (!FuncUtils.isFastDoubleClick() && Bt_IpcObj.isTalk()) {
                    Bt_IpcObj.hfp();
                    break;
                }
                break;
            case 60:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.hang();
                }
                break;
            case 61:
                Log.d("ldd", " 11 Page PopLDD  ResponseClick PopLDD_Txt_Time  ");
                App_Bt.getInstance().popShowLLD(false);
                App_Bt.getInstance().popBt(true, false);
                break;
        }
    }
}
