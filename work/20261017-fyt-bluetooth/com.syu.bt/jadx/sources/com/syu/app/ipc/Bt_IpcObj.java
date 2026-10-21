package com.syu.app.ipc;

import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
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
import com.syu.bt.page.Page_SetPairItem;
import com.syu.bt.page.pop.Page_PopBt_Book;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.SpUtil;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Bt_IpcObj {
    Page_Pair page_Pair_p;
    public static boolean bIsAppIdBtAv = false;
    public static int bAppIdBefore = -1;
    public static String sPhoneAddrRead = FinalChip.BSP_PLATFORM_Null;
    public static String sPhoneAddrRead1 = FinalChip.BSP_PLATFORM_Null;
    public static String sPhoneAddrReadHistory = FinalChip.BSP_PLATFORM_Null;
    public static String sPhoneAddrWrite = FinalChip.BSP_PLATFORM_Null;
    public static String sPhoneAddrDelete = FinalChip.BSP_PLATFORM_Null;
    public static String sPhoneAddrReadHistory2 = FinalChip.BSP_PLATFORM_Null;
    Ipc_786 mIpc_786 = new Ipc_786();
    Ipc_New mIpc_New = new Ipc_New();
    Runnable mRunnable_ClearContactAndHistory_Disp = new Runnable() { // from class: com.syu.app.ipc.Bt_IpcObj.1
        @Override // java.lang.Runnable
        public void run() {
            JPage page;
            Page_PopBt_Book page_PopBt_Book;
            if (Bt_IpcObj.isDisConnect()) {
                App_Bt.mBtInfo.mListContact.clear();
                App_Bt.mBtInfo.mListHistoryIn.clear();
                Log.d("his3", " 00 mListHistoryOut.clear  ");
                App_Bt.mBtInfo.mListHistoryOut.clear();
                App_Bt.mBtInfo.mListHistoryMiss.clear();
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.resetList();
                }
                if (App_Bt.getInstance().bPopBtBook && (page = App_Bt.getInstance().uiApp.mPages.get(5)) != null && (page_PopBt_Book = (Page_PopBt_Book) page.getNotify()) != null) {
                    page_PopBt_Book.queryContacts(Bt.sPhoneNumber);
                }
            }
        }
    };
    public Runnable mRunnable_scanDB = new Runnable() { // from class: com.syu.app.ipc.Bt_IpcObj.2
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (App_Bt.bLinkTwoPhone) {
                Log.d("save111", " --- 00 mRunnable_scanDB 00 Bt.sPhoneAddr = " + App_Bt.sPhone2_MAC[0] + " sPhoneAddr1 = " + App_Bt.sPhone2_MAC[1]);
                Bt.sPhoneAddr = App_Bt.sPhone2_MAC[0];
            }
            Log.d("save111", " --- 00 mRunnable_scanDB 00 Bt.sPhoneAddr = " + Bt.sPhoneAddr);
            if (!Bt_IpcObj.isDisConnect() && !TextUtils.isEmpty(Bt.sPhoneAddr)) {
                App_Bt.bHaveScanDB = true;
                Log.d("BOOK", "-----------------mRunnable_scanDB----------------");
                String addr = App_Bt.getInstance().mySharePreference2.getStringValue("bt_phone_addr");
                String addr1 = App_Bt.getInstance().mySharePreference2.getStringValue("bt_phone_addr1");
                if (App_Bt.bLinkTwoPhone) {
                    Log.d("save111", " --- 11 mRunnable_scanDB addr = " + addr + " sPhoneAddr = " + Bt.sPhoneAddr + " addr1 = " + addr1 + " sPhone2_MAC[1] = " + App_Bt.sPhone2_MAC[1]);
                    if (Bt.sPhoneAddr.equalsIgnoreCase("000000000000") && App_Bt.sPhone2_MAC[1].equalsIgnoreCase("000000000000")) {
                        Log.d("save111", " --- 00 mRunnable_scanDB del null ");
                    } else if (!Bt.sPhoneAddr.equalsIgnoreCase(addr) && !addr.equalsIgnoreCase("000000000000") && !Bt.sPhoneAddr.equalsIgnoreCase("000000000000") && App_Bt.sPhone2_MAC[1].equalsIgnoreCase(addr1)) {
                        Log.d("save111", " --- 00 mRunnable_scanDB del 11 ");
                        App_Bt.getInstance().mySharePreference2.saveStringValue("bt_phone_addr", Bt.sPhoneAddr);
                        App_Bt.mBtInfo.mListContact.clear();
                        App_Bt.mBtInfo.saveDownloadContacts(App_Bt.mBtInfo.mListContact, App_Bt.mBtInfo.mListContact2);
                        List<SparseArray<String>> mListHis_1 = new ArrayList<>();
                        List<SparseArray<String>> mListHis_2 = new ArrayList<>();
                        App_Bt.mBtInfo.mListHistoryIn.clear();
                        App_Bt.mBtInfo.mListHistoryOut.clear();
                        App_Bt.mBtInfo.mListHistoryMiss.clear();
                        mListHis_1.addAll(App_Bt.mBtInfo.mListHistoryIn);
                        mListHis_1.addAll(App_Bt.mBtInfo.mListHistoryOut);
                        mListHis_1.addAll(App_Bt.mBtInfo.mListHistoryMiss);
                        mListHis_2.addAll(App_Bt.mBtInfo.mListHistoryIn2);
                        mListHis_2.addAll(App_Bt.mBtInfo.mListHistoryOut2);
                        mListHis_2.addAll(App_Bt.mBtInfo.mListHistoryMiss2);
                        App_Bt.mBtInfo.saveCallLog(mListHis_1, mListHis_2);
                    } else if (Bt.sPhoneAddr.equalsIgnoreCase(addr) && !addr1.equalsIgnoreCase("000000000000") && !App_Bt.sPhone2_MAC[1].equalsIgnoreCase("000000000000") && !App_Bt.sPhone2_MAC[1].equalsIgnoreCase(addr1)) {
                        Log.d("save111", " --- 00 mRunnable_scanDB del 22 ");
                        App_Bt.getInstance().mySharePreference2.saveStringValue("bt_phone_addr1", App_Bt.sPhone2_MAC[1]);
                        App_Bt.mBtInfo.mListContact2.clear();
                        App_Bt.mBtInfo.saveDownloadContacts(App_Bt.mBtInfo.mListContact, App_Bt.mBtInfo.mListContact2);
                        List<SparseArray<String>> mListHis_3 = new ArrayList<>();
                        List<SparseArray<String>> mListHis_4 = new ArrayList<>();
                        App_Bt.mBtInfo.mListHistoryIn2.clear();
                        App_Bt.mBtInfo.mListHistoryOut2.clear();
                        App_Bt.mBtInfo.mListHistoryMiss2.clear();
                        mListHis_3.addAll(App_Bt.mBtInfo.mListHistoryIn);
                        mListHis_3.addAll(App_Bt.mBtInfo.mListHistoryOut);
                        mListHis_3.addAll(App_Bt.mBtInfo.mListHistoryMiss);
                        mListHis_4.addAll(App_Bt.mBtInfo.mListHistoryIn2);
                        mListHis_4.addAll(App_Bt.mBtInfo.mListHistoryOut2);
                        mListHis_4.addAll(App_Bt.mBtInfo.mListHistoryMiss2);
                        App_Bt.mBtInfo.saveCallLog(mListHis_3, mListHis_4);
                    } else if (!Bt.sPhoneAddr.equalsIgnoreCase(addr) && !App_Bt.sPhone2_MAC[1].equalsIgnoreCase(addr1)) {
                        App_Bt.bSms_Ctrl = true;
                        App_Bt.bHasDownBook = false;
                        App_Bt.mBtInfo.clearAllContacts(addr);
                        App_Bt.getInstance().mySharePreference2.saveStringValue("bt_phone_addr", Bt.sPhoneAddr);
                        SpUtil.clearSaveContact();
                        Log.d("save11", " 00 clearAllCallLog");
                        App_Bt.mBtInfo.clearAllCallLog();
                        App_Bt.mBtInfo.mListHistoryIn.clear();
                        App_Bt.mBtInfo.mListHistoryOut.clear();
                        App_Bt.mBtInfo.mListHistoryMiss.clear();
                        App_Bt.mBtInfo.mListContact.clear();
                        App_Bt.getInstance().mySharePreference2.saveStringValue("bt_phone_addr1", App_Bt.sPhone2_MAC[1]);
                        App_Bt.mBtInfo.mListHistoryIn2.clear();
                        App_Bt.mBtInfo.mListHistoryOut2.clear();
                        App_Bt.mBtInfo.mListHistoryMiss2.clear();
                        Log.d("save11", " 00  mListContact2.clear ");
                        App_Bt.mBtInfo.mListContact2.clear();
                        App_Bt.getInstance().mySharePreference2.saveBooleanValue("sms_function", App_Bt.bSms_Ctrl);
                    }
                } else if (!Bt.sPhoneAddr.equalsIgnoreCase(addr)) {
                    App_Bt.bSms_Ctrl = true;
                    App_Bt.bHasDownBook = false;
                    App_Bt.mBtInfo.clearAllContacts(addr);
                    App_Bt.getInstance().mySharePreference2.saveStringValue("bt_phone_addr", Bt.sPhoneAddr);
                    SpUtil.clearSaveContact();
                    App_Bt.mBtInfo.clearAllCallLog();
                    App_Bt.mBtInfo.mListHistoryIn.clear();
                    App_Bt.mBtInfo.mListHistoryOut.clear();
                    App_Bt.mBtInfo.mListHistoryMiss.clear();
                    App_Bt.mBtInfo.mListContact.clear();
                    App_Bt.getInstance().mySharePreference2.saveBooleanValue("sms_function", App_Bt.bSms_Ctrl);
                }
                Log.d("BOOK", "-----------------mRunnable_scanDB time----------------");
                if (CustomerUtil.isYFConfig() || CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920") || App_Bt.bFavcontact) {
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.getInstance().readContactHeadFromFile();
                    } else {
                        App_Bt.getInstance().readFavContactFromFile();
                    }
                }
                Log.d("BOOK1", " 00 Bt_ipc  mRunnable_scanDB sPhoneAddr = " + Bt.sPhoneAddr + " mListContact.size = " + App_Bt.mBtInfo.mListContact.size() + " bAutoSavePhoneBook = " + App_Bt.bAutoSavePhoneBook);
                if (App_Bt.bAutoSavePhoneBook && App_Bt.mBtInfo.mListContact.size() <= 0) {
                    Log.d("BOOK", "11 Bt_ipc----mRunnable_scanDB time----------------");
                    List<SparseArray<String>> data = BTUtil.getInstance().readFile(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
                    Log.d("save11", " 22 Bt_ipc  mRunnable_scanDB sPhoneAddr = " + Bt.sPhoneAddr);
                    if (data != null) {
                        Log.d("save11", " 22 Bt_ipc  mRunnable_scanDB data.toString = " + data.toString());
                        if (App_Bt.bLinkTwoPhone) {
                            for (SparseArray<String> map : data) {
                                String name = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                                if (name.contains("hfp2")) {
                                    App_Bt.mBtInfo.mListContact2.add(map);
                                } else {
                                    App_Bt.mBtInfo.mListContact.add(map);
                                }
                            }
                        } else {
                            App_Bt.mBtInfo.mListContact.addAll(data);
                        }
                    }
                }
                Bt_IpcObj.this.scanDB();
                App_Bt.mBtInfo.handlerPairedBt(Bt.sPhoneAddr, Bt.sPhoneName);
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.resetList();
                }
            }
        }
    };
    public Runnable mRunnableStartPlayAv = new Runnable() { // from class: com.syu.app.ipc.Bt_IpcObj.3
        @Override // java.lang.Runnable
        public void run() {
            if (Bt_IpcObj.isAppIdBtAv() && Bt_IpcObj.isConnect() && !App_Bt.bBtAvPlayState) {
                Bt_IpcObj.avPlay();
            } else if (!App_Bt.bBtAvPlayState) {
                Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnableStartPlayAv);
                Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnableStartPlayAv, 4000L);
            }
        }
    };
    public Runnable mRunnableQueryContact = new Runnable() { // from class: com.syu.app.ipc.Bt_IpcObj.4
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.mBtInfo.queryContacts();
            Main.postRunnable_Ui(true, App_Bt.getInstance().mRunnable_updatePhoneName);
        }
    };
    PairLink mPairLink = new PairLink();

    public void initIpc() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.initIpc();
        } else {
            this.mIpc_New.initIpc();
        }
    }

    public void addNotify_PopBt() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.addNotify_PopBt();
        } else {
            this.mIpc_New.addNotify_PopBt();
        }
    }

    public void removeNotify_PopBt() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.removeNotify_PopBt();
        } else {
            this.mIpc_New.removeNotify_PopBt();
        }
    }

    public void requestAppIdBtPhone() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.requestAppIdBtPhone();
        } else {
            this.mIpc_New.requestAppIdBtPhone();
        }
    }

    public void requestAppIdBtAv() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.requestAppIdBtAv();
        } else {
            this.mIpc_New.requestAppIdBtAv();
        }
    }

    public void LauncherRequestAppIdBtAv() {
        this.mIpc_New.LauncherRequestAppIdBtAv();
    }

    public void requestAppIdNull() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.requestAppIdNull();
        } else {
            this.mIpc_New.requestAppIdNull();
        }
    }

    public void requestAppIdNull(int pageId) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.requestAppIdNull(pageId);
        }
    }

    public static String filterNumber(String number) {
        return number.replace("(", FinalChip.BSP_PLATFORM_Null).replace(")", FinalChip.BSP_PLATFORM_Null);
    }

    public static void itemDial(String number) {
        Log.d("con3", " 22 itemDial number = " + number + " mIsOldService = " + MyApplication.mIsOldService);
        if (isStateConnect()) {
            if (MyApplication.mIsOldService) {
                setNum(number);
                dial();
            } else {
                Log.d("con3", " 22 itemDial Contact_ListView isStateConnect = " + isStateConnect());
                dial(number);
            }
        }
    }

    public static void linkCut() {
        if (isStateDisconnect()) {
            link();
        } else {
            cut();
        }
    }

    public static boolean isStateDisconnect() {
        return MyApplication.mIsOldService ? Ipc_786.isStateDisconnect() : Ipc_New.isStateDisconnect();
    }

    public static boolean isStateConnect() {
        return MyApplication.mIsOldService ? Ipc_786.isStateConnect() : Ipc_New.isStateConnect();
    }

    public static boolean isStateDialAble() {
        return MyApplication.mIsOldService ? Ipc_786.isStateDialAble() : Ipc_New.isStateDialAble();
    }

    public static void setNum(String number) {
        if (MyApplication.mIsOldService) {
            Ipc_786.setNum(number);
        } else {
            Ipc_New.setNum(number);
        }
    }

    public static void setDevName(String name) throws Throwable {
        App_Bt.getInstance().mySharePreference2.saveStringValue("name_diy", name);
        if (MyApplication.mIsOldService) {
            Ipc_786.setDevName(name);
        } else {
            Ipc_New.setDevName(name);
        }
    }

    public static void setDevPin(String pin) throws Throwable {
        App_Bt.getInstance().mySharePreference2.saveStringValue("pin_diy", pin);
        if (MyApplication.mIsOldService) {
            Ipc_786.setDevPin(pin);
        } else {
            Ipc_New.setDevPin(pin);
        }
    }

    public static void Reset() {
        if (MyApplication.mIsOldService) {
            Ipc_786.Reset();
        } else {
            Ipc_New.Reset();
        }
    }

    public static void setNumKey(int key) {
        if (MyApplication.mIsOldService) {
            Ipc_786.setNumKey(key);
        } else {
            Ipc_New.setNumKey(key);
        }
    }

    public static void clearKey(boolean isLongClick) {
        if (MyApplication.mIsOldService) {
            Ipc_786.clearKey(isLongClick);
        } else {
            Ipc_New.clearKey(isLongClick);
        }
    }

    public static void link() {
        if (MyApplication.mIsOldService) {
            Ipc_786.link();
        } else {
            Ipc_New.link();
        }
    }

    public static void cut() {
        if (MyApplication.mIsOldService) {
            Ipc_786.cut();
        } else {
            Ipc_New.cut();
        }
    }

    public static void cut(String mac) {
        if (!MyApplication.mIsOldService) {
            Ipc_New.cut(mac);
        }
    }

    public static void hangIpPhone() {
        if (!MyApplication.mIsOldService) {
            Ipc_New.hangIpPhone();
        }
    }

    public static void hang() {
        if (MyApplication.mIsOldService) {
            Ipc_786.hang();
        } else {
            Ipc_New.hang();
        }
    }

    public static void dial() {
        if (MyApplication.mIsOldService) {
            Ipc_786.dial();
        } else {
            Ipc_New.dial();
        }
    }

    public static void dial(String phoneNumber) {
        if (!MyApplication.mIsOldService) {
            Ipc_New.dial(phoneNumber);
        }
    }

    public static void redial() {
        if (MyApplication.mIsOldService) {
            Ipc_786.redial();
        } else {
            Ipc_New.redial();
        }
    }

    public static void hfp() {
        if (MyApplication.mIsOldService) {
            Ipc_786.hfp();
        } else {
            Ipc_New.hfp();
        }
    }

    public static void sendName(String name) {
        if (TextUtils.isEmpty(name)) {
            Bt.PROXY.cmd(53, (int[]) null, (float[]) null, (String[]) null);
        } else {
            Bt.PROXY.cmd(53, (int[]) null, (float[]) null, new String[]{name});
        }
    }

    public static void sendHistory(String item1, String item2, String item3, String item4, String item5) {
        Bt.PROXY.cmd(52, (int[]) null, (float[]) null, new String[]{item1, item2, item3, item4, item5});
    }

    public static void updateBt(String file) {
        if (!MyApplication.mIsOldService) {
            Ipc_New.updateBt(file);
        }
    }

    public static void downloadBook() {
        Log.d("down", " --- downloadPhoneBook 001  App_Bt.bDownloading = " + App_Bt.bDownloading + HanziToPinyin.Token.SEPARATOR);
        if (BTUtil.getInstance().isFastSendCMD(2500) && !App_Bt.bDownloading) {
            App_Bt.bShowLoading = true;
            if (App_Bt.bLinkTwoPhone) {
                if (App_Bt.sPhone2_id == 0) {
                    App_Bt.mBtInfo.mListContactDownload.clear();
                } else {
                    App_Bt.mBtInfo.mListContactDownload2.clear();
                }
                Ipc_New.downloadBook(App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]);
                return;
            }
            App_Bt.mBtInfo.mListContactDownload.clear();
            Log.d("down", " --- downloadPhoneBook 002  mIsOldService = " + MyApplication.mIsOldService + HanziToPinyin.Token.SEPARATOR);
            if (MyApplication.mIsOldService) {
                Ipc_786.downloadBook();
            } else {
                Ipc_New.downloadBook();
            }
        }
    }

    public static void avPrev() {
        Log.d("gdyy", "  00  avPrev mIsOldService = " + MyApplication.mIsOldService);
        if (MyApplication.mIsOldService) {
            Ipc_786.avPrev();
        } else {
            Ipc_New.avPrev();
        }
    }

    public static void avNext() {
        if (MyApplication.mIsOldService) {
            Ipc_786.avNext();
        } else {
            Ipc_New.avNext();
        }
    }

    public static void avPlayPause() {
        if (MyApplication.mIsOldService) {
            Ipc_786.avPlayPause();
        } else {
            Ipc_New.avPlayPause();
        }
    }

    public static void avPlay() {
        if (MyApplication.mIsOldService) {
            Ipc_786.avPlay();
        } else {
            Ipc_New.avPlay();
        }
    }

    public static void avPause() {
        if (MyApplication.mIsOldService) {
            Ipc_786.avPause();
        } else {
            Ipc_New.avPause();
        }
    }

    public static void avStop() {
        if (MyApplication.mIsOldService) {
            Ipc_786.avStop();
        } else {
            Ipc_New.avStop();
        }
    }

    public static void avCut() {
        Ipc_New.avCut();
    }

    public static void avLink() {
        Ipc_New.avLink();
    }

    public static void setCarLinkAutoConnect(boolean auto) {
        Ipc_New.setCarLinkAutoConnect(auto);
    }

    public static void startDiscover() {
        if (MyApplication.mIsOldService) {
            Ipc_786.startDiscover();
        } else {
            Ipc_New.startDiscover();
        }
    }

    public static void stopDiscover() {
        if (MyApplication.mIsOldService) {
            Ipc_786.stopDiscover();
        } else {
            Ipc_New.stopDiscover();
        }
    }

    public void queryPairList() {
        if (MyApplication.mIsOldService) {
            Ipc_786.queryPairList();
        } else {
            Ipc_New.queryPairList();
        }
    }

    public void connectSMS() {
        Ipc_New.connectSMS();
    }

    public void requestSMS(String str) {
        Ipc_New.requestSMS(str);
    }

    public static void connectOBD(String str) {
        if (MyApplication.mIsOldService) {
            Ipc_786.connectOBD(str);
        } else {
            Ipc_New.connectOBD(str);
        }
    }

    public static void connectDevice(String str) {
        if (MyApplication.mIsOldService) {
            Ipc_786.connectDevice(str);
        } else {
            Ipc_New.connectDevice(str);
        }
    }

    public static void deleteConnectedDevice(String str) {
        Ipc_New.deleteConnectedDevice(str);
    }

    public static void test(String str) {
        if (MyApplication.mIsOldService) {
            Ipc_786.test(str);
        } else {
            Ipc_New.test(str);
        }
    }

    public static boolean isPairing() {
        return MyApplication.mIsOldService ? Ipc_786.isPairing() : Ipc_New.isPairing();
    }

    public static boolean isInCall() {
        if (App_Bt.bHideBtDial) {
            return false;
        }
        if (MyApplication.mIsOldService) {
            return Ipc_786.isInCall();
        }
        return Ipc_New.isInCall();
    }

    public static boolean isTalk() {
        return MyApplication.mIsOldService ? Ipc_786.isTalk() : Ipc_New.isTalk();
    }

    public static boolean isRing() {
        return MyApplication.mIsOldService ? Ipc_786.isRing() : Ipc_New.isRing();
    }

    public static boolean isConnect() {
        return MyApplication.mIsOldService ? Ipc_786.isConnect() : Ipc_New.isConnect();
    }

    public static boolean isDisConnect() {
        return MyApplication.mIsOldService ? Ipc_786.isDisConnect() : Ipc_New.isDisConnect();
    }

    public static boolean isAppIdBtAv() {
        return MyApplication.mIsOldService ? Ipc_786.isAppIdBtAv() : Ipc_New.isAppIdBtAv();
    }

    public static boolean isAppIdBtPhone() {
        return MyApplication.mIsOldService ? Ipc_786.isAppIdBtPhone() : Ipc_New.isAppIdBtPhone();
    }

    public static void LongClick0() {
        if (MyApplication.mIsOldService) {
            Ipc_786.LongClick0();
        } else {
            Ipc_New.LongClick0();
        }
    }

    public void sendCmdVolBal(int idSound, int value) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.sendCmdVolBal(idSound, value);
        }
    }

    public void sendCmdLoud(int value) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.sendCmdLoud(value);
        }
    }

    public void sendCmdAmp(int value) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.sendCmdAmp(value);
        }
    }

    public void setStandBy() {
        if (!MyApplication.mIsOldService) {
            Ipc_New.SetStandBy();
        }
    }

    public void PhoneVoice() {
        if (!MyApplication.mIsOldService) {
            Ipc_New.PhoneVoice();
        }
    }

    public void setBlackScreen() {
        if (!MyApplication.mIsOldService) {
            Ipc_New.SetBlackScreen();
        }
    }

    public void setMcuOff() {
        if (!MyApplication.mIsOldService) {
            Ipc_New.SetMcuOff();
        }
    }

    public static void setAutoAnswer(boolean b) {
        if (MyApplication.mIsOldService) {
            Ipc_786.setAutoAnswer(b);
        } else {
            Ipc_New.setAutoAnswer(b);
        }
    }

    public void requestAppIdRight(int iPage) {
        if (BTUtil.getInstance().isRightDevices()) {
            switch (iPage) {
                case 10003:
                    if (!isAppIdBtPhone()) {
                        requestAppIdBtPhone();
                    }
                    break;
                case FinalBtCtrl.Page_Av /* 10010 */:
                    if (CustomerUtil.isYFConfig()) {
                        requestAppIdBtAv();
                    } else if (!isAppIdBtAv()) {
                        requestAppIdBtAv();
                    }
                    break;
                default:
                    if (App_Bt.bIsLauncher_2Ico) {
                        requestAppIdBtPhone();
                    } else {
                        recoverAppId();
                    }
                    break;
            }
        }
    }

    public static boolean isRightAppId() {
        switch (App_Bt.sPage) {
            case FinalBtCtrl.Page_Av /* 10010 */:
                return isAppIdBtAv();
            default:
                return isAppIdBtPhone();
        }
    }

    public static void mcuOn(int updateCode, int value) {
        if (value == 0) {
            if (!isStateDisconnect()) {
                cut();
            }
        } else if (value == 1) {
            link();
        }
    }

    public void recoverAppId() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.recoverAppId();
        } else {
            this.mIpc_New.recoverAppId();
        }
    }

    public void cmdNum(int index) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.cmdNum(index);
        } else {
            this.mIpc_New.cmdNum(index);
        }
    }

    public void updateNotify_Set() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.updateNotify_Set();
        } else {
            this.mIpc_New.updateNotify_Set();
        }
    }

    public void updateNotify_Dial() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.updateNotify_Dial();
        } else {
            this.mIpc_New.updateNotify_Dial();
        }
    }

    public void updateNotify_BtAv() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.updateNotify_BtAv();
        } else {
            this.mIpc_New.updateNotify_BtAv();
        }
    }

    public void updateNotify_Callin() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin();
        }
    }

    public void updateNotify_Callin_ShowDial() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin();
        }
    }

    public void updateNotify_Callin_ShowCall() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin();
        }
    }

    public void updateNotify_Callin_ShowKey() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin();
        }
    }

    public void updateNotify_Callin_HideKey() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin();
        }
    }

    public void updateNotify_Callin_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin_HalfScreen();
        }
    }

    public void updateNotify_Callin_ShowDial_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin_HalfScreen();
        }
    }

    public void updateNotify_Callin_ShowCall_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin_HalfScreen();
        }
    }

    public void updateNotify_Callin_ShowHide_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Callin_HalfScreen();
        }
    }

    public void updateNotify_Dial_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_Dial_HalfScreen();
        }
    }

    public void updateNotify_BtAv_HalfScreen() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.updateNotify_BtAv_HalfScreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanDB() {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, this.mRunnableQueryContact, true, 1);
        App_Bt.queryCallLog();
    }

    public void phoneState(Act_Bt actBt) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.phoneState(actBt);
        } else {
            this.mIpc_New.phoneState(actBt);
        }
    }

    public void FuncDial() {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.FuncDial();
        } else {
            this.mIpc_New.FuncDial();
        }
    }

    public static void VoiceSwitch() {
        Log.d("talk", " ** 00  VoiceSwitch  sPhone_mac = " + App_Bt.sPhone_callin_mac);
        if (isTalk()) {
            hfp();
        }
    }

    public static void MicSwitch() {
        if (isTalk()) {
            Ipc_New.micSwitch();
        }
    }

    public static void MuteSwitch(int state) {
        Ipc_New.muteSwitch(state);
    }

    public static void sendPathToUpdateBt(String file) {
        if (!TextUtils.isEmpty(file)) {
            updateBt(file);
        }
    }

    class PairLink implements Runnable {
        PairLink() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Bt_IpcObj.this.FuncPairLink(Bt_IpcObj.this.page_Pair_p);
        }
    }

    public void FuncPairLinkRun(Page_Pair page_Pair, int time) {
        this.page_Pair_p = page_Pair;
        Main.removeRunnable_Ui(this.mPairLink);
        Main.postRunnable_Ui(true, this.mPairLink, time);
    }

    public void FuncPairLink(final Page_Pair page_Pair) {
        String strName;
        Log.d("c3", " 00 FuncPairLink ");
        if (!TextUtils.isEmpty(getChoiceAddr())) {
            if (page_Pair != null && page_Pair.isStartDiscovey) {
                stopDiscover();
            }
            Log.d("hfp3", " 11 FuncPairLink Bt.sPhoneAddr = " + Bt.sPhoneAddr + getChoiceAddr());
            if (!Bt.sPhoneAddr.equals(getChoiceAddr()) || ((Bt.sPhoneAddr.equals(getChoiceAddr()) && !isConnect()) || App_Bt.bLinkTwoPhone)) {
                SparseArray<String> entity = page_Pair.getChoiceName(getChoiceAddr());
                Log.d("hfp3", " 33 FuncPairLink ");
                if (entity != null) {
                    if (TextUtils.isEmpty(entity.get(FinalBtCtrl.PairItem_Txt_Addr))) {
                        strName = entity.get(FinalBtCtrl.PairedItem_Txt_Name);
                    } else {
                        strName = entity.get(FinalBtCtrl.PairItem_Txt_Name);
                    }
                    boolean bPopPwd = false;
                    if (!TextUtils.isEmpty(strName)) {
                        if (Main.mConf_PlatForm == 5) {
                            bPopPwd = strName.startsWith("OBD") || strName.startsWith("gooddriver");
                        } else {
                            bPopPwd = strName.contains("OBD");
                        }
                    }
                    App_Bt.bPopObdFlag = bPopPwd;
                    if (bPopPwd) {
                        page_Pair.isSelfLink = true;
                        if ((CustomerUtil.is7731() || CustomerUtil.is7862()) && App_Bt.mBtType == 0) {
                            BTUtil.getInstance().connect7731OBD(null);
                            return;
                        } else {
                            page_Pair.popPwd();
                            return;
                        }
                    }
                    int delay = 0;
                    if (isConnect() && !App_Bt.bLinkTwoPhone) {
                        delay = 2000;
                        cut();
                    }
                    Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.app.ipc.Bt_IpcObj.5
                        @Override // java.lang.Runnable
                        public void run() {
                            Bt_IpcObj.connectDevice(Bt_IpcObj.getChoiceAddr());
                            Log.d("con3", " 44 FuncPairLink ");
                            page_Pair.showConnectTip(true, App_Bt.getInstance().uiApp.getString("bt_linking"));
                        }
                    }, delay);
                }
            }
        }
    }

    public void FuncPairLink(Page_SetPairItem SetPairItem) {
        SparseArray<String> entity;
        boolean bPopPwd;
        if (!TextUtils.isEmpty(getChoiceAddr())) {
            App_Bt.bSelfLink = true;
            if (Page_Set.isSetStartDiscovey) {
                stopDiscover();
            }
            if (isConnect()) {
                cut();
            }
            if ((!Bt.sPhoneAddr.equals(getChoiceAddr()) || !isConnect()) && (entity = SetPairItem.getChoiceName(getChoiceAddr())) != null) {
                String strName = entity.get(FinalBtCtrl.SetPairItem_Txt_Name);
                if (Main.mConf_PlatForm == 5) {
                    bPopPwd = strName.startsWith("OBD") || strName.startsWith("gooddriver");
                } else {
                    bPopPwd = strName.startsWith("OBD");
                }
                if (bPopPwd) {
                    SetPairItem.popPwd();
                } else {
                    connectDevice(getChoiceAddr());
                }
            }
        }
    }

    public void FuncPairLink(Page_Set Set) {
        SparseArray<String> entity;
        boolean bPopPwd;
        if (!TextUtils.isEmpty(getChoiceAddr())) {
            App_Bt.bSelfLink = true;
            if (Page_Set.isSetStartDiscovey) {
                stopDiscover();
            }
            if (isConnect()) {
                cut();
            }
            if ((!Bt.sPhoneAddr.equals(getChoiceAddr()) || !isConnect()) && (entity = Set.getChoiceName(getChoiceAddr())) != null) {
                String strName = entity.get(FinalBtCtrl.SetPairItem_Txt_Name);
                if (Main.mConf_PlatForm == 5) {
                    bPopPwd = strName.startsWith("OBD") || strName.startsWith("gooddriver");
                } else {
                    bPopPwd = strName.startsWith("OBD");
                }
                if (bPopPwd) {
                    Set.popPwd();
                } else {
                    connectDevice(getChoiceAddr());
                }
            }
        }
    }

    public static String getChoiceAddr() {
        return Bt.sChoiceAddr;
    }

    public static void setChoiceAddr(String strAddr) {
        Bt.sChoiceAddr = strAddr;
    }

    public static String getPhoneAddr() {
        return Bt.sPhoneAddr;
    }

    public static String getDevPin() {
        return Bt.sDevPin;
    }

    public static String getDevName() {
        return Bt.sDevName;
    }

    public int[] getSB() {
        return this.mIpc_New.getSB();
    }

    public void dialOut(String number) {
        if (isStateConnect()) {
            if (MyApplication.mIsOldService) {
                setNum(number);
                dial();
                return;
            } else {
                dial(number);
                return;
            }
        }
        if (!isStateDialAble()) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_cannot_dial"));
        }
    }

    public boolean isCalling() {
        return MyApplication.mIsOldService ? this.mIpc_786.isCalling() : this.mIpc_New.isCalling();
    }

    public boolean isMute() {
        return MyApplication.mIsOldService ? this.mIpc_786.isMute() : this.mIpc_New.isMute();
    }

    public boolean isPauseDraw() {
        return MyApplication.mIsOldService ? this.mIpc_786.isPauseDraw() : this.mIpc_New.isPauseDraw();
    }

    public boolean isPBAPStateLoad() {
        return MyApplication.mIsOldService ? this.mIpc_786.isPBAPStateLoad() : this.mIpc_New.isPBAPStateLoad();
    }

    public float getElectricValue() {
        if (MyApplication.mIsOldService) {
            return 0.0f;
        }
        return this.mIpc_New.getElectricValue();
    }

    public static void SetRingLevel(int RingLevel) {
        if (Main.mConf_PlatForm == 5) {
            Ipc_New.SetRingLevel(RingLevel);
        }
    }

    public static void SetJumpNavi() {
        if (Main.mConf_PlatForm == 5 || Main.mConf_PlatForm == 8) {
            Ipc_New.SetJumpNavi();
        }
    }

    public static void setBtSwitch(boolean b) {
        if (!MyApplication.mIsOldService) {
            Ipc_New.setBtSwitch(b);
        }
    }

    public void EnableGainSpec() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.EnableGainSpec();
        }
    }

    public void DisableGainSpec() {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.DisableGainSpec();
        }
    }

    public boolean FuncDialIpPhone() {
        if (MyApplication.mIsOldService) {
            return false;
        }
        return this.mIpc_New.FuncDialIpPhone();
    }

    public void onNotify(Page_Menu page_Menu, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Menu, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Av page_Av, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify(page_Av, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify(page_Av, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Contact page_Contact, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify(page_Contact, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify(page_Contact, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Dial page_Dial, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify(page_Dial, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify(page_Dial, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Pair page_Pair, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify(page_Pair, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify(page_Pair, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_History page_History, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_History, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify(page_Set, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify(page_Set, updateCode, ints, flts, strs);
        }
    }

    public void onNotify_Sound(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (MyApplication.mIsOldService) {
            this.mIpc_786.mNotify.onNotify_Sound(page_Set, updateCode, ints, flts, strs);
        } else {
            this.mIpc_New.mNotify.onNotify_Sound(page_Set, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Av_HalfScreen page_Av_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Av_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Dial_HalfScreen page_Dial_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Dial_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin page_Callin, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowDial page_Callin_ShowDial, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowDial, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowCall page_Callin_ShowCall, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowCall, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowKey page_Callin_ShowKey, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowKey, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_HideKey page_Callin_HideKey, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_HideKey, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_HalfScreen page_Callin_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowDial_HalfScreen page_Callin_ShowDial_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowDial_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowCall_HalfScreen page_Callin_ShowCall_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowCall_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify(Page_Callin_ShowKey_HalfScreen page_Callin_ShowKey_HalfScreen, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify(page_Callin_ShowKey_HalfScreen, updateCode, ints, flts, strs);
        }
    }

    public void onNotify_UniCar(Page_Dial page_Dial, int updateCode, int[] ints, float[] flts, String[] strs) {
        if (!MyApplication.mIsOldService) {
            this.mIpc_New.mNotify.onNotify_UniCar(page_Dial, updateCode, ints, flts, strs);
        }
    }
}
