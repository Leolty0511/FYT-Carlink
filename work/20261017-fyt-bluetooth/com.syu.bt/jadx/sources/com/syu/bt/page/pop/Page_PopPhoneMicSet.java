package com.syu.bt.page.pop;

import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSeekBar;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopPhoneMicSet extends MyPage {
    public JSeekBar mSB_BtPhone;
    public String strPhoneMicSet;
    public JText tvPhoneMicSet;

    public Page_PopPhoneMicSet(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mSB_BtPhone = (JSeekBar) getPage().getChildViewByid(72);
        if (this.mSB_BtPhone != null) {
            this.mSB_BtPhone.setProgressMax(20);
        }
        this.tvPhoneMicSet = (JText) getPage().getChildViewByid(73);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
        App_Bt.iPhoneMicSet = App_Bt.SB[2];
        this.mSB_BtPhone.setProgress(App_Bt.iPhoneMicSet);
        this.strPhoneMicSet = String.valueOf(App_Bt.iPhoneMicSet);
        if (this.tvPhoneMicSet != null) {
            this.tvPhoneMicSet.setText(this.strPhoneMicSet);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        if (App_Bt.getInstance().bPopPhoneMicSet) {
            App_Bt.getInstance().popPhoneMicSet(false);
        }
        super.pause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        App_Bt.iTimerCnt = 5;
        App_Bt.iPhoneMicSet = this.mSB_BtPhone.getValue();
        App_Bt.getInstance().mIpcObj.sendCmdVolBal(2, App_Bt.iPhoneMicSet);
        this.strPhoneMicSet = String.valueOf(App_Bt.iPhoneMicSet);
        if (this.tvPhoneMicSet != null) {
            this.tvPhoneMicSet.setText(this.strPhoneMicSet);
        }
    }
}
