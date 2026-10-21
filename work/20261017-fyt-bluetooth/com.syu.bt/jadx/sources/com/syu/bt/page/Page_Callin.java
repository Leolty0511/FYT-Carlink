package com.syu.bt.page;

import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
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
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Page_Callin extends MyPage {
    public static final int KEYBOARD_InCall = 2;
    public static final int KEYBOARD_SmallKeyBoard = 4;
    public static final int KEYBOARD_Talking = 3;
    public static final int KEYBORAD_Dial = 1;
    public Act_Bt actBt;
    JButton mBtnVoice;
    View mCallin_HideKeyboard;
    View mCallin_ShowCall;
    View mCallin_ShowDial;
    View mCallin_ShowKeyboard;
    public SwipeCallingView mSwipeCalling;
    View mViewCallinFullScreen;
    View mViewCallinHalfScreen;
    View mViewShowGps;

    public Page_Callin(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mCallin_ShowKeyboard = null;
        this.mCallin_HideKeyboard = null;
        this.mCallin_ShowDial = null;
        this.mCallin_ShowCall = null;
        this.mBtnVoice = null;
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            if (!App_Bt.bResumeByDial) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(10003);
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Callin();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
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
        this.mCallin_ShowKeyboard = getPage().getChildViewByid(FinalBtCtrl.Page_Callin_ShowKey);
        this.mCallin_HideKeyboard = getPage().getChildViewByid(FinalBtCtrl.Page_Callin_HideKey);
        this.mCallin_ShowDial = getPage().getChildViewByid(FinalBtCtrl.Page_Callin_ShowDial);
        this.mCallin_ShowCall = getPage().getChildViewByid(FinalBtCtrl.Page_Callin_ShowCall);
        Switch2Keyboard(1);
        this.mViewCallinFullScreen = getPage().getChildViewByid(FinalBtCtrl.Callin_FullScreen);
        this.mViewCallinHalfScreen = getPage().getChildViewByid(FinalBtCtrl.Callin_HalfScreen);
        this.mViewShowGps = getPage().getChildViewByid(FinalBtCtrl.Callin_Btn_ShowGPS);
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
                Switch2Keyboard(4);
                break;
            case FinalBtCtrl.Callin_Btn_HideKeyboard /* 10126 */:
                switch (Bt.DATA[9]) {
                    case 3:
                        Switch2Keyboard(1);
                        break;
                    case 4:
                        Switch2Keyboard(2);
                        break;
                    case 5:
                        Switch2Keyboard(3);
                        break;
                }
                App_Bt.bShowKeyFlag = false;
                break;
            case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                if (App_Bt.getInstance().isHalfScreenAble()) {
                    App_Bt.getInstance().setFullScreenMode(0);
                }
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
            case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                this.actBt.Func_Back();
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

    public void Switch2Keyboard(int mode) {
        switch (mode) {
            case 1:
                if (this.mCallin_ShowDial != null) {
                    this.mCallin_ShowDial.setVisibility(0);
                }
                if (this.mCallin_ShowCall != null) {
                    this.mCallin_ShowCall.setVisibility(8);
                }
                if (this.mCallin_ShowKeyboard != null) {
                    this.mCallin_ShowKeyboard.setVisibility(8);
                }
                if (this.mCallin_HideKeyboard != null) {
                    this.mCallin_HideKeyboard.setVisibility(8);
                }
                break;
            case 2:
                if (this.mCallin_ShowDial != null) {
                    this.mCallin_ShowDial.setVisibility(8);
                }
                if (this.mCallin_ShowCall != null) {
                    this.mCallin_ShowCall.setVisibility(0);
                }
                if (this.mCallin_ShowKeyboard != null) {
                    this.mCallin_ShowKeyboard.setVisibility(8);
                }
                if (this.mCallin_HideKeyboard != null) {
                    this.mCallin_HideKeyboard.setVisibility(8);
                }
                break;
            case 3:
                if (this.mCallin_ShowDial != null) {
                    this.mCallin_ShowDial.setVisibility(8);
                }
                if (this.mCallin_ShowCall != null) {
                    this.mCallin_ShowCall.setVisibility(8);
                }
                if (this.mCallin_ShowKeyboard != null) {
                    this.mCallin_ShowKeyboard.setVisibility(8);
                }
                if (this.mCallin_HideKeyboard != null) {
                    this.mCallin_HideKeyboard.setVisibility(0);
                }
                break;
            case 4:
                if (this.mCallin_ShowDial != null) {
                    this.mCallin_ShowDial.setVisibility(8);
                }
                if (this.mCallin_ShowCall != null) {
                    this.mCallin_ShowCall.setVisibility(8);
                }
                if (this.mCallin_ShowKeyboard != null) {
                    this.mCallin_ShowKeyboard.setVisibility(0);
                }
                if (this.mCallin_HideKeyboard != null) {
                    this.mCallin_HideKeyboard.setVisibility(8);
                }
                break;
        }
        if (MyApplication.mIdCustomer == 55) {
            if (mode == 4) {
                App_Bt.bCallinHideKeyTextFlag = true;
            } else {
                App_Bt.bCallinHideKeyTextFlag = false;
            }
        }
    }

    public void updatePhoneName() {
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
        if (text != null) {
            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                text.setText(FinalChip.BSP_PLATFORM_Null);
            } else {
                List<SparseArray<String>> list = new ArrayList<>();
                list.addAll(App_Bt.mBtInfo.mListContact);
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text, FinalChip.BSP_PLATFORM_Null, true), false, 5);
            }
            JText text2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name2);
            if (text2 != null) {
                text2.setText(text.getText());
            }
        }
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
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
            if (Page_Callin.this.actBt.myActivity.mPageCurrent == Page_Callin.this.getPage()) {
                if (Page_Callin.this.actBt.isHalf()) {
                    if (Page_Callin.this.mViewCallinFullScreen != null) {
                        Page_Callin.this.mViewCallinFullScreen.setVisibility(8);
                    }
                    if (Page_Callin.this.mViewCallinHalfScreen != null) {
                        Page_Callin.this.mViewCallinHalfScreen.setVisibility(0);
                    }
                } else {
                    if (Page_Callin.this.mViewCallinHalfScreen != null) {
                        Page_Callin.this.mViewCallinHalfScreen.setVisibility(8);
                    }
                    if (Page_Callin.this.mViewCallinFullScreen != null) {
                        Page_Callin.this.mViewCallinFullScreen.setVisibility(0);
                    }
                }
                switch (Bt.DATA[9]) {
                    case 3:
                        if (!App_Bt.bShowKeyFlag) {
                            Page_Callin.this.Switch2Keyboard(1);
                        }
                        break;
                    case 4:
                        if (!App_Bt.bShowKeyFlag) {
                            Page_Callin.this.Switch2Keyboard(2);
                        }
                        break;
                    case 5:
                        if (!App_Bt.bShowKeyFlag) {
                            Page_Callin.this.Switch2Keyboard(3);
                        }
                        break;
                }
                if (App_Bt.bShowKeyFlag) {
                    Page_Callin.this.Switch2Keyboard(4);
                }
            }
        }
    }
}
