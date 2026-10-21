package com.syu.bt.page.pop;

import android.content.ComponentName;
import android.content.Intent;
import android.os.SystemProperties;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.lsec.core.util.data.FinalCustomer;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.App_Bt;
import com.syu.bt.Manifest;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.runnable.Runnable_getNameByNumberPopBtBook;
import com.syu.bt.util.CustomerUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBt extends MyPage {
    private static App_Bt instance;
    public static float lld_y = 0.0f;
    public JButton btnKeyBoradShow;
    public JButton mBtn_ShowLDD;
    public JButton mBtn_ShowLDD1;
    private int[] nightBtn;

    public Page_PopBt(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
        this.nightBtn = new int[]{27, 28, 29, 30, 31, 32, 33, 34, 35, 26, 36, 37, 45, 41, 38, 39, 69};
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        Log.d("lddd", " 44 Page_PopBt resume  ");
        View view = getPage().getChildViewByid(49);
        if (view != null) {
            view.setVisibility(8);
        }
        updateKeyBoardShow(false);
        initView();
        updateView(Bt.DATA[9]);
        if (CustomerUtil.isYFConfig() || CustomerUtil.isZhangConfig()) {
            updateBtnVoiceSwitch(App_Bt.bHFP);
        }
        updateBtnMute(Bt_IpcObj.isTalk());
    }

    private void initView() {
        JText state;
        Log.d("lddd", " 33 Page_PopBt initView = ");
        int value = Bt.DATA[9];
        if (value >= 0 && value <= 6) {
            JText text = (JText) getPage().getChildViewByid(18);
            if (text != null) {
                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                    text.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                } else {
                    text.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
            }
            JText text_Num = (JText) getPage().getChildViewByid(50);
            if (text_Num != null) {
                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                    text_Num.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                } else {
                    text_Num.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
            }
        }
        JView vDial_AIU = (JView) getPage().getChildViewByid(63);
        Log.d("ai11", " 00 Page_Dial  showAI isAiuvoice = " + App_Bt.isAiuvoice + "  isAIOnOff = " + App_Bt.isAIOnOff);
        if (vDial_AIU != null) {
            Log.d("ai11", " 11 Page_Dial  showAI isAiuvoice = " + App_Bt.isAiuvoice + "  isAIOnOff = " + App_Bt.isAIOnOff);
            vDial_AIU.setVisibility((App_Bt.isAIOnOff && App_Bt.isAiuvoice) ? 0 : 8);
        }
        JView vDial_AIU2 = (JView) getPage().getChildViewByid(64);
        Log.d("aigt", " 00 Page_PopBt App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2 + " App_Bt.isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + " App_Bt.isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
        if (vDial_AIU2 != null && App_Bt.bAI_JZ2) {
            Log.d("aigt", " 11 Page_PopBt App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2 + " App_Bt.isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + " App_Bt.isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
            if (App_Bt.isAIGT_Aiuvoice != 0) {
                App_Bt.isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
            }
            if (!App_Bt.isAIGT_OnOff) {
                App_Bt.isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
            }
            Log.d("aigt", " 22 Page_PopBt App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2 + " App_Bt.isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + " App_Bt.isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
            vDial_AIU2.setVisibility((App_Bt.isAIGT_Aiuvoice == 0 && App_Bt.isAIGT_OnOff) ? 0 : 8);
        }
        if (vDial_AIU2 == null) {
            Log.d("aigt", " 33 Page_PopBt vDial_AIU2 == null ");
        }
        JText txtNum = (JText) getPage().getChildViewByid(19);
        if (txtNum != null) {
            txtNum.setText(Bt.sPhoneNumber);
        }
        JText txtNum_Num = (JText) getPage().getChildViewByid(51);
        if (txtNum_Num != null) {
            txtNum_Num.setText(Bt.sPhoneNumber);
        }
        JText txtNum2 = (JText) getPage().getChildViewByid(20);
        if (txtNum2 != null) {
            txtNum2.setText(Bt.sPhoneNumber);
        }
        JText txtContact = (JText) getPage().getChildViewByid(23);
        JText txtContact_Num = (JText) getPage().getChildViewByid(53);
        JText txtContact2 = (JText) getPage().getChildViewByid(24);
        JView headView = (JView) getPage().getChildViewByid(25);
        this.mBtn_ShowLDD = (JButton) getPage().getChildViewByid(47);
        if (this.mBtn_ShowLDD != null) {
            this.mBtn_ShowLDD.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopBt.1
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopBt.lld_y = event.getY();
                            Log.d("lddd", " *** mBtn_ShowLDD ACTION_DOWN  lld_y = " + Page_PopBt.lld_y);
                            return false;
                        case 1:
                            float y = event.getY();
                            if (y - Page_PopBt.lld_y > 50.0f) {
                                App_Bt.getInstance().popBtNum(false);
                            } else if (Page_PopBt.lld_y - y > 50.0f) {
                                App_Bt.getInstance().popBt(false, false);
                                App_Bt.getInstance().popShowLLD(true);
                            }
                            Log.d("lddd", " *** mBtn_ShowLDD ACTION_UP  y = " + y);
                            return false;
                        case 2:
                            Log.d("lddd", " *** mBtn_ShowLDD ACTION_MOVE  y = " + event.getY());
                            return false;
                        default:
                            return false;
                    }
                }
            });
        }
        this.mBtn_ShowLDD1 = (JButton) getPage().getChildViewByid(48);
        if (this.mBtn_ShowLDD1 != null) {
            this.mBtn_ShowLDD1.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopBt.2
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopBt.lld_y = event.getY();
                            Log.d("lddd", " *** mBtn_ShowLDD1 ACTION_DOWN  lld_y = " + Page_PopBt.lld_y);
                            return false;
                        case 1:
                            float y = event.getY();
                            if (y - Page_PopBt.lld_y > 50.0f) {
                                App_Bt.getInstance().popBt(false, false);
                                App_Bt.getInstance().popShowLLD(true);
                            } else if (Page_PopBt.lld_y - y > 50.0f) {
                                App_Bt.getInstance().popBtNum(true);
                            }
                            Log.d("lddd", " *** mBtn_ShowLDD1 ACTION_UP  y = " + y);
                            return false;
                        case 2:
                            Log.d("lddd", " *** mBtn_ShowLDD1 ACTION_MOVE  y = " + event.getY());
                            return false;
                        default:
                            return false;
                    }
                }
            });
        }
        this.btnKeyBoradShow = (JButton) getPage().getChildViewByid(45);
        if (txtContact_Num != null) {
            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                txtContact_Num.setText(FinalChip.BSP_PLATFORM_Null);
            } else {
                String strName = App_Bt.mBtInfo.getNameByNumber(Bt.sPhoneNumber);
                if (!TextUtils.isEmpty(strName)) {
                    txtContact_Num.setText(strName);
                } else {
                    txtContact_Num.setText(FinalChip.BSP_PLATFORM_Null);
                }
            }
        }
        if (txtContact != null) {
            Log.d("pop33", " 00 Page  Runnable sPhone2_id = " + App_Bt.sPhone2_id + "  Bt.sPhoneNumber = " + Bt.sPhoneNumber);
            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                txtContact.setText(FinalChip.BSP_PLATFORM_Null);
                if (txtContact2 != null) {
                    txtContact2.setText(FinalChip.BSP_PLATFORM_Null);
                }
            } else {
                List<SparseArray<String>> list = new ArrayList<>();
                if (App_Bt.bLinkTwoPhone) {
                    Log.d("talk", " 00 U_PHONE_NUMBER  sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                    list.addAll(App_Bt.sPhone_callin_id == 0 ? App_Bt.mBtInfo.mListContact : App_Bt.mBtInfo.mListContact2);
                } else {
                    list.addAll(App_Bt.mBtInfo.mListContact);
                }
                if (txtContact2 != null && CustomerUtil.isYFConfig()) {
                    String strPhone = Bt.sPhoneNumber;
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumberPopBtBook(list, txtContact, txtContact2, strPhone, strPhone, true), false, 5);
                } else if (headView != null) {
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        String defaultPhone = Bt.sPhoneNumber;
                        Log.d(FinalCustomer.VCustHuaTai, "defaultPhone A:" + defaultPhone);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, defaultPhone, true), false, 5);
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        String defaultPhone2 = Bt.sPhoneNumber;
                        JText txtNumber = (JText) getPage().getChildViewByid(19);
                        Log.d("pop33", " 01 Page_PopBt defaultPhone defaultPhone = " + defaultPhone2);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, txtNumber, null, headView, null, defaultPhone2, true), false, 5);
                    } else {
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                    }
                } else {
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                }
            }
        }
        if (!Ipc_New.isTalk()) {
            JText text2 = (JText) getPage().getChildViewByid(22);
            if (text2 != null) {
                text2.setText(FinalChip.BSP_PLATFORM_Null);
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                JText name = (JText) getPage().getChildViewByid(23);
                if (name != null && name.getVisibility() != 0) {
                    name.setVisibility(0);
                }
            } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && (state = (JText) getPage().getChildViewByid(18)) != null && state.getVisibility() != 0) {
                state.setVisibility(0);
            }
        }
        setDayOrNight(App_Bt.mColorType);
    }

    public void updateView(int state) {
        if (CustomerUtil.isYFConfig()) {
            int phoneState = 0;
            switch (state) {
                case 3:
                case 4:
                    phoneState = 1;
                    break;
                case 5:
                    phoneState = 2;
                    break;
            }
            if (App_Bt.bPop3rdPhone_YF && state == 5) {
                App_Bt.getInstance().popBtNum(false);
                phoneState = 3;
            }
            Log.d("gdy66", " 00 updateView phoneState = " + phoneState + "  iPhoneState = " + App_Bt.iPhoneState);
            if (phoneState != App_Bt.iPhoneState) {
                App_Bt.iPhoneState = phoneState;
                if (App_Bt.iPhoneState == 3) {
                    App_Bt.getInstance().show_PopBt();
                }
            }
            View viewR = getPage().getChildViewByid(66);
            if (viewR != null) {
                viewR.setVisibility(phoneState == 1 ? 0 : 8);
            }
            View viewT = getPage().getChildViewByid(67);
            if (viewT != null) {
                viewT.setVisibility(phoneState == 2 ? 0 : 8);
            }
            View viewT2 = getPage().getChildViewByid(68);
            if (viewT2 != null) {
                viewT2.setVisibility(phoneState != 3 ? 8 : 0);
            }
            Log.d("btpop", " 00 popBt_bk updateView bPopBtShow_Num = " + App_Bt.getInstance().bPopBtShow_Num);
        }
    }

    public void updateKeyBoardShow(boolean bUpdateBtBook) {
        boolean bIsNumShow;
        String strDrawable;
        View view = getPage().getChildViewByid(49);
        if (view != null) {
            bIsNumShow = view.getVisibility() == 0;
        } else {
            bIsNumShow = App_Bt.getInstance().bPopBtShowBak_Num;
        }
        Log.d("ldd", " updateKeyBoardShow bIsNumShow = " + bIsNumShow);
        if (this.btnKeyBoradShow != null) {
            MyUiItem item = (MyUiItem) this.btnKeyBoradShow.getTag();
            if (item.getParaStr() != null) {
                if (bIsNumShow) {
                    strDrawable = item.getParaStr()[0];
                } else {
                    strDrawable = item.getStrDrawable();
                }
                if (this.btnKeyBoradShow.getStrDrawable() != strDrawable) {
                    this.btnKeyBoradShow.setStrDrawable(strDrawable, true);
                }
            }
        }
        if (bUpdateBtBook) {
            App_Bt.getInstance().popBtBook(bIsNumShow);
        }
    }

    public void showKeyBorad(boolean bShow) {
        boolean bIsShow;
        View view = getPage().getChildViewByid(49);
        if (view != null) {
            bIsShow = view.getVisibility() == 0;
        } else {
            bIsShow = App_Bt.getInstance().bPopBtShowBak_Num;
        }
        if (bShow != bIsShow) {
            ResponseClick(45);
        }
    }

    public void setInputNumber(String num, boolean bReset) {
        JText txt = (JText) getPage().getChildViewByid(21);
        if (txt != null) {
            if (bReset) {
                App_Bt.sDialInput = FinalChip.BSP_PLATFORM_Null;
            } else {
                App_Bt.sDialInput = String.valueOf(App_Bt.sDialInput) + num;
            }
            txt.setText(App_Bt.sDialInput);
        }
    }

    public void ResponseClick(int id) {
        String strDrawable;
        JText txt;
        switch (id) {
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                Log.d("popname", " ResponseClick id =  " + (id - 26));
                App_Bt.getInstance().mIpcObj.cmdNum(id - 26);
                if (id == 36) {
                    setInputNumber("*", false);
                } else if (id == 37) {
                    setInputNumber("#", false);
                } else {
                    setInputNumber(String.valueOf(id - 26), false);
                }
                break;
            case 43:
                Bt_IpcObj.downloadBook();
                break;
            case 44:
                Bt_IpcObj.clearKey(false);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && (txt = (JText) getPage().getChildViewByid(21)) != null && !TextUtils.isEmpty(App_Bt.sDialInput)) {
                    int end = App_Bt.sDialInput.length();
                    App_Bt.sDialInput = App_Bt.sDialInput.substring(0, end - 1);
                    txt.setText(App_Bt.sDialInput);
                    break;
                }
                break;
            case 45:
            case 47:
            case 57:
                Log.d("ldd", " ResponseClick PopBt_Btn_ShowHideKeyBoard 00 ");
                if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                    Log.d("gdy7", " ResponseClick PopBt_Btn_ShowHideKeyBoard 11 ");
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addFlags(270532608);
                    intent2.setComponent(new ComponentName(Manifest.permission.bt, "com.syu.bt.BtAct"));
                    try {
                        App_Bt.getInstance().uiApp.mContext.startActivity(intent2);
                    } catch (Exception e) {
                        return;
                    }
                } else {
                    if (this.btnKeyBoradShow != null) {
                        MyUiItem item = (MyUiItem) this.btnKeyBoradShow.getTag();
                        if (item.getParaStr() != null && this.btnKeyBoradShow.getStrDrawable() != (strDrawable = item.getStrDrawable())) {
                            this.btnKeyBoradShow.setStrDrawable(strDrawable, true);
                        }
                    }
                    View view = getPage().getChildViewByid(49);
                    if (view != null) {
                        if (view.getVisibility() == 0) {
                            view.setVisibility(8);
                        } else {
                            view.setVisibility(0);
                        }
                    } else if (App_Bt.getInstance().bPopBtShow_Num) {
                        App_Bt.getInstance().popBtNum(false);
                        App_Bt.getInstance().bPopBtShowBak_Num = false;
                    } else {
                        App_Bt.getInstance().popBtNum(true);
                        App_Bt.getInstance().bPopBtShowBak_Num = true;
                    }
                    updateKeyBoardShow(true);
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        Log.d("pop", " 00 ResponseClick ");
        if (!btnClick_Third(v) && !App_Bt.bPop3rdPhone && !App_Bt.bPop3rdPhone_YF) {
            int id = v.getId();
            ResponseClick(id);
        }
    }

    private boolean btnClick_Third(View v) {
        int id = v.getId();
        Log.d("pop", " 11 btnClick_Third id = " + id);
        switch (id) {
            case 38:
            case 54:
                if (App_Bt.bPop3rdPhone_YF) {
                    Ipc_New.switch3rdPhone();
                    return true;
                }
                if ((!App_Bt.getInstance().mIpcObj.isCalling() && !Bt.sPhoneNumber.contains("1")) || FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                App_Bt.getInstance().mIpcObj.FuncDial();
                return true;
            case 39:
            case 55:
                if (App_Bt.bPop3rdPhone_YF) {
                    if (Ipc_New.isRing()) {
                        Ipc_New.hang3rdPhoneHold();
                        return true;
                    }
                    Ipc_New.hang3rdPhoneCurrent();
                    return true;
                }
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.hang();
                }
                if (App_Bt.getInstance().mIpcObj.isCalling()) {
                    return true;
                }
                App_Bt.getInstance().popBt(false, false);
                return true;
            case 40:
                if (!FuncUtils.isFastDoubleClick()) {
                    Bt_IpcObj.hang();
                }
                if (App_Bt.getInstance().mIpcObj.isCalling()) {
                    return true;
                }
                App_Bt.getInstance().popBt(false, false);
                return true;
            case 41:
            case 42:
            case 56:
                if (FuncUtils.isFastDoubleClick() || !Bt_IpcObj.isTalk()) {
                    return true;
                }
                Bt_IpcObj.hfp();
                return true;
            case 45:
            case 47:
            case 57:
                Log.d("ldd", " btnClick_Third PopBt_Btn_ShowHideKeyBoard 11 ");
                if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                    Log.d("gdy7", " btnClick_Third PopBt_Btn_ShowHideKeyBoard 11 ");
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addFlags(270532608);
                    intent2.setComponent(new ComponentName(Manifest.permission.bt, "com.syu.bt.BtAct"));
                    try {
                        App_Bt.getInstance().uiApp.mContext.startActivity(intent2);
                        return true;
                    } catch (Exception e) {
                        return true;
                    }
                }
                return false;
            case 48:
                Log.d("lld", " 00 Page PopBt  PopBt_Btn_ShowLDD ");
                App_Bt.getInstance().popBt(false, false);
                App_Bt.getInstance().popShowLLD(true);
                return true;
            case 65:
                if (CustomerUtil.isZhangConfig() && App_Bt.bPop3rdPhone_YF) {
                    App_Bt.getInstance().pop3rdPhone(false);
                }
                Log.d("gdy666", " 01 Page PopBt  showFloatBtn ");
                if (!Bt_IpcObj.isTalk()) {
                    return true;
                }
                App_Bt.bShowFloatBtn_p = true;
                App_Bt.getInstance().popBt(false, false);
                App_Bt.getInstance().showFloatBtn(true);
                return true;
            case 69:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.MuteSwitch(App_Bt.bSoundMute ? 0 : 1);
                return true;
            case 80:
                Ipc_New.switch3rdPhone();
                return true;
            case 81:
                if (Ipc_New.isRing()) {
                    Ipc_New.hang3rdPhoneHold();
                    return true;
                }
                Ipc_New.hang3rdPhoneCurrent();
                return true;
            default:
                return false;
        }
    }

    public void ResponseLongClick(int id) {
        switch (id) {
            case 26:
                Bt_IpcObj.LongClick0();
                break;
            case 44:
                Bt_IpcObj.clearKey(true);
                showKeyBorad(true);
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        if (!App_Bt.bPop3rdPhone && !App_Bt.bPop3rdPhone_YF) {
            int id = v.getId();
            ResponseLongClick(id);
        }
        return false;
    }

    public void updateBtnMute(boolean flag) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_UI5") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            JButton button = (JButton) getPage().getChildViewByid(45);
            if (button != null) {
                button.setVisibility(flag ? 0 : 8);
            }
            JButton button2 = (JButton) getPage().getChildViewByid(69);
            if (button2 != null) {
                button2.setVisibility(flag ? 8 : 0);
            }
            JButton button3 = (JButton) getPage().getChildViewByid(38);
            if (button3 != null) {
                button3.setVisibility(flag ? 8 : 0);
            }
            JButton button4 = (JButton) getPage().getChildViewByid(65);
            if (button4 != null) {
                button4.setVisibility(flag ? 0 : 8);
                return;
            }
            return;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY4") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") || App_Bt.bShowFloat || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW_YX")) {
            JButton button5 = (JButton) getPage().getChildViewByid(38);
            if (button5 != null) {
                button5.setVisibility(flag ? 8 : 0);
            }
            JButton button6 = (JButton) getPage().getChildViewByid(65);
            if (button6 != null) {
                button6.setVisibility(flag ? 0 : 8);
                return;
            }
            return;
        }
        if (App_Bt.bPop_hideKeyBoard || App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
            JButton button7 = (JButton) getPage().getChildViewByid(38);
            if (button7 != null) {
                button7.setVisibility(flag ? 8 : 0);
            }
            JButton button8 = (JButton) getPage().getChildViewByid(45);
            if (button8 != null) {
                button8.setVisibility(flag ? 0 : 8);
                return;
            }
            return;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            Log.d("gdy1280", " updateBtnMute sPhoneNumberHoldOn = " + Bt.sPhoneNumberHoldOn + " isTalk = " + flag + " Bt.DATA[FinalBt.U_PHONE_STATE] = " + Bt.DATA[9]);
            if (Bt.DATA[9] != 4 || TextUtils.isEmpty(Bt.sPhoneNumberHoldOn)) {
                JText txtTime = (JText) getPage().getChildViewByid(22);
                if (txtTime != null) {
                    txtTime.setVisibility(!flag ? 8 : 0);
                }
                JButton Pop_Btn = (JButton) getPage().getChildViewByid(45);
                if (Pop_Btn != null) {
                    Pop_Btn.setVisibility(!flag ? 8 : 0);
                }
                JButton Pop_Btn2 = (JButton) getPage().getChildViewByid(41);
                if (Pop_Btn2 != null) {
                    Pop_Btn2.setVisibility(!flag ? 8 : 0);
                }
                JButton Pop_Btn3 = (JButton) getPage().getChildViewByid(38);
                if (Pop_Btn3 != null) {
                    Pop_Btn3.setVisibility(Ipc_New.isRing() ? 0 : 8);
                    return;
                }
                return;
            }
            return;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_YX1")) {
            Log.d("gdy1280", " updateBtnMute Ipc_New.isRing() = " + Ipc_New.isRing() + " Bt.DATA[FinalBt.U_PHONE_STATE] = " + Bt.DATA[9]);
            JButton Pop_Btn4 = (JButton) getPage().getChildViewByid(65);
            if (Pop_Btn4 != null) {
                Pop_Btn4.setVisibility(Ipc_New.isRing() ? 8 : 0);
            }
            JButton Pop_Btn5 = (JButton) getPage().getChildViewByid(38);
            if (Pop_Btn5 != null) {
                Pop_Btn5.setVisibility(Ipc_New.isRing() ? 0 : 8);
            }
        }
    }

    public void updateBtnVoiceSwitch(boolean flag) {
        JButton button = (JButton) getPage().getChildViewByid(41);
        if (button != null) {
            MyUiItem item = (MyUiItem) button.getTag();
            if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                button.setStrDrawable(App_Bt.bHFP ? "bt_dialsound" : "bt_dialsound1", true);
                Log.d("hfp", " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
            } else if (item.getParaStr() != null) {
                String str = null;
                if (!flag) {
                    str = item.getStrDrawable();
                } else if (item.getParaStr() != null) {
                    str = item.getParaStr()[0];
                }
                if (button.getStrDrawable() != str && str != null) {
                    button.setStrDrawable(str, true);
                }
            } else {
                Log.d("hfp", " 44 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
                button.setFocus(App_Bt.bHFP);
            }
        }
        JButton button2 = (JButton) getPage().getChildViewByid(42);
        if (button2 != null) {
            MyUiItem item2 = (MyUiItem) button2.getTag();
            if (item2.getParaStr() != null) {
                String str2 = null;
                if (!flag) {
                    str2 = item2.getStrDrawable();
                } else if (item2.getParaStr() != null) {
                    str2 = item2.getParaStr()[0];
                }
                if (button2.getStrDrawable() != str2 && str2 != null) {
                    button2.setStrDrawable(str2, true);
                }
            }
        }
    }

    public void setDayOrNight(int value) {
    }
}
