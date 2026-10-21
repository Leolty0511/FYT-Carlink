package com.syu.bt.page.pop;

import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Dial;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.page.Page_Set;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.SpUtil;
import com.syu.jni.SyuJniNative;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopDel extends MyPage {
    public static final int DEL_CONTACT_ALL = 1;
    public static final int DEL_CONTACT_ONE = 2;
    public static final int DEL_CONTACT_RELOAD = 11;
    public static final int DEL_HISTORY_ALL = 3;
    public static final int DEL_HISTORY_ONE = 4;
    public static final int DEL_LOVE_NUMBER = 10;
    public static final int DEL_PAIRED_ONE = 9;
    public static final int DEL_PAIR_ONE = 8;
    public static final int SAVE_CONTACT = 5;
    public static final int SWITCH_TO_HFP = 6;
    public static final int UPDATE_AIGT = 14;
    public static final int UPDATE_AIJH_CQ = 13;
    public static final int UPDATE_AIJZ = 12;
    public static final int UPDATE_BT = 7;
    Act_Bt actBt;

    public Page_PopDel(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) throws Throwable {
        JGridView gridView;
        SparseArray<String> map;
        JGridView gridView2;
        SparseArray<String> map2;
        List<SparseArray<String>> listHistory;
        JGridView gridView3;
        int position;
        SparseArray<String> map3;
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.PopDel_Btn_Ok /* 10485 */:
                switch (App_Bt.mDelType) {
                    case 1:
                        Log.d("gdy13", " 00 DEL_CONTACT_ALL   ");
                        Ipc_New.sendBtPhoneState(8, FinalChip.BSP_PLATFORM_Null);
                        this.actBt.ClearAllContact(true);
                        if (!App_Bt.bSaveContactsToUrl || App_Bt.bAutoSavePhoneBook) {
                            Log.d("gdy13", " 22 DEL_CONTACT_ALL   ");
                            BTUtil.getInstance().deleteFile(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
                        }
                        break;
                    case 2:
                        JPage pageContact = this.actBt.ui.getPage(FinalBtCtrl.Page_Contact);
                        if (pageContact != null && (gridView3 = (JGridView) pageContact.getChildViewByid(FinalBtCtrl.Contact_ListView)) != null && (map3 = gridView3.getList().get((position = gridView3.getPosition()))) != null) {
                            String name = map3.get(FinalBtCtrl.ContactItem_Txt_Name);
                            String number = map3.get(FinalBtCtrl.ContactItem_Txt_Number);
                            SparseArray<String> mapRemove = App_Bt.mBtInfo.getMapContact(name, number);
                            if (mapRemove != null) {
                                App_Bt.mBtInfo.mListContact.remove(mapRemove);
                                JText tvContact_Num = (JText) pageContact.getChildViewByid(FinalBtCtrl.Contact_Num);
                                if (tvContact_Num != null) {
                                    String str_Num = FinalChip.BSP_PLATFORM_Null;
                                    if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                                        str_Num = "  " + App_Bt.mBtInfo.mListContact.size() + "  ";
                                    }
                                    tvContact_Num.setText(str_Num);
                                }
                            }
                            MyApplication.remove(gridView3, position);
                            if (!App_Bt.bSaveContactsToUrl) {
                                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopDel.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        List<SparseArray<String>> listSave = new ArrayList<>();
                                        listSave.addAll(App_Bt.mBtInfo.mListContact);
                                        BTUtil.getInstance().writeFile(listSave, Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
                                    }
                                }, false, 1);
                            } else {
                                App_Bt.mBtInfo.delContact(map3.get(FinalBtCtrl.ContactItem_Txt_Name), map3.get(FinalBtCtrl.ContactItem_Txt_Number));
                            }
                            if (CustomerUtil.isYFConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920")) {
                                for (SparseArray<String> value : App_Bt.mBtInfo.mListFavContact) {
                                    if (value != null && value.get(FinalBtCtrl.ContactItem_Txt_Number).equals(number) && value.get(FinalBtCtrl.ContactItem_Txt_Name).equals(name)) {
                                        App_Bt.mBtInfo.mListFavContact.remove(value);
                                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteFavContactToFile, false, 1);
                                        break;
                                    }
                                }
                                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteFavContactToFile, false, 1);
                            }
                        }
                        break;
                    case 3:
                        if (App_Bt.bHistoryLogAllFlag) {
                            App_Bt.mBtInfo.clearAllCallLog();
                        } else {
                            this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_deling"));
                            if (App_Bt.sPhone2_id == 1 && App_Bt.bLinkTwoPhone) {
                                App_Bt.mBtInfo.clearCallLog(App_Bt.sCallsType + App_Bt.iPhone2HisStep);
                            } else {
                                App_Bt.mBtInfo.clearCallLog(App_Bt.sCallsType);
                            }
                        }
                        break;
                    case 4:
                        JPage pageHistory = this.actBt.ui.getPage(FinalBtCtrl.Page_History);
                        if (pageHistory != null && (gridView2 = (JGridView) pageHistory.getChildViewByid(FinalBtCtrl.History_ListView)) != null) {
                            int position2 = gridView2.getPosition();
                            if (gridView2.adapter != null && (map2 = gridView2.getList().get(position2)) != null) {
                                MyApplication.remove(gridView2, position2);
                                if (App_Bt.bHistoryLogAllFlag && (listHistory = App_Bt.mBtInfo.mListHistoryAll) != null && listHistory.size() > position2) {
                                    listHistory.remove(position2);
                                }
                                if (!App_Bt.bHistoryLogAllFlag || CustomerUtil.isYFConfig()) {
                                    switch (App_Bt.sCallsType) {
                                        case 1:
                                            List<SparseArray<String>> listHistory2 = App_Bt.mBtInfo.mListHistoryIn;
                                            if (listHistory2 != null && listHistory2.size() > position2) {
                                                listHistory2.remove(position2);
                                            }
                                            break;
                                        case 2:
                                            List<SparseArray<String>> listHistory3 = App_Bt.mBtInfo.mListHistoryOut;
                                            if (listHistory3 != null && listHistory3.size() > position2) {
                                                listHistory3.remove(position2);
                                            }
                                            break;
                                        case 3:
                                            List<SparseArray<String>> listHistory4 = App_Bt.mBtInfo.mListHistoryMiss;
                                            if (listHistory4 != null && listHistory4.size() > position2) {
                                                listHistory4.remove(position2);
                                            }
                                            break;
                                    }
                                }
                                App_Bt.mBtInfo.delCallLog(map2.get(FinalBtCtrl.HistoryItem_Txt_Num), FuncUtils.myParseLong(map2.get(FinalBtCtrl.HistoryItem_Date)));
                            }
                        }
                        break;
                    case 5:
                        if (App_Bt.bLinkTwoPhone) {
                            if ((App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) || (App_Bt.mBtInfo.mListContact2 != null && App_Bt.mBtInfo.mListContact2.size() > 0)) {
                                Log.d("gdy14", " 11 Page_PopDel  SAVE_CONTACT mListContact.size" + App_Bt.mBtInfo.mListContact.size());
                                App_Bt.mBtInfo.saveDownloadContacts();
                            }
                        } else if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                            Log.d("gdy14", " 11 Page_PopDel  SAVE_CONTACT mListContact.size" + App_Bt.mBtInfo.mListContact.size());
                            App_Bt.mBtInfo.saveDownloadContacts();
                        }
                        break;
                    case 6:
                        Bt_IpcObj.VoiceSwitch();
                        break;
                    case 7:
                        JPage pageSet = this.actBt.ui.getPage(FinalBtCtrl.Page_Set);
                        if (pageSet != null) {
                            Bt_IpcObj.sendPathToUpdateBt(BTUtil.getInstance().getFilePath());
                        }
                        break;
                    case 8:
                        Page_Pair page_Pair = this.actBt.getPagePair();
                        if (page_Pair != null && !TextUtils.isEmpty(App_Bt.mDeletePairAddr)) {
                            for (int i = 0; i < App_Bt.mBtInfo.mListPair.size(); i++) {
                                if (App_Bt.mBtInfo.mListPair.get(i).get(FinalBtCtrl.PairItem_Txt_Addr).equalsIgnoreCase(App_Bt.mDeletePairAddr)) {
                                    App_Bt.mBtInfo.mListPair.remove(i);
                                    page_Pair.refreshList();
                                    App_Bt.mDeletePairAddr = null;
                                }
                                break;
                            }
                            page_Pair.refreshList();
                            App_Bt.mDeletePairAddr = null;
                        }
                        break;
                    case 9:
                        JPage page_Pair2 = this.actBt.ui.getPage(FinalBtCtrl.Page_Pair);
                        if (page_Pair2 != null && (gridView = (JGridView) page_Pair2.getChildViewByid(FinalBtCtrl.Paired_ListView)) != null && (map = gridView.getList().get(gridView.getPosition())) != null) {
                            String addr = map.get(FinalBtCtrl.PairedItem_Txt_Addr);
                            Bt_IpcObj.deleteConnectedDevice(addr);
                            App_Bt.mBtInfo.mListHasPaired.remove(map);
                            if (Bt_IpcObj.isConnect() && addr.equals(Bt.sPhoneAddr)) {
                                Bt_IpcObj.cut();
                            }
                            Page_Pair page = this.actBt.getPagePair();
                            if (page != null) {
                                page.refreshPairedList();
                            }
                        }
                        break;
                    case 10:
                        Page_Dial page_Dial = this.actBt.getPageDial();
                        if (page_Dial != null && App_Bt.mSelectContact > 0) {
                            SparseArray<String> map4 = new SparseArray<>();
                            if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                                if (App_Bt.mBtInfo.mListFavContact.size() >= App_Bt.mSelectContact) {
                                    App_Bt.mBtInfo.mListFavContact.remove(App_Bt.mSelectContact - 1);
                                    page_Dial.showLoveNumber();
                                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteFavContactToFile, false, 1);
                                }
                            } else {
                                SpUtil.saveContact(SpUtil.CONTACT_SP + App_Bt.mSelectContact, map4);
                                page_Dial.showLoveNumber();
                            }
                        }
                        break;
                    case 11:
                        this.actBt.ClearAllContact(true);
                        if (!App_Bt.bSaveContactsToUrl || App_Bt.bAutoSavePhoneBook) {
                            BTUtil.getInstance().deleteFile(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
                        }
                        if (v != null) {
                            v.postDelayed(new Runnable() { // from class: com.syu.bt.page.pop.Page_PopDel.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Bt_IpcObj.downloadBook();
                                }
                            }, 1000L);
                        }
                        break;
                    case 12:
                        Log.d("ai", " *** 00 mRunnUpdateAIKG  App_Bt.isAIOnOff = " + App_Bt.isAIOnOff + " bAI_GT = " + App_Bt.bAI_GT);
                        if (App_Bt.isAIOnOff) {
                            App_Bt.isAIOnOff = false;
                            SystemProperties.set("persist.lsec.aecdelay", "-1");
                            SystemProperties.set("persist.btaec.switch", "1");
                            if (App_Bt.bAI_GT) {
                                SystemProperties.set("persist.blinkbt.qcc3031.ecnr.disable", "0");
                                Log.d("ai", " *** 11  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 0 ");
                            }
                        } else {
                            App_Bt.isAIOnOff = true;
                            SystemProperties.set("persist.lsec.aecdelay", "0");
                            SystemProperties.set("persist.btaec.switch", "2");
                            if (App_Bt.bAI_GT) {
                                SystemProperties.set("persist.blinkbt.qcc3031.ecnr.disable", "1");
                                Log.d("ai", " *** 22  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 1 ");
                            }
                        }
                        SyuJniNative.getInstance().syu_jni_command(253, null, null);
                        if (v != null) {
                            v.postDelayed(new Runnable() { // from class: com.syu.bt.page.pop.Page_PopDel.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    Log.d("ai", " *** 33  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 1 ");
                                    Main.PROXY.cmd(19, new int[]{1}, (float[]) null, (String[]) null);
                                }
                            }, 1000L);
                        }
                        break;
                    case 13:
                        Log.d("ai", " *** UPDATE_AIJH_CQ  ");
                        Main.PROXY.cmd(19, new int[]{1}, (float[]) null, (String[]) null);
                        break;
                    case 14:
                        Log.d("ai", " *** 33  UPDATE_AIGT  App_Bt.isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
                        if (App_Bt.isAIGT_OnOff) {
                            App_Bt.isAIGT_OnOff = false;
                            SystemProperties.set("persist.lsec.aecdelay", "-1");
                            if ("6316".equals(App_Bt.mStrPlatForm)) {
                                SystemProperties.set("persist.btaec.switch", "2");
                            } else {
                                SystemProperties.set("persist.btaec.switch", "1");
                            }
                        } else {
                            App_Bt.isAIGT_OnOff = true;
                            SystemProperties.set("persist.lsec.aecdelay", "0");
                            SystemProperties.set("persist.btaec.switch", "2");
                        }
                        SyuJniNative.getInstance().syu_jni_command(253, null, null);
                        if (v != null) {
                            v.postDelayed(new Runnable() { // from class: com.syu.bt.page.pop.Page_PopDel.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    Log.d("ai", " *** 33  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 1 ");
                                    Main.PROXY.cmd(19, new int[]{1}, (float[]) null, (String[]) null);
                                }
                            }, 1000L);
                        }
                        break;
                }
                getPage().getDialog().dismiss();
                break;
            case FinalBtCtrl.PopDel_Btn_Cancel /* 10486 */:
                App_Bt.mSelectContact = -1;
                if (App_Bt.mDelType == 14) {
                    Page_Set.mSet_Switch_AI_KG2.setSwitch(App_Bt.isAIGT_OnOff);
                }
                if (App_Bt.mDelType == 12) {
                    Page_Set.mSet_Switch_AI_KG.setSwitch(App_Bt.isAIGT_OnOff);
                }
                getPage().getDialog().dismiss();
                break;
        }
    }
}
