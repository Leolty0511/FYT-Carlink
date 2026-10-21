package com.syu.bt.page;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.SwipeCallingView;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_Callin_ShowCall extends MyPage {
    public Act_Bt actBt;
    JButton mBtnVoice;
    View mCallin_HideKeyboard;
    View mCallin_ShowCall;
    View mCallin_ShowDial;
    View mCallin_ShowKeyboard;
    public int mFullSwitch;
    public SwipeCallingView mSwipeCalling2;
    View mViewCallinFullScreen;
    View mViewCallinHalfScreen;
    View mViewShowGps;
    public TextView tvTxtName;
    public TextView tvTxtNumber;

    public Page_Callin_ShowCall(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mCallin_ShowKeyboard = null;
        this.mCallin_HideKeyboard = null;
        this.mCallin_ShowDial = null;
        this.mCallin_ShowCall = null;
        this.mFullSwitch = 0;
        this.mBtnVoice = null;
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        if (this.actBt.myActivity.bTop) {
            if (!App_Bt.bResumeByDial) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(10003);
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Callin();
            App_Bt.getInstance();
            if (App_Bt.bEnableHalfScreen) {
                switchFull();
                if (this.mViewShowGps != null) {
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        this.mViewShowGps.setVisibility(0);
                    } else {
                        this.mViewShowGps.setVisibility(8);
                    }
                }
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
        this.mCallin_ShowKeyboard = getPage().getChildViewByid(FinalBtCtrl.Callin_ViewShowKey);
        this.mCallin_HideKeyboard = getPage().getChildViewByid(FinalBtCtrl.Callin_ViewHideKey);
        this.mCallin_ShowDial = getPage().getChildViewByid(FinalBtCtrl.Callin_ViewShowDial);
        this.mCallin_ShowCall = getPage().getChildViewByid(FinalBtCtrl.Callin_ViewShowCall);
        this.mViewCallinFullScreen = getPage().getChildViewByid(FinalBtCtrl.Callin_FullScreen);
        this.mViewCallinHalfScreen = getPage().getChildViewByid(FinalBtCtrl.Callin_HalfScreen);
        this.mViewShowGps = getPage().getChildViewByid(FinalBtCtrl.Callin_Btn_ShowGPS);
        this.mBtnVoice = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
        this.mSwipeCalling2 = (SwipeCallingView) getPage().getChildViewByid(FinalBtCtrl.SwipeCalling_View);
        if (this.mSwipeCalling2 != null) {
            this.mSwipeCalling2.setOnSwipeEventListner(new SwipeCallingView.setEvent() { // from class: com.syu.bt.page.Page_Callin_ShowCall.1
                @Override // com.syu.bt.ctrl.SwipeCallingView.setEvent
                public void setEventLeft() {
                    Bt_IpcObj.hang();
                }

                @Override // com.syu.bt.ctrl.SwipeCallingView.setEvent
                public void setEventRight() {
                    Bt_IpcObj.dial();
                    Page_Callin_ShowCall.this.mSwipeCalling2.setVisibility(8);
                    Page_Callin_ShowCall.this.mSwipeCalling2.removeDialView();
                }
            });
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay() && !App_Bt.bPop3rdPhone && !App_Bt.bPop3rdPhone_YF && !btnClick(v)) {
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
                break;
            case FinalBtCtrl.Callin_Btn_HideKeyboard /* 10126 */:
                App_Bt.bShowKeyFlag = false;
                break;
            case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                if (App_Bt.getInstance().isHalfScreenAble()) {
                    App_Bt.getInstance().setFullScreenMode(0);
                }
                break;
            case FinalBtCtrl.Callin_Btn_HideGPS /* 10128 */:
            case FinalBtCtrl.Dial_Btn_DialIp /* 10129 */:
            case FinalBtCtrl.Dial_Btn_DialThrd /* 10130 */:
            case FinalBtCtrl.Dial_Btn_Dial1 /* 10133 */:
            case FinalBtCtrl.Dial_Btn_Hang1 /* 10134 */:
            case FinalBtCtrl.Dial_Btn_LinkCut1 /* 10135 */:
            case FinalBtCtrl.Dial_Btn_VoiceSwitch1 /* 10136 */:
            case FinalBtCtrl.Dial_Btn_steer /* 10137 */:
            case FinalBtCtrl.Dial_Btn_Dial_p1 /* 10138 */:
            case FinalBtCtrl.Dial_Btn_Dial_p2 /* 10139 */:
            case FinalBtCtrl.Phone2_switch /* 10140 */:
            case FinalBtCtrl.Phoen_Icon /* 10141 */:
            case FinalBtCtrl.Phoen_Icon_p1 /* 10142 */:
            case FinalBtCtrl.Phoen_Icon_p2 /* 10143 */:
            case FinalBtCtrl.Dial_Txt_LinkName_p1 /* 10144 */:
            case FinalBtCtrl.Dial_Txt_LinkName_p2 /* 10145 */:
            case FinalBtCtrl.Dial_Btn_MicSwitch /* 10162 */:
            default:
                bRet = false;
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
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
            case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
            case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
            case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
            case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
            case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
            case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
            case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
            case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
            case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
            case FinalBtCtrl.Dial_Btn_X /* 10156 */:
            case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
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
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                Bt_IpcObj.clearKey(false);
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

    public void updateSwipeCallingBtns() {
        if (Bt_IpcObj.isInCall() && Bt_IpcObj.isRing()) {
            this.mSwipeCalling2.setVisibility(0);
            this.mSwipeCalling2.startCalling(true);
        }
    }

    public void switchFull() {
        if (App_Bt.getInstance().fytGetState != null) {
            Main.postRunnable_Ui(false, new RunnableSwitchFull());
        }
    }

    public class RunnableSwitchFull implements Runnable {
        public RunnableSwitchFull() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Page_Callin_ShowCall.this.actBt.myActivity.mPageCurrent == Page_Callin_ShowCall.this.getPage()) {
                if (Page_Callin_ShowCall.this.actBt.isHalf()) {
                    if (Page_Callin_ShowCall.this.mViewCallinFullScreen != null) {
                        Page_Callin_ShowCall.this.mViewCallinFullScreen.setVisibility(8);
                    }
                    if (Page_Callin_ShowCall.this.mViewCallinHalfScreen != null) {
                        Page_Callin_ShowCall.this.mViewCallinHalfScreen.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (Page_Callin_ShowCall.this.mViewCallinHalfScreen != null) {
                    Page_Callin_ShowCall.this.mViewCallinHalfScreen.setVisibility(8);
                }
                if (Page_Callin_ShowCall.this.mViewCallinFullScreen != null) {
                    Page_Callin_ShowCall.this.mViewCallinFullScreen.setVisibility(0);
                }
            }
        }
    }
}
