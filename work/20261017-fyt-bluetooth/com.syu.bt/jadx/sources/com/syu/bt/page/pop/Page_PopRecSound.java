package com.syu.bt.page.pop;

import android.view.View;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopRecSound extends MyPage {
    Act_Bt actBt;
    private JButton mBtnStopRec;
    private JText mTxtTip;

    public Page_PopRecSound(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mTxtTip = (JText) getPage().getChildViewByid(FinalBtCtrl.PopRecSound_Txt_Tip);
        this.mBtnStopRec = (JButton) getPage().getChildViewByid(FinalBtCtrl.PopRecSound_Btn_Stop);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        if (this.mTxtTip != null) {
            this.mTxtTip.setText(App_Bt.getInstance().uiApp.getString("str_speak"));
        }
        if (this.mBtnStopRec != null) {
            this.mBtnStopRec.setVisibility(0);
        }
        this.actBt.mRecSound.startRecord();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onDismiss() {
        this.actBt.mRecSound.stopRecord();
        super.onDismiss();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.PopRecSound_Btn_Stop /* 10503 */:
                this.actBt.mRecSound.stopRecord();
                if (this.mTxtTip != null) {
                    this.mTxtTip.setText(App_Bt.getInstance().uiApp.getString("str_playing"));
                }
                if (this.mBtnStopRec != null) {
                    this.mBtnStopRec.setVisibility(8);
                }
                this.actBt.mRecSound.playRecord();
                break;
        }
    }
}
