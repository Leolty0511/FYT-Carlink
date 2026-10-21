package com.syu.bt.page;

import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.util.FuncUtils;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class Page_Av_HalfScreen extends MyPage {
    public Act_Bt actBt;
    public boolean misAvStop;
    public TextView tvTitle_Half;

    public Page_Av_HalfScreen(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.misAvStop = false;
        this.actBt = actBt;
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            App_Bt.getInstance().mIpcObj.updateNotify_BtAv_HalfScreen();
            App_Bt.getInstance().mIpcObj.requestAppIdRight(FinalBtCtrl.Page_Av);
            App_Bt.getInstance().EnableGainSpec();
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null) {
                pageMenu.setVisibility(8);
            }
            this.tvTitle_Half = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title_Half);
            if (Bt_IpcObj.isDisConnect()) {
                if (this.tvTitle_Half != null) {
                    this.tvTitle_Half.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                }
            } else if (this.tvTitle_Half != null) {
                this.tvTitle_Half.setText(Bt.sId3Title);
            }
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        JPage pageMenu;
        App_Bt.getInstance().DisableGainSpec();
        App_Bt.bResumeByDial = false;
        if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null) {
            pageMenu.setVisibility(0);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Callin_Btn_HideGPS /* 10128 */:
                App_Bt.getInstance().setFullScreenMode(1);
                break;
            case FinalBtCtrl.Av_Btn_Prev /* 10308 */:
            case FinalBtCtrl.Av_Btn_Prev1 /* 10309 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avPrev();
                    this.misAvStop = false;
                }
                break;
            case FinalBtCtrl.Av_Btn_PlayPause /* 10310 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avPlayPause();
                    this.misAvStop = false;
                }
                break;
            case FinalBtCtrl.Av_Btn_Play /* 10312 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avPlay();
                    this.misAvStop = false;
                }
                break;
            case FinalBtCtrl.Av_Btn_Pause /* 10313 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avPause();
                    this.misAvStop = false;
                }
                break;
            case FinalBtCtrl.Av_Btn_Stop /* 10314 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avStop();
                    this.misAvStop = true;
                }
                break;
            case FinalBtCtrl.Av_Btn_Next /* 10315 */:
            case FinalBtCtrl.Av_Btn_Next1 /* 10316 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.avNext();
                    this.misAvStop = false;
                }
                break;
        }
        if (this.actBt.MenuClick(v)) {
        }
    }
}
