package com.syu.bt.page.pop;

import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSeekBar;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.page.Page_Set;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBtRingSet extends MyPage {
    public Page_Set BtSet;
    public JSeekBar mSeekBar;
    public String strRingSet;
    public JText tvRingLevel;

    public Page_PopBtRingSet(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mSeekBar = (JSeekBar) getPage().getChildViewByid(70);
        if (this.mSeekBar != null) {
            this.mSeekBar.setProgressMax(10);
        }
        this.tvRingLevel = (JText) getPage().getChildViewByid(71);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        this.mSeekBar.setProgress(App_Bt.iRingLevel);
        this.strRingSet = String.valueOf(App_Bt.iRingLevel);
        if (this.tvRingLevel != null) {
            this.tvRingLevel.setText(this.strRingSet);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        super.pause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        App_Bt.iTimerCnt = 5;
        App_Bt.iRingLevel = this.mSeekBar.getValue();
        Bt_IpcObj.SetRingLevel(App_Bt.iRingLevel);
        this.strRingSet = String.valueOf(App_Bt.iRingLevel);
        if (this.tvRingLevel != null) {
            this.tvRingLevel.setText(this.strRingSet);
        }
    }
}
