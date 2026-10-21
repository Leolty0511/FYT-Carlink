package com.syu.app.ipc;

import android.bluetooth.BluetoothAdapter;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JSwitchButton;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc.module.unicar.UniCar;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.IpcUtil;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.MediaManager;
import com.syu.bt.ctrl.JPinBar;
import com.syu.bt.ctrl.JRotView;
import com.syu.bt.ctrl.JSwitchButon2;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Av;
import com.syu.bt.page.Page_Av_HalfScreen;
import com.syu.bt.page.Page_Callin;
import com.syu.bt.page.Page_Callin_HalfScreen;
import com.syu.bt.page.Page_Callin_HideKey;
import com.syu.bt.page.Page_Callin_ShowCall;
import com.syu.bt.page.Page_Callin_ShowCall_HalfScreen;
import com.syu.bt.page.Page_Callin_ShowDial;
import com.syu.bt.page.Page_Callin_ShowDial_HalfScreen;
import com.syu.bt.page.Page_Callin_ShowKey;
import com.syu.bt.page.Page_Callin_ShowKey_HalfScreen;
import com.syu.bt.page.Page_Contact;
import com.syu.bt.page.Page_Dial;
import com.syu.bt.page.Page_Dial_HalfScreen;
import com.syu.bt.page.Page_History;
import com.syu.bt.page.Page_Menu;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.page.Page_Set;
import com.syu.bt.runnable.Runnable_DownOver1st;
import com.syu.bt.runnable.Runnable_UBook;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.SpeechUtil;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Ipc_NewNotifyPage {
    public Page_Contact Page_Contact_p;
    public static String sPhoneNumber_p = FinalChip.BSP_PLATFORM_Null;
    public static String artist_p = FinalChip.BSP_PLATFORM_Null;
    public static String title_p = FinalChip.BSP_PLATFORM_Null;
    public static int[] HFP_state = new int[2];
    List<SparseArray<String>> listContactDownload = new ArrayList();
    List<SparseArray<String>> listContact = new ArrayList();
    boolean zzz = true;
    public Runnable mRunnableDownOver = new Runnable() { // from class: com.syu.app.ipc.Ipc_NewNotifyPage.1
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.bDownloading) {
                App_Bt.bDownloading = false;
                Log.d("hfp", " --- 000 mRunnableDownOver U_BOOK App_Bt.bDownloading = " + App_Bt.bDownloading);
                if (CustomerUtil.isYFConfig()) {
                    Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
                    Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 200L);
                }
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_DownOver1st(Ipc_NewNotifyPage.this.Page_Contact_p), true, 10);
            }
        }
    };
    public Runnable mRunnable_showLoading = new Runnable() { // from class: com.syu.app.ipc.Ipc_NewNotifyPage.2
        @Override // java.lang.Runnable
        public void run() {
            Log.d("down", " 111 mRunnable_showLoading App_Bt.bDownloading = " + App_Bt.bDownloading);
            if (Ipc_NewNotifyPage.this.Page_Contact_p != null) {
                Ipc_NewNotifyPage.this.Page_Contact_p.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
            }
        }
    };
    public int iPhoneState_p = 0;
    public Runnable mRunnable_EndLoad = new Runnable() { // from class: com.syu.app.ipc.Ipc_NewNotifyPage.3
        @Override // java.lang.Runnable
        public void run() {
            Log.d("his16", " 000 Ipc Page mRunnable_EndLoad mListHistoryOut.size = " + App_Bt.mBtInfo.mListHistoryOut.size());
            App_Bt.iDownRecordState = 255;
            App_Bt.bDownloadingRecord = false;
        }
    };
    public Runnable mRunnable_updateHistoryList = new Runnable() { // from class: com.syu.app.ipc.Ipc_NewNotifyPage.4
        @Override // java.lang.Runnable
        public void run() {
            Log.d("his6", " 000 Ipc Page mRunnable_updateHistoryList mListHistoryOut.size = " + App_Bt.mBtInfo.mListHistoryOut.size());
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.resetList();
            }
        }
    };

    public void phoneState(Page_Dial page_Dial) {
        if (page_Dial != null) {
            int mBtState = Bt.DATA[9];
            Log.d("gdy3", " 22  Page_Dial  Ipc_NewNotifyPage mBtState = " + mBtState);
            page_Dial.updateDeviceInfo(mBtState);
            page_Dial.resetThridDial(mBtState);
            page_Dial.resetBtnEnable();
            Main.postRunnable_Ui(true, App_Bt.getInstance().mRunnable_updatePhoneView, 100L);
            if (Ipc_New.isInCall()) {
                page_Dial.showInCallAnim();
            } else {
                page_Dial.hideInCallAnim();
            }
            if (CustomerUtil.isYFConfig()) {
                switch (mBtState) {
                    case 0:
                    case 2:
                    case 3:
                    case 4:
                        App_Bt.sDialInput = FinalChip.BSP_PLATFORM_Null;
                        break;
                }
            }
            Log.d("hfp", " 555 Ipc_NewNotifyPage ints phoneState   ");
            page_Dial.showPhone();
        }
    }

    public boolean isStateValid() {
        switch (Bt.DATA[9]) {
            case 5:
                switch (Bt.sLastPhoneState) {
                    case 3:
                    case 4:
                        return true;
                    default:
                        return false;
                }
            default:
                return true;
        }
    }

    public void onNotify(Page_Menu page_Menu, int updateCode, int[] ints, float[] flts, String[] strs) {
        Log.d("name", " 00  Page_Menu onNotify updateCode = " + updateCode);
        switch (updateCode) {
            case 8:
                JText textNum = (JText) page_Menu.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num2);
                if (App_Bt.needSplice && !TextUtils.isEmpty(Bt.sPhoneNumber) && !Bt.sPhoneNumber.startsWith("+")) {
                    Bt.sPhoneNumber = "+" + Bt.sPhoneNumber;
                    Log.d("pop33", " 555 U_PHONE_NUMBER Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                }
                if (textNum != null) {
                    textNum.setText(Bt.sPhoneNumber);
                }
                JText textBigNum = (JText) page_Menu.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_BigNum);
                if (textBigNum != null) {
                    textBigNum.setText(Bt.sPhoneNumber);
                }
                JText textName = (JText) page_Menu.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name2);
                if (textName != null) {
                    if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        textName.setText(FinalChip.BSP_PLATFORM_Null);
                    } else {
                        List<SparseArray<String>> list = new ArrayList<>();
                        list.addAll(App_Bt.mBtInfo.mListContact);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, textName, FinalChip.BSP_PLATFORM_Null, true), false, 5);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Dial page_Dial, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 6:
            case 9:
            case 61:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    page_Dial.controlDialInfo(Bt.DATA[9]);
                }
                phoneState(page_Dial);
                break;
            case 7:
                JText text = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
                JText text2 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName2);
                if (text != null) {
                    String value = Bt.sPhoneName;
                    text.setText(value);
                    if (text2 != null) {
                        text2.setText(value);
                    }
                }
                break;
            case 8:
            case 65:
                Log.d("sfth3", " 00 notify_BtPage_Dial ANSWERING_DEVICE  ");
                if (CustomerUtil.isYFConfig()) {
                    boolean is3rd = false;
                    if (IpcUtil.strsOk(strs, 2)) {
                        is3rd = true;
                    }
                    if (App_Bt.bPop3rdPhone != is3rd) {
                        App_Bt.bPop3rdPhone = is3rd;
                        Main.removeRunnable_Ui(App_Bt.getInstance().mRunnable_updatePhoneView);
                        Main.postRunnable_Ui(false, App_Bt.getInstance().mRunnable_updatePhoneView, 100L);
                    }
                }
                if (updateCode == 65) {
                    page_Dial.showPhone();
                }
                if (Bt.sPhoneNumber != null) {
                    Log.d("sfth2", " 00 notify_BtPage_Dial U_PHONE_NUMBER s sPhoneNumber = " + Bt.sPhoneNumber);
                }
                page_Dial.updateThirdPhoneName();
                Bt.sPhoneNumber = BTUtil.getInstance().needSplice(Bt.sPhoneNumber);
                Bt.sPhoneNumber = Bt.sPhoneNumber.trim();
                Log.d("pop33", " 666 U_PHONE_NUMBER Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                JText text_num = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num);
                JText text_num2 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num2);
                JText text_big = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_BigNum);
                JText text_mini = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_MiniNum);
                JText textState = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State);
                JText textState2 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State2);
                View headIco = page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Head);
                if (App_Bt.bShowHeadIco && !TextUtils.isEmpty(Bt.sPhoneNumber) && headIco != null && App_Bt.myAlbum.size() > 0) {
                    if (App_Bt.bLinkTwoPhone) {
                        Bitmap bmp = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                        if (bmp != null) {
                            headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.outputCircleLittle(bmp, 15)));
                        } else {
                            headIco.setBackground(page_Dial.getPage().getDrawableFromPath("bt_user_icon", page_Dial.getPage().mDrawables, page_Dial.getPage().mDrawables));
                        }
                    } else {
                        Bitmap bmp2 = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                        if (bmp2 != null) {
                            headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.outputCircleLittle(bmp2, 15)));
                        } else {
                            headIco.setBackground(page_Dial.getPage().getDrawableFromPath("bt_user_icon", page_Dial.getPage().mDrawables, page_Dial.getPage().mDrawables));
                        }
                    }
                }
                if (text_num != null) {
                    text_num.setText(Bt.sPhoneNumber);
                }
                if (text_mini != null) {
                    text_mini.setText(Bt.sPhoneNumber);
                }
                if (text_num2 != null) {
                    if (CustomerUtil.isYFConfig()) {
                        JText text3 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num3);
                        if (text3 != null) {
                            text3.setText(App_Bt.sDialInput);
                        }
                        if (!TextUtils.isEmpty(App_Bt.sDialInput)) {
                            int pos = Bt.sPhoneNumber.lastIndexOf(App_Bt.sDialInput);
                            if (pos > 0) {
                                text_num2.setText(Bt.sPhoneNumber.subSequence(0, pos));
                            }
                        } else {
                            text_num2.setText(Bt.sPhoneNumber);
                        }
                    } else {
                        text_num2.setText(Bt.sPhoneNumber);
                    }
                }
                if (text_big != null) {
                    text_big.setText(Bt.sPhoneNumber);
                }
                if (App_Bt.bHistoryLogAllFlag) {
                    page_Dial.HideOrShowNumberPad();
                }
                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                    Log.d("pop3", " Page_dial sPhone_callin_id = " + App_Bt.sPhone_callin_id + " * bPhone2_HFP = " + App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id]);
                    textState2.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                    textState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                }
                JText text4 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
                JText text5 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name2);
                JText text6 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name3);
                JView view = (JView) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowHead);
                JView view2 = (JView) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowHead2);
                if (text4 != null || text5 != null || text6 != null) {
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        text5 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
                    } else if (!App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && text5 != null) {
                        text5.setText(Bt.sPhoneNumber);
                    }
                    List<SparseArray<String>> list = new ArrayList<>();
                    if (App_Bt.bLinkTwoPhone) {
                        Log.d("talk", " 00 U_PHONE_NUMBER  sPhone2_id = " + App_Bt.sPhone2_id);
                        list.addAll(App_Bt.sPhone2_id == 0 ? App_Bt.mBtInfo.mListContact : App_Bt.mBtInfo.mListContact2);
                    } else {
                        list.addAll(App_Bt.mBtInfo.mListContact);
                    }
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("XINGKE")) {
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text4, text5, text6, Bt.sPhoneNumber, true), false, 5);
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text4, text5, text6, view, view2, Bt.sPhoneNumber, true), false, 5);
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        Log.d("gdy6", " 01  Page_Dial onNotify Bt.sPhoneNumber =" + Bt.sPhoneNumber + "-sPhoneNumber_p =" + sPhoneNumber_p + "-");
                        if (!Bt.sPhoneNumber.equals(sPhoneNumber_p)) {
                            sPhoneNumber_p = Bt.sPhoneNumber;
                            Log.d("name", " 02  Page_Dial onNotify Bt.sPhoneNumber =" + Bt.sPhoneNumber + "-sPhoneNumber_p =" + sPhoneNumber_p + "-");
                            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text4, text5, text_num2, text_num, text_mini, text_big, Bt.sPhoneNumber, true), false, 5);
                        }
                    } else {
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text4, text5, text6, FinalChip.BSP_PLATFORM_Null, true), false, 5);
                    }
                }
                break;
            case 12:
                JText text7 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                JText text8 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
                int time = (Bt.DATA[updateCode] + 100) / 1000;
                if (App_Bt.bLinkTwoPhone) {
                    time = App_Bt.sPhone2_talktime;
                }
                Log.d("talk", " 55 notify_Page U_TALK_TIME sPhone2_talktime = " + App_Bt.sPhone2_talktime);
                if (text7 != null) {
                    text7.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time / 60), Integer.valueOf(time % 60)));
                }
                if (text8 != null) {
                    Log.d("talk", " 66 notify_Page U_TALK_TIME value = " + time);
                    text8.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time / 60), Integer.valueOf(time % 60)));
                }
                break;
            case 14:
                JText text9 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr);
                JText text10 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr2);
                if (text9 != null) {
                    String value2 = Bt.sDevAddr;
                    if (!TextUtils.isEmpty(Bt.sDevAddr)) {
                        if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                            text9.setText(String.valueOf(value2.substring(0, 2)) + ":" + value2.substring(2, 4) + ":" + value2.substring(4, 6) + ":" + value2.substring(6, 8) + ":" + value2.substring(8, 10) + ":" + value2.substring(10, 12));
                        } else {
                            text9.setText(value2);
                        }
                    }
                    if (Bt.DATA[9] == 2 || MyApplication.mIdCustomer == 111) {
                        text9.setVisibility(4);
                    } else if (Bt.DATA[9] == 0) {
                        text9.setVisibility(0);
                    }
                    if (MyApplication.mIdCustomer == 139) {
                        text9.setVisibility(4);
                    }
                    if (text10 != null) {
                        text10.setText(text9.getText());
                        text10.setVisibility(text9.getVisibility());
                    }
                }
                break;
            case 15:
                page_Dial.updateBtNameAndPin();
                break;
            case 18:
                App_Bt.bHFP = Bt.DATA[updateCode] == 1;
                Log.d("hfppp", " ***************** IpcNewPage U_HFP   App_Bt.bHFP = " + App_Bt.bHFP);
                page_Dial.updateBtnVoiceSwitch(App_Bt.bHFP);
                break;
            case 21:
                if ((Bt.DATA[21] > 0 || Bt.DATA[9] != 4) && Bt.DATA[21] > 0 && Bt.DATA[9] == 4) {
                    JText text11 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                    JText text12 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
                    int value3 = (Bt.DATA[21] + 200) / 1000;
                    Log.d("talk", " 88 notify_Page U_AUTOPICK_REMAIN value = " + value3);
                    if (value3 > 0) {
                        if (text11 != null) {
                            if (value3 > 0) {
                                text11.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value3);
                            } else {
                                text11.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                        }
                        if (text12 != null) {
                            if (value3 > 0) {
                                text12.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value3);
                            } else {
                                text12.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                        }
                    }
                }
                break;
            case 42:
                App_Bt.bPhoneMIC = Bt.DATA[updateCode] == 1;
                page_Dial.updateMicSwitch(App_Bt.bPhoneMIC);
                break;
            case 62:
            case 64:
                Log.d("hfp", " 444 Ipcpage ints SUPPORT_MULTI   bLinkTwoPhone = " + App_Bt.bLinkTwoPhone);
                page_Dial.showPhone();
                break;
            case 149:
                App_Bt.getInstance();
                if (App_Bt.bEnableHalfScreen) {
                    page_Dial.HideOrShowNumberPad();
                }
                break;
        }
    }

    public void onNotify(Page_Av page_Av, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 0:
                String title = Bt.sId3Title;
                JText text = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title);
                title_p = title;
                JText textName = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Name);
                if (Bt_IpcObj.isDisConnect()) {
                    if (text != null) {
                        text.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    }
                    if (textName != null) {
                        textName.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                } else if (text != null) {
                    text.setText(title);
                    JText text2 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title_Half);
                    if (text2 != null) {
                        text2.setText(text.getText());
                    }
                }
                Log.d("id3", " 11  IpcNew FinalBt.U_BTAV_ID3_TITLE Bt.sId3Title ");
                if (App_Bt.bMediaManager && MediaManager.mInstance != null) {
                    MediaManager.mInstance.dispFileInfo();
                    break;
                }
                break;
            case 1:
                String artist = Bt.sId3Artist;
                Log.d("gdy2", " 22 U_BTAV_ID3_ARTIST artist = " + artist + " artist_p = " + artist_p);
                JText text3 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist);
                if (text3 != null) {
                    text3.setText(artist);
                }
                JText textName2 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Name);
                if (artist_p != null && artist != null && !artist_p.equals(artist)) {
                    artist_p = artist;
                    if (textName2 != null) {
                        textName2.setText(title_p);
                    }
                    break;
                }
                break;
            case 2:
                Log.d("id3", " 11  IpcNew FinalBt.U_BTAV_TOTAL_TIME ");
                if (!Bt_IpcObj.isDisConnect()) {
                    App_Bt.iBtAv_TotalTime = Bt.DATA[updateCode];
                    Log.d("id3", " 11  IpcNew U_BTAV_TOTAL_TIME = " + App_Bt.iBtAv_TotalTime);
                    if (page_Av != null) {
                        page_Av.updateSeekbar(App_Bt.iBtAv_TotalTime, true);
                    }
                }
                break;
            case 9:
            case 61:
                if (Bt_IpcObj.isDisConnect()) {
                    page_Av.handleSeekPos(App_Bt.iBtAv_CurTime);
                    page_Av.updateSeekbar(App_Bt.iBtAv_TotalTime, true);
                    JText text4 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title);
                    if (text4 != null) {
                        if (App_Bt.mStrCustomer.equals("YL_3")) {
                            text4.setText(App_Bt.getInstance().uiApp.getString("bt_state_disconnected"));
                        } else {
                            text4.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    }
                    JText text5 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist);
                    if (text5 != null) {
                        if (App_Bt.mStrCustomer.equals("YL_3")) {
                            text5.setText(App_Bt.getInstance().uiApp.getString("bt_state_disconnected"));
                        } else {
                            text5.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    }
                    View viewId3Info = page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Id3Info);
                    if (viewId3Info != null) {
                        viewId3Info.setVisibility(8);
                    }
                    page_Av.misAvStop = false;
                    Log.d("id3", " 22  IpcNew FinalBt.U_PHONE_STATE  ");
                    if (App_Bt.bMediaManager && MediaManager.mInstance != null) {
                        MediaManager.mInstance.dispFileInfo();
                    }
                }
                if (page_Av != null) {
                    page_Av.updateBtConnectTip();
                }
                break;
            case 13:
                int value = Bt.DATA[updateCode];
                Log.d("id3", " 00 U_BTAV_PLAY_STATE value = " + value);
                boolean bRun = false;
                if (!Bt_IpcObj.isDisConnect() && value == 1) {
                    bRun = true;
                    App_Bt.bBtAvPlayState = true;
                } else {
                    App_Bt.bBtAvPlayState = false;
                }
                if (page_Av.mBtnPlayPause != null || page_Av.mImgViewBtavAnim != null) {
                    page_Av.updateBtnPlayPause();
                }
                Log.d("gdy4", " 00 U_BTAV_PLAY_STATE bRun = " + bRun);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    if (bRun) {
                        page_Av.startAnim();
                    } else {
                        page_Av.stopAnim();
                    }
                } else {
                    View mDynamicView1 = page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_DynamicView);
                    if (mDynamicView1 != null) {
                        if (bRun) {
                            page_Av.startAnim();
                        } else {
                            page_Av.stopAnim();
                        }
                    }
                }
                if (App_Bt.bMediaManager && MediaManager.mInstance != null) {
                    MediaManager.mInstance.setPlaybackState();
                }
                switch (MyApplication.mIdCustomer) {
                    case 66:
                        Bundle data = new Bundle();
                        String str = String.valueOf(value);
                        data.putString("btav_playpause", str);
                        Intent intent = new Intent();
                        intent.putExtras(data);
                        intent.setAction("com.syu.widget.BtavService");
                        intent.setPackage("com.android.launcher3");
                        MyApplication.myApp.startService(intent);
                        break;
                }
                JRotView rotCd = (JRotView) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_RotCd);
                JPinBar pinBar = (JPinBar) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_PinBar);
                if (rotCd != null) {
                    rotCd.setRun(bRun);
                }
                if (pinBar != null) {
                    pinBar.setRun(bRun);
                }
                boolean bId3InfoGone = false;
                if (value == 0 && page_Av.misAvStop) {
                    bId3InfoGone = true;
                }
                View viewId3Info2 = page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Id3Info);
                if (viewId3Info2 != null) {
                    if (bId3InfoGone) {
                        viewId3Info2.setVisibility(8);
                    } else {
                        viewId3Info2.setVisibility(0);
                    }
                }
                break;
            case 26:
                String artist2 = Bt.sID3Album;
                Log.d("gdy2", " 33 U_BTAV_ID3_ARTIST artist = " + artist2);
                JText text6 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Album);
                if (text6 != null) {
                    text6.setText(artist2);
                }
                break;
            case 28:
                Log.d("hfp11", " ** 11   updateCode = " + updateCode);
                if (!Bt_IpcObj.isDisConnect()) {
                    App_Bt.iBtAv_CurTime = Bt.DATA[updateCode];
                    if (page_Av != null && App_Bt.iBtAv_CurTime <= App_Bt.iBtAv_TotalTime) {
                        page_Av.handleSeekPos(App_Bt.iBtAv_CurTime);
                        break;
                    }
                }
                break;
            case 34:
                JText text7 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_LinkCut);
                switch (Bt.DATA[updateCode]) {
                    case 0:
                        if (text7 != null) {
                            text7.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[0]));
                        }
                        break;
                    case 1:
                        if (text7 != null) {
                            text7.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[1]));
                        }
                        break;
                    case 2:
                        if (text7 != null) {
                            text7.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[2]));
                        }
                        break;
                    case 3:
                        if (text7 != null) {
                            text7.setText(App_Bt.getInstance().uiApp.getString("bt_cuting"));
                        }
                        break;
                }
                break;
            case 44:
                if (page_Av != null) {
                    page_Av.updatePhoneBattery(App_Bt.mPhoneBatterty);
                }
                break;
            case 47:
                if (page_Av != null) {
                    page_Av.updatePhoneAptx(App_Bt.mPhoneCoding);
                }
                break;
            case 51:
                if (strs != null && strs.length > 0) {
                    page_Av.dispAlmup(strs[0]);
                    break;
                }
                break;
            case 58:
                Log.d("steer", " **Ipc1 BLE_STEER_DEV_STATE *  Bt.DATA[updateCode] = " + Bt.DATA[updateCode] + " * iSteer = " + App_Bt.iSteer + " iSteer_p = " + App_Bt.iSteer_p);
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
        }
    }

    public void onNotify(Page_Contact page_Contact, int updateCode, int[] ints, float[] flts, String[] strs) {
        JText text;
        switch (updateCode) {
            case 22:
                if (Bt_IpcObj.isConnect()) {
                    if (IpcUtil.strsOk(strs, 3)) {
                        if (App_Bt.bLinkTwoPhone) {
                            Log.d("hfp", " 000 U_BOOK strs.length = " + strs.length + "strs = " + getStrList(strs));
                            if (App_Bt.bDownloading) {
                                App_Bt.bHasDownBook = true;
                                String name = strs[1];
                                String number = strs[2];
                                Log.d("ggg", " --- U_BOOK number = " + number);
                                this.Page_Contact_p = page_Contact;
                                Main.removeRunnable_Ui(this.mRunnableDownOver);
                                Main.postRunnable_Ui(true, this.mRunnableDownOver, 10000L);
                                boolean bRepaceOk = false;
                                int pos = number.indexOf("+");
                                if (pos == 0) {
                                    bRepaceOk = true;
                                    number = String.valueOf(number.substring(0, 1)) + number.substring(1, number.length()).replaceAll("\\D", FinalChip.BSP_PLATFORM_Null);
                                }
                                if (!bRepaceOk) {
                                    number = number.replaceAll("[\\D]", FinalChip.BSP_PLATFORM_Null);
                                }
                                if (name.endsWith("/H") || name.endsWith("/M")) {
                                    name = name.substring(0, name.indexOf("/"));
                                }
                                if (TextUtils.isEmpty(name)) {
                                    name = number;
                                }
                                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_UBook(name, number, this.listContact, this.listContactDownload, page_Contact), false, 10);
                            }
                        }
                    } else if (IpcUtil.strsOk(strs, 2)) {
                        Log.d("hfp", " 000 U_BOOK strs.length = " + strs.length + "strs = " + getStrList(strs));
                        if (!App_Bt.bDownloading) {
                            this.listContactDownload.clear();
                            if (App_Bt.mBtInfo.mListContactDownload.size() > 0) {
                                this.listContactDownload.addAll(App_Bt.mBtInfo.mListContactDownload);
                            }
                            this.listContact.clear();
                            if (App_Bt.mBtInfo.mListContact.size() > 0) {
                                this.listContact.addAll(App_Bt.mBtInfo.mListContact);
                            }
                            App_Bt.iDownloadCnt = 0;
                            App_Bt.bDownloading = true;
                            Log.d("down11", "  11 U_BOOK 电话本下载开始---   App_Bt.bDownloading = " + App_Bt.bDownloading);
                            if (!App_Bt.bAutoDownPhoneBook && page_Contact != null) {
                                Log.d("down", " --- 00 showLoading bt_download ");
                                this.Page_Contact_p = page_Contact;
                                Main.postRunnable_Ui(true, this.mRunnable_showLoading, 300L);
                            }
                        }
                        if (App_Bt.bDownloading) {
                            App_Bt.bHasDownBook = true;
                            String name2 = strs[0];
                            String number2 = strs[1];
                            Log.d("down11", " 000 U_BOOK strs.length = " + strs.length + "  *strs[0] = " + strs[0] + "  *strs[1]= " + strs[1]);
                            this.Page_Contact_p = page_Contact;
                            Main.removeRunnable_Ui(this.mRunnableDownOver);
                            Main.postRunnable_Ui(true, this.mRunnableDownOver, 10000L);
                            boolean bRepaceOk2 = false;
                            int pos2 = number2.indexOf("+");
                            if (pos2 == 0) {
                                bRepaceOk2 = true;
                                number2 = String.valueOf(number2.substring(0, 1)) + number2.substring(1, number2.length()).replaceAll("\\D", FinalChip.BSP_PLATFORM_Null);
                            }
                            if (!bRepaceOk2) {
                                number2 = number2.replaceAll("[\\D]", FinalChip.BSP_PLATFORM_Null);
                            }
                            if (name2.endsWith("/H") || name2.endsWith("/M")) {
                                name2 = name2.substring(0, name2.indexOf("/"));
                            }
                            if (TextUtils.isEmpty(name2)) {
                                name2 = number2;
                            }
                            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_UBook(name2, number2, this.listContact, this.listContactDownload, page_Contact), false, 10);
                        }
                    }
                }
                break;
            case 29:
                Log.d("down11", " -- 电话本下载状态 - U_PBAP_STATE updateCode = " + Bt.DATA[updateCode]);
                if (Bt.DATA[updateCode] == 2) {
                    if (!App_Bt.bDownloading) {
                        if (!App_Bt.bDownloading) {
                            if (App_Bt.sPhone2_id == 0 && App_Bt.bLinkTwoPhone) {
                                this.listContactDownload.clear();
                                if (App_Bt.mBtInfo.mListContactDownload2.size() > 0) {
                                    this.listContactDownload.addAll(App_Bt.mBtInfo.mListContactDownload2);
                                }
                            } else {
                                this.listContactDownload.clear();
                                if (App_Bt.mBtInfo.mListContactDownload.size() > 0) {
                                    this.listContactDownload.addAll(App_Bt.mBtInfo.mListContactDownload);
                                }
                            }
                            this.listContact.clear();
                            if (App_Bt.mBtInfo.mListContact.size() > 0) {
                                this.listContact.addAll(App_Bt.mBtInfo.mListContact);
                            }
                        }
                        App_Bt.iDownloadCnt = 0;
                        App_Bt.bDownloading = true;
                        Log.d("down11", "  11 电话本下载开始---   App_Bt.bDownloading = " + App_Bt.bDownloading);
                        if (!App_Bt.bAutoDownPhoneBook && page_Contact != null) {
                            Log.d("down", " --- 00 showLoading bt_download ");
                            this.Page_Contact_p = page_Contact;
                            Main.postRunnable_Ui(true, this.mRunnable_showLoading, 300L);
                        }
                    }
                } else if (App_Bt.bDownloading) {
                    App_Bt.bDownloading = false;
                    Log.d("down11", "  22 电话本下载结束---   App_Bt.bDownloading = " + App_Bt.bDownloading);
                    Main.removeRunnable_Ui(this.mRunnable_showLoading);
                    Log.d("down", " --- 222 bDownloading over = " + App_Bt.bDownloading);
                    if (CustomerUtil.isYFConfig()) {
                        Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
                        Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 200L);
                    }
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_DownOver1st(page_Contact), true, 10);
                }
                if (page_Contact != null && (text = (JText) page_Contact.getPage().getChildViewByid(FinalBtCtrl.Contact_Num)) != null) {
                    String str_Num = FinalChip.BSP_PLATFORM_Null;
                    if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                        str_Num = HanziToPinyin.Token.SEPARATOR + App_Bt.mBtInfo.mListContact.size();
                    }
                    text.setText(str_Num);
                    break;
                }
                break;
            case 67:
                Log.d("down11", " --- PBAP_ERROR updateCode = " + Bt.DATA[updateCode]);
                Main.removeRunnable_Ui(this.mRunnable_showLoading);
                if (Bt.DATA[updateCode] > 0 && Bt.DATA[updateCode] <= 255) {
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_download_permission"));
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Pair page_Pair, int updateCode, int[] ints, float[] flts, String[] strs) {
        JText text_Name;
        SparseArray<String> entity;
        String strIndex;
        Log.d("hfp11", " 00 page_Pair updateCode =  " + updateCode);
        switch (updateCode) {
            case 5:
                Log.d("hfp10", " ** U_PAIR_LIST 00   bShowPairedBt = " + App_Bt.bShowPairedBt);
                if (ints != null && strs != null) {
                    Log.d("hfp10", " ** U_PAIR_LIST 11   strs.length = " + strs.length);
                    if (ints.length >= 1 && strs.length >= 2 && !TextUtils.isEmpty(strs[1])) {
                        Log.d("hfp11", " ** U_PAIR_LIST 00   Name = " + strs[0] + " , " + strs[1]);
                        if (App_Bt.mBtInfo.mListHasPaired.size() > 0) {
                            for (int i = 0; i < App_Bt.mBtInfo.mListHasPaired.size(); i++) {
                                SparseArray<String> dev = App_Bt.mBtInfo.mListHasPaired.get(i);
                                if (!TextUtils.isEmpty(dev.get(FinalBtCtrl.PairedItem_Txt_Addr)) && dev.get(FinalBtCtrl.PairedItem_Txt_Addr).equalsIgnoreCase(strs[0])) {
                                    App_Bt.mBtInfo.mListHasPaired.remove(i);
                                }
                            }
                        }
                        boolean pairlist_has = false;
                        if (App_Bt.mBtInfo.mListPair.size() > 0) {
                            for (int i2 = 0; i2 < App_Bt.mBtInfo.mListPair.size(); i2++) {
                                SparseArray<String> dev2 = App_Bt.mBtInfo.mListPair.get(i2);
                                if (!TextUtils.isEmpty(dev2.get(FinalBtCtrl.PairItem_Txt_Addr)) && dev2.get(FinalBtCtrl.PairItem_Txt_Addr).equalsIgnoreCase(strs[0])) {
                                    if (!App_Bt.bShowPairedBt) {
                                        pairlist_has = true;
                                    } else {
                                        App_Bt.mBtInfo.mListPair.remove(i2);
                                    }
                                }
                            }
                        }
                        if (CustomerUtil.isYFConfig()) {
                            Log.d("hfp4", " ** U_PAIR_LIST 11   Name = " + strs[0] + " , " + strs[1]);
                            if (strs[1].startsWith("OBD")) {
                            }
                        }
                        SparseArray<String> dev3 = new SparseArray<>();
                        dev3.put(FinalBtCtrl.PairedItem_Txt_Addr, strs[0]);
                        dev3.put(FinalBtCtrl.PairedItem_Txt_Name, strs[1]);
                        dev3.put(FinalBtCtrl.PairedItem_Index, Integer.toString(ints[0]));
                        App_Bt.mBtInfo.mListHasPaired.add(dev3);
                        if (!App_Bt.bShowPairedBt) {
                            Log.d("gdy6", " U_PAIR_LIST add mListPair strs[0] = " + strs[0] + " Bt.sPhoneAddr = " + Bt.sPhoneAddr + " pairlist_has = " + pairlist_has);
                            if (Bt.sPhoneAddr.equalsIgnoreCase(strs[0]) && !pairlist_has) {
                                SparseArray<String> dev1 = new SparseArray<>();
                                dev1.put(FinalBtCtrl.PairItem_Txt_Addr, strs[0]);
                                dev1.put(FinalBtCtrl.PairItem_Txt_Name, strs[1]);
                                dev1.put(FinalBtCtrl.PairItem_Index, Integer.toString(ints[0]));
                                App_Bt.mBtInfo.mListPair.add(dev1);
                            }
                        }
                        if (page_Pair != null) {
                            Log.d("hfp4", " ** U_PAIR_LIST 22   Name = " + strs[0] + " , " + strs[1]);
                            Log.d("hfp11", " ** 11   refreshPairedList ");
                            page_Pair.refreshPairedList();
                            page_Pair.refreshList();
                        }
                        break;
                    }
                }
                break;
            case 9:
                if (page_Pair != null) {
                    if (Ipc_New.isPhoneConnect()) {
                        page_Pair.showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_connected"));
                        page_Pair.resetBtnEnable();
                    }
                    JGridView gridView = (JGridView) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_ListView);
                    if (gridView != null) {
                        Log.d("gdy6666", " *****001 Ipc_New notifyDataSetChanged    ");
                        gridView.notifyDataSetChanged();
                    }
                    Log.d("hfp10", " 222 HFP_STATUS page_Pair  U_PHONE_STATE = " + Bt.DATA[9] + " iPhoneState_p = " + this.iPhoneState_p);
                    if (Bt.DATA[9] == 2 && App_Bt.bShowPairedBt) {
                        App_Bt.getInstance().mIpcObj.queryPairList();
                    }
                    if (Bt.DATA[9] == 0 || this.iPhoneState_p == 1) {
                        page_Pair.showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_linking"));
                    }
                    this.iPhoneState_p = Bt.DATA[9];
                }
                break;
            case 14:
                if (page_Pair != null) {
                    JText text_Addr = (JText) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevAddr);
                    if (text_Addr != null) {
                        String value = Bt.sDevAddr;
                        if (!TextUtils.isEmpty(Bt.sDevAddr)) {
                            Log.d("gdy3", " U_LOCAL_MAC_ADDR value = " + value + " length = " + Bt.sDevAddr.length());
                            if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                                text_Addr.setText(String.valueOf(value.substring(0, 2)) + ":" + value.substring(2, 4) + ":" + value.substring(4, 6) + ":" + value.substring(6, 8) + ":" + value.substring(8, 10) + ":" + value.substring(10, 12));
                            } else {
                                text_Addr.setText(value);
                            }
                        }
                    }
                    JText text_Err = (JText) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevErr);
                    if (text_Err != null) {
                        if (Bt.sDevAddr.length() > 20) {
                            text_Err.setText(Bt.sDevAddr);
                        } else {
                            text_Err.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    }
                }
                break;
            case 15:
                if (page_Pair != null && (text_Name = (JText) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevName)) != null) {
                    text_Name.setText(Bt.sDevName);
                    break;
                }
                break;
            case 24:
                Log.d("gdy6", " ** U_SEARCH_LIST 00   ");
                if (strs == null) {
                    if (page_Pair != null && page_Pair.isStartDiscovey) {
                        page_Pair.showDiscover(false, App_Bt.getInstance().uiApp.getString("bt_discover_end"));
                        break;
                    }
                } else {
                    Log.d("gdy6", " ** U_SEARCH_LIST 22   ");
                    if (ints != null && ints.length < 1 && strs != null && strs.length < 2) {
                        Log.d("gdy6", " ** U_SEARCH_LIST 33  ints != null ");
                        break;
                    } else {
                        Log.d("gdy6", " ** U_SEARCH_LIST 11   Name = " + strs[1] + " Addr = " + strs[0]);
                        boolean isExists = false;
                        try {
                            Iterator<SparseArray<String>> it = App_Bt.mBtInfo.mListPair.iterator();
                            while (it.hasNext()) {
                                if (it.next().get(FinalBtCtrl.PairItem_Txt_Addr).equalsIgnoreCase(strs[0])) {
                                    isExists = true;
                                }
                            }
                            if (App_Bt.bShowPairedBt && App_Bt.mBtInfo.mListHasPaired.size() > 0) {
                                Iterator<SparseArray<String>> it2 = App_Bt.mBtInfo.mListHasPaired.iterator();
                                while (it2.hasNext()) {
                                    String addr = it2.next().get(FinalBtCtrl.PairedItem_Txt_Addr);
                                    if (!TextUtils.isEmpty(addr) && addr.equalsIgnoreCase(strs[0])) {
                                        isExists = true;
                                    }
                                }
                            }
                            if (!isExists && !TextUtils.isEmpty(strs[1])) {
                                if (!CustomerUtil.isYFConfig() || !strs[1].startsWith("OBD")) {
                                    String strBt = BluetoothAdapter.getDefaultAdapter().getName();
                                    Log.d("gdy6", " U_SEARCH_LIST 22 mListPair.add name = " + strs[1] + " strBt = " + strBt);
                                    if (strBt == null || !strs[1].equals(strBt)) {
                                        SparseArray<String> dev4 = new SparseArray<>();
                                        dev4.put(FinalBtCtrl.PairItem_Txt_Addr, strs[0]);
                                        dev4.put(FinalBtCtrl.PairItem_Txt_Name, strs[1]);
                                        dev4.put(FinalBtCtrl.PairItem_Index, Integer.toString(ints[0]));
                                        Log.d("gdy6", " U_SEARCH_LIST 22 mListPair.add name = " + strs[1] + " mListHasPaired.size = " + App_Bt.mBtInfo.mListHasPaired.size());
                                        App_Bt.mBtInfo.mListPair.add(dev4);
                                        if (page_Pair != null) {
                                            page_Pair.refreshList();
                                        }
                                    }
                                }
                                break;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                }
                break;
            case 25:
                if (IpcUtil.intsOk(ints, 1) && page_Pair != null && (entity = page_Pair.getChoiceName(Bt_IpcObj.getChoiceAddr())) != null && (strIndex = entity.get(FinalBtCtrl.PairItem_Index)) != null) {
                    int iIndex = FuncUtils.myParseInt(strIndex);
                    if (page_Pair.isSelfLink && iIndex != 2) {
                        page_Pair.isSelfLink = false;
                        if (Bt.DATA[updateCode] == 1) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_connected"));
                        } else if (Bt.DATA[updateCode] == 0) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_disconnected"));
                        }
                        break;
                    }
                }
                break;
            case 61:
            case 62:
                Log.d("hfp10", " 111 Ipc Page updateCode = " + updateCode + " bPhone2_HFP[0] = " + App_Bt.bPhone2_HFP[0] + " bPhone2_HFP[1] = " + App_Bt.bPhone2_HFP[1]);
                if (page_Pair != null && App_Bt.bLinkTwoPhone) {
                    if (updateCode == 61 && strs != null && ints != null && ints.length > 0 && !TextUtils.isEmpty(strs[0])) {
                        int i3 = Integer.parseInt(strs[0]);
                        Log.d("hfp13", " 44 HFP_STATUS HFP_state[i]=" + HFP_state[i3] + "  App_Bt.bPhone2_HFP[i] = " + App_Bt.bPhone2_HFP[i3]);
                        if (HFP_state[i3] == 2 && App_Bt.bPhone2_HFP[i3] == 3) {
                            page_Pair.showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_connected"));
                            page_Pair.resetBtnEnable();
                        }
                        if (App_Bt.bPhone2_HFP[i3] != HFP_state[i3]) {
                            HFP_state[i3] = App_Bt.bPhone2_HFP[i3];
                        }
                        if (App_Bt.bPhone2_HFP[i3] == 2 && App_Bt.bShowPairedBt) {
                            App_Bt.getInstance().mIpcObj.queryPairList();
                        }
                    }
                    Log.d("hfp11", " ** 22   refreshPairedList ");
                    page_Pair.refreshPairedList();
                    page_Pair.refreshList();
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_History page_History, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 8:
                if (CustomerUtil.isDZSJMIB4Config() && page_History != null) {
                    if (App_Bt.needSplice && !TextUtils.isEmpty(Bt.sPhoneNumber) && !Bt.sPhoneNumber.startsWith("+")) {
                        Bt.sPhoneNumber = "+" + Bt.sPhoneNumber;
                        Log.d("pop33", " 777 U_PHONE_NUMBER Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                    }
                    JText text = (JText) page_History.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num3);
                    if (text != null) {
                        text.setText(Bt.sPhoneNumber);
                    }
                    break;
                }
                break;
            case 29:
                Log.d("his16", " 000 FinalBt.U_PBAP_STATE ***Bt.DATA[updateCode]" + Bt.DATA[updateCode] + " App_Bt.iDownRecordState = " + App_Bt.iDownRecordState + " App_Bt.bDownloadingRecord = " + App_Bt.bDownloadingRecord);
                if (Bt.DATA[updateCode] == 4) {
                    App_Bt.bDownloadingRecord = true;
                    switch (App_Bt.iDownRecordState) {
                        case 2:
                            App_Bt.mBtInfo.clearCallLog(1);
                            break;
                        case 3:
                            App_Bt.mBtInfo.clearCallLog(3);
                            break;
                        case 255:
                            if (page_History != null) {
                                page_History.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
                            }
                            App_Bt.mBtInfo.clearCallLog(2);
                            break;
                    }
                } else {
                    Log.d("his6", " 11 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = " + App_Bt.iDownRecordState);
                    if (App_Bt.bDownloadingRecord) {
                        App_Bt.queryCallLog();
                        switch (App_Bt.iDownRecordState) {
                            case 2:
                                App_Bt.iDownRecordState = 3;
                                Bt.PROXY.cmd(37);
                                break;
                            case 3:
                                Log.d("his6", " 22 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = " + App_Bt.iDownRecordState);
                                if (page_History != null) {
                                    page_History.actBt.uiUtil.disLoading();
                                }
                                break;
                            case 255:
                                App_Bt.iDownRecordState = 2;
                                Bt.PROXY.cmd(36);
                                break;
                        }
                        Main.removeRunnable_Ui(this.mRunnable_EndLoad);
                        Main.postRunnable_Ui(false, this.mRunnable_EndLoad, 2000L);
                        Log.d("his6", " 33 FinalBt.U_PBAP_STATE *** App_Bt.iDownRecordState = " + App_Bt.iDownRecordState + " App_Bt.bDownloadingRecord = " + App_Bt.bDownloadingRecord);
                    }
                    break;
                }
                break;
            case 35:
                Log.d("his6", " 000 U_RECORD ***");
                if (IpcUtil.intsOk(ints, 1)) {
                    Log.d("his66", " 111 U_RECORD  ints[0] = " + ints[0]);
                    if (IpcUtil.strsOk(strs, 4) && App_Bt.bLinkTwoPhone) {
                        Log.d("his66", " 222 U_RECORD  strs.length = " + strs.length + "strs = " + getStrList(strs));
                        ContentValues values = null;
                        switch (ints[0]) {
                            case 4:
                                values = new ContentValues();
                                values.put("type", Integer.valueOf((App_Bt.iPhone2HisStep * Integer.parseInt(strs[0])) + 2));
                                values.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[3])));
                                values.put(SpeechUtil.KEY_NUMBER, strs[2]);
                                break;
                            case 5:
                                values = new ContentValues();
                                values.put("type", Integer.valueOf((App_Bt.iPhone2HisStep * Integer.parseInt(strs[0])) + 1));
                                values.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[3])));
                                values.put(SpeechUtil.KEY_NUMBER, strs[2]);
                                break;
                            case 6:
                                values = new ContentValues();
                                values.put("type", Integer.valueOf((App_Bt.iPhone2HisStep * Integer.parseInt(strs[0])) + 3));
                                values.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[3])));
                                values.put(SpeechUtil.KEY_NUMBER, strs[2]);
                                break;
                        }
                        if (values != null) {
                            App_Bt.mBtInfo.insertCallLog(values, false);
                        }
                        Main.removeRunnable_Ui(this.mRunnable_updateHistoryList);
                        Main.postRunnable_Ui(false, this.mRunnable_updateHistoryList, 3000L);
                    } else if (IpcUtil.strsOk(strs, 3)) {
                        Log.d("his66", " 333 U_RECORD ints[0] =" + ints[0] + "   strs.length = " + strs.length + "strs = " + getStrList(strs));
                        ContentValues values2 = null;
                        switch (ints[0]) {
                            case 4:
                                values2 = new ContentValues();
                                values2.put("type", (Integer) 2);
                                values2.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[2])));
                                values2.put(SpeechUtil.KEY_NUMBER, strs[1]);
                                break;
                            case 5:
                                values2 = new ContentValues();
                                values2.put("type", (Integer) 1);
                                values2.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[2])));
                                values2.put(SpeechUtil.KEY_NUMBER, strs[1]);
                                break;
                            case 6:
                                values2 = new ContentValues();
                                values2.put("type", (Integer) 3);
                                values2.put("date", Long.valueOf(BTUtil.getInstance().replaceFormatTime(strs[2])));
                                values2.put(SpeechUtil.KEY_NUMBER, strs[1]);
                                break;
                        }
                        if (values2 != null) {
                            App_Bt.mBtInfo.insertCallLog(values2, false);
                        }
                    }
                }
                break;
        }
    }

    public String getStrList(String[] strs) {
        String str = FinalChip.BSP_PLATFORM_Null;
        if (!TextUtils.isEmpty(strs[0])) {
            for (int i = 0; i < strs.length; i++) {
                if (strs[i] != null) {
                    str = String.valueOf(str) + "-" + strs[i];
                } else {
                    str = String.valueOf(str) + "-NULL";
                }
            }
        }
        return str;
    }

    public void onNotify(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
        SparseArray<String> entity;
        String strIndex;
        String str;
        switch (updateCode) {
            case 9:
            case 61:
                int value = Bt.DATA[9];
                if (page_Set.tvPhoneState != null && value >= 0 && value <= 6) {
                    page_Set.tvPhoneState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
                if (page_Set.tvLinkName != null) {
                    page_Set.tvLinkName.setText(Bt.sPhoneName);
                }
                JGridView gridView = (JGridView) page_Set.getPage().getChildViewByid(FinalBtCtrl.SetPair_ListView);
                if (gridView != null) {
                    Log.d("gdy6666", " *****002 Ipc_New notifyDataSetChanged    ");
                    gridView.notifyDataSetChanged();
                }
                break;
            case 15:
                Log.d("name", " 22 Set_Edit_U_LOCAL_NAME DevName U_LOCAL_NAME Bt.sDevName" + Bt.sDevName);
                EditText editDevName = (EditText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
                if (editDevName != null) {
                    editDevName.setText(Bt.sDevName);
                }
                if (page_Set != null) {
                    page_Set.setBtName(Bt.sDevName);
                }
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.updateBtNameAndPinTip();
                }
                break;
            case 16:
                if (!TextUtils.isEmpty(Bt.sDevPin)) {
                    EditText editPin = (EditText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Edit_Pin);
                    if (editPin != null) {
                        editPin.setText(Bt.sDevPin);
                    }
                    if (page_Set.mTvPin != null) {
                        page_Set.mTvPin.setText(Bt.sDevPin);
                    }
                    if (page_Set != null) {
                        page_Set.setBtPin(Bt.sDevPin);
                    }
                }
                for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                    interfaceBt2.updateBtNameAndPinTip();
                }
                break;
            case 19:
                if (page_Set.isClickReSet) {
                    page_Set.updateResetEnable(true);
                    Page_Set.actBt.uiUtil.disLoading();
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_reset_success"));
                    if (!TextUtils.isEmpty(App_Bt.strDefaultName) && !App_Bt.strDefaultName.equals(Bt.sDevName)) {
                        Bt_IpcObj.setDevName(App_Bt.strDefaultName);
                    }
                    if (!TextUtils.isEmpty(App_Bt.strDefaultPin) && !App_Bt.strDefaultPin.equals(Bt.sDevPin)) {
                        Bt_IpcObj.setDevPin(App_Bt.strDefaultPin);
                    }
                    App_Bt.getInstance().SaveConfig(App_Bt.strDefaultName, App_Bt.strDefaultPin);
                    App_Bt.getInstance().mySharePreference2.saveStringValue("name_ring", FinalChip.BSP_PLATFORM_Null);
                    page_Set.updateRingName(FinalChip.BSP_PLATFORM_Null);
                }
                page_Set.isClickReSet = false;
                break;
            case 20:
                boolean bAutoPick = false;
                if (Bt.DATA[updateCode] > 0) {
                    bAutoPick = true;
                    str = App_Bt.getInstance().uiApp.getString("bt_opened");
                } else {
                    str = App_Bt.getInstance().uiApp.getString("bt_closed");
                }
                page_Set.isAutoAnswer = bAutoPick;
                JText text = (JText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AutoAnswer);
                if (text != null) {
                    text.setText(str);
                }
                JSwitchButton check = (JSwitchButton) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AutoAnswer);
                if (check != null) {
                    check.setChecked(bAutoPick);
                }
                page_Set.updateAutoSelected(FinalBtCtrl.Set_Btn_AutoAnswerOn, bAutoPick);
                page_Set.updateAutoSelected(FinalBtCtrl.Set_Btn_AutoAnswerOff, !bAutoPick);
                page_Set.updateAutoSelected(FinalBtCtrl.Set_Btn_AutoAnswerOnOffSellect, bAutoPick);
                JSwitchButon2 check2 = (JSwitchButon2) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AutoAnswer_2);
                if (check2 != null) {
                    check2.setSwitch(bAutoPick);
                }
                break;
            case 24:
                if (strs == null) {
                    page_Set.showSetDiscover(false);
                    break;
                } else if (ints == null || ints.length >= 1 || strs == null || strs.length >= 2) {
                    boolean isExists = false;
                    try {
                        Iterator<SparseArray<String>> it = App_Bt.mBtInfo.mListSetPair.iterator();
                        while (it.hasNext()) {
                            if (it.next().get(FinalBtCtrl.SetPairItem_Txt_Addr).equalsIgnoreCase(strs[0])) {
                                isExists = true;
                            }
                        }
                        if (!isExists && !TextUtils.isEmpty(strs[1])) {
                            SparseArray<String> dev = new SparseArray<>();
                            dev.put(FinalBtCtrl.SetPairItem_Txt_Addr, strs[0]);
                            dev.put(FinalBtCtrl.SetPairItem_Txt_Name, strs[1]);
                            dev.put(FinalBtCtrl.SetPairItem_Index, Integer.toString(ints[0]));
                            App_Bt.mBtInfo.mListSetPair.add(dev);
                            page_Set.resetList_BtSet(App_Bt.mBtInfo.mListSetPair);
                            break;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                break;
            case 25:
                if (IpcUtil.intsOk(ints, 1) && (entity = page_Set.getChoiceName(Bt_IpcObj.getChoiceAddr())) != null && (strIndex = entity.get(FinalBtCtrl.SetPairItem_Index)) != null) {
                    int iIndex = FuncUtils.myParseInt(strIndex);
                    if (App_Bt.bSelfLink && iIndex != 2) {
                        App_Bt.bSelfLink = false;
                        if (Bt.DATA[updateCode] == 1) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_connected"));
                        } else if (Bt.DATA[updateCode] == 0) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_disconnected"));
                        }
                        break;
                    }
                }
                break;
            case 31:
                boolean bAutoPick1 = false;
                JGridView gridView_set = (JGridView) page_Set.getPage().getChildViewByid(FinalBtCtrl.SetPair_ListView);
                if (Bt.DATA[updateCode] > 0) {
                    App_Bt.bBtInitFlag = true;
                    if (gridView_set != null) {
                        gridView_set.setVisibility(0);
                    }
                } else if (gridView_set != null) {
                    gridView_set.setVisibility(4);
                }
                if (Bt.DATA[updateCode] > 0) {
                    bAutoPick1 = true;
                }
                JSwitchButton check1 = (JSwitchButton) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Btn_BtSwitch);
                if (check1 != null) {
                    check1.setChecked(bAutoPick1);
                }
                if (page_Set.mBTOnOff != null) {
                    page_Set.mBTOnOff.setSwitch(App_Bt.bBtPowerOnOff);
                }
                if (Main.mConf_PlatForm == 5) {
                    for (InterfaceBt interfaceBt3 : App_Bt.mInterfaceBt) {
                        interfaceBt3.disPostLoading(3000);
                    }
                } else {
                    Page_Set.actBt.uiUtil.disLoading();
                }
                break;
            case 33:
                if (ints != null && ints.length > 0) {
                    int btring = ints[0];
                    App_Bt.iRingLevel = ints[0];
                    String strRing = String.valueOf(btring);
                    if (page_Set.tvRingSet != null) {
                        page_Set.tvRingSet.setText(strRing);
                    }
                    break;
                }
                break;
            case 36:
                if (ints != null && ints.length > 0) {
                    int btring2 = ints[0] + 1;
                    if (btring2 <= 100 && btring2 >= 0) {
                        App_Bt.mBtUpdating = true;
                        if (page_Set != null) {
                            Page_Set.actBt.uiUtil.showLoading(String.valueOf(btring2) + "%");
                        }
                    } else {
                        App_Bt.mBtUpdating = false;
                        if (page_Set != null) {
                            Page_Set.actBt.uiUtil.disLoading();
                        }
                    }
                    break;
                }
                break;
        }
    }

    public void onNotify_Sound(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 12:
                if (ints != null && ints.length > 0) {
                    App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
                    App_Bt.iPhoneMicSet = App_Bt.SB[2];
                    App_Bt.iBtAvMicSet = App_Bt.SB[3];
                    String strPhoneMicSet = String.valueOf(App_Bt.iPhoneMicSet);
                    String strBtAvMicSet = String.valueOf(App_Bt.iBtAvMicSet);
                    if (page_Set.tvPhoneMicSet != null) {
                        page_Set.tvPhoneMicSet.setText(strPhoneMicSet);
                    }
                    if (page_Set.tvBtAvMicSet != null) {
                        page_Set.tvBtAvMicSet.setText(strBtAvMicSet);
                    }
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Dial_HalfScreen page_Dial_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 7:
                JText text = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName_Half);
                if (text != null) {
                    text.setText(Bt.sPhoneName);
                }
                break;
            case 9:
            case 61:
                int value = Bt.DATA[9];
                JText text2 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State_Half);
                if (text2 != null && value >= 0 && value <= 6) {
                    text2.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
                JText text3 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                if (text3 != null) {
                    if (value == 5 || (value == 4 && Bt.DATA[20] > 0)) {
                        text3.setVisibility(0);
                    } else {
                        text3.setVisibility(4);
                    }
                }
                JText text4 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
                if (text4 != null) {
                    if (value == 5 || (value == 4 && Bt.DATA[20] > 0)) {
                        text4.setVisibility(0);
                    } else {
                        text4.setVisibility(4);
                    }
                }
                JText text5 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName_Half);
                if (text5 != null) {
                    if (value == 2) {
                        text5.setVisibility(0);
                    } else if (value == 0) {
                        text5.setVisibility(8);
                    }
                }
                break;
            case 14:
                JText text6 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr_Half);
                if (text6 != null && !TextUtils.isEmpty(Bt.sDevAddr)) {
                    if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                        text6.setText(String.valueOf(Bt.sDevAddr.substring(0, 2)) + ":" + Bt.sDevAddr.substring(2, 4) + ":" + Bt.sDevAddr.substring(4, 6) + ":" + Bt.sDevAddr.substring(6, 8) + ":" + Bt.sDevAddr.substring(8, 10) + ":" + Bt.sDevAddr.substring(10, 12));
                    } else {
                        text6.setText(Bt.sDevAddr);
                    }
                    break;
                }
                break;
            case 21:
                if (Bt.DATA[21] > 0 && Bt.DATA[9] == 4) {
                    JText text7 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                    if (text7 != null) {
                        int value2 = (Bt.DATA[21] + 200) / 1000;
                        if (value2 > 0) {
                            text7.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value2);
                        } else {
                            text7.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    }
                    JText text8 = (JText) page_Dial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
                    if (text8 != null) {
                        int value3 = (Bt.DATA[21] + 200) / 1000;
                        if (value3 > 0) {
                            text8.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value3);
                        } else {
                            text8.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                    }
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Callin page_Callin, int updateCode, int[] ints, float[] flts, String[] strs) {
        JText text;
        switch (updateCode) {
            case 8:
                JText text2 = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num);
                if (text2 != null) {
                    if (App_Bt.bCallinHideKeyTextFlag) {
                        text2.setVisibility(8);
                    } else {
                        text2.setVisibility(0);
                        text2.setText(Bt.sPhoneNumber);
                    }
                }
                JText text3 = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Name);
                if (text3 != null) {
                    if (App_Bt.bCallinHideKeyTextFlag) {
                        text3.setVisibility(8);
                    } else {
                        text3.setVisibility(0);
                    }
                    if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        text3.setText(FinalChip.BSP_PLATFORM_Null);
                    } else {
                        List<SparseArray<String>> list = new ArrayList<>();
                        list.addAll(App_Bt.mBtInfo.mListContact);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text3, FinalChip.BSP_PLATFORM_Null, true), false, 5);
                    }
                }
                break;
            case 9:
            case 61:
                JText text4 = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_State);
                int value = Bt.DATA[9];
                if (text4 != null) {
                    if (App_Bt.bCallinHideKeyTextFlag) {
                        text4.setVisibility(8);
                    } else {
                        text4.setVisibility(0);
                    }
                    if (value >= 0 && value <= 6) {
                        text4.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                    }
                }
                if (!App_Bt.bShowKeyFlag) {
                    switch (Bt.DATA[9]) {
                        case 3:
                            page_Callin.Switch2Keyboard(1);
                            break;
                        case 4:
                            page_Callin.Switch2Keyboard(2);
                            break;
                        case 5:
                            page_Callin.Switch2Keyboard(3);
                            break;
                    }
                }
                JText text5 = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime);
                if (text5 != null) {
                    if (value == 5 || (value == 4 && Bt.DATA[20] > 0)) {
                        text5.setVisibility(0);
                    } else {
                        text5.setVisibility(4);
                    }
                }
                break;
            case 12:
                JText text6 = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime);
                if (text6 != null) {
                    int state = Bt.DATA[9];
                    if (state == 5 || (state == 4 && Bt.DATA[20] > 0)) {
                        if (App_Bt.bCallinHideKeyTextFlag) {
                            text6.setVisibility(8);
                        } else {
                            text6.setVisibility(0);
                        }
                    }
                    int time = (Bt.DATA[updateCode] + 100) / 1000;
                    if (App_Bt.bLinkTwoPhone) {
                        time = App_Bt.sPhone2_talktime;
                    }
                    text6.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time / 60), Integer.valueOf(time % 60)));
                }
                break;
            case 18:
                if (IpcUtil.intsOk(ints, 1)) {
                    JButton btn = (JButton) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                    if (MyApplication.mIdCustomer == 41 && Bt.DATA[9] == 5 && btn != null) {
                        if (Bt.DATA[updateCode] == 0) {
                            btn.setFocus(false);
                        } else {
                            btn.setFocus(true);
                        }
                        break;
                    }
                }
                break;
            case 21:
                if (Bt.DATA[21] > 0 && Bt.DATA[9] == 4 && (text = (JText) page_Callin.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime)) != null) {
                    int value2 = (Bt.DATA[21] + 200) / 1000;
                    if (value2 > 0) {
                        text.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value2);
                    } else {
                        text.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowDial page_Callin_ShowDial, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_ShowDial.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowCall page_Callin_ShowCall, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 9:
            case 61:
                if (MyApplication.mIdCustomer == 55) {
                    page_Callin_ShowCall.updateSwipeCallingBtns();
                }
                break;
            case 18:
                JButton btn = (JButton) page_Callin_ShowCall.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowKey page_Callin_ShowKey, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_ShowKey.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_HideKey page_Callin_HideKey, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_HideKey.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_HalfScreen page_Callin_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        JText text;
        switch (updateCode) {
            case 8:
                JText text2 = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num_Half);
                if (text2 != null) {
                    text2.setText(Bt.sPhoneNumber);
                }
                JText text3 = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Name_Half);
                if (text3 != null) {
                    if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        text3.setText(FinalChip.BSP_PLATFORM_Null);
                    } else {
                        List<SparseArray<String>> list = new ArrayList<>();
                        list.addAll(App_Bt.mBtInfo.mListContact);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text3, FinalChip.BSP_PLATFORM_Null, true), false, 5);
                    }
                }
                break;
            case 9:
            case 61:
                JText text4 = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_State_Half);
                int value = Bt.DATA[9];
                if (text4 != null && value >= 0 && value <= 6) {
                    text4.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
                switch (Bt.DATA[9]) {
                    case 3:
                        page_Callin_HalfScreen.Switch2Key(1);
                        break;
                    case 4:
                        page_Callin_HalfScreen.Switch2Key(2);
                        break;
                    case 5:
                        page_Callin_HalfScreen.Switch2Key(3);
                        break;
                }
                JText text5 = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime_Half);
                if (text5 != null) {
                    if (value == 5 || (value == 4 && Bt.DATA[20] > 0)) {
                        text5.setVisibility(0);
                    } else {
                        text5.setVisibility(4);
                    }
                }
                break;
            case 12:
                JText text6 = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime_Half);
                if (text6 != null) {
                    int time = (Bt.DATA[updateCode] + 100) / 1000;
                    if (App_Bt.bLinkTwoPhone) {
                        time = App_Bt.sPhone2_talktime;
                    }
                    text6.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(time / 60), Integer.valueOf(time % 60)));
                }
                break;
            case 18:
                JButton btn = (JButton) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
            case 21:
                if (Bt.DATA[21] > 0 && Bt.DATA[9] == 4 && (text = (JText) page_Callin_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_TalkTime_Half)) != null) {
                    int value2 = (Bt.DATA[21] + 200) / 1000;
                    if (value2 > 0) {
                        text.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value2);
                    } else {
                        text.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowDial_HalfScreen page_Callin_ShowDial_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_ShowDial_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowCall_HalfScreen page_Callin_ShowCall_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_ShowCall_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Callin_ShowKey_HalfScreen page_Callin_ShowKey_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 18:
                JButton btn = (JButton) page_Callin_ShowKey_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
                if ((MyApplication.mIdCustomer == 41 || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) && Bt.DATA[9] == 5 && btn != null) {
                    if (Bt.DATA[updateCode] == 0) {
                        btn.setFocus(false);
                    } else {
                        btn.setFocus(true);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Av_HalfScreen page_Av_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 0:
                JText text = (JText) page_Av_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title_Half);
                if (text != null) {
                    if (Bt_IpcObj.isDisConnect()) {
                        text.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    } else {
                        text.setText(Bt.sId3Title);
                    }
                }
                break;
            case 1:
                JText text2 = (JText) page_Av_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist_Half);
                if (text2 != null) {
                    text2.setText(Bt.sId3Artist);
                }
                break;
            case 9:
            case 61:
                if (Bt_IpcObj.isDisConnect()) {
                    JText text3 = (JText) page_Av_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title_Half);
                    if (text3 != null) {
                        text3.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                    JText text4 = (JText) page_Av_HalfScreen.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist_Half);
                    if (text4 != null) {
                        text4.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
                break;
        }
    }

    public void onNotify_UniCar(Page_Dial page_Dial, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 0:
                switch (UniCar.DATA[updateCode]) {
                    case 1:
                        if (Ipc_New.isConnect()) {
                            App_Bt.bCutBtByIpPhone = true;
                            Ipc_New.cut();
                        }
                        break;
                    case 2:
                        if (App_Bt.bCutBtByIpPhone) {
                            App_Bt.bCutBtByIpPhone = false;
                            Ipc_New.link();
                        }
                        Toast.makeText(App_Bt.getInstance().uiApp.mContext, App_Bt.getInstance().uiApp.getString("ipphone_dailwait"), 1).show();
                        page_Dial.actBt.dismissProgressIpPhoneDlg();
                        break;
                    case 3:
                        if (App_Bt.bCutBtByIpPhone) {
                            App_Bt.bCutBtByIpPhone = false;
                            Ipc_New.link();
                        }
                        Toast.makeText(App_Bt.getInstance().uiApp.mContext, App_Bt.getInstance().uiApp.getString("ipphone_simstatus"), 1).show();
                        page_Dial.actBt.dismissProgressIpPhoneDlg();
                        break;
                }
                break;
            case 1:
                switch (UniCar.DATA[updateCode]) {
                    case 1:
                        if (App_Bt.bCutBtByIpPhone) {
                            App_Bt.bCutBtByIpPhone = false;
                            Ipc_New.link();
                        }
                        page_Dial.stopIpPhoneTimer();
                        break;
                    case 2:
                        page_Dial.actBt.dismissProgressIpPhoneDlg();
                        page_Dial.startIpPhoneTimer();
                        break;
                }
                break;
            case 2:
                App_Bt.getInstance().initIpPhoneTip();
                break;
            case 3:
                phoneState(page_Dial);
                if (IpcUtil.intsOk(ints, 2)) {
                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                        interfaceBt.updateSimLayout(ints[1]);
                    }
                }
                break;
        }
    }
}
