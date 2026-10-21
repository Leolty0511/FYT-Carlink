package com.syu.bt.page;

import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_Dial_HalfScreen extends MyPage {
    public Act_Bt actBt;

    public Page_Dial_HalfScreen(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            if (!App_Bt.bResumeByDial) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(10003);
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Dial_HalfScreen();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
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
            case FinalBtCtrl.Menu_Dial_Half /* 10068 */:
                App_Bt.getInstance().setFullScreenMode(1);
                break;
            case FinalBtCtrl.Menu_Av_Half /* 10069 */:
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
            case FinalBtCtrl.Dial_Btn_LinkCut /* 10158 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (Bt.DATA[9] != 0 && ((Main.mConf_PlatForm == 5 || Main.mConf_PlatForm == 6 || Main.mConf_PlatForm == 7 || Main.mConf_PlatForm == 8) && Bt_IpcObj.isInCall())) {
                    if (App_Bt.bHFP) {
                        this.actBt.popDeleteContacts(6, App_Bt.getInstance().uiApp.getString("str_note_swith2htp"));
                    }
                } else {
                    Bt_IpcObj.linkCut();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Link /* 10159 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.link();
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Disconnect /* 10160 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (Main.mConf_PlatForm == 5 && Bt_IpcObj.isInCall()) {
                    if (App_Bt.bHFP) {
                        this.actBt.popDeleteContacts(6, App_Bt.getInstance().uiApp.getString("str_note_swith2htp"));
                    }
                } else {
                    Bt_IpcObj.cut();
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
            case FinalBtCtrl.Dial_Btn_ShowKeyboard /* 10165 */:
                App_Bt.getInstance().setFullScreenMode(1);
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
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                Bt_IpcObj.clearKey(true);
                break;
        }
        return false;
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }
}
