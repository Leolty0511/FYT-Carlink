package com.syu.bt.page.pop;

import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSeekBar;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBtAvMicSet extends MyPage {
    public JSeekBar mSB_BtMusic;
    public String strBtAvMicSet;
    public JText tvBtAvMicSet;

    public Page_PopBtAvMicSet(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mSB_BtMusic = (JSeekBar) getPage().getChildViewByid(74);
        if (this.mSB_BtMusic != null) {
            this.mSB_BtMusic.setProgressMax(10);
        }
        this.tvBtAvMicSet = (JText) getPage().getChildViewByid(75);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
        App_Bt.iBtAvMicSet = App_Bt.SB[3];
        this.mSB_BtMusic.setProgress(App_Bt.iBtAvMicSet);
        this.strBtAvMicSet = String.valueOf(App_Bt.iBtAvMicSet);
        if (this.tvBtAvMicSet != null) {
            this.tvBtAvMicSet.setText(this.strBtAvMicSet);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        if (App_Bt.getInstance().bPopBtAvMicSet) {
            App_Bt.getInstance().popBtAvMicSet(false);
        }
        super.pause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        App_Bt.iTimerCnt = 5;
        App_Bt.iBtAvMicSet = this.mSB_BtMusic.getValue();
        App_Bt.getInstance().mIpcObj.sendCmdVolBal(3, App_Bt.iBtAvMicSet);
        this.strBtAvMicSet = String.valueOf(App_Bt.iBtAvMicSet);
        if (this.tvBtAvMicSet != null) {
            this.tvBtAvMicSet.setText(this.strBtAvMicSet);
        }
    }
}
