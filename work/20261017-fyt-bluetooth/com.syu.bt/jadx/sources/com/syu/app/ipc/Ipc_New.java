package com.syu.app.ipc;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.ModuleProxy;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc.module.main.Sound;
import com.lsec.core.ipc.module.unicar.UniCar;
import com.lsec.core.util.IUiNotify;
import com.lsec.core.util.IpcUtil;
import com.lsec.core.util.data.AutoKeyEvent;
import com.lsec.core.util.data.FinalChip;
import com.myspec.MyClass;
import com.syu.broadcast.MyService;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.MediaManager;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Contact;
import com.syu.bt.page.Page_History;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.page.pop.Page_Pop3rdPhone;
import com.syu.bt.page.pop.Page_PopBt;
import com.syu.bt.page.pop.Page_PopBt_Book;
import com.syu.bt.page.pop.Page_PopLDD;
import com.syu.bt.page.pop.Page_PopSms;
import com.syu.bt.page.pop.Page_PopSwitchPhone;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.runnable.Runnable_getNameByNumberPopBtBook;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.SpeechUtil;
import com.syu.bt.util.ToastUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Ipc_New {
    Page_PopLDD page_PopLDD;
    static final int[] NumCmd = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14};
    static final int[] NOTIFYCODE_Main_Will = {0, 1, 2, 12, 50, 43, 60, 4, 166};
    static final int[] NOTIFYCODE_PopBt = {9, 8, 12, 61, 62, 67, 65};
    static final int[] NOTIFYCODE_Bt = {13, 0, 1, 26, 28, 2, 9, 34, 7, 8, 35, 12, 6, 14, 31, 18, 15, 42, 43, 44, 46, 49, 50, 51, 61, 62, 63, 64, 65, 58, 69, 67};
    static final int[] NOTIFYCODE_Bt_Will = {21, 22, 25, 29, 24, 5, 62, 67};
    public static final int[] NOTIFYCODE_DIAL = {9, 7, 8, 35, 12, 14, 6, 61, 62, 63, 64, 18, 69, 65, 46};
    public static final int[] NOTIFYCODE_BtAV = {13, 0, 1, 34, 9, 28, 2, 44, 47, 51, 58, 61, 62};
    public static final int[] NOTIFYCODE_SET = {15, 16, 20, 33, 31, 12, 36};
    public static final int[] NOTIFYCODE_Sys_Will = new int[1];
    public static final int[] NOTIFYCODE_Sound = {24, 12, 13, 11, 10, 60};
    public static final int[] NOTIFYCODE_UniCar = {0, 1, 2, 3};
    public static int state_p = 0;
    public static Runnable mRunnable_queryPair = new Runnable() { // from class: com.syu.app.ipc.Ipc_New.5
        @Override // java.lang.Runnable
        public void run() {
            Log.d("hfp11", " Ipc C_QUERY_PAIR");
            Bt.PROXY.cmd(5, 0);
        }
    };
    public static int[] HFP_state = new int[2];
    public Ipc_NewNotifyPage mNotify = new Ipc_NewNotifyPage();
    int delay = 1000;
    int phoneState_id = 0;
    int[] CallsTYPE = new int[2];
    Long[] CallsDATE = {0L, 0L};
    public int talktime = 0;
    private IUiNotify notify_PopBt = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.1
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            int value;
            JText state;
            JText state2;
            Page_PopBt pagePopBt;
            int value2;
            JPage pagePopBook;
            Log.d("ldd", " 00 notify_PopBt Page_PopLDD updateCode = " + updateCode);
            if (App_Bt.getInstance().bPopBtBook && (pagePopBook = App_Bt.getInstance().uiApp.getPage(5)) != null) {
                switch (updateCode) {
                    case 8:
                        Page_PopBt_Book page_PopBt_Book = (Page_PopBt_Book) pagePopBook.getNotify();
                        if (page_PopBt_Book != null) {
                            page_PopBt_Book.queryContacts(Bt.sPhoneNumber);
                        }
                        break;
                }
            }
            JPage pageSwitchPhone = App_Bt.getInstance().uiApp.getPage(14);
            if (pageSwitchPhone != null) {
                switch (updateCode) {
                    case 8:
                    case 9:
                    case 65:
                        Log.d("pop333", " 00 Ipc_New Page_PopSwitchPhone notify_PopBt updateCode = " + updateCode + " mIdCustomer = " + MyApplication.mIdCustomer);
                        Page_PopSwitchPhone page_PopSwitchPhone = (Page_PopSwitchPhone) pageSwitchPhone.getNotify();
                        if (page_PopSwitchPhone != null) {
                            page_PopSwitchPhone.updateBtnAccept();
                            page_PopSwitchPhone.updatePhoneName();
                        }
                        break;
                    case 61:
                        Log.d("sfth3", " 00 Ipc_New notify_PopBt HFP_STATUS mIdCustomer = " + MyApplication.mIdCustomer);
                        Page_PopSwitchPhone page_PopSwitchPhone2 = (Page_PopSwitchPhone) pageSwitchPhone.getNotify();
                        if (page_PopSwitchPhone2 != null) {
                            page_PopSwitchPhone2.updateBtnAccept();
                            page_PopSwitchPhone2.updatePhoneName();
                            if (App_Bt.bPhone2_HFP[0] < 4 || App_Bt.bPhone2_HFP[1] < 4) {
                                App_Bt.getInstance().popSwitchPhone(false);
                            }
                        }
                        break;
                }
            }
            JPage page = App_Bt.getInstance().uiApp.getPage(12);
            if (page != null) {
                Log.d("popName", " 00 Page_Pop3rdPhone Page_PopBt updateCode = " + updateCode);
                switch (updateCode) {
                    case 8:
                        Page_Pop3rdPhone page_Pop3rdPhone = (Page_Pop3rdPhone) page.getNotify();
                        if (page_Pop3rdPhone != null) {
                            page_Pop3rdPhone.updatePhoneName();
                        }
                        break;
                    case 9:
                    case 61:
                        Page_Pop3rdPhone page_Pop3rdPhone2 = (Page_Pop3rdPhone) page.getNotify();
                        if (page_Pop3rdPhone2 != null) {
                            page_Pop3rdPhone2.updateThirdPhoneView();
                            page_Pop3rdPhone2.updateBtnAccept();
                            page_Pop3rdPhone2.updatePhoneName();
                            page_Pop3rdPhone2.updateMergerPhoneName();
                        }
                        break;
                    case 12:
                        Page_Pop3rdPhone page_Pop3rdPhone3 = (Page_Pop3rdPhone) page.getNotify();
                        if (App_Bt.bLinkTwoPhone) {
                            if (ints != null && ints.length > 1) {
                                try {
                                    if (IpcUtil.strsOk(strs, 2)) {
                                        int i = Integer.parseInt(strs[0]);
                                        if (App_Bt.sPhone_callin_id == i && strs[1].equals(App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id])) {
                                            Ipc_New.this.talktime = (ints[1] + 100) / 1000;
                                        }
                                        Log.d("talk", " 22 notify_PopBt Page_Pop3rdPhone U_TALK_TIME sPhone2_talktime = " + App_Bt.sPhone2_talktime);
                                    }
                                    break;
                                } catch (Exception e) {
                                }
                            }
                            App_Bt.sPhone2_talktime = Ipc_New.this.talktime;
                            value2 = Ipc_New.this.talktime;
                        } else {
                            value2 = (Bt.DATA[updateCode] + 100) / 1000;
                        }
                        if (page_Pop3rdPhone3 != null) {
                            page_Pop3rdPhone3.updateMergerTime(value2);
                        }
                        break;
                }
            }
            JPage page2 = App_Bt.getInstance().uiApp.getPage(15);
            if (page2 != null) {
                Log.d("ldd", " 11 notify_PopBt Page_PopLDD U_TALK_TIME updateCode = " + updateCode);
                switch (updateCode) {
                    case 8:
                    case 9:
                    case 61:
                        JButton mBtnAccept = (JButton) page2.getChildViewByid(58);
                        JButton mBtnSound = (JButton) page2.getChildViewByid(59);
                        boolean isTalk = Bt_IpcObj.isTalk();
                        if (mBtnAccept != null) {
                            mBtnAccept.setVisibility(isTalk ? 8 : 0);
                        }
                        if (mBtnSound != null) {
                            mBtnSound.setVisibility(isTalk ? 0 : 8);
                        }
                        JText text = (JText) page2.getChildViewByid(62);
                        if (!isTalk && text != null) {
                            String strPhone = Bt.sPhoneNumber;
                            String strName = App_Bt.mBtInfo.getNameByNumber(strPhone);
                            if (!TextUtils.isEmpty(strName)) {
                                text.setText(strName);
                            } else {
                                text.setText(strPhone);
                            }
                        }
                        if (!Bt_IpcObj.isInCall()) {
                            App_Bt.getInstance().popShowLLD(false);
                        }
                        break;
                    case 12:
                        int time = SupportMenu.USER_MASK;
                        JText text2 = (JText) page2.getChildViewByid(62);
                        if (text2 != null) {
                            if (updateCode == 12) {
                                time = (Bt.DATA[updateCode] + 100) / 1000;
                            }
                            text2.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time / 60), Integer.valueOf(time % 60)));
                        }
                        break;
                }
            }
            JPage page3 = App_Bt.getInstance().uiApp.getPage(2);
            if (page3 != null) {
                Log.d("num", " 11 notify_PopBt Page_PopBt_Num U_TALK_TIME updateCode = " + updateCode);
                switch (updateCode) {
                    case 8:
                    case 9:
                    case 61:
                        JButton mBtnAccept2 = (JButton) page3.getChildViewByid(54);
                        JButton mBtnSound2 = (JButton) page3.getChildViewByid(56);
                        boolean isTalk2 = Bt_IpcObj.isTalk();
                        if (mBtnAccept2 != null) {
                            mBtnAccept2.setVisibility(isTalk2 ? 8 : 0);
                        }
                        if (mBtnSound2 != null) {
                            mBtnSound2.setVisibility(isTalk2 ? 0 : 8);
                        }
                        JText textName = (JText) page3.getChildViewByid(53);
                        JText textNum = (JText) page3.getChildViewByid(51);
                        if (textName != null) {
                            String strName2 = App_Bt.mBtInfo.getNameByNumber(Bt.sPhoneNumber);
                            if (!TextUtils.isEmpty(strName2)) {
                                textName.setText(strName2);
                            } else {
                                textName.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                        }
                        if (textName != null) {
                            textNum.setText(Bt.sPhoneNumber);
                        }
                        if (!Bt_IpcObj.isInCall()) {
                            App_Bt.getInstance().popShowLLD(false);
                        }
                        break;
                    case 12:
                        int time2 = SupportMenu.USER_MASK;
                        JText text3 = (JText) page3.getChildViewByid(52);
                        Log.d("num", " 22 notify_PopBt Page_PopBt_Num U_TALK_TIME ");
                        if (text3 != null) {
                            if (updateCode == 12) {
                                time2 = (Bt.DATA[updateCode] + 100) / 1000;
                            }
                            if (Ipc_New.isTalk()) {
                                text3.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time2 / 60), Integer.valueOf(time2 % 60)));
                            } else {
                                text3.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                            Log.d("num", " 33 notify_PopBt Page_PopBt_Num U_TALK_TIME time = " + time2);
                        }
                        break;
                }
            }
            JPage page4 = App_Bt.getInstance().uiApp.getPage(1);
            if (page4 == null) {
                page4 = App_Bt.getInstance().uiApp.getPage(3);
            }
            if (page4 != null) {
                Log.d("ldd", " 11 notify_PopBt Page_PopBt updateCode = " + updateCode);
                switch (updateCode) {
                    case 8:
                    case 65:
                        JText txtNum = (JText) page4.getChildViewByid(19);
                        JText txtNum_Num = (JText) page4.getChildViewByid(51);
                        JText txtNum2 = (JText) page4.getChildViewByid(20);
                        if (txtNum != null) {
                            if (CustomerUtil.isYFConfig() && !TextUtils.isEmpty(Bt.sPhoneNumberHoldOn) && Bt.DATA[9] == 4) {
                                txtNum.setText(Bt.sPhoneNumberHoldOn);
                            } else {
                                txtNum.setText(Bt.sPhoneNumber);
                            }
                            if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU_DS")) {
                                if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                    txtNum.setVisibility(8);
                                } else {
                                    txtNum.setVisibility(0);
                                }
                            }
                            if (txtNum2 != null) {
                                txtNum2.setText(txtNum.getText());
                            }
                        }
                        if (txtNum_Num != null) {
                            txtNum_Num.setText(Bt.sPhoneNumber);
                        }
                        JText txtContact = (JText) page4.getChildViewByid(23);
                        JText txtContact2 = (JText) page4.getChildViewByid(24);
                        JView headView = (JView) page4.getChildViewByid(25);
                        if (txtContact != null) {
                            if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU_DS")) {
                                if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                    txtContact.setVisibility(8);
                                } else {
                                    txtContact.setVisibility(0);
                                }
                            }
                            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                txtContact.setText(FinalChip.BSP_PLATFORM_Null);
                                if (txtContact2 != null) {
                                    txtContact2.setText(FinalChip.BSP_PLATFORM_Null);
                                }
                            } else {
                                List<SparseArray<String>> list = new ArrayList<>();
                                if (App_Bt.bLinkTwoPhone) {
                                    Log.d("pop33", " 00 U_PHONE_NUMBER  sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                                    list.addAll(App_Bt.sPhone_callin_id == 0 ? App_Bt.mBtInfo.mListContact : App_Bt.mBtInfo.mListContact2);
                                } else {
                                    list.addAll(App_Bt.mBtInfo.mListContact);
                                }
                                if (txtContact2 != null && CustomerUtil.isYFConfig()) {
                                    String strPhone2 = Bt.sPhoneNumber;
                                    if (Ipc_New.isRing() && !TextUtils.isEmpty(Bt.sPhoneNumberHoldOn)) {
                                        strPhone2 = Bt.sPhoneNumberHoldOn;
                                    }
                                    Log.d("pop33", " 04 Ipc  Runnable");
                                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumberPopBtBook(list, txtContact, txtContact2, strPhone2, strPhone2, true), false, 5);
                                } else if (headView != null) {
                                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                                        String defaultPhone = Bt.sPhoneNumber;
                                        Log.d("pop33", " 01 Ipc  Runnable");
                                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, defaultPhone, true), false, 5);
                                    } else {
                                        Log.d("gdy66", " 02 Ipc_New defaultPhone defaultPhone = " + Bt.sPhoneNumber);
                                        Log.d("pop33", " 02 Ipc  Runnable");
                                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                                    }
                                } else {
                                    Log.d("pop33", " 03 Ipc  Runnable");
                                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                                }
                            }
                        }
                        if (CustomerUtil.isYFConfig() && (pagePopBt = (Page_PopBt) page4.getNotify()) != null) {
                            pagePopBt.updateView(Bt.DATA[9]);
                            break;
                        }
                        break;
                    case 9:
                    case 61:
                        int value3 = Bt.DATA[9];
                        if (value3 >= 0 && value3 <= 6) {
                            JText text4 = (JText) page4.getChildViewByid(18);
                            if (text4 != null) {
                                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                                    text4.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                                } else {
                                    text4.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value3]));
                                }
                            }
                            JText text_Num = (JText) page4.getChildViewByid(50);
                            if (text_Num != null) {
                                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                                    text_Num.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                                } else {
                                    text_Num.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value3]));
                                }
                            }
                        }
                        if (!Ipc_New.isTalk()) {
                            JText text5 = (JText) page4.getChildViewByid(22);
                            if (text5 != null) {
                                text5.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                            JText text_Num2 = (JText) page4.getChildViewByid(52);
                            if (text_Num2 != null) {
                                text_Num2.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                        }
                        Log.d("ldd", " 00 Ipc_New notify_PopBt  Bt.DATA[FinalBt.U_PHONE_STATE] = " + Bt.DATA[9]);
                        Page_PopBt pagePopBt2 = (Page_PopBt) page4.getNotify();
                        if (pagePopBt2 != null) {
                            if (Ipc_New.this.isCalling(Bt.sLastPhoneState) && (value3 == 2 || value3 == 0)) {
                                pagePopBt2.setInputNumber(FinalChip.BSP_PLATFORM_Null, true);
                                Main.postRunnable_Ui(true, App_Bt.getInstance().mRunnable_DismissPopBT, 500L);
                            } else if (CustomerUtil.isYFConfig()) {
                                pagePopBt2.updateView(Bt.DATA[9]);
                            } else {
                                pagePopBt2.updateBtnMute(Ipc_New.isTalk());
                            }
                        }
                        break;
                    case 12:
                        Log.d("num", " 11 notify_PopBt U_TALK_TIME  ");
                        JText text6 = (JText) page4.getChildViewByid(22);
                        if (App_Bt.bLinkTwoPhone) {
                            if (ints != null && ints.length > 1) {
                                try {
                                    if (IpcUtil.strsOk(strs, 2)) {
                                        Log.d("talk", " Pop notify_Bt U_TALK_TIME strs[1] = " + strs[1] + " ints[1] = " + ints[1] + " sPhone_callin_id = " + App_Bt.sPhone_callin_id + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id]);
                                        int i2 = Integer.parseInt(strs[0]);
                                        if (App_Bt.sPhone_callin_id == i2 && strs[1].equals(App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id])) {
                                            Ipc_New.this.talktime = (ints[1] + 100) / 1000;
                                        }
                                        Log.d("talk", " 44 notify_Bt U_TALK_TIME sPhone2_talktime = " + App_Bt.sPhone2_talktime);
                                    }
                                    break;
                                } catch (Exception e2) {
                                }
                            }
                            App_Bt.sPhone2_talktime = Ipc_New.this.talktime;
                            value = Ipc_New.this.talktime;
                        } else {
                            value = (Bt.DATA[updateCode] + 100) / 1000;
                        }
                        if (text6 != null) {
                            if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU_DS")) {
                                if (!Ipc_New.isTalk()) {
                                    text6.setVisibility(8);
                                } else {
                                    text6.setVisibility(0);
                                }
                            }
                            if (!Ipc_New.isTalk()) {
                                text6.setText(FinalChip.BSP_PLATFORM_Null);
                                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                                    JText name = (JText) page4.getChildViewByid(23);
                                    if (name != null && name.getVisibility() != 0) {
                                        name.setVisibility(0);
                                        break;
                                    }
                                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && (state2 = (JText) page4.getChildViewByid(18)) != null && state2.getVisibility() != 0) {
                                    state2.setVisibility(0);
                                    break;
                                }
                            } else {
                                text6.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(value / 60), Integer.valueOf(value % 60)));
                                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                                    JText name2 = (JText) page4.getChildViewByid(23);
                                    if (name2 != null && name2.getVisibility() != 8) {
                                        name2.setVisibility(8);
                                        break;
                                    }
                                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && (state = (JText) page4.getChildViewByid(18)) != null && state.getVisibility() != 8) {
                                    state.setVisibility(8);
                                    break;
                                }
                            }
                        }
                        break;
                    case 18:
                        App_Bt.bHFP = Bt.DATA[updateCode] == 1;
                        Page_PopBt pagePopBt3 = (Page_PopBt) page4.getNotify();
                        if (pagePopBt3 != null) {
                            pagePopBt3.updateBtnVoiceSwitch(App_Bt.bHFP);
                        }
                        break;
                }
            }
            if (App_Bt.bShowBtInNaviFloatBtn && updateCode == 9) {
                switch (Bt.DATA[9]) {
                    case 0:
                    case 2:
                        if (Ipc_New.this.isCalling(Bt.sLastPhoneState)) {
                            App_Bt.getInstance().showFloatBtn(false);
                        }
                        break;
                }
            }
        }
    };
    IUiNotify notify_Sound = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.2
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            switch (updateCode) {
                case 2:
                    App_Bt.bSoundVol = Sound.DATA[updateCode];
                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                        interfaceBt.updateSoundVol();
                    }
                    break;
                case 10:
                    App_Bt.bSoundMode = Sound.DATA[updateCode];
                    for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                        interfaceBt2.updateSoundMode();
                    }
                    break;
                case 11:
                    App_Bt.bSoundLoud = Sound.DATA[updateCode];
                    for (InterfaceBt interfaceBt3 : App_Bt.mInterfaceBt) {
                        interfaceBt3.updateSoundLoud();
                    }
                    break;
                case 12:
                    App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
                    App_Bt.iPhoneMicSet = App_Bt.SB[2];
                    App_Bt.iBtAvMicSet = App_Bt.SB[3];
                    break;
                case 13:
                    App_Bt.bSoundAMP = Sound.DATA[updateCode];
                    for (InterfaceBt interfaceBt4 : App_Bt.mInterfaceBt) {
                        interfaceBt4.updateSoundAmp();
                    }
                    break;
                case 24:
                    if (App_Bt.bEnableSpec && App_Bt.getInstance().isAppTop() && Sound.DATA[updateCode] == 0) {
                        Ipc_New.this.EnableGainSpec();
                    }
                    break;
                case 60:
                    App_Bt.bSoundMute = Sound.DATA[updateCode] > 0;
                    break;
            }
            for (InterfaceBt interfaceBt5 : App_Bt.mInterfaceBt) {
                interfaceBt5.onNotify_Sound(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Main = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.3
        boolean bIsRightAppId = false;

        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) throws Throwable {
            Log.d("key", " 00 notify_Main updateCode = " + updateCode);
            switch (updateCode) {
                case 0:
                    Log.d("key", " ** 00  U_APP_ID = " + Main.DATA[0]);
                    Ipc_New.appId();
                    if (App_Bt.getInstance().isAppTop() && IpcUtil.intsOk(ints, 1) && this.bIsRightAppId && !Ipc_New.isRightAppId()) {
                        Log.d("pv", " ** 00 U_APP_ID moveTaskToBack ");
                        for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                            if (CustomerUtil.is7731() || Main.mConf_PlatForm == 6) {
                                App_Bt.getInstance();
                                if (App_Bt.bEnableHalfScreen) {
                                    interfaceBt.moveTaskToBack();
                                }
                            }
                            if (!interfaceBt.isHalf()) {
                                interfaceBt.moveTaskToBack();
                            }
                        }
                    }
                    this.bIsRightAppId = Ipc_New.isRightAppId();
                    if (!this.bIsRightAppId) {
                        App_Bt.sPage = 10003;
                        App_Bt.sPageBak = App_Bt.sPage;
                        App_Bt.sBackFlag = 0;
                    }
                    if (App_Bt.bMediaManager) {
                        if (Ipc_New.isAppIdBtAv()) {
                            MediaManager.mInstance.registerMediaButton();
                        } else {
                            MediaManager.mInstance.unregisterMediaButton();
                        }
                    }
                    break;
                case 1:
                    Bt_IpcObj.mcuOn(updateCode, Main.DATA[updateCode]);
                    break;
                case 4:
                    if (IpcUtil.intsOk(ints, 1)) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW")) {
                            App_Bt.mColorType = ints[0];
                            App_Bt.getInstance().setDayOrNight(ints[0]);
                        } else if (App_Bt.bUI_NightColour) {
                            App_Bt.mColorType = ints[0];
                            App_Bt.getInstance().setDayOrNight(ints[0]);
                        }
                    }
                    break;
                case 12:
                    if (ints != null && ints.length > 0) {
                        if (ints[0] == 1) {
                            App_Bt.bBackCarFlag = true;
                            if (Main.mConf_PlatForm != 8) {
                                App_Bt.getInstance().popBt(false, false);
                            }
                        } else {
                            App_Bt.bBackCarFlag = false;
                        }
                        break;
                    }
                    break;
                case 34:
                    if (strs != null && strs.length > 0 && CustomerUtil.isTZYConfig() && !strs[0].contains(BTUtil.getInstance().ii)) {
                        MyClass.getInstance().initCust();
                        break;
                    }
                    break;
                case 50:
                    if (ints != null && ints.length > 0) {
                        if (ints[0] == 1) {
                            App_Bt.bBtAcc_On = true;
                            if (Main.DATA[0] == 3) {
                                MyApplication.sPage_WillBe = FinalBtCtrl.Page_Av;
                            }
                            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 3000L);
                            if (CustomerUtil.isYFConfig()) {
                                Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnableStartPlayAv);
                                Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnableStartPlayAv, 4000L);
                            }
                        } else {
                            App_Bt.getInstance().mySharePreference2.saveIntValue("page_id", MyApplication.sPage_WillBe);
                        }
                        break;
                    }
                    break;
                case 60:
                    if (IpcUtil.intsOk(ints, 1) && App_Bt.getInstance().isAppTop()) {
                        Log.d("key", " 11 notify_Main ints[0] = " + ints[0]);
                        switch (ints[0]) {
                            case 0:
                                Iterator<InterfaceBt> it = App_Bt.mInterfaceBt.iterator();
                                while (it.hasNext()) {
                                    it.next().scrollOk();
                                }
                                break;
                            case 1:
                                Iterator<InterfaceBt> it2 = App_Bt.mInterfaceBt.iterator();
                                while (it2.hasNext()) {
                                    it2.next().onKeyUp();
                                }
                                break;
                            case 2:
                                Iterator<InterfaceBt> it3 = App_Bt.mInterfaceBt.iterator();
                                while (it3.hasNext()) {
                                    it3.next().onKeyDown();
                                }
                                break;
                            case 3:
                                Iterator<InterfaceBt> it4 = App_Bt.mInterfaceBt.iterator();
                                while (it4.hasNext()) {
                                    it4.next().onKeyLeft();
                                }
                                break;
                            case 4:
                                Iterator<InterfaceBt> it5 = App_Bt.mInterfaceBt.iterator();
                                while (it5.hasNext()) {
                                    it5.next().onKeyRight();
                                }
                                break;
                            case 5:
                                Iterator<InterfaceBt> it6 = App_Bt.mInterfaceBt.iterator();
                                while (it6.hasNext()) {
                                    it6.next().scrollToPrev();
                                }
                                break;
                            case 6:
                                Iterator<InterfaceBt> it7 = App_Bt.mInterfaceBt.iterator();
                                while (it7.hasNext()) {
                                    it7.next().scrollToNext();
                                }
                                break;
                            case 7:
                                if (App_Bt.getInstance().mIpcObj.isCalling()) {
                                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
                                } else {
                                    Main.postRunnable_Ui(true, MyService.mRunnable_goVoiceSearchContact);
                                }
                                break;
                            case 8:
                                Iterator<InterfaceBt> it8 = App_Bt.mInterfaceBt.iterator();
                                while (it8.hasNext()) {
                                    it8.next().DialByKey();
                                }
                                break;
                        }
                    }
                    break;
                case 113:
                    if (ints != null && ints.length > 0 && CustomerUtil.isZhangConfig() && Ipc_New.isInCall() && !App_Bt.getInstance().isAppTop()) {
                        BTUtil.writeLogToFile("U_NAVI_TOP");
                        Log.d("gdy666", " 000 Ipc_New U_NAVI_TOP ");
                        App_Bt.getInstance().popBt(true, false);
                        break;
                    }
                    break;
                case 166:
                    if (IpcUtil.intsOk(ints, 1)) {
                        App_Bt.bCarLinkAutoConnect = ints[0] > 0;
                        Log.d("gdy", " 22 recv 166  bCarLinkAutoConnect = " + App_Bt.bCarLinkAutoConnect);
                        Iterator<InterfaceBt> it9 = App_Bt.mInterfaceBt.iterator();
                        while (it9.hasNext()) {
                            it9.next().updateCarplayAuto(ints[0]);
                        }
                    }
                    break;
            }
        }
    };
    IUiNotify notify_Bt_Pop = null;
    private IUiNotify notify_Bt = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.4
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) throws Throwable {
            Page_PopSms page_PopSms;
            JPage pageSwitchPhone;
            Page_PopSwitchPhone page_PopSwitchPhone;
            int i;
            int i2;
            switch (updateCode) {
                case 0:
                case 1:
                case 2:
                case 13:
                case 26:
                case 28:
                case 34:
                case 51:
                    Log.d("hfp11", " ** 00   updateCode = " + updateCode);
                    if (updateCode == 0) {
                        Bundle data = new Bundle();
                        data.putString("btav", Bt.sId3Title);
                        if (CustomerUtil.isTZYConfig()) {
                            data.putString("btav_art", "*bug*");
                        }
                        Ipc_New.this.sendService(data);
                    } else if (updateCode == 1) {
                        Bundle data2 = new Bundle();
                        if (CustomerUtil.isTZYConfig()) {
                            data2.putString("btav", "*bug*");
                        }
                        data2.putString("btav_art", Bt.sId3Artist);
                        Ipc_New.this.sendService(data2);
                    } else if (updateCode == 28 && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                        Log.d("hfp11", " ** 22   updateCode = " + updateCode);
                        String str = String.valueOf(Bt.DATA[updateCode]);
                        Bundle data3 = new Bundle();
                        data3.putString("btav_curtime", str);
                        Ipc_New.this.sendService(data3);
                    } else if (updateCode == 2 && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                        String str1 = String.valueOf(Bt.DATA[updateCode]);
                        Bundle data4 = new Bundle();
                        data4.putString("btav_totaltime", str1);
                        Ipc_New.this.sendService(data4);
                    }
                    App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
                    break;
                case 6:
                    if (BTUtil.getInstance().isRightDevices()) {
                        if (App_Bt.bLinkTwoPhone) {
                            if (strs != null) {
                                Log.d("con3", " 111 U_PHONE_MAC_ADDR 6 strs = " + Ipc_New.this.getStrList(strs));
                                if (strs.length >= 2 && !TextUtils.isEmpty(strs[0]) && !TextUtils.isEmpty(strs[1])) {
                                    try {
                                        int i3 = Integer.parseInt(strs[0]);
                                        if (i3 >= 0 && i3 <= 1) {
                                            Log.d("con3", " 222 U_PHONE_MAC_ADDR 6 i = " + i3 + " iPhoneSwitchStep = " + App_Bt.iPhoneSwitchStep);
                                            if (App_Bt.bLinkTwoPhone) {
                                                if (App_Bt.iPhoneSwitchStep > 0) {
                                                    if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3) {
                                                        if (App_Bt.iPhoneSwitchStep == 1 && ((i3 == 0 && strs[1].equals(App_Bt.sPhone2_MAC[1])) || (i3 == 1 && strs[1].equals(App_Bt.sPhone2_MAC[0])))) {
                                                            App_Bt.iPhoneSwitchStep = 2;
                                                        } else if (((i3 == 0 && strs[1].equals(App_Bt.sPhone2_MAC[1])) || (i3 == 1 && strs[1].equals(App_Bt.sPhone2_MAC[0]))) && App_Bt.iPhoneSwitchStep == 2) {
                                                            Log.d("con3", " 333 U_PHONE_MAC_ADDR 6 i = " + i3 + " iPhoneSwitchStep = " + App_Bt.iPhoneSwitchStep);
                                                            App_Bt.iPhoneSwitchStep = 0;
                                                            String str2 = App_Bt.sPhone2_MAC[0];
                                                            App_Bt.sPhone2_MAC[0] = App_Bt.sPhone2_MAC[1];
                                                            App_Bt.sPhone2_MAC[1] = str2;
                                                            String str3 = App_Bt.sPhone2_NAME[0];
                                                            App_Bt.sPhone2_NAME[0] = App_Bt.sPhone2_NAME[1];
                                                            App_Bt.sPhone2_NAME[1] = str3;
                                                            App_Bt.mBtInfo.clearAllCallLog();
                                                            App_Bt.sPhone_callin_id_p = 0;
                                                            Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.4.2
                                                                @Override // java.lang.Runnable
                                                                public void run() {
                                                                    Log.d("con4", " 000 U_PHONE_MAC_ADDR switchList mListContact = " + App_Bt.mBtInfo.mListContact.toString());
                                                                    Log.d("con4", " 111 U_PHONE_MAC_ADDR switchList mListContact2 = " + App_Bt.mBtInfo.mListContact2.toString());
                                                                    Log.d("con4", " 222 U_PHONE_MAC_ADDR switchList mListContact = " + App_Bt.mBtInfo.mListContact.toString());
                                                                    Log.d("con4", " 333 U_PHONE_MAC_ADDR switchList mListContact2 = " + App_Bt.mBtInfo.mListContact2.toString());
                                                                    App_Bt.mBtInfo.saveDownloadContacts(App_Bt.mBtInfo.mListContact2, App_Bt.mBtInfo.mListContact);
                                                                    Ipc_New.this.saveCallLog(App_Bt.mListHis_p2, App_Bt.mListHis_p);
                                                                    App_Bt.mListHis_p.clear();
                                                                    App_Bt.mListHis_p2.clear();
                                                                    App_Bt.mBtInfo.mListHistoryIn.clear();
                                                                    App_Bt.mBtInfo.mListHistoryIn2.clear();
                                                                    App_Bt.mBtInfo.mListHistoryOut.clear();
                                                                    App_Bt.mBtInfo.mListHistoryOut2.clear();
                                                                    App_Bt.mBtInfo.mListHistoryMiss.clear();
                                                                    App_Bt.mBtInfo.mListHistoryMiss2.clear();
                                                                    Log.d("con3", " 111 U_PHONE_MAC_ADDR switchList mListContact = " + App_Bt.mBtInfo.mListContact.toString());
                                                                }
                                                            }, 500L);
                                                            Main.removeRunnable_Ui(Ipc_New.this.mRunnable_updateHistoryList);
                                                            Main.postRunnable_Ui(false, Ipc_New.this.mRunnable_updateHistoryList, 500L);
                                                        } else {
                                                            App_Bt.iPhoneSwitchStep = 0;
                                                        }
                                                    } else {
                                                        App_Bt.iPhoneSwitchStep = 0;
                                                    }
                                                } else if (App_Bt.iPhoneSwitchStep == 0) {
                                                    Log.d("his10", " 555 U_PHONE_MAC_ADDR 6 strs[1] = " + strs[1] + " sPhone2_MAC[i] = " + App_Bt.sPhone2_MAC[i3] + " name = " + App_Bt.sPhone2_NAME[i3]);
                                                    App_Bt.sPhone2_MAC[i3] = strs[1];
                                                    App_Bt.sPhone2_NAME[i3] = Ipc_New.this.getNamebyMac(strs[1]);
                                                }
                                            }
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            }
                            Log.d("hfp", " 555 U_PHONE_MAC_ADDR 6 sPhone2_MAC = " + App_Bt.sPhone2_MAC[0] + " - " + App_Bt.sPhone2_MAC[1]);
                            Log.d("save111", " --- 11 mRunnable_scanDB  U_PHONE_MAC_ADDR 6 strs = " + Ipc_New.this.getStrList(strs));
                            Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
                            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 1000L);
                        } else {
                            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
                        }
                    }
                    break;
                case 7:
                    if (strs != null) {
                        Log.d("hfp4", " 222 U_PHONE_NAME 7 strs = " + Ipc_New.this.getStrList(strs));
                        Log.d("hfp4", " 111 U_PHONE_NAME 7 mListHasPaired = " + App_Bt.mBtInfo.mListHasPaired.toString());
                        if (strs.length >= 2 && !TextUtils.isEmpty(strs[0]) && !TextUtils.isEmpty(strs[1])) {
                            try {
                                int i4 = Integer.parseInt(strs[0]);
                                if (i4 >= 0 && i4 <= 1) {
                                    App_Bt.sPhone2_NAME[i4] = strs[1];
                                }
                                break;
                            } catch (Exception e2) {
                            }
                        }
                    }
                    Log.d("hfp", " 666 U_PHONE_NAME 7 sPhone2_NAME = " + App_Bt.sPhone2_NAME[0] + " - " + App_Bt.sPhone2_NAME[1]);
                    break;
                case 8:
                    if (BTUtil.getInstance().isRightDevices()) {
                        if (strs != null) {
                            Log.d("pop44", " 111 U_PHONE_NUMBER strs length= " + strs.length + "  str" + Ipc_New.this.getStrList(strs) + " App_Bt.sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                        }
                        if (App_Bt.bLinkTwoPhone && IpcUtil.strsOk(strs, 2)) {
                            try {
                                if (strs[0] != null && strs[1] != null) {
                                    int i5 = Integer.parseInt(strs[0]);
                                    App_Bt.sPhone2_CALL_NUMBER[i5] = strs[1];
                                    if (!strs[1].isEmpty()) {
                                        App_Bt.sPhone2_CALL_NUMBER_p[i5] = strs[1];
                                    }
                                    if (App_Bt.sPhone_callin_id != 255) {
                                        Bt.sPhoneNumber = App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id];
                                    } else {
                                        Bt.sPhoneNumber = App_Bt.sPhone2_CALL_NUMBER[i5];
                                    }
                                    Log.d("pop44", " 222 U_PHONE_NUMBER i=" + i5 + "  sPhone2_CALL_NUMBER= " + App_Bt.sPhone2_CALL_NUMBER[i5] + " Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                                }
                                break;
                            } catch (Exception e3) {
                            }
                        }
                        if (Bt.values.getAsInteger("type") != null && TextUtils.isEmpty((String) Bt.values.get(SpeechUtil.KEY_NUMBER))) {
                            Log.d("his5", " 22 Ipc_New   put Bt.sPhoneNumber =" + Bt.sPhoneNumber);
                            Bt.values.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                            if (Bt.values.getAsInteger("type").intValue() == 2) {
                                App_Bt.strNumberBak = Bt.sPhoneNumber;
                            }
                        }
                        if (!TextUtils.isEmpty(Bt.sPhoneNumberHoldOn) && Bt.values3rd.getAsInteger("type") == null) {
                            Log.d("his", " 25 Ipc_New   Calls.MISSED_TYPE ");
                            Bt.values3rd.put("type", (Integer) 3);
                            Bt.values3rd.put("date", Long.valueOf(System.currentTimeMillis()));
                            if (!Bt.sPhoneNumberHoldOn.equals(Bt.values.get(SpeechUtil.KEY_NUMBER))) {
                                Bt.values3rd.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumberHoldOn);
                            } else {
                                Bt.values3rd.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                            }
                        }
                        if (Ipc_New.isTalk()) {
                            if (Bt.values.getAsInteger("type") != null && Bt.sPhoneNumber.equals(Bt.values.get(SpeechUtil.KEY_NUMBER)) && Bt.values.getAsInteger("type").intValue() == 3) {
                                Log.d("his", " 26 Ipc_New   Calls.MISSED_TYPE ");
                                Bt.values.put("type", (Integer) 1);
                            }
                            if (Bt.values3rd.getAsInteger("type") != null && Bt.sPhoneNumber.equals(Bt.values3rd.get(SpeechUtil.KEY_NUMBER))) {
                                Log.d("his", " 27 Ipc_New   Calls.MISSED_TYPE ");
                                Bt.values3rd.put("type", (Integer) 1);
                            }
                        }
                        if (TextUtils.isEmpty(Bt.sPhoneNumberHoldOn) && Bt.values3rd.getAsInteger("type") != null) {
                            if (Bt.sPhoneNumber.equals(Bt.values3rd.get(SpeechUtil.KEY_NUMBER))) {
                                if (Bt.values.getAsInteger("type") != null) {
                                    App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                                }
                            } else {
                                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.4.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        App_Bt.mBtInfo.insertCallLog(Bt.values3rd, true);
                                    }
                                }, 500L);
                            }
                        }
                    }
                    break;
                case 9:
                    if (BTUtil.getInstance().isRightDevices()) {
                        Ipc_New.this.phoneState();
                        for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                            interfaceBt.phoneState();
                        }
                        if (App_Bt.getInstance().bFloatViewShow && Bt.DATA[9] != 5) {
                            App_Bt.getInstance().showFloatBtn(false);
                        }
                    }
                    break;
                case 12:
                    if (App_Bt.bLinkTwoPhone) {
                        if (ints != null && ints.length > 1) {
                            try {
                                if (IpcUtil.strsOk(strs, 2)) {
                                    Log.d("talk", " 33 notify_Bt U_TALK_TIME strs[1] = " + strs[1] + " ints[1] = " + ints[1] + " sPhone_callin_id = " + App_Bt.sPhone_callin_id + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id]);
                                    if (App_Bt.sPhone_callin_id == Integer.parseInt(strs[0]) && strs[1].equals(App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id])) {
                                        App_Bt.sPhone2_talktime = (ints[1] + 100) / 1000;
                                    }
                                    Log.d("talk", " 44 notify_Bt U_TALK_TIME sPhone2_talktime = " + App_Bt.sPhone2_talktime);
                                    if (App_Bt.getInstance().mTxtFloat != null) {
                                        App_Bt.getInstance().mTxtFloat.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(App_Bt.sPhone2_talktime / 60), Integer.valueOf(App_Bt.sPhone2_talktime % 60)));
                                    }
                                }
                                break;
                            } catch (Exception e4) {
                            }
                        }
                    } else if (App_Bt.getInstance().mTxtFloat != null) {
                        int value = (Bt.DATA[updateCode] + 100) / 1000;
                        App_Bt.getInstance().mTxtFloat.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(value / 60), Integer.valueOf(value % 60)));
                    }
                    Log.d("hfp3", " ** 11 Ipc_new U_TALK_TIME updateCode = " + Bt.DATA[updateCode] + " sPhone2_talktime = " + App_Bt.sPhone2_talktime);
                    break;
                case 15:
                    String strDiyBtName = App_Bt.getDiyName();
                    String strDiyPin = App_Bt.getDiyPin();
                    Log.d("name", " 011 Ipc_New U_LOCAL_NAME  sDevName = " + Bt.sDevName + " strDiyBtName = " + strDiyBtName + " mBtType = " + App_Bt.mBtType);
                    if (strs != null) {
                        Log.d("name", " 022 U_LOCAL_NAME   strs!=null");
                        Log.d("name", " 033 U_LOCAL_NAME   str" + Ipc_New.this.getStrList(strs));
                    }
                    if (App_Bt.mBtType == 0 && IpcUtil.strsOk(strs, 1) && !strs[0].isEmpty()) {
                        Bt.sDevName = strs[0];
                        Log.d("name", " 11 Ipc_New U_LOCAL_NAME  sDevName = " + Bt.sDevName);
                    }
                    if (!TextUtils.isEmpty(strDiyBtName) && !strDiyBtName.equals(Bt.sDevName)) {
                        Log.d("name", " 22 Ipc_New setDevName  strDiyBtName = " + strDiyBtName);
                        Ipc_New.setDevName(strDiyBtName);
                    }
                    if (!TextUtils.isEmpty(strDiyPin) && !strDiyPin.equals(Bt.sDevPin)) {
                        Ipc_New.setDevPin(strDiyPin);
                    }
                    break;
                case 18:
                    if (strs != null && ints != null && ints.length > 0) {
                        App_Bt.bHFP = Bt.DATA[updateCode] == 1;
                    }
                    Log.d("hfp", " 11 IpcNew U_HFP  mIdCustomer = " + MyApplication.mIdCustomer + " App_Bt.bHFP = " + App_Bt.bHFP);
                    break;
                case 33:
                    App_Bt.iRingLevel = Bt.DATA[updateCode];
                    break;
                case 43:
                    Log.d("yy", " 00 ** Ipc_new 0x43 popPhoneVoice updateCode = " + Bt.DATA[updateCode] + " bPopPhoneVoice = " + App_Bt.getInstance().bPopPhoneVoice + " bPopPhoneFirstValue = " + App_Bt.getInstance().bPopPhoneFirstValue);
                    if (Bt.DATA[updateCode] == 1) {
                        App_Bt.getInstance().popPhoneVoice(true);
                    } else if (App_Bt.getInstance().bPopPhoneVoice && App_Bt.getInstance().bPopPhoneFirstValue > 0) {
                        App_Bt.getInstance().popPhoneVoice(false);
                    }
                    App_Bt.getInstance().bPopPhoneFirstValue = 2;
                    break;
                case 44:
                    if (strs != null && strs.length > 0) {
                        String level = strs[0];
                        if (!TextUtils.isEmpty(level) && BTUtil.isNumeric(level)) {
                            App_Bt.mPhoneBatterty = Math.min(Math.max(Integer.parseInt(level), 1), 5);
                        } else {
                            App_Bt.mPhoneBatterty = 0;
                        }
                    }
                    App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
                    break;
                case 46:
                    App_Bt.mOperator = FinalChip.BSP_PLATFORM_Null;
                    if (!TextUtils.isEmpty(strs[0])) {
                        App_Bt.mOperator = strs[0];
                    }
                    Log.d("bttt", "Ipc PHONE_OPERATOR operator = " + App_Bt.mOperator);
                    break;
                case 47:
                    if (ints != null && ints.length > 0) {
                        App_Bt.mPhoneCoding = ints[0];
                    }
                    App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
                    break;
                case 50:
                    if (strs != null && strs.length > 1) {
                        App_Bt.getInstance().popPhoneSMS(true);
                        JPage pageSMS = App_Bt.getInstance().uiApp.mPages.get(16);
                        if (pageSMS != null && (page_PopSms = (Page_PopSms) pageSMS.getNotify()) != null) {
                            if (!TextUtils.isEmpty(strs[0])) {
                                page_PopSms.updateSms(strs[0], strs[2]);
                            } else {
                                page_PopSms.updateSms(strs[1], strs[2]);
                            }
                        }
                    }
                    break;
                case 58:
                    Log.d("steer", " **Ipc2 BLE_STEER_DEV_STATE *  Bt.DATA[updateCode] = " + Bt.DATA[updateCode] + " * iSteer = " + App_Bt.iSteer + " iSteer_p = " + App_Bt.iSteer_p);
                    if (Bt.DATA[updateCode] != App_Bt.iSteer) {
                        if (Bt.DATA[updateCode] == 0) {
                            if (App_Bt.iSteer != -1) {
                                if (App_Bt.iSteer == 1) {
                                    Main.postRunnable_Ui(true, App_Bt.getInstance().mRunnable_SteerDisCon, 5000L);
                                }
                            }
                        } else if (Bt.DATA[updateCode] == 1) {
                            Main.removeRunnable_Ui(App_Bt.getInstance().mRunnable_SteerDisCon);
                            if (App_Bt.iSteer_p != 1) {
                                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_steer_1"));
                                App_Bt.iSteer_p = 1;
                            }
                        }
                        App_Bt.iSteer = Bt.DATA[updateCode];
                    }
                    break;
                case 61:
                    if (strs != null && ints != null && ints.length > 0) {
                        Log.d("sfth3", " 333 HFP_STATUS  strs = " + Ipc_New.this.getStrList(strs) + " ints[0] = " + ints[0] + " sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                    }
                    if (!TextUtils.isEmpty(strs[0]) && (i2 = Integer.parseInt(strs[0])) >= 0 && i2 <= 1 && ints != null && ints.length > 0) {
                        Log.d("hfp10", " 33 HFP_STATUS ints[0] = " + ints[0]);
                        if (ints[0] == 3 && App_Bt.bPhone2_HFP[i2] < 3 && App_Bt.bShowPairedBt) {
                            App_Bt.getInstance().mIpcObj.queryPairList();
                        }
                        App_Bt.bPhone2_HFP[i2] = ints[0];
                        if (App_Bt.bPhone2_HFP[i2] > 3) {
                            Log.d("hfp10", " 44 HFP_STATUS  i = " + i2 + " App_Bt.sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                            if (App_Bt.sPhone_callin_id == 255) {
                                App_Bt.sPhone_callin_id = i2;
                                App_Bt.sPhone_callin_id_p = i2;
                                App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[i2];
                            } else if (App_Bt.sPhone_callin_id != i2) {
                                App_Bt.getInstance().popSwitchPhone(true);
                            }
                        }
                        Log.d("hfp10", " 44 HFP_STATUS  bPhone2_HFP = " + App_Bt.bPhone2_HFP[0] + "  , " + App_Bt.bPhone2_HFP[1]);
                        if (App_Bt.bPhone2_HFP[0] <= 3 && App_Bt.bPhone2_HFP[1] <= 3) {
                            App_Bt.sPhone_callin_id = 255;
                        }
                        if (App_Bt.bPhone2_HFP[i2] <= 3 && App_Bt.bPhone2_dialThrdPhone) {
                            App_Bt.bPhone2_dialThrdPhone = false;
                        }
                        int state = App_Bt.bPhone2_HFP[0] > App_Bt.bPhone2_HFP[1] ? App_Bt.bPhone2_HFP[0] - 1 : App_Bt.bPhone2_HFP[1] - 1;
                        if (state >= 3 && App_Bt.sPhone_callin_id <= 1 && App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1 >= 3) {
                            state = App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1;
                        }
                        if (App_Bt.bPhone2_HFP[i2] != Ipc_New.HFP_state[i2]) {
                            Ipc_New.HFP_state[i2] = App_Bt.bPhone2_HFP[i2];
                            Bt.sLastPhoneState = Bt.DATA[9];
                            Bt.DATA[9] = state;
                            Log.d("hfp10", " 111 HFP_STATUS Bt.DATA[FinalBt.U_PHONE_STATE] " + Bt.DATA[9] + " App_Bt.sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                            Ipc_New.this.phoneState_2(i2);
                            for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                                interfaceBt2.phoneState();
                            }
                            if (App_Bt.getInstance().bFloatViewShow && Bt.DATA[9] != 5) {
                                App_Bt.getInstance().showFloatBtn(false);
                            }
                        }
                        Log.d("hfp10", " 000 HFP_STATUS state = " + state + " bPhone2_HFP[0] = " + App_Bt.bPhone2_HFP[0] + " bPhone2_HFP[1] = " + App_Bt.bPhone2_HFP[1] + " U_PHONE_STATE = " + Bt.DATA[9]);
                    }
                    Log.d("pop333", "  ** 444 HFP_STATUS bPhone2_HFP = " + App_Bt.bPhone2_HFP[0] + "* " + App_Bt.bPhone2_HFP[1]);
                    break;
                case 62:
                    if (ints != null && ints.length > 0) {
                        Log.d("sfth3", " 111 Ipc A2DP_STATUS ints.length = " + ints.length + " ints[0] = " + ints[0]);
                    } else {
                        Log.d("a2dp", " 222 Ipc A2DP_STATUS ints==null ");
                    }
                    if (strs == null) {
                        Log.d("a2dp", " 000 Ipc A2DP_STATUS strs==null ");
                    } else {
                        Log.d("a2dp", " 000 Ipc A2DP_STATUS strs.length = " + strs.length);
                        Log.d("sfth3", " 111 Ipc A2DP_STATUS strs = " + Ipc_New.this.getStrList(strs));
                    }
                    if (!TextUtils.isEmpty(strs[0]) && (i = Integer.parseInt(strs[0])) >= 0 && i <= 1 && ints != null && ints.length > 0) {
                        App_Bt.bPhone2_A2DP[i] = ints[0];
                        if (ints[0] > 1) {
                            App_Bt.bPhone2_A2DP_Mac = App_Bt.sPhone2_MAC[i];
                        }
                    }
                    break;
                case 63:
                    Log.d("pop333", " 000 WAITING_NUMBER strs = " + Ipc_New.this.getStrList(strs));
                    if (IpcUtil.strsOk(strs, 2)) {
                        try {
                            int i6 = Integer.parseInt(strs[0]);
                            Log.d("hold", " 222 WAITING_NUMBER bPhone2_HFP[i] = " + App_Bt.bPhone2_HFP[i6]);
                            App_Bt.sPhone2_WAITING_NUMBER[i6] = strs[1];
                            if (App_Bt.sPhone_callin_id == i6) {
                                if (App_Bt.bPhone2_HFP[i6] > 3 && strs[1] != null && strs[1].length() > 1) {
                                    Bt.sPhoneNumberHoldOn = strs[1];
                                    App_Bt.getInstance().pop3rdPhone(true);
                                } else {
                                    App_Bt.getInstance().pop3rdPhone(false);
                                }
                            }
                        } catch (Exception e5) {
                        }
                    }
                    break;
                case 64:
                    if (ints != null && ints.length > 0) {
                        Log.d("hfp100", " 333 Ipc SUPPORT_MULTI ints = " + ints[0] + " bLinkTwoPhone = " + App_Bt.bLinkTwoPhone);
                    }
                    break;
                case 65:
                    Log.d("pop333", " *-*00 Ipc_New BT ANSWERING_DEVICE   ");
                    if (!TextUtils.isEmpty(strs[0])) {
                        Log.d("pop333", " *-*11 ANSWERING_DEVICE  strs.length = " + strs.length + " strs = " + Ipc_New.this.getStrList(strs) + " sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                        if (strs[0].equals(App_Bt.sPhone2_MAC[0])) {
                            App_Bt.sPhone_callin_mac = strs[0];
                            App_Bt.sPhone_callin_id = 0;
                            Bt.sPhoneNumberHoldOn = App_Bt.sPhone2_WAITING_NUMBER[0];
                        } else if (strs[0].equals(App_Bt.sPhone2_MAC[1])) {
                            App_Bt.sPhone_callin_mac = strs[0];
                            App_Bt.sPhone_callin_id = 1;
                            Bt.sPhoneNumberHoldOn = App_Bt.sPhone2_WAITING_NUMBER[1];
                        }
                        Log.d("pop333", " *-*22 ANSWERING_DEVICE  Bt.sPhoneNumberHoldOn = " + Bt.sPhoneNumberHoldOn + " sPhone2_WAITING_NUMBER = " + App_Bt.sPhone2_WAITING_NUMBER[0] + "*" + App_Bt.sPhone2_WAITING_NUMBER[1]);
                        if (App_Bt.sPhone_callin_id_p != App_Bt.sPhone_callin_id) {
                            App_Bt.sPhone_callin_id_p = App_Bt.sPhone_callin_id;
                            Bt.sPhoneNumber = App_Bt.sPhone2_CALL_NUMBER[App_Bt.sPhone_callin_id];
                            Log.d("pop33", " *-*33 ANSWERING_DEVICE  sPhoneNumber = " + Bt.sPhoneNumber);
                            if (App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id == 0 ? (char) 1 : (char) 0] >= 4) {
                                App_Bt.getInstance().popSwitchPhone(true);
                            } else {
                                App_Bt.getInstance().popSwitchPhone(false);
                            }
                            if (App_Bt.bLinkTwoPhone && (pageSwitchPhone = App_Bt.getInstance().uiApp.getPage(14)) != null && (page_PopSwitchPhone = (Page_PopSwitchPhone) pageSwitchPhone.getNotify()) != null) {
                                page_PopSwitchPhone.updateBtnAccept();
                                page_PopSwitchPhone.updatePhoneName();
                            }
                            if (Bt.sPhoneNumberHoldOn != null && Bt.sPhoneNumberHoldOn.length() > 1) {
                                App_Bt.getInstance().pop3rdPhone(true);
                            } else {
                                App_Bt.getInstance().pop3rdPhone(false);
                            }
                        }
                    }
                    break;
                case 69:
                    if (strs == null) {
                        Log.d("pddd", " 000 Ipc_New PIN_CODE_PAIR_REQUEST strs==null ");
                    } else {
                        Log.d("pddd", " 000 Ipc_New PIN_CODE_PAIR_REQUEST strs.length = " + strs.length);
                        Log.d("pddd", " 111 Ipc_New PIN_CODE_PAIR_REQUEST strs = " + Ipc_New.this.getStrList(strs) + "  App_Bt.pinStatus= " + App_Bt.pinStatus);
                    }
                    if (strs != null && strs.length > 2) {
                        App_Bt.pinCode = strs[0];
                        App_Bt.pinPhoneName = strs[2];
                    }
                    App_Bt.pinStatus = true;
                    App_Bt.getInstance().popMsgSet(true);
                    break;
            }
            if (updateCode == 8) {
                if (App_Bt.bLinkTwoPhone) {
                    if (IpcUtil.strsOk(strs, 2)) {
                        Log.d("hfp", " 000 U_PHONE_NUMBER strs =" + strs[0] + "-" + strs[1] + "-");
                        if (strs[0] == FinalChip.BSP_PLATFORM_Null || strs[0] == null) {
                            Log.d("hfp", " 111 U_PHONE_NUMBERstrs[0]==null strs[0].length");
                        } else {
                            Log.d("hfp", " 222 U_PHONE_NUMBERstrs[0]!=null strs[0].length=" + strs[0].length());
                        }
                    }
                } else if (IpcUtil.strsOk(strs, 2)) {
                    if (!CustomerUtil.isYFConfig()) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                            Boolean isTALK = Boolean.valueOf(Bt.DATA[9] == 4 || Bt.DATA[9] == 3 || Bt.DATA[9] == 5);
                            Log.d("gdy14", " Ipc U_PHONE_NUMBER U_PHONE_STATE = " + Bt.DATA[9] + " bPopBtShow = " + App_Bt.getInstance().bPopBtShow);
                            if (Bt.DATA[9] == 4) {
                                if (!App_Bt.getInstance().bPopBtShow) {
                                    App_Bt.getInstance().pop3rdPhone(true);
                                }
                            } else if (isTALK.booleanValue()) {
                                App_Bt.getInstance().pop3rdPhone(true);
                            }
                        } else {
                            App_Bt.getInstance().pop3rdPhone(true);
                        }
                    }
                    App_Bt.bPop3rdPhone_YF = true;
                } else if (IpcUtil.strsOk(strs, 1)) {
                    App_Bt.bPop3rdPhone_YF = false;
                    Log.d("hfp", " 000 U_PHONE_NUMBER strs = " + strs.length);
                    if (!CustomerUtil.isYFConfig()) {
                        App_Bt.getInstance().pop3rdPhone(false);
                    }
                }
            }
            if (App_Bt.mInterfaceBt.size() == 0) {
                App_Bt.getInstance().mIpcObj.onNotify((Page_Contact) null, updateCode, ints, flts, strs);
                App_Bt.getInstance().mIpcObj.onNotify((Page_Pair) null, updateCode, ints, flts, strs);
                App_Bt.getInstance().mIpcObj.onNotify((Page_History) null, updateCode, ints, flts, strs);
            }
            for (InterfaceBt interfaceBt3 : App_Bt.mInterfaceBt) {
                interfaceBt3.onNotify(updateCode, ints, flts, strs);
            }
            if (Ipc_New.this.notify_Bt_Pop != null) {
                Ipc_New.this.notify_Bt_Pop.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    public Runnable mRunnable_updateHistoryList = new Runnable() { // from class: com.syu.app.ipc.Ipc_New.6
        @Override // java.lang.Runnable
        public void run() {
            Log.d("his", " 000 Ipc Page mRunnable_updateHistoryList mListHistoryOut.size = " + App_Bt.mBtInfo.mListHistoryOut.size());
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.resetList();
            }
        }
    };
    private IUiNotify notify_Sys = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.7
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            switch (updateCode) {
                case 0:
                    if (IpcUtil.strsOk(strs, 1) && MyApplication.myApp.getPackageName().equals(strs[0])) {
                        Log.d("null", " ** 22 U_PACKAGE_REMOVING APP_ID_NULL U_APP_ID = " + Main.DATA[0] + " strs[0] = " + strs[0]);
                        if (App_Bt.bChangeAppIdWhenTalking) {
                            if (Main.DATA[0] == 3 || Main.DATA[0] == 2 || (Main.DATA[0] == 15 && App_Bt.mBtType == 7 && CustomerUtil.isTZYConfig())) {
                                Log.d("null", " ** 33 handleRemoveTask APP_ID_NULL U_APP_ID = " + Main.DATA[0]);
                                Main.requestAppId(0);
                            }
                        } else {
                            App_Bt.getInstance().mIpcObj.requestAppIdNull();
                        }
                        break;
                    }
                    break;
            }
        }
    };
    private IUiNotify notify_UniCar = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_New.8
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify_UniCar(updateCode, ints, flts, strs);
            }
        }
    };

    public void initIpc() {
        MyApplication.mListUiNotify_Main.add(this.notify_Main);
        MyApplication.mListUiNotify_Bt.add(this.notify_Bt);
        MyApplication.mListUiNotify_Sound.add(this.notify_Sound);
        MyApplication.mListUiNotify_Sys.add(this.notify_Sys);
    }

    public void addNotify_PopBt() {
        this.notify_Bt_Pop = this.notify_PopBt;
    }

    public void removeNotify_PopBt() {
        this.notify_Bt_Pop = null;
    }

    public static boolean isStateDisconnect() {
        return Bt.DATA[9] == 0;
    }

    public static boolean isStateConnect() {
        return isStateConnect(Bt.DATA[9]);
    }

    public static boolean isStateConnect(int iState) {
        return iState == 2;
    }

    public static boolean isStateDialAble() {
        switch (Bt.DATA[9]) {
            case 2:
            case 4:
                return true;
            case 3:
            default:
                return false;
        }
    }

    public static void setNum(String number) {
        Bt.PROXY.cmd(12, (int[]) null, (float[]) null, new String[]{number});
    }

    public static void setDevName(String name) {
        Log.d("name", " Ipc_New setDevName  name = " + name);
        Bt.PROXY.cmd(19, (int[]) null, (float[]) null, new String[]{name});
    }

    public static void setDevPin(String pin) {
        Bt.PROXY.cmd(18, (int[]) null, (float[]) null, new String[]{pin});
    }

    public static void Reset() {
        Bt.PROXY.cmd(17);
        setAutoAnswer(false);
    }

    public static void setBtSwitch(boolean flag) {
        Bt.PROXY.cmd(29, flag ? 1 : 0);
    }

    public static void setAutoAnswer(boolean flag) {
        Bt.PROXY.cmd(28, flag ? 5 : -1);
    }

    public static void setNumKey(int key) {
        if (App_Bt.bLinkTwoPhone) {
            String phoneMac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
            if (Bt.DATA[9] == 5) {
                phoneMac = App_Bt.sPhone_callin_mac;
            }
            Bt.PROXY.cmd(6, new int[]{key}, (float[]) null, new String[]{phoneMac});
            return;
        }
        Bt.PROXY.cmd(6, key);
    }

    public static void clearKey(boolean isLongClick) {
        Log.d("pop333", "  ** clearKey isLongClick = " + isLongClick + " sPhone2_id = " + App_Bt.sPhone2_id + " sPhone_callin_id = " + App_Bt.sPhone_callin_id);
        if (App_Bt.bLinkTwoPhone) {
            ModuleProxy moduleProxy = Bt.PROXY;
            int[] iArr = new int[1];
            iArr[0] = isLongClick ? 1 : 0;
            moduleProxy.cmd(15, iArr, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
            return;
        }
        Bt.PROXY.cmd(15, isLongClick ? 1 : 0);
    }

    public static void SetRingLevel(int RingLevel) {
        Bt.PROXY.cmd(30, RingLevel);
    }

    public static void SetJumpNavi() {
        Main.PROXY.cmd(24, 0);
    }

    public static void SetBlackScreen() {
        Main.PROXY.cmd(16, 1);
    }

    public static void SetStandBy() {
        Main.PROXY.cmd(18, 1);
    }

    public static void PhoneVoice() {
        Log.d("pv", " ** 22 Ipc dial  ");
        Main.PROXY.cmd(133, AutoKeyEvent.KEYCODE_PHONE_VOICE);
    }

    public static void SetMcuOff() {
        Main.PROXY.cmd(17, 0);
    }

    public static void updateBt(String path) {
        Bt.PROXY.cmd(38, (int[]) null, (float[]) null, new String[]{path});
        BTUtil.getInstance().setFilePath(FinalChip.BSP_PLATFORM_Null);
    }

    public static void link() {
        switch (Main.mConf_PlatForm) {
            case 7:
            case 8:
                Bt.PROXY.cmd(13, 0);
                break;
            default:
                if (isDisConnect()) {
                    switch (Main.mConf_PlatForm) {
                        case 3:
                        case 5:
                            Bt.PROXY.cmd(13, 1);
                            break;
                        case 4:
                        default:
                            Bt.PROXY.cmd(13, 0);
                            break;
                        case 6:
                            if (MyApplication.mIdCustomer == 53) {
                                Bt.PROXY.cmd(13, 0);
                            } else {
                                Bt.PROXY.cmd(13, 1);
                            }
                            break;
                    }
                }
                break;
        }
    }

    public static void cut() {
        switch (Main.mConf_PlatForm) {
            case 3:
            case 5:
                Bt.PROXY.cmd(13, 0);
                break;
            case 4:
            default:
                Bt.PROXY.cmd(13, 1);
                break;
            case 6:
                if (MyApplication.mIdCustomer == 53) {
                    Bt.PROXY.cmd(13, 1);
                } else {
                    Bt.PROXY.cmd(13, 0);
                }
                break;
        }
    }

    public static void cut(String mac) {
        Bt.PROXY.cmd(13, new int[]{1}, (float[]) null, new String[]{mac});
    }

    public static void hangIpPhone() {
        UniCar.PROXY.cmd(1);
    }

    public static void merge3rdPhone() {
        Bt.PROXY.cmd(39);
    }

    public static void switch3rdPhone() {
        Log.d("sfth", " 111 Ipc  switch3rdPhone ");
        if (App_Bt.bLinkTwoPhone) {
            App_Bt.bPhone2_dialThrdPhone = true;
            Bt.PROXY.cmd(32, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
        } else {
            Bt.PROXY.cmd(32);
        }
    }

    public static void hang3rdPhoneHold() {
        Log.d("sfth3", " ** 33 Ipc hang3rdPhoneHold  App_Bt.sPhone_mac = " + App_Bt.sPhone_callin_mac);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(33, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
        } else {
            Bt.PROXY.cmd(33);
        }
    }

    public static void hang3rdPhoneCurrent() {
        Log.d("sfth3", " ** 33 Ipc hang3rdPhoneCurrent  App_Bt.sPhone_mac = " + App_Bt.sPhone_callin_mac);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(34, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
        } else {
            Bt.PROXY.cmd(34);
        }
    }

    public static void hang() {
        Log.d("sfth3", " ** 22 Ipc hang  App_Bt.sPhone_mac = " + App_Bt.sPhone_callin_mac + " bLinkTwoPhone = " + App_Bt.bLinkTwoPhone);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(6, new int[]{1}, (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
            Log.d("sfth3", " ** 22 Ipc hang  sPhone_callin_id = " + App_Bt.sPhone_callin_id + " bPhone2_HFP = " + App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id == 0 ? (char) 1 : (char) 0]);
            if (App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id != 0 ? (char) 0 : (char) 1] >= 4) {
                Bt.PROXY.cmd(65);
                return;
            }
            return;
        }
        Bt.PROXY.cmd(6, 1);
    }

    public static void dial() {
        Log.d("pop3", " ** 22 Ipc dial  sPhone_mac = " + App_Bt.sPhone_callin_mac + " sPhone_callin_id = " + App_Bt.sPhone_callin_id);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(6, new int[1], (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
        } else {
            Bt.PROXY.cmd(6, 0);
        }
    }

    public static void dial(String phoneNumer) {
        Log.d("con3", " ** dial C_DIAL phoneNumer = " + phoneNumer + " sPhone_mac = " + App_Bt.sPhone_callin_mac);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(7, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone_callin_mac, phoneNumer});
        } else {
            Bt.PROXY.cmd(7, (int[]) null, (float[]) null, new String[]{phoneNumer});
        }
    }

    public static void redial() {
        Bt.PROXY.cmd(8);
    }

    public static void hfp() {
        Log.d("talk", " ** 11  hfp  sPhone_mac = " + App_Bt.sPhone_callin_mac);
        if (App_Bt.bLinkTwoPhone) {
            Bt.PROXY.cmd(14, new int[]{2}, (float[]) null, new String[]{App_Bt.sPhone_callin_mac});
        } else {
            Bt.PROXY.cmd(14, 2);
        }
    }

    public static void micSwitch() {
        Bt.PROXY.cmd(42);
    }

    public static void muteSwitch(int state) {
        Sound.PROXY.cmd(60, state);
    }

    public static void downloadBook() {
        Log.d("down", " --- 11  downloadPhoneBook 11  ");
        Bt.PROXY.cmd(26);
    }

    public static void downloadBook(String mac) {
        Log.d("down", " --- 22 downloadPhoneBook 11  mac = " + mac);
        Bt.PROXY.cmd(26, (int[]) null, (float[]) null, new String[]{mac});
    }

    public static void avPrev() {
        Bt.PROXY.cmd(0);
    }

    public static void avNext() {
        Bt.PROXY.cmd(1);
    }

    public static void avPlayPause() {
        Bt.PROXY.cmd(2);
    }

    public static void avPlay() {
        Bt.PROXY.cmd(27);
    }

    public static void avPause() {
        Bt.PROXY.cmd(3);
    }

    public static void avStop() {
        Bt.PROXY.cmd(4);
    }

    public static void avLink() {
        Bt.PROXY.cmd(31, 1);
    }

    public static void avCut() {
        Bt.PROXY.cmd(31, 0);
    }

    public static void setCarLinkAutoConnect(boolean auto) {
        Log.d("gdy", " 11 setCarLinkAutoConnect  auto = " + auto);
        Main.PROXY.cmd(166, auto ? 1 : 0);
    }

    public static void startDiscover() {
        Bt.PROXY.cmd(20, 1);
    }

    public static void stopDiscover() {
        Bt.PROXY.cmd(20, 0);
    }

    public static void queryPairList() {
        Log.d("hfp123", " ** queryPairList C_QUERY_PAIR, 0");
        Main.removeRunnable_Ui(mRunnable_queryPair);
        Main.postRunnable_Ui(false, mRunnable_queryPair, 500L);
    }

    public static void connectSMS() {
        Bt.PROXY.cmd(50, (int[]) null, (float[]) null, (String[]) null);
    }

    public static void requestSMS(String str) {
        Bt.PROXY.cmd(49, (int[]) null, (float[]) null, new String[]{str});
    }

    public static void connectOBD(String str) {
        Bt.PROXY.cmd(25, (int[]) null, (float[]) null, new String[]{str});
    }

    public static void connectDevice(String str) {
        Log.d("con3", " ** connectDevice C_CONNECT_DEVICE  str= " + str);
        Bt.PROXY.cmd(24, (int[]) null, (float[]) null, new String[]{str});
    }

    public static void deleteConnectedDevice(String str) {
        Bt.PROXY.cmd(40, (int[]) null, (float[]) null, new String[]{str});
        Log.d("gdy6", " ** Icp_New C_BT_DEL_RECORD_ONE  str= " + str);
    }

    public static void test(String str) {
        if (TextUtils.isEmpty(str)) {
            Bt.PROXY.cmd(21);
        } else {
            Bt.PROXY.cmd(21, (int[]) null, (float[]) null, new String[]{str});
        }
    }

    public static boolean isAppIdBtAv() {
        return Main.DATA[0] == 3;
    }

    public static boolean isAppIdBtPhone() {
        if (Main.DATA[0] == 15 && App_Bt.mBtType == 7 && CustomerUtil.isTZYConfig()) {
            return Main.DATA[0] == 2 || Main.DATA[0] == 15;
        }
        return Main.DATA[0] == 2;
    }

    public static boolean isRightAppId() {
        return Main.mConf_PlatForm == 1 || App_Bt.bChangeAppIdWhenTalking || isAppIdBtAv() || isAppIdBtPhone();
    }

    public void requestAppIdBtPhone() {
        if (App_Bt.bChangeAppIdWhenTalking) {
            if (isInCall() || Bt_IpcObj.bAppIdBefore < 0) {
                return;
            }
            isAppIdBtPhone();
            return;
        }
        if (App_Bt.mBtType == 7 && CustomerUtil.isTZYConfig()) {
            Main.requestAppIdByOnTop(15);
        } else {
            Main.requestAppIdByOnTop(2);
        }
    }

    public void requestAppIdBtAv() {
        Main.requestAppIdByOnTop(3);
    }

    public void LauncherRequestAppIdBtAv() {
        Main.requestAppId(3);
    }

    public void requestAppIdNull() {
        if (isAppIdBtAv()) {
            avPause();
            if (!CustomerUtil.isDZSJMIB4Config()) {
                avStop();
            }
        }
        if (isRightAppId()) {
            Main.requestAppId(0);
        }
    }

    public void requestAppIdNull(int pageId) {
        Log.d("null", " ** 11 handleRemoveTask APP_ID_NULL U_APP_ID = " + Main.DATA[0] + " pageId = " + pageId);
        if (App_Bt.bIsLauncher_2Ico) {
            if (isAppIdBtPhone()) {
                Main.requestAppId(0);
                return;
            } else {
                if (isAppIdBtAv() && pageId == 10010) {
                    avPause();
                    avStop();
                    Main.requestAppId(0);
                    return;
                }
                return;
            }
        }
        if (isAppIdBtAv()) {
            avPause();
            avStop();
        }
        if (isAppIdBtAv() || isAppIdBtPhone()) {
            Main.requestAppId(0);
        }
    }

    public static void appId() {
        if (!isAppIdBtPhone() && App_Bt.bChangeAppIdWhenTalking) {
            Bt_IpcObj.bAppIdBefore = Main.DATA[0];
        }
        boolean bIsAppIdBtAv = isAppIdBtAv();
        Bt_IpcObj.bIsAppIdBtAv = bIsAppIdBtAv;
        checkAppIdIsRight(1500);
    }

    public void recoverAppId() {
        if (!isRightAppId()) {
            requestAppIdBtPhone();
        }
    }

    public static void LongClick0() {
        setNumKey(12);
    }

    public void cmdNum(int index) {
        setNumKey(NumCmd[index]);
    }

    public void sendCmdVolBal(int idSound, int value) {
        Sound.PROXY.cmd(6, idSound, value);
    }

    public void sendCmdLoud(int value) {
        Sound.PROXY.cmd(5, value);
    }

    public void sendCmdAmp(int value) {
        Sound.PROXY.cmd(7, value);
    }

    public void updateNotify_Set() {
        for (int updateCode : NOTIFYCODE_SET) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Dial() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_BtAv() {
        Log.d("hfp11", " ** 00 updateNotify_BtAv ");
        if (!App_Bt.bBtNoAV) {
            for (int updateCode : NOTIFYCODE_BtAV) {
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.onNotify(updateCode, null, null, null);
                }
            }
        }
    }

    public static void checkAppIdIsRight(int delay) {
        for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
            interfaceBt.checkAppIdIsRight(delay);
        }
    }

    public void updateNotify_Callin() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowDial() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowCall() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowKey() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_HideKey() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_HalfScreen() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowDial_HalfScreen() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowCall_HalfScreen() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Callin_ShowKey_HalfScreen() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_Dial_HalfScreen() {
        for (int updateCode : NOTIFYCODE_DIAL) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public void updateNotify_BtAv_HalfScreen() {
        Log.d("hfp11", " ** 11 updateNotify_BtAv_HalfScreen ");
        for (int updateCode : NOTIFYCODE_BtAV) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public static boolean isDisConnect(int iState) {
        switch (iState) {
            case 0:
            case 1:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public static boolean isDisConnect() {
        return isDisConnect(Bt.DATA[9]);
    }

    public static boolean isIpPhoneConnect() {
        return UniCar.DATA[3] == 5;
    }

    public boolean isCalling(int iState) {
        switch (iState) {
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    public boolean isCalling() {
        return isCalling(Bt.DATA[9]);
    }

    public boolean isMute() {
        return Sound.DATA[3] == 1;
    }

    public boolean isPauseDraw() {
        return isDisConnect() || Bt.DATA[13] != 1;
    }

    public boolean isPBAPStateLoad() {
        return Bt.DATA[29] == 2;
    }

    public static boolean isPairing() {
        return Bt.DATA[9] == 6;
    }

    public static boolean isInCall() {
        switch (Bt.DATA[9]) {
            case 3:
            case 4:
            case 5:
            case 7:
                return true;
            case 6:
            default:
                return false;
        }
    }

    public static boolean isTalk() {
        return Bt.DATA[9] == 5;
    }

    public static boolean isRing() {
        return Bt.DATA[9] == 4;
    }

    public static boolean isConnect() {
        return Bt.DATA[9] != 0;
    }

    public static boolean isMerger() {
        return Bt.DATA[9] == 7;
    }

    public static boolean isPhoneConnect() {
        if (Bt.DATA[9] == 2) {
            return true;
        }
        return isInCall();
    }

    public int[] getSB() {
        return Sound.SB;
    }

    public static void downDialLog() {
        Bt.PROXY.cmd(35);
    }

    public void checkFirstDialOrRing() {
        if (!isDisConnect(Bt.sLastPhoneState) && isDisConnect()) {
            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_ClearContactAndHistory_Disp);
            return;
        }
        if (!isDisConnect()) {
            boolean bDisconnectLastState = isDisConnect(Bt.sLastPhoneState);
            if (bDisconnectLastState || !App_Bt.bHaveScanDB) {
                Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 3000L);
            }
        }
    }

    public static void sendBtPhoneState(int state, String number) {
        String name = App_Bt.mBtInfo.getNameByNumber(number);
        Log.d("gdy13", " 22 sendBtPhoneState  name = " + name + "  number = " + number + "  state = " + state);
        Intent intent = new Intent();
        intent.setAction("com.syu.bt.sendphonestate");
        intent.putExtra("STATE", state);
        intent.putExtra("NAME", name);
        intent.putExtra("NUMBER", number);
        try {
            MyApplication.myApp.sendBroadcast(intent);
        } catch (Exception e) {
        }
    }

    public void phoneState_2(int id) throws Throwable {
        String str;
        if (App_Bt.bIsAppAmapAssistInstall) {
            if (isDisConnect()) {
                App_Bt.getInstance().sendCmd2AmapAssist("bt_disconnect");
            } else {
                App_Bt.getInstance().sendCmd2AmapAssist("bt_connect");
            }
        }
        checkFirstDialOrRing();
        App_Bt.phoneState = Bt.DATA[9];
        App_Bt.getInstance().mySharePreference2.saveIntValue("phoneState", App_Bt.phoneState);
        Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.9
            @Override // java.lang.Runnable
            public void run() {
                Log.d("gdy13", " 11 phoneState  U_PHONE_STATE = " + App_Bt.phoneState + "  sPhoneNumber = " + Bt.sPhoneNumber);
                if (Ipc_New.state_p != App_Bt.phoneState) {
                    Ipc_New.state_p = App_Bt.phoneState;
                    Ipc_New.sendBtPhoneState(App_Bt.phoneState, Bt.sPhoneNumber);
                }
            }
        }, App_Bt.phoneState == 4 ? 1000 : 100);
        Log.d("his5", " 00 phoneState  U_PHONE_STATE = " + App_Bt.phoneState + "  sPhoneNumber = " + Bt.sPhoneNumber);
        switch (App_Bt.bPhone2_HFP[id] - 1) {
            case 0:
                App_Bt.mOperator = FinalChip.BSP_PLATFORM_Null;
                App_Bt.iBtAv_CurTime = 0;
                App_Bt.iBtAv_TotalTime = 0;
                App_Bt.bDownloading = false;
                App_Bt.bHasDownBook = false;
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                Log.d("his5", " 33 phoneState  PHONE_STATE_DISCONNECTED  id = " + id + " App_Bt.sPhone_callin_id " + App_Bt.sPhone_callin_id);
                if (isCalling(Bt.sLastPhoneState) && id == App_Bt.sPhone_callin_id) {
                    clearKey(true);
                    Log.d("his5", " 33 phoneState  PHONE_STATE_DISCONNECTED  Bt.sPhoneNumber = " + Bt.sPhoneNumber + " CallsTYPE " + this.CallsTYPE[id] + " CallsDATE = " + this.CallsDATE[id] + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[id]);
                    Bt.values.clear();
                    Bt.values.put("type", Integer.valueOf(this.CallsTYPE[id]));
                    if (id == 1) {
                        Bt.values.put("type", Integer.valueOf(this.CallsTYPE[id] + App_Bt.iPhone2HisStep));
                    }
                    Bt.values.put("date", this.CallsDATE[id]);
                    Bt.values.put(SpeechUtil.KEY_NUMBER, App_Bt.sPhone2_CALL_NUMBER_p[id]);
                    if (this.CallsTYPE[id] != 0 && this.CallsDATE[id].longValue() != 0) {
                        App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                        this.CallsTYPE[id] = 0;
                        this.CallsDATE[id] = 0L;
                    }
                }
                break;
            case 2:
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                Log.d("his5", " 22 phoneState  PHONE_STATE_CONNECTED  Bt.sLastPhoneState = " + Bt.sLastPhoneState + " id = " + id);
                if (isCalling(Bt.sLastPhoneState)) {
                    Log.d("pop333", "  ** 00 clearKey bPhone2_HFP = " + App_Bt.bPhone2_HFP[0] + "* " + App_Bt.bPhone2_HFP[1]);
                    if (App_Bt.bLinkTwoPhone) {
                        if (App_Bt.bPhone2_HFP[0] < 4 && App_Bt.bPhone2_HFP[1] < 4) {
                            clearKey(true);
                        }
                    } else {
                        clearKey(true);
                    }
                    Log.d("his5", " 33 phoneState  PHONE_STATE_CONNECTED  Bt.sPhoneNumber = " + Bt.sPhoneNumber + " CallsTYPE " + this.CallsTYPE[id] + " CallsDATE = " + this.CallsDATE[id] + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[id]);
                    Bt.values.clear();
                    Bt.values.put("type", Integer.valueOf(this.CallsTYPE[id]));
                    if (id == 1) {
                        Bt.values.put("type", Integer.valueOf(this.CallsTYPE[id] + App_Bt.iPhone2HisStep));
                    }
                    Bt.values.put("date", this.CallsDATE[id]);
                    Bt.values.put(SpeechUtil.KEY_NUMBER, App_Bt.sPhone2_CALL_NUMBER_p[id]);
                    if (this.CallsTYPE[id] != 0 && this.CallsDATE[id].longValue() != 0) {
                        Log.d("his5", " 44 phoneState  PHONE_STATE_CONNECTED insertCallLog   values.NUMBER =" + Bt.values.get(SpeechUtil.KEY_NUMBER) + "* NUMBER = " + Bt.values.getAsInteger(SpeechUtil.KEY_NUMBER));
                        App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                        this.CallsTYPE[id] = 0;
                        this.CallsDATE[id] = 0L;
                    }
                }
                if (isDisConnect(Bt.sLastPhoneState)) {
                    if (this.delay > 0 && App_Bt.bJumpFavorite) {
                        this.delay = 2000;
                    }
                    Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.10
                        @Override // java.lang.Runnable
                        public void run() {
                            BTUtil.getBtTone(App_Bt.getInstance().uiApp.mContext, Bt.DATA[9], 0);
                            Ipc_New.this.delay = 0;
                        }
                    }, this.delay);
                }
                break;
            case 3:
                Log.d("his5", " 11 phoneState PHONE_STATE_DIAL   id =" + id + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[id]);
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                this.CallsTYPE[id] = 2;
                if (id == 1) {
                    this.CallsTYPE[id] = 2;
                }
                this.CallsDATE[id] = Long.valueOf(System.currentTimeMillis());
                if (!TextUtils.isEmpty(Bt.sPhoneNumber)) {
                    App_Bt.strNumberBak = Bt.sPhoneNumber;
                }
                break;
            case 4:
                Log.d("his5", " 22 phoneState PHONE_STATE_RING   id =" + id + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[id]);
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                this.CallsTYPE[id] = 3;
                this.CallsDATE[id] = Long.valueOf(System.currentTimeMillis());
                break;
            case 5:
                Log.d("his5", " 22 phoneState PHONE_STATE_TALK   id =" + id + " sPhone2_CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[id]);
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                Log.d("his5", " 11 Ipc_New  PHONE_STATE_TALK  App_Bt.phoneState = " + App_Bt.phoneState + " CallsTYPE = " + this.CallsTYPE[id]);
                if (this.CallsTYPE[id] == 3) {
                    this.CallsTYPE[id] = 1;
                }
                if (Bt.values3rd.getAsInteger("type") != null && Bt.sPhoneNumber.equals(Bt.values3rd.get(SpeechUtil.KEY_NUMBER))) {
                    Log.d("his", " 24 Ipc_New   Calls.INCOMING_TYPE ");
                    Bt.values3rd.put("type", (Integer) 1);
                }
                break;
        }
        switch (MyApplication.mIdCustomer) {
            case 66:
                Bundle data = new Bundle();
                if (Bt.DATA[9] == 2 || Bt.DATA[9] == 3 || Bt.DATA[9] == 4 || Bt.DATA[9] == 5) {
                    str = "1";
                } else {
                    str = "0";
                }
                data.putString("bt_phone_state", str);
                Intent intent = new Intent();
                intent.putExtras(data);
                intent.setAction("com.syu.widget.BtavService");
                intent.setPackage("com.android.launcher3");
                MyApplication.myApp.startService(intent);
                App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
                break;
        }
    }

    public void phoneState() throws Throwable {
        String str;
        if (App_Bt.bIsAppAmapAssistInstall) {
            if (isDisConnect()) {
                App_Bt.getInstance().sendCmd2AmapAssist("bt_disconnect");
            } else {
                App_Bt.getInstance().sendCmd2AmapAssist("bt_connect");
            }
        }
        checkFirstDialOrRing();
        App_Bt.phoneState = Bt.DATA[9];
        App_Bt.getInstance().mySharePreference2.saveIntValue("phoneState", App_Bt.phoneState);
        Log.d("gdy13", " 00 phoneState  U_PHONE_STATE = " + App_Bt.phoneState + "  sPhoneNumber = " + Bt.sPhoneNumber);
        Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.11
            @Override // java.lang.Runnable
            public void run() {
                Log.d("gdy13", " 11 phoneState  U_PHONE_STATE = " + App_Bt.phoneState + "  sPhoneNumber = " + Bt.sPhoneNumber);
                if (Ipc_New.state_p != App_Bt.phoneState) {
                    Ipc_New.state_p = App_Bt.phoneState;
                    Ipc_New.sendBtPhoneState(App_Bt.phoneState, Bt.sPhoneNumber);
                }
            }
        }, App_Bt.phoneState == 4 ? 1000 : 100);
        switch (Bt.DATA[9]) {
            case 0:
                App_Bt.mOperator = FinalChip.BSP_PLATFORM_Null;
                App_Bt.iBtAv_CurTime = 0;
                App_Bt.iBtAv_TotalTime = 0;
                App_Bt.bDownloading = false;
                App_Bt.bHasDownBook = false;
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                if (isCalling(Bt.sLastPhoneState)) {
                    clearKey(true);
                    if (Bt.values.getAsInteger("type") != null) {
                        App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                    }
                }
                break;
            case 2:
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                if (isCalling(Bt.sLastPhoneState) && Bt.values.getAsInteger("type") != null) {
                    App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                }
                if (isDisConnect(Bt.sLastPhoneState)) {
                    if (this.delay > 0 && App_Bt.bJumpFavorite) {
                        this.delay = 2000;
                    }
                    Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.12
                        @Override // java.lang.Runnable
                        public void run() {
                            BTUtil.getBtTone(App_Bt.getInstance().uiApp.mContext, Bt.DATA[9], 0);
                            Ipc_New.this.delay = 0;
                        }
                    }, this.delay);
                }
                break;
            case 3:
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                Bt.values.clear();
                Log.d("his", " 21 Ipc_New   Calls.OUTGOING_TYPE ");
                Bt.values.put("type", (Integer) 2);
                Bt.values.put("date", Long.valueOf(System.currentTimeMillis()));
                Log.d("his", " 20 Ipc_New   Calls.MISSED_TYPE =" + Bt.sPhoneNumber + "*");
                Bt.values.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                if (!TextUtils.isEmpty(Bt.sPhoneNumber)) {
                    App_Bt.strNumberBak = Bt.sPhoneNumber;
                }
                break;
            case 4:
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                if (Bt.values.getAsInteger("type") == null) {
                    Bt.values.clear();
                    Bt.values.put("type", (Integer) 3);
                    Bt.values.put("date", Long.valueOf(System.currentTimeMillis()));
                    Log.d("his", " 22 Ipc_New   Calls.MISSED_TYPE =" + Bt.sPhoneNumber + "*");
                    Bt.values.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                }
                break;
            case 5:
                if (CustomerUtil.isTZYConfig() && App_Bt.bSoundMute) {
                    Bt_IpcObj.MuteSwitch(0);
                }
                Log.d("his", " 11 Ipc_New   App_Bt.phoneState = " + App_Bt.phoneState);
                if (Bt.values.getAsInteger("type") != null) {
                    Log.d("his", " 12 Ipc_New   App_Bt.sPhoneNumber = " + Bt.sPhoneNumber + " Calls.NUMBER = " + Bt.values.get(SpeechUtil.KEY_NUMBER) + " Calls.TYPE = " + Bt.values.getAsInteger("type"));
                    if (Bt.sPhoneNumber.equals(((String) Bt.values.get(SpeechUtil.KEY_NUMBER)).trim()) && Bt.values.getAsInteger("type").intValue() == 3) {
                        Log.d("his", " 23 Ipc_New   Calls.INCOMING_TYPE ");
                        Bt.values.put("type", (Integer) 1);
                    }
                }
                if (Bt.values3rd.getAsInteger("type") != null && Bt.sPhoneNumber.equals(Bt.values3rd.get(SpeechUtil.KEY_NUMBER))) {
                    Log.d("his", " 24 Ipc_New   Calls.INCOMING_TYPE ");
                    Bt.values3rd.put("type", (Integer) 1);
                }
                break;
        }
        switch (MyApplication.mIdCustomer) {
            case 66:
                Bundle data = new Bundle();
                if (Bt.DATA[9] == 2 || Bt.DATA[9] == 3 || Bt.DATA[9] == 4 || Bt.DATA[9] == 5) {
                    str = "1";
                } else {
                    str = "0";
                }
                data.putString("bt_phone_state", str);
                Intent intent = new Intent();
                intent.putExtras(data);
                intent.setAction("com.syu.widget.BtavService");
                intent.setPackage("com.android.launcher3");
                MyApplication.myApp.startService(intent);
                App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
                break;
        }
    }

    public void phoneState(Act_Bt actBt) {
        Log.d("gdy16", " 00 Ipc_New phoneState  ** U_PHONE_STATE = " + Bt.DATA[9]);
        if (!App_Bt.bFirstBtAvPage) {
            int value = Bt.DATA[9];
            if (isCalling(Bt.sLastPhoneState) && !isCalling(value)) {
                if (App_Bt.sBackFlag != 0) {
                    boolean bMoveTask2Back = false;
                    App_Bt.getInstance();
                    if (App_Bt.bEnableHalfScreen) {
                        if ((App_Bt.sBackFlag & 4) != 0) {
                            App_Bt.getInstance().setFullScreenMode(2);
                        } else if ((App_Bt.sBackFlag & 16) != 0) {
                            App_Bt.getInstance().setFullScreenMode(1);
                        }
                    }
                    if (App_Bt.bHidePopBt && (App_Bt.sBackFlag & 32) != 0) {
                        SetJumpNavi();
                    }
                    if ((App_Bt.sBackFlag & 2) != 0) {
                        Log.d("pv", " 00 BACK_FLAG_ACTIVITY_BIT");
                        bMoveTask2Back = true;
                        actBt.myActivity.moveTaskToBack(true);
                    }
                    if ((App_Bt.sBackFlag & 1) != 0) {
                        if (!bMoveTask2Back) {
                            actBt.myActivity.goPage(App_Bt.sPageBak);
                            Log.d("HJT", "A");
                        }
                        App_Bt.sPage = App_Bt.sPageBak;
                    }
                    App_Bt.sBackFlag = 0;
                }
            } else if (Bt.sLastPhoneState != 0 && value == 0) {
                actBt.ClearAllContact(false);
            }
            if (isCalling()) {
                int iPageGo = 10003;
                App_Bt.getInstance();
                if (App_Bt.bEnableHalfScreen || App_Bt.bCallinPageFlag) {
                    iPageGo = FinalBtCtrl.Page_Callin;
                }
                actBt.DismissPopContacts();
                if (MyApplication.sPage_Current != iPageGo) {
                    App_Bt.sPageBak = MyApplication.sPage_Current;
                    App_Bt.sBackFlag |= 1;
                    actBt.myActivity.goPage(iPageGo);
                }
            }
            if (App_Bt.hideBtnWhenDisconnect) {
                actBt.setMenuBtnEnable(App_Bt.sPage, value);
                return;
            }
            if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                if (Bt.sLastPhoneState != 0 && Bt.DATA[9] == 0 && MyApplication.sPage_Current != 10012 && MyApplication.sPage_Current != 10011) {
                    if (App_Bt.bNo_Pair) {
                        actBt.myActivity.goPage(FinalBtCtrl.Page_Set);
                    } else {
                        actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                    }
                }
                updateDeviceInfo(Bt.DATA[9], actBt);
            }
        }
    }

    public void updateDeviceInfo(int value, Act_Bt actBt) {
        int i;
        int i2;
        JPage pageMenu = actBt.ui.mPages.get(10002);
        if (pageMenu != null) {
            JButton history = (JButton) pageMenu.getChildViewByid(FinalBtCtrl.Menu_History);
            JButton contact = (JButton) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Contact);
            JButton dial = (JButton) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Dial);
            JButton btav = (JButton) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Av);
            JText history_Txt = (JText) pageMenu.getChildViewByid(FinalBtCtrl.Menu_History_Txt);
            JText contact_Txt = (JText) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Contact_Txt);
            JText dial_Txt = (JText) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Dial_Txt);
            Boolean isConnect = Boolean.valueOf((Bt.DATA[9] == 1 || Bt.DATA[9] == 0 || Bt.DATA[9] == 6) ? false : true);
            if (App_Bt.bLinkTwoPhone) {
                isConnect = Boolean.valueOf(App_Bt.bPhone2_HFP[0] >= 3 || App_Bt.bPhone2_HFP[1] >= 3);
            }
            Log.d("gdy16", " 11 Ipc_New updateDeviceInfo isConnect = " + isConnect + "  ** U_PHONE_STATE = " + Bt.DATA[9]);
            if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                int color = App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK;
                if (history != null) {
                    history.setEnabled(isConnect.booleanValue());
                    history.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (contact != null) {
                    contact.setEnabled(isConnect.booleanValue());
                    contact.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (dial != null) {
                    dial.setEnabled(isConnect.booleanValue());
                    dial.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (btav != null) {
                    btav.setEnabled(isConnect.booleanValue());
                    if (!isConnect.booleanValue()) {
                        color = -7829368;
                    }
                    btav.setTextColor(color);
                    return;
                }
                return;
            }
            int color2 = -1;
            if (history_Txt != null) {
                if (isConnect.booleanValue()) {
                    i2 = -1;
                } else {
                    i2 = -7829368;
                }
                history_Txt.setTextColor(i2);
            }
            if (contact_Txt != null) {
                if (isConnect.booleanValue()) {
                    i = -1;
                } else {
                    i = -7829368;
                }
                contact_Txt.setTextColor(i);
            }
            if (dial_Txt != null) {
                if (!isConnect.booleanValue()) {
                    color2 = -7829368;
                }
                dial_Txt.setTextColor(color2);
            }
            if (history != null) {
                history.setEnabled(isConnect.booleanValue());
            }
            if (contact != null) {
                contact.setEnabled(isConnect.booleanValue());
            }
            if (dial != null) {
                dial.setEnabled(isConnect.booleanValue());
            }
        }
    }

    public String readStringFromFile() {
        try {
            File file = new File("/mnt/external_sd/BTAddr.txt");
            boolean bExist = file.exists();
            if (!bExist) {
                file = new File("/mnt/external_sdio/BTAddr.txt");
                bExist = file.exists();
            }
            if (!bExist) {
                file = new File("/mnt/usb_storage/BTAddr.txt");
                bExist = file.exists();
            }
            if (!bExist) {
                for (int i = 0; i < 21 && !(bExist = (file = new File("/mnt/usb_storage/USB_DISK" + i + "/udisk0/BTAddr.txt")).exists()); i++) {
                }
            }
            if (!bExist) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_notinsertdevice"));
                return null;
            }
            BufferedReader reader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String str = reader.readLine();
                if (str == null) {
                    break;
                }
                sb.append(str);
            }
            if (reader != null) {
                reader.close();
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void FuncDial() {
        if (Bt.sPhoneNumber.startsWith("#") && Bt.sPhoneNumber.endsWith("#") && Bt.sPhoneNumber.length() == 5 && Bt.DATA[9] == 0) {
            test(Bt.sPhoneNumber.substring(1, 4));
            return;
        }
        if (Bt.sPhoneNumber.equals("*") && Bt.DATA[9] == 0) {
            if (Main.mConf_PlatForm == 5) {
                if (!App_Bt.bFactoryTest) {
                    String addr = readStringFromFile();
                    App_Bt.bFactoryTest = true;
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadFactoryTest, new Runnable() { // from class: com.syu.app.ipc.Ipc_New.13
                        @Override // java.lang.Runnable
                        public void run() {
                            while (App_Bt.bFactoryTest) {
                                if (App_Bt.iOverTime < 10) {
                                    App_Bt.iOverTime++;
                                    if (App_Bt.iOverTime == 10) {
                                        App_Bt.iOverTime = 0;
                                        App_Bt.bFactoryTest = false;
                                        return;
                                    } else {
                                        try {
                                            Thread.sleep(1000L);
                                        } catch (InterruptedException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                }
                            }
                        }
                    }, false, 1);
                    test(addr);
                    return;
                }
                return;
            }
            if (Main.mConf_PlatForm == 7 || Main.mConf_PlatForm == 8) {
                test("test");
                return;
            } else {
                test(null);
                return;
            }
        }
        Log.d("hy", " ** 22 Ipc FuncDial  sPhoneNumber = " + Bt.sPhoneNumber + " U_PHONE_STATE = " + Bt.DATA[9]);
        if (Bt.DATA[9] != 2 && Bt.DATA[9] != 4) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_cannot_dial"));
            return;
        }
        if (!FinalChip.BSP_PLATFORM_Null.equals(Bt.sPhoneNumber) && Bt.DATA[9] != 5) {
            dial();
        } else if (Bt.DATA[9] == 2) {
            redial();
        } else if (Bt.DATA[9] == 4) {
            dial();
        }
    }

    public boolean FuncDialIpPhone() {
        if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
            return false;
        }
        if (isConnect()) {
            App_Bt.bCutBtByIpPhone = true;
            cut();
        }
        UniCar.PROXY.cmd(0, Bt.sPhoneNumber);
        return true;
    }

    public float getElectricValue() {
        if (isPauseDraw()) {
            return 0.0f;
        }
        return Sound.getSpectrumValue();
    }

    public void EnableGainSpec() {
        Sound.PROXY.cmd(21, 1);
    }

    public void DisableGainSpec() {
        Sound.PROXY.cmd(21, 0);
    }

    public void saveCallLog(List<SparseArray<String>> mList, List<SparseArray<String>> mList2) {
        Log.d("his7", " 000 Ipc_New saveCallLog listType mList = " + mList.toString());
        Log.d("his7", " 111 Ipc_New saveCallLog listType mList2 = " + mList2.toString());
        for (SparseArray<String> map : mList) {
            ContentValues values = new ContentValues();
            values.put("type", map.get(FinalBtCtrl.HistoryItem_Type));
            values.put("date", map.get(FinalBtCtrl.HistoryItem_Date));
            values.put(SpeechUtil.KEY_NUMBER, map.get(FinalBtCtrl.HistoryItem_Txt_Num));
            if (values != null) {
                Log.d("his3", " 222 Ipc_New saveCallLog listType " + values.toString());
                App_Bt.mBtInfo.insertCallLog(values, false);
            }
        }
        for (SparseArray<String> map2 : mList2) {
            ContentValues values2 = new ContentValues();
            values2.put("type", Integer.valueOf(Integer.parseInt(map2.get(FinalBtCtrl.HistoryItem_Type)) + App_Bt.iPhone2HisStep));
            values2.put("date", map2.get(FinalBtCtrl.HistoryItem_Date));
            values2.put(SpeechUtil.KEY_NUMBER, map2.get(FinalBtCtrl.HistoryItem_Txt_Num));
            if (values2 != null) {
                Log.d("his3", " 111 Ipc_New saveCallLog listType " + values2.toString());
                App_Bt.mBtInfo.insertCallLog(values2, false);
            }
        }
    }

    public String getNamebyMac(String mac) {
        if (App_Bt.bShowPairedBt && App_Bt.mBtInfo.mListHasPaired.size() > 0) {
            for (SparseArray<String> dev : App_Bt.mBtInfo.mListHasPaired) {
                String addr = dev.get(FinalBtCtrl.PairedItem_Txt_Addr);
                if (!TextUtils.isEmpty(addr) && addr.equalsIgnoreCase(mac)) {
                    return dev.get(FinalBtCtrl.PairedItem_Txt_Name);
                }
            }
        }
        return FinalChip.BSP_PLATFORM_Null;
    }

    public void switchList(List<SparseArray<String>> mList_p1, List<SparseArray<String>> mList_p2) {
        List<SparseArray<String>> mList = new ArrayList<>();
        mList.addAll(mList_p1);
        mList_p1.clear();
        mList_p1.addAll(mList_p2);
        mList_p2.clear();
        mList_p2.addAll(mList);
        mList.clear();
    }

    public String getStrList(String[] strs) {
        String str = FinalChip.BSP_PLATFORM_Null;
        if (!TextUtils.isEmpty(strs[0])) {
            for (int i = 0; i < strs.length; i++) {
                if (strs[i] != null) {
                    str = String.valueOf(str) + "*" + strs[i];
                } else {
                    str = String.valueOf(str) + "*NULL";
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendService(Bundle bundle) {
        if (isExitMusicAndTimeWidget()) {
            Intent intent = new Intent();
            intent.putExtras(bundle);
            intent.setAction("com.syu.widget.BtavService");
            intent.setPackage("com.syu.widget");
            MyApplication.myApp.startServiceSafely(intent);
        }
        String launcher = getLauncherPackageName(App_Bt.getInstance().uiApp.mContext);
        if (launcher != null) {
            Intent intent2 = new Intent();
            intent2.putExtras(bundle);
            intent2.setAction("com.syu.widget.BtavService");
            intent2.setPackage(launcher);
            MyApplication.myApp.startServiceSafely(intent2);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_UI5") && isExitTzyApplication()) {
            Intent intent3 = new Intent();
            intent3.putExtras(bundle);
            intent3.setAction("com.syu.widget.BtavService");
            intent3.setPackage("cn.teyes.online");
            MyApplication.myApp.startServiceSafely(intent3);
        }
    }

    private boolean isExitMusicAndTimeWidget() {
        PackageManager pm = MyApplication.myApp.getPackageManager();
        List<PackageInfo> pinfo = pm.getInstalledPackages(0);
        for (PackageInfo p : pinfo) {
            if ("com.syu.widget".equals(p.packageName)) {
                return true;
            }
        }
        return false;
    }

    private String getLauncherPackageName(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo res = context.getPackageManager().resolveActivity(intent, 0);
        if (res == null || res.activityInfo == null || res.activityInfo.packageName.equals("android")) {
            return null;
        }
        return res.activityInfo.packageName;
    }

    boolean isExitTzyApplication() {
        PackageManager pm = MyApplication.myApp.getPackageManager();
        List<PackageInfo> pinfo = pm.getInstalledPackages(0);
        for (PackageInfo p : pinfo) {
            if ("cn.teyes.online".equals(p.packageName)) {
                return true;
            }
        }
        return false;
    }
}
