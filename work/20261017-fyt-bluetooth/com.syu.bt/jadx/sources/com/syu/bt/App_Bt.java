package com.syu.bt;

import android.app.ActivityManager;
import android.app.Instrumentation;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.os.SystemProperties;
import android.support.v4.internal.view.SupportMenu;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.github.promeg.pinyinhelper.Pinyin;
import com.lsec.core.frame.app.InterfaceUi;
import com.lsec.core.frame.app.MyApp;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.Markup;
import com.lsec.core.util.MySharePreference2;
import com.lsec.core.util.data.FinalCanbus;
import com.lsec.core.util.data.FinalChip;
import com.lsec.core.util.data.FinalCustomer;
import com.syu.Uvoice.UvoiceEcnr;
import com.syu.app.data.FinalAppCtrl;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.broadcast.BatteryReceiver;
import com.syu.broadcast.Receiver;
import com.syu.broadcast.Receiver_TimeUpdate;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.data.FinalBtType;
import com.syu.bt.db.Bt_Info;
import com.syu.bt.page.pop.Page_Pop3rdPhone;
import com.syu.bt.page.pop.Page_PopBt;
import com.syu.bt.page.pop.Page_PopBtAvMicSet;
import com.syu.bt.page.pop.Page_PopBtRingSet;
import com.syu.bt.page.pop.Page_PopBt_Book;
import com.syu.bt.page.pop.Page_PopBt_BookItem;
import com.syu.bt.page.pop.Page_PopBt_HistoryItem;
import com.syu.bt.page.pop.Page_PopLDD;
import com.syu.bt.page.pop.Page_PopMsg;
import com.syu.bt.page.pop.Page_PopPhoneMicSet;
import com.syu.bt.page.pop.Page_PopPhoneVoice;
import com.syu.bt.page.pop.Page_PopSms;
import com.syu.bt.page.pop.Page_PopSwitchPhone;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.runnable.Runnable_getNameByNumberPopBtBook;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.SpUtil;
import com.syu.bt.util.ToastUtil;
import com.syu.jni.SyuJniNative;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Method;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class App_Bt extends MyApp implements InterfaceUi {
    public static final String AMAPASSIST_PKG_NAME = "com.iflytek.amap.assist";
    public static final String StrThreadDBContact = "db-operation-contact";
    public static final String StrThreadDBHistory = "db-operation-history";
    public static final String StrThreadDownContact = "Thread-DownContact";
    public static final String StrThreadFactoryTest = "factoryTest";
    public static final String StrThreadGetNameByNumber = "Thread-GetNameByNumber";
    public static final String StrThreadGetNameByNumberHistory = "Thread-GetNameByNumberHistory";
    public static final String StrThreadGetNameByNumberPopBtBook = "Thread-GetNameByNumberPopBtBook";
    public static final String StrThreadSimulateKey = "ThreadSimulateKey";
    private static final String TAG = "net";
    public static String handleSMS;
    public static App_Bt instance;
    public static Bt_Info mBtInfo;
    public static String mDeletePairAddr;
    public static String mLocale;
    public static TelephonyManager mTelephonyManager;
    public static int sBackFlag;
    public static int sPageBak;
    private ConnectivityManager connectivityManager;
    private BatteryReceiver mBatteryReceiver;
    MyTask mytask;
    private ConnectivityManager.NetworkCallback networkCallback;
    Timer timer;
    public static final String[] mStrStates = {"bt_disconnected", "bt_linking", "bt_connected", "bt_dialing", "bt_ring", "bt_talking", "bt_paring", "bt_loading"};
    public static boolean bJumpFavorite = false;
    public static boolean bInAniState = false;
    public static boolean bRejectHide = false;
    public static int sPage = 10003;
    public static boolean color_show = true;
    public static int color_set = 0;
    public static int phoneState = 0;
    public static boolean pinStatus = false;
    public static String pinPhoneName = "Name";
    public static String pinCode = "Code";
    public static boolean bNotRestart = false;
    public static boolean bLinkNet = false;
    public static boolean bNo_Pair = false;
    public static boolean bAI_GT = false;
    public static int iAI_GT = 0;
    public static boolean bAI_JZ = false;
    public static boolean isAiuvoice = false;
    public static int isAIType = -1;
    public static boolean isAIOnOff = false;
    public static String aiStrQR = FinalChip.BSP_PLATFORM_Null;
    public static boolean bAI_JZ2 = false;
    public static int isAIGT_Aiuvoice = SupportMenu.USER_MASK;
    public static boolean isAIGT_OnOff = false;
    public static boolean bHaveScanDB = false;
    public static boolean bShowFloatBtn = false;
    public static boolean bShowFloatBtn_p = false;
    public static boolean bShow_PopBtTop = false;
    public static int iBtVerTime = 0;
    public static boolean bLinkTwoPhone = false;
    public static int iPhoneSwitchStep = 0;
    public static int[] bPhone2_HFP = {1, 1};
    public static int[] bPhone2_A2DP = new int[2];
    public static String bPhone2_A2DP_Mac = FinalChip.BSP_PLATFORM_Null;
    public static String[] sPhone2_MAC = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static String[] sPhone2_NAME = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static int iPhone2HisStep = 4;
    public static String[] sPhone2_CALL_NUMBER = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static String[] sPhone2_CALL_NUMBER_p = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static String[] sPhone2_WAITING_NUMBER = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static boolean bPhone2_dialThrdPhone = false;
    public static String[] sPhoneNumber = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static String[] sPhoneNumberHoldOn = {FinalChip.BSP_PLATFORM_Null, FinalChip.BSP_PLATFORM_Null};
    public static String sPhone_callin_mac = FinalChip.BSP_PLATFORM_Null;
    public static int sPhone_callin_id = 255;
    public static int sPhone_callin_id_p = 255;
    public static int sPhone2_id = 0;
    public static int sPhone2_talktime = 0;
    public static List<SparseArray<String>> mListContact_p1 = new ArrayList();
    public static List<SparseArray<String>> mListContact_p2 = new ArrayList();
    public static List<SparseArray<String>> mListHis_p = new ArrayList();
    public static List<SparseArray<String>> mListHis_p2 = new ArrayList();
    public static boolean bFavcontact = false;
    public static boolean bShowBtInNaviFloatBtn = false;
    public static boolean bDownloadingRecord = false;
    public static boolean bDownloading = false;
    public static boolean bShowLoading = false;
    public static boolean bAutoDownPhoneBook = false;
    public static boolean bHV_Kill = false;
    public static boolean bHV_Kill_p = false;
    public static boolean bMediaManager = false;
    public static boolean bAutoSavePhoneBook = false;
    public static boolean bHasDownBook = false;
    public static boolean bCutBtByIpPhone = false;
    public static boolean bEnableSpec = false;
    public static boolean bDelMenuFromBtAv = false;
    public static boolean bHideBtDial = false;
    public static boolean bChangeAppIdWhenTalking = false;
    public static boolean bIsLauncher_2Ico = false;
    public static boolean bResumeByDial = false;
    public static boolean bHFP = false;
    public static boolean bPhoneMIC = false;
    public static boolean bShowPairedBt = false;
    public static boolean bPhoneVoice = false;
    public static boolean bPop_hideKeyBoard = false;
    public static boolean bPhoneLDD = false;
    public static boolean bShowPairedBt2 = false;
    public static boolean bFactoryTest = false;
    public static boolean bShowKeyBoradWhenPopBt = false;
    public static boolean hideBtnWhenDisconnect = false;
    public static boolean bBtPowerOnOff = true;
    public static boolean bCarLinkAutoConnect = false;
    public static boolean bSoundMute = false;
    public static boolean bAppFirstInit = true;
    public static boolean bBtAcc_On = false;
    public static boolean bShowKeyFlag = false;
    public static boolean bPopObdFlag = false;
    public static boolean bBackCarFlag = false;
    public static boolean bHidePopBt = false;
    public static boolean bHidePopBt2 = false;
    public static boolean bHistoryLogAllFlag = false;
    public static boolean bSelfLink = false;
    public static boolean bCallinPageFlag = false;
    public static boolean bCallinHideKeyTextFlag = false;
    public static boolean bBtInitFlag = false;
    public static boolean bBtAvPlayState = false;
    public static boolean bFirstPairPage = false;
    public static boolean bFirstPairPage2 = false;
    public static boolean bFirstBtAvPage = false;
    public static boolean bBtNoAV = false;
    public static boolean bHideHang = false;
    public static String mUi_Name = FinalChip.BSP_PLATFORM_Null;
    public static boolean bLinkTwoPhone_test = false;
    public static boolean bSaveContactsToUrl = true;
    public static boolean bShowTime = false;
    public static boolean bShowHeadIco = false;
    public static boolean bSyncHistory = false;
    public static boolean bIsFavList = false;
    public static boolean needSplice = false;
    public static boolean mBtUpdating = false;
    public static boolean bSms_Ctrl = true;
    public static boolean bJumpFavrorite = false;
    public static boolean bSyncInfo = false;
    public static boolean bBtVoice = false;
    public static boolean bSpeValue = false;
    public static boolean bEnableHalfScreen = false;
    public static boolean bIsAppAmapAssistInstall = false;
    public static boolean bIsForegin = false;
    public static String mDelTip = FinalChip.BSP_PLATFORM_Null;
    public static String mOperator = FinalChip.BSP_PLATFORM_Null;
    public static int iDownRecordState = 255;
    public static int iOverTime = 0;
    public static int iDownloadCnt = 0;
    public static int iRingLevel = 8;
    public static int iPhoneMicSet = 0;
    public static int iBtAvMicSet = 0;
    public static int iBtAv_CurTime = 0;
    public static int iBtAv_TotalTime = 0;
    public static int idPageBeforeAv = 10003;
    public static int bSoundVol = 0;
    public static int bSoundAMP = 0;
    public static int bSoundLoud = 0;
    public static int bSoundMode = 0;
    public static int mDelType = 0;
    public static int sCallsType = 1;
    public static int mBtType = -1;
    public static int mColorType = -1;
    public static int mPhoneBatterty = 0;
    public static int mPhoneCoding = 0;
    public static int mSelectContact = -1;
    public static int iTimerCnt = 5;
    public static int iIcoType = -1;
    public static int iFavHeadSelectCopy = -1;
    public static int iFavHeadSelect = -1;
    public static int iTalkHead = -1;
    public static int[] ToastUtil_XY = new int[2];
    public static int[] UIUtil_XY = new int[2];
    public static int[] SB = new int[2];
    public static int barHeight = 0;
    public static int iSteer = -1;
    public static int iSteer_p = -1;
    public static boolean bUI_NightColour = false;
    public static boolean bShowFloat = false;
    public static int iDensity = 0;
    public static String strDefaultName = "SYU-Android";
    public static String strDefaultPin = "0000";
    public static String strNumberBak = FinalChip.BSP_PLATFORM_Null;
    public static String mIcoNumber = FinalChip.BSP_PLATFORM_Null;
    public static String mStrCustomer = "SYU";
    public static String sDialInput = FinalChip.BSP_PLATFORM_Null;
    public static int mDialPageId = -1;
    public static int screenWidth = 0;
    public static int screenHeight = 0;
    public static List<String> myHandle = new ArrayList();
    public static ArrayList<InterfaceBt> mInterfaceBt = new ArrayList<>();
    public static int iRunnStep = 0;
    public static boolean bPopSwitchPhone = false;
    public static boolean bPopMsgShow = false;
    public static int iPhoneState = 0;
    public static boolean bPop3rdPhone = false;
    public static boolean bPop3rdPhone_YF = false;
    public static String mStrPlatForm = FinalChip.BSP_PLATFORM_Null;
    public static String mRoPlatForm = FinalChip.BSP_PLATFORM_Null;
    public static int color = 0;
    public static String bt_version = FinalChip.BSP_PLATFORM_Null;
    public static Runnable mRunnableResetList = new Runnable() { // from class: com.syu.bt.App_Bt.34
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.resetList();
            }
        }
    };
    public static String sssss = FinalChip.BSP_PLATFORM_Null;
    public static int ssssState = 0;
    public static HashMap<String, Bitmap> myAlbum = new HashMap<>();
    public static List<String> myPaths = new ArrayList();
    public Bt_IpcObj mIpcObj = new Bt_IpcObj();
    public HashMap<String, Drawable> mDrawables = new HashMap<>();
    private Receiver mReceiver = new Receiver();
    private Receiver_TimeUpdate mReceiver_TimeUpdate = new Receiver_TimeUpdate();
    public Method fytSetState = null;
    public Method fytGetState = null;
    public Method setStatusBarColor = null;
    public Runnable mRunnAIUvEcnr = new Runnable() { // from class: com.syu.bt.App_Bt.1
        @Override // java.lang.Runnable
        public void run() {
            Log.d(App_Bt.TAG, "  000  mRunnAIUvEcnr AI降噪激活   isAiuvoice = " + App_Bt.isAiuvoice + " isAIType = " + App_Bt.isAIType + " bLinkNet = " + App_Bt.bLinkNet);
            if (!App_Bt.isAiuvoice && App_Bt.isAIType == 1 && App_Bt.bLinkNet && App_Bt.iRunnStep < 3) {
                App_Bt.iRunnStep++;
                App_Bt.this.AIUvEcnr();
                Main.postRunnable_Ui(true, App_Bt.this.mRunnAIUvEcnr, 10000L);
            }
        }
    };
    public boolean bPopBtShow = false;
    public boolean bPopBtShow_Num = false;
    public boolean bPopBtShowBak_Num = false;
    public boolean bPopBtBook = false;
    public Runnable mRunnable_PopBtNum = new Runnable() { // from class: com.syu.bt.App_Bt.2
        @Override // java.lang.Runnable
        public void run() {
            if (!App_Bt.this.bPopBtShow_Num) {
                JPage pageFunc = App_Bt.this.uiApp.loadPage(true, 3);
                JPage pageNum = App_Bt.this.uiApp.loadPage(true, 2);
                if (pageNum != null && pageFunc != null) {
                    pageNum.resume();
                    MyUiItem itemFunc = (MyUiItem) pageFunc.getTag();
                    MyUiItem item = (MyUiItem) pageNum.getTag();
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.flags = 40;
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU_DS")) {
                        layoutParams.type = 2026;
                    } else {
                        layoutParams.type = 2020;
                    }
                    layoutParams.format = 1;
                    layoutParams.width = item.getWidth();
                    layoutParams.height = item.getHeight();
                    int offsetX = 0;
                    int offsetY = 0;
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("AY_V")) {
                        if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            offsetY = 8;
                        } else {
                            offsetY = 15;
                        }
                    }
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        offsetX = 10;
                        offsetY = -15;
                    }
                    int[] padding = item.getPadding();
                    if (padding != null && padding.length >= 2) {
                        layoutParams.x = padding[0];
                        layoutParams.y = padding[1] + App_Bt.barHeight;
                    } else {
                        layoutParams.x = offsetX;
                        layoutParams.y = itemFunc.getHeight() - offsetY;
                    }
                    Log.d("btpop", " mRunnable_PopBtNum itemFunc.getHeight() " + itemFunc.getHeight() + " ** layoutParams.y = " + layoutParams.y);
                    layoutParams.gravity = 83;
                    App_Bt.this.bPopBtShow_Num = true;
                    App_Bt.this.bPopBtShowBak_Num = true;
                    MyApplication.mWindowManager.addView(pageNum, layoutParams);
                }
            }
        }
    };
    public Runnable mRunnReSetAIOn = new Runnable() { // from class: com.syu.bt.App_Bt.3
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdyy", " ** mRunnReSetAIOn isAiuvoice = " + App_Bt.isAiuvoice + "  - isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice);
            if (SystemProperties.getInt("persist.lsec.aecdelay", 255) == 255) {
                if (App_Bt.isAiuvoice || App_Bt.isAIGT_Aiuvoice == 0) {
                    SystemProperties.set("persist.lsec.aecdelay", "0");
                    SystemProperties.set("persist.btaec.switch", "2");
                    if (App_Bt.bAI_GT) {
                        SystemProperties.set("persist.blinkbt.qcc3031.ecnr.disable", "1");
                    }
                    App_Bt.isAIOnOff = true;
                    SyuJniNative.getInstance().syu_jni_command(253, null, null);
                    App_Bt.getInstance().popMsgSet(true);
                }
            }
        }
    };
    public Runnable mRunnable_hideBtNum = new Runnable() { // from class: com.syu.bt.App_Bt.4
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopBtShow_Num) {
                JPage pageNum = App_Bt.this.uiApp.getPage(2);
                if (pageNum != null) {
                    MyApplication.mWindowManager.removeView(pageNum);
                }
                App_Bt.this.bPopBtShow_Num = false;
                App_Bt.this.bPopBtShowBak_Num = false;
                App_Bt.this.uiApp.removePage(2);
            }
        }
    };
    public Runnable mRunnable_popBtBook = new Runnable() { // from class: com.syu.bt.App_Bt.5
        @Override // java.lang.Runnable
        public void run() {
            JPage pageBook;
            if (!App_Bt.this.bPopBtBook && (pageBook = App_Bt.this.uiApp.loadPage(true, 5)) != null) {
                pageBook.resume();
                MyUiItem item = (MyUiItem) pageBook.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                int[] padding = item.getPadding();
                if (padding != null && padding.length >= 2) {
                    layoutParams.x = padding[0];
                    layoutParams.y = padding[1];
                } else {
                    layoutParams.x = 0;
                    layoutParams.y = 280;
                }
                layoutParams.gravity = 83;
                App_Bt.this.bPopBtBook = true;
                MyApplication.mWindowManager.addView(pageBook, layoutParams);
            }
        }
    };
    public Runnable mRunnable_hideBtBook = new Runnable() { // from class: com.syu.bt.App_Bt.6
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopBtBook) {
                JPage pageBook = App_Bt.this.uiApp.getPage(5);
                if (pageBook != null) {
                    MyApplication.mWindowManager.removeView(pageBook);
                }
                App_Bt.this.bPopBtBook = false;
            }
        }
    };
    public Runnable mRunnable_PopBt = new Runnable() { // from class: com.syu.bt.App_Bt.7
        @Override // java.lang.Runnable
        public void run() {
            Page_PopBt pagePopBt;
            if (App_Bt.bShowFloatBtn && !App_Bt.this.mIpcObj.isCalling()) {
                Bt.sLastPhoneState = Bt.DATA[9];
            }
            if (App_Bt.this.bPopBtShow) {
                JPage page = App_Bt.this.uiApp.getPage(1);
                if (page == null) {
                    page = App_Bt.this.uiApp.getPage(3);
                }
                if (page != null && (pagePopBt = (Page_PopBt) page.getNotify()) != null) {
                    pagePopBt.showKeyBorad(App_Bt.bShowKeyBoradWhenPopBt);
                    return;
                }
                return;
            }
            JPage page2 = App_Bt.this.uiApp.loadPage(true, 1);
            if (page2 == null) {
                page2 = App_Bt.this.uiApp.loadPage(true, 3);
            }
            if (page2 != null) {
                page2.resume();
                MyUiItem item = (MyUiItem) page2.getTag();
                int[] padding = item.getPadding();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 296;
                layoutParams.type = 2026;
                int offsetX = 0;
                int offsetY = 0;
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    offsetX = 10;
                    offsetY = 10;
                }
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                if (App_Bt.mStrCustomer.equalsIgnoreCase("YF_UI2")) {
                    if (App_Bt.iPhoneState == 2) {
                        layoutParams.width = (int) (((double) item.getWidth()) * 0.57d);
                    } else {
                        layoutParams.width = (int) (((double) item.getWidth()) * 0.7d);
                    }
                }
                layoutParams.height = item.getHeight();
                Log.d("gdypop", " 02 mRunnable_PopBt offsetX = " + offsetX + " width = " + layoutParams.width + "  iPhoneState = " + App_Bt.iPhoneState);
                if (padding != null && padding.length >= 2) {
                    layoutParams.x = padding[0];
                    layoutParams.y = padding[1];
                } else {
                    layoutParams.x = offsetX;
                    layoutParams.y = offsetY;
                }
                if (App_Bt.bShow_PopBtTop) {
                    layoutParams.gravity = 51;
                } else {
                    layoutParams.gravity = 83;
                }
                Log.d("btpop", " 00 mRunnable_PopBt barHeight=" + App_Bt.barHeight + " ** layoutParams.y = " + layoutParams.y + " mStrPlatForm = " + App_Bt.mStrPlatForm);
                Log.d("gdypop", " 11 App_Bt getWindowManeger=" + BTUtil.getInstance().getWindowManeger()[0] + "  mStrCustomer = " + App_Bt.mStrCustomer);
                if (App_Bt.barHeight > 0 && App_Bt.screenWidth > App_Bt.screenHeight) {
                    layoutParams.y += App_Bt.barHeight;
                }
                Log.d("gdyy", " 22  layoutParams.y = " + layoutParams.y + " screenWidth = " + App_Bt.screenWidth + " screenHeight = " + App_Bt.screenHeight);
                App_Bt.this.bPopBtShow = true;
                App_Bt.this.bPopBtShowBak_Num = false;
                MyApplication.mWindowManager.addView(page2, layoutParams);
                App_Bt.this.mIpcObj.addNotify_PopBt();
                Page_PopBt pagePopBt2 = (Page_PopBt) page2.getNotify();
                if (pagePopBt2 != null) {
                    pagePopBt2.showKeyBorad(App_Bt.bShowKeyBoradWhenPopBt);
                }
            }
        }
    };
    public Runnable mRunnable_PopMove = new Runnable() { // from class: com.syu.bt.App_Bt.8
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdy10", " 01 move_PopBt  ");
            JPage page = App_Bt.this.uiApp.loadPage(true, 3);
            if (page != null) {
                App_Bt.this.mIpcObj.removeNotify_PopBt();
                MyApplication.mWindowManager.removeView(page);
                App_Bt.this.uiApp.removePage(3);
                MyUiItem item = (MyUiItem) page.getTag();
                int width = item.getWidth();
                item.getHeight();
                Log.d("gdy10", " 02 move_PopBt width = " + width);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2020;
                layoutParams.format = 1;
                layoutParams.width = 400;
                layoutParams.height = item.getHeight();
                Log.d("gdy10", " 03 mRunnable_PopBt  width = " + layoutParams.width + "+  iPhoneState = " + App_Bt.iPhoneState);
                layoutParams.x = 0;
                layoutParams.y = 0;
                Log.d("gdy10", " 04 move_PopBt width = " + width);
                try {
                    MyApplication.mWindowManager.addView(page, layoutParams);
                    page.resume();
                } catch (Exception e) {
                }
                Log.d("gdy10", " 05 move_PopBt width = " + width);
            }
        }
    };
    public Runnable mRunnable_hideBt = new Runnable() { // from class: com.syu.bt.App_Bt.9
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdy10", " 01 mRunnable_hideBt  ");
            if (App_Bt.this.bPopBtShow) {
                App_Bt.this.mIpcObj.removeNotify_PopBt();
                JPage page = App_Bt.this.uiApp.getPage(1);
                if (page == null) {
                    page = App_Bt.this.uiApp.getPage(3);
                }
                MyApplication.mWindowManager.removeView(page);
                App_Bt.this.bPopBtShow = false;
            }
            if (App_Bt.this.bPopBtShow_Num) {
                JPage page2 = App_Bt.this.uiApp.getPage(2);
                if (page2 != null) {
                    MyApplication.mWindowManager.removeView(page2);
                }
                App_Bt.this.bPopBtShow_Num = false;
            }
            App_Bt.this.uiApp.removePage(1);
            App_Bt.this.uiApp.removePage(3);
            App_Bt.this.uiApp.removePage(2);
        }
    };
    public boolean bPopBtRingSet = false;
    public Runnable mRunnable_popBtRingSet = new Runnable() { // from class: com.syu.bt.App_Bt.10
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 10);
            if ((page == null || !App_Bt.this.bPopBtRingSet) && page != null) {
                page.resume();
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.gravity = 16;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                if (page.getId() == 10) {
                    App_Bt.this.bPopBtRingSet = true;
                }
                MyApplication.mWindowManager.addView(page, layoutParams);
                App_Bt.iTimerCnt = 5;
                App_Bt.this.timer = new Timer();
                App_Bt.this.mytask = App_Bt.this.new MyTask();
                App_Bt.this.timer.schedule(App_Bt.this.mytask, 1000L, 1000L);
            }
        }
    };
    public Runnable mRunnable_hideBtRingSet = new Runnable() { // from class: com.syu.bt.App_Bt.11
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopBtRingSet) {
                JPage page = App_Bt.this.uiApp.getPage(10);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.this.bPopBtRingSet = false;
                App_Bt.this.timer.cancel();
                App_Bt.this.mytask.cancel();
                App_Bt.this.uiApp.removePage(10);
            }
        }
    };
    public Runnable mRunnable_popSwitchPhone = new Runnable() { // from class: com.syu.bt.App_Bt.12
        @Override // java.lang.Runnable
        public void run() {
            Log.d("sfth2", " **00  mRunnable_popSwitchPhone  bPopSwitchPhone = " + App_Bt.bPopSwitchPhone);
            JPage page = App_Bt.this.uiApp.loadPage(true, 14);
            if (page == null) {
                Log.d("sfth2", " **11  mRunnable_popSwitchPhone  page == null  ");
            }
            if (page != null && !App_Bt.bPopSwitchPhone) {
                page.resume();
                Log.d("sfth2", " **22  mRunnable_popSwitchPhone  bPopSwitchPhone = " + App_Bt.bPopSwitchPhone);
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2020;
                layoutParams.gravity = 21;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                App_Bt.bPopSwitchPhone = true;
                MyApplication.mWindowManager.addView(page, layoutParams);
                App_Bt.this.mIpcObj.addNotify_PopBt();
                Log.d("sfth2", " **33  mRunnable_popSwitchPhone  bPopSwitchPhone = " + App_Bt.bPopSwitchPhone);
            }
        }
    };
    public Runnable mRunnable_hideSwitchPhone = new Runnable() { // from class: com.syu.bt.App_Bt.13
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.bPopSwitchPhone) {
                JPage page = App_Bt.this.uiApp.getPage(14);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.bPopSwitchPhone = false;
                App_Bt.this.uiApp.removePage(14);
            }
        }
    };
    public Runnable mRunnable_popMSG = new Runnable() { // from class: com.syu.bt.App_Bt.14
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 11);
            Log.d("pddd", "  JAVA 11 App_Bt  mRunnable_popMSG bPopMsgShow = " + App_Bt.bPopMsgShow + "  App_Bt.pinStatus= " + App_Bt.pinStatus);
            if (page != null) {
                Log.d("ai11", "  JAVA 22 App_Bt  mRunnable_popMSG bPopMsgShow = " + App_Bt.bPopMsgShow);
                if (!App_Bt.bPopMsgShow) {
                    page.resume();
                    Log.d("ai11", "  JAVA 33 App_Bt  mRunnable_popMSG ");
                    MyUiItem item = (MyUiItem) page.getTag();
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.flags = 40;
                    layoutParams.type = 2038;
                    layoutParams.gravity = 16;
                    layoutParams.format = 1;
                    layoutParams.width = item.getWidth();
                    layoutParams.height = item.getHeight();
                    App_Bt.bPopMsgShow = true;
                    try {
                        Log.d("pddd", "  JAVA 22 App_Bt try mWindowManager.addView ");
                        MyApplication.mWindowManager.addView(page, layoutParams);
                        App_Bt.this.mIpcObj.addNotify_PopBt();
                        Log.d("pddd", "  JAVA 33 App_Bt try mWindowManager.addView ");
                    } catch (Exception ex) {
                        Log.d("pddd", "  JAVA 44 App_Bt catch  ERROR  ex = " + ex.toString());
                        ex.printStackTrace();
                    }
                    Log.d("ai11", "  JAVA 11 App_Bt  ishowMsgDlg ");
                }
            }
        }
    };
    public Runnable mRunnable_hideMSG = new Runnable() { // from class: com.syu.bt.App_Bt.15
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.pinStatus = false;
            Log.d("pin", "  JAVA 11 App_Bt  mRunnable_hideMSG App_Bt.pinStatus= " + App_Bt.pinStatus);
            if (App_Bt.bPopMsgShow) {
                JPage page = App_Bt.this.uiApp.getPage(11);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.bPopMsgShow = false;
                App_Bt.this.uiApp.removePage(11);
            }
        }
    };
    public Runnable mRunnable_pop3rdPhone = new Runnable() { // from class: com.syu.bt.App_Bt.16
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 12);
            if ((page == null || !App_Bt.bPop3rdPhone) && page != null) {
                page.resume();
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2020;
                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    layoutParams.gravity = 19;
                } else {
                    layoutParams.gravity = 16;
                }
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU_DS")) {
                    layoutParams.gravity = 83;
                    JPage pageFunc = App_Bt.this.uiApp.loadPage(true, 3);
                    MyUiItem itemFunc = (MyUiItem) pageFunc.getTag();
                    int y = itemFunc.getHeight();
                    if (App_Bt.getInstance().bPopBtShow_Num) {
                        y = 630;
                    }
                    layoutParams.y = y;
                    Log.d("btpop", " 00 mRunnable_pop3rdPhone layoutParams.y = " + layoutParams.y);
                }
                App_Bt.bPop3rdPhone = true;
                MyApplication.mWindowManager.addView(page, layoutParams);
                App_Bt.this.mIpcObj.addNotify_PopBt();
            }
        }
    };
    public Runnable mRunnable_hide3rdPhone = new Runnable() { // from class: com.syu.bt.App_Bt.17
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdy14", " 00 mRunnable_hide3rdPhone bPop3rdPhone = " + App_Bt.bPop3rdPhone);
            if (App_Bt.bPop3rdPhone) {
                JPage page = App_Bt.this.uiApp.getPage(12);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.bPop3rdPhone = false;
                App_Bt.this.uiApp.removePage(12);
            }
        }
    };
    public boolean bPopPhoneMicSet = false;
    public Runnable mRunnable_popPhoneMicSet = new Runnable() { // from class: com.syu.bt.App_Bt.18
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 8);
            if ((page == null || !App_Bt.this.bPopPhoneMicSet) && page != null) {
                page.resume();
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.gravity = 16;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                if (page.getId() == 8) {
                    App_Bt.this.bPopPhoneMicSet = true;
                }
                MyApplication.mWindowManager.addView(page, layoutParams);
                App_Bt.iTimerCnt = 5;
                App_Bt.this.timer = new Timer();
                App_Bt.this.mytask = App_Bt.this.new MyTask();
                App_Bt.this.timer.schedule(App_Bt.this.mytask, 1000L, 1000L);
            }
        }
    };
    public Runnable mRunnable_hidePhoneMicSet = new Runnable() { // from class: com.syu.bt.App_Bt.19
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopPhoneMicSet) {
                JPage page = App_Bt.this.uiApp.getPage(8);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.this.bPopPhoneMicSet = false;
                App_Bt.this.timer.cancel();
                App_Bt.this.mytask.cancel();
                App_Bt.this.uiApp.removePage(8);
            }
        }
    };
    public boolean bPopPhoneVoice = false;
    public int bPopPhoneFirstValue = 1;
    public Runnable mRunnable_popPhoneVoice = new Runnable() { // from class: com.syu.bt.App_Bt.20
        @Override // java.lang.Runnable
        public void run() {
            Log.d("yy", " 00 ** mRunnable_popPhoneVoice bPopPhoneVoice = " + App_Bt.this.bPopPhoneVoice);
            JPage page = App_Bt.this.uiApp.loadPage(true, 13);
            if ((page == null || !App_Bt.this.bPopPhoneVoice) && page != null) {
                page.resume();
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.gravity = 16;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                if (page.getId() == 13) {
                    App_Bt.this.bPopPhoneVoice = true;
                }
                MyApplication.mWindowManager.addView(page, layoutParams);
            }
        }
    };
    public Runnable mRunnable_hidePhoneVoice = new Runnable() { // from class: com.syu.bt.App_Bt.21
        @Override // java.lang.Runnable
        public void run() {
            Log.d("ldd", " 00 ** mRunnable_hidePhoneVoice bPopLDD = " + App_Bt.this.bPopLDD);
            if (App_Bt.this.bPopPhoneVoice) {
                JPage page = App_Bt.this.uiApp.getPage(13);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                Log.d("ldd", " 11 ** mRunnable_hidePhoneVoice bPopPhoneVoice = " + App_Bt.this.bPopPhoneVoice);
                App_Bt.this.bPopPhoneVoice = false;
                App_Bt.getInstance().uiApp.mPages.remove(13);
            }
        }
    };
    public Runnable mRunnable_popLDD = new Runnable() { // from class: com.syu.bt.App_Bt.22
        @Override // java.lang.Runnable
        public void run() {
            Log.d("ldd", " 00 ** mRunnable_popLDD bPopLDD = " + App_Bt.this.bPopLDD);
            JPage page = App_Bt.this.uiApp.loadPage(true, 15);
            if (page == null || !App_Bt.this.bPopLDD) {
                Log.d("ldd", " 11 ** mRunnable_popLDD bPopLDD = " + App_Bt.this.bPopLDD);
                if (page != null) {
                    Log.d("ldd", " 22 ** mRunnable_popLDD page != null  ");
                    page.resume();
                    MyUiItem item = (MyUiItem) page.getTag();
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.flags = 40;
                    layoutParams.type = 2026;
                    layoutParams.gravity = 49;
                    layoutParams.format = 1;
                    layoutParams.width = item.getWidth();
                    layoutParams.height = item.getHeight();
                    Log.d("ldd", " 00 ** mRunnable_popLDD bPopLDD width = " + layoutParams.width + "  height = " + layoutParams.height);
                    if (page.getId() == 15) {
                        App_Bt.this.bPopLDD = true;
                    }
                    MyApplication.mWindowManager.addView(page, layoutParams);
                    App_Bt.this.mIpcObj.addNotify_PopBt();
                }
            }
        }
    };
    public boolean bPopLDD = false;
    public Runnable mRunnable_hideLDD = new Runnable() { // from class: com.syu.bt.App_Bt.23
        @Override // java.lang.Runnable
        public void run() {
            Log.d("ldd", " 00 ** mRunnable_hideLDD bPopLDD = " + App_Bt.this.bPopLDD);
            if (App_Bt.this.bPopLDD) {
                JPage page = App_Bt.this.uiApp.getPage(15);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                Log.d("ldd", " 11 ** mRunnable_hideLDD bPopLDD = " + App_Bt.this.bPopLDD);
                App_Bt.this.bPopLDD = false;
                App_Bt.getInstance().uiApp.mPages.remove(15);
                App_Bt.this.mIpcObj.removeNotify_PopBt();
            }
        }
    };
    public boolean bPopPhoneSms = false;
    public Runnable mRunnable_popPhoneSMS = new Runnable() { // from class: com.syu.bt.App_Bt.24
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 16);
            if (page == null || !App_Bt.this.bPopPhoneSms) {
                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.App_Bt.24.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BTUtil.getBtTone(App_Bt.getInstance().uiApp.mContext, "sms.mp3");
                    }
                });
                if (page != null) {
                    page.resume();
                    MyUiItem item = (MyUiItem) page.getTag();
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.flags = 40;
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        layoutParams.type = 2020;
                    } else {
                        layoutParams.type = 2002;
                    }
                    layoutParams.gravity = 16;
                    layoutParams.format = 1;
                    layoutParams.width = item.getWidth();
                    layoutParams.height = item.getHeight();
                    if (page.getId() == 16) {
                        App_Bt.this.bPopPhoneSms = true;
                    }
                    MyApplication.mWindowManager.addView(page, layoutParams);
                    App_Bt.this.mIpcObj.addNotify_PopBt();
                }
            }
        }
    };
    public Runnable mRunnable_hidePhoneSMS = new Runnable() { // from class: com.syu.bt.App_Bt.25
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopPhoneSms) {
                JPage page = App_Bt.this.uiApp.getPage(16);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.this.bPopPhoneSms = false;
                App_Bt.getInstance().uiApp.mPages.remove(16);
            }
        }
    };
    public boolean bPopBtAvMicSet = false;
    public Runnable mRunnable_popBtAvMicSet = new Runnable() { // from class: com.syu.bt.App_Bt.26
        @Override // java.lang.Runnable
        public void run() {
            JPage page = App_Bt.this.uiApp.loadPage(true, 9);
            if ((page == null || !App_Bt.this.bPopBtAvMicSet) && page != null) {
                page.resume();
                MyUiItem item = (MyUiItem) page.getTag();
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.gravity = 16;
                layoutParams.format = 1;
                layoutParams.width = item.getWidth();
                layoutParams.height = item.getHeight();
                if (page.getId() == 9) {
                    App_Bt.this.bPopBtAvMicSet = true;
                }
                MyApplication.mWindowManager.addView(page, layoutParams);
                App_Bt.iTimerCnt = 5;
                App_Bt.this.timer = new Timer();
                App_Bt.this.mytask = App_Bt.this.new MyTask();
                App_Bt.this.timer.schedule(App_Bt.this.mytask, 1000L, 1000L);
            }
        }
    };
    public Runnable mRunnable_hideBtAvMicSet = new Runnable() { // from class: com.syu.bt.App_Bt.27
        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.this.bPopBtAvMicSet) {
                JPage page = App_Bt.this.uiApp.getPage(9);
                if (page != null) {
                    MyApplication.mWindowManager.removeView(page);
                }
                App_Bt.this.bPopBtAvMicSet = false;
                App_Bt.this.timer.cancel();
                App_Bt.this.mytask.cancel();
                App_Bt.this.uiApp.removePage(9);
            }
        }
    };
    public Runnable mRunnable_updatePhoneName = new Runnable() { // from class: com.syu.bt.App_Bt.28
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.this.updatePhoneName();
        }
    };
    public Runnable mRunnable_updatePhoneView = new Runnable() { // from class: com.syu.bt.App_Bt.29
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.this.updatePhoneView();
        }
    };
    public Runnable mRunnable_SteerDisCon = new Runnable() { // from class: com.syu.bt.App_Bt.30
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.iSteer_p = 0;
            Log.d("steer", " **App show 00 mRunnable_SteerDisCon *  iSteer = " + App_Bt.iSteer + " iSteer_p = " + App_Bt.iSteer_p);
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_steer_0"));
        }
    };
    public Runnable mRunnableKillSelf = new Runnable() { // from class: com.syu.bt.App_Bt.31
        @Override // java.lang.Runnable
        public void run() {
            Process.killProcess(Process.myPid());
        }
    };
    public TextView mTxtFloat = null;
    private WindowManager.LayoutParams lpFloat = null;
    public boolean bFloatViewShow = false;
    int posx = 0;
    int posy = 0;
    public Runnable mRunnable_ShowFloatButton = new Runnable() { // from class: com.syu.bt.App_Bt.32
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdy77", " 00 mRunnable_ShowFloatButton bFloatViewShow = " + App_Bt.this.bFloatViewShow + " bFloatViewShow = " + App_Bt.this.bFloatViewShow);
            if (!App_Bt.this.isAppTop() && !App_Bt.this.bFloatViewShow && MyApplication.mWindowManager != null) {
                Log.d("gdy77", " 11 App_BT   ");
                if (App_Bt.this.mTxtFloat == null) {
                    App_Bt.this.mTxtFloat = new TextView(MyApplication.myApp);
                    if (CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW_YX") || App_Bt.bShowFloat) {
                        App_Bt.this.mTxtFloat.setGravity(17);
                        App_Bt.this.mTxtFloat.setTextColor(-1);
                        App_Bt.this.mTxtFloat.setTextSize(App_Bt.this.dp2px(23.0f));
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                            App_Bt.this.mTxtFloat.setPadding(0, 80, 0, 0);
                        } else if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            App_Bt.this.mTxtFloat.setPadding(0, 73, 0, 0);
                        } else {
                            App_Bt.this.mTxtFloat.setPadding(0, 53, 0, 0);
                        }
                        if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt2000_icon_tzy", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                        } else {
                            App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon_tzy", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                        }
                        App_Bt.this.posx = App_Bt.getInstance().mySharePreference2.getIntValue("float_x", 0);
                        App_Bt.this.posy = App_Bt.getInstance().mySharePreference2.getIntValue("float_y", 0);
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        App_Bt.this.mTxtFloat.setGravity(17);
                        App_Bt.this.mTxtFloat.setTextColor(-16711936);
                        Log.d("gdy77", " 22 App_BT Bt.sPhoneNumber getWindowManeger = " + BTUtil.getInstance().getWindowManeger()[0]);
                        if (BTUtil.getInstance().getWindowManeger()[1] > 1300 && BTUtil.getInstance().getWindowManeger()[0] > 1300) {
                            App_Bt.this.mTxtFloat.setTextSize(28.0f);
                            App_Bt.this.mTxtFloat.setPadding(0, 140, 0, 0);
                        } else if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                            App_Bt.this.mTxtFloat.setTextSize(18.0f);
                            App_Bt.this.mTxtFloat.setPadding(0, 140, 0, 0);
                        } else {
                            App_Bt.this.mTxtFloat.setTextSize(13.0f);
                            App_Bt.this.mTxtFloat.setPadding(0, 70, 0, 0);
                        }
                        Bitmap bmp = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                        if (bmp != null) {
                            Log.d("gdy77", " 33 App_BT defaultPhone bmp != null Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                            App_Bt.this.mTxtFloat.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                        } else {
                            App_Bt.this.mTxtFloat.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("btpop_user_icon", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                        }
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_YX1")) {
                        App_Bt.this.mTxtFloat.setTextColor(-16711936);
                        App_Bt.this.mTxtFloat.setGravity(17);
                        App_Bt.this.mTxtFloat.setTextSize(16.0f);
                        App_Bt.this.mTxtFloat.setPadding(0, 45, 0, 0);
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon_tzy", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN-KY")) {
                        App_Bt.this.mTxtFloat.setTextColor(-16711936);
                        App_Bt.this.mTxtFloat.setGravity(17);
                        App_Bt.this.mTxtFloat.setTextSize(18.0f);
                        App_Bt.this.mTxtFloat.setPadding(0, 140, 0, 0);
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("btpop_user_icon", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    } else if (App_Bt.bShowBtInNaviFloatBtn) {
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon4", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    } else {
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    }
                    App_Bt.this.lpFloat = new WindowManager.LayoutParams();
                    App_Bt.this.lpFloat.type = 2026;
                    App_Bt.this.lpFloat.flags = 296;
                    App_Bt.this.lpFloat.format = 1;
                    App_Bt.this.lpFloat.alpha = 0.8f;
                    Log.d("gdy77", " 00 mRunnable_ShowFloatButton getWindowManeger()[0] = " + BTUtil.getInstance().getWindowManeger()[0] + " getWindowManeger()[1] = " + BTUtil.getInstance().getWindowManeger()[1]);
                    if (App_Bt.bShowBtInNaviFloatBtn) {
                        App_Bt.this.lpFloat.width = App_Bt.this.dp2px(60.0f);
                        App_Bt.this.lpFloat.height = App_Bt.this.dp2px(60.0f);
                        App_Bt.this.lpFloat.x = 10;
                        App_Bt.this.lpFloat.y = 10;
                        App_Bt.this.lpFloat.gravity = 85;
                    } else if (CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW_YX") || App_Bt.bShowFloat) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                            App_Bt.this.lpFloat.width = App_Bt.this.dp2px(120.0f);
                            App_Bt.this.lpFloat.height = App_Bt.this.dp2px(140.0f);
                        } else if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            App_Bt.this.lpFloat.width = App_Bt.this.dp2px(200.0f);
                            App_Bt.this.lpFloat.height = App_Bt.this.dp2px(200.0f);
                        } else {
                            App_Bt.this.lpFloat.width = App_Bt.this.dp2px(140.0f);
                            App_Bt.this.lpFloat.height = App_Bt.this.dp2px(140.0f);
                        }
                        App_Bt.this.lpFloat.x = App_Bt.this.posx;
                        App_Bt.this.lpFloat.y = App_Bt.this.posy;
                        App_Bt.this.lpFloat.gravity = 83;
                        App_Bt.this.lpFloat.y = 0;
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                            App_Bt.this.lpFloat.width = 208;
                            App_Bt.this.lpFloat.height = 208;
                        } else if (BTUtil.getInstance().getWindowManeger()[1] <= 1500 || BTUtil.getInstance().getWindowManeger()[0] <= 1500) {
                            App_Bt.this.lpFloat.width = 100;
                            App_Bt.this.lpFloat.height = 100;
                        } else {
                            App_Bt.this.lpFloat.width = 312;
                            App_Bt.this.lpFloat.height = 312;
                        }
                        Log.d("gdy77", " 11 mRunnable_ShowFloatButton Bt.sPhoneNumber = " + Bt.sPhoneNumber + "  getWindowManeger = " + BTUtil.getInstance().getWindowManeger()[1] + " , " + BTUtil.getInstance().getWindowManeger()[0]);
                        App_Bt.this.lpFloat.gravity = 83;
                        if (App_Bt.barHeight > 0 && (("6318".equals(App_Bt.mStrPlatForm) || FinalChip.BSP_PLATFORM_6321.equals(App_Bt.mStrPlatForm)) && App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW"))) {
                            App_Bt.this.lpFloat.y += App_Bt.barHeight;
                        }
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN-KY")) {
                        App_Bt.this.lpFloat.width = 208;
                        App_Bt.this.lpFloat.height = 208;
                        Log.d("gdy77", " 11 mRunnable_ShowFloatButton Bt.sPhoneNumber = " + Bt.sPhoneNumber + "  lpFloat.width = " + App_Bt.this.lpFloat.width);
                        App_Bt.this.lpFloat.gravity = 83;
                    } else {
                        App_Bt.this.lpFloat.width = App_Bt.this.dp2px(80.0f);
                        App_Bt.this.lpFloat.height = App_Bt.this.dp2px(80.0f);
                        App_Bt.this.lpFloat.x = 0;
                        App_Bt.this.lpFloat.y = 0;
                        App_Bt.this.lpFloat.gravity = 83;
                    }
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    Bitmap bmp2 = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                    if (bmp2 != null) {
                        Log.d("gdy77", " 33 App_BT defaultPhone bmp != null Bt.sPhoneNumber = " + Bt.sPhoneNumber);
                        App_Bt.this.mTxtFloat.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp2)));
                    } else if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("btpop_user_icon", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    } else {
                        App_Bt.this.mTxtFloat.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("btpop_user_icon_108", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                    }
                    if (BTUtil.getInstance().getWindowManeger()[1] > 800 && BTUtil.getInstance().getWindowManeger()[0] > 800) {
                        App_Bt.this.lpFloat.width = 208;
                        App_Bt.this.lpFloat.height = 208;
                    } else if (BTUtil.getInstance().getWindowManeger()[1] <= 1500 || BTUtil.getInstance().getWindowManeger()[0] <= 1500) {
                        App_Bt.this.lpFloat.width = 100;
                        App_Bt.this.lpFloat.height = 100;
                    } else {
                        App_Bt.this.lpFloat.width = 312;
                        App_Bt.this.lpFloat.height = 312;
                    }
                    if (App_Bt.barHeight > 0 && (("6318".equals(App_Bt.mStrPlatForm) || FinalChip.BSP_PLATFORM_6321.equals(App_Bt.mStrPlatForm)) && !App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW"))) {
                        App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN");
                    }
                }
                if (App_Bt.this.mTxtFloat != null) {
                    App_Bt.this.mTxtFloat.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.App_Bt.32.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            if (App_Bt.this.bPopBtShow) {
                                App_Bt.this.popBt(false, false);
                                return;
                            }
                            if (CustomerUtil.isZhangConfig()) {
                                BTUtil.writeLogToFile("mTxtFloat A");
                                App_Bt.this.popBt(true, false);
                            } else {
                                App_Bt.bShowFloatBtn_p = false;
                                App_Bt.this.popBt(true, false);
                                BTUtil.writeLogToFile("mTxtFloat B");
                            }
                        }
                    });
                    App_Bt.this.mTxtFloat.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.App_Bt.32.2
                        int lastDownTime;
                        int lastX;
                        int lastY;

                        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View v, MotionEvent event) {
                            boolean ret = false;
                            switch (event.getAction()) {
                                case 0:
                                    this.lastDownTime = (int) System.currentTimeMillis();
                                    this.lastX = (int) event.getRawX();
                                    this.lastY = (int) event.getRawY();
                                    ret = true;
                                    if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.bShowFloat || App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW_YX")) {
                                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon_tzy_p", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                                    }
                                    return ret;
                                case 1:
                                    if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.bShowFloat || App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW_YX")) {
                                        App_Bt.this.mTxtFloat.setBackground(App_Bt.this.uiApp.getDrawableFromPath("bt_icon_tzy", App_Bt.this.mDrawables, App_Bt.this.mDrawables));
                                    }
                                    int currentTime = (int) System.currentTimeMillis();
                                    if (currentTime - this.lastDownTime < 300) {
                                        App_Bt.this.mTxtFloat.performClick();
                                    }
                                    return ret;
                                case 2:
                                    float x = event.getRawX();
                                    float y = event.getRawY();
                                    int ix = (int) (x - this.lastX);
                                    int iy = (int) (y - this.lastY);
                                    App_Bt.this.lpFloat.x += ix;
                                    App_Bt.this.lpFloat.y -= iy;
                                    this.lastX = (int) x;
                                    this.lastY = (int) y;
                                    MyApplication.mWindowManager.updateViewLayout(App_Bt.this.mTxtFloat, App_Bt.this.lpFloat);
                                    return ret;
                                default:
                                    return ret;
                            }
                        }
                    });
                    App_Bt.this.bFloatViewShow = true;
                    if (App_Bt.bShowBtInNaviFloatBtn) {
                        App_Bt.this.mIpcObj.addNotify_PopBt();
                    }
                    MyApplication.mWindowManager.addView(App_Bt.this.mTxtFloat, App_Bt.this.lpFloat);
                }
            }
        }
    };
    public Runnable mRunnable_HideFloatBtn = new Runnable() { // from class: com.syu.bt.App_Bt.33
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            Log.d("gdy77", " 000 mRunnable_HideFloatBtn bShowFloatBtn_p = " + App_Bt.bShowFloatBtn_p);
            App_Bt.bShowFloatBtn_p = false;
            if (App_Bt.this.bFloatViewShow) {
                if (App_Bt.this.mTxtFloat != null) {
                    App_Bt.this.bFloatViewShow = false;
                    if (App_Bt.bShowBtInNaviFloatBtn) {
                        App_Bt.this.mIpcObj.removeNotify_PopBt();
                    }
                    MyApplication.mWindowManager.removeView(App_Bt.this.mTxtFloat);
                }
                if (App_Bt.this.lpFloat != null) {
                    if (App_Bt.this.posx != App_Bt.this.lpFloat.x) {
                        App_Bt.this.posx = App_Bt.this.lpFloat.x;
                        App_Bt.getInstance().mySharePreference2.saveIntValue("float_x", App_Bt.this.lpFloat.x);
                    }
                    if (App_Bt.this.posy != App_Bt.this.lpFloat.y) {
                        App_Bt.this.posy = App_Bt.this.lpFloat.y;
                        App_Bt.getInstance().mySharePreference2.saveIntValue("float_y", App_Bt.this.lpFloat.y);
                    }
                }
            }
        }
    };
    public Runnable mRunnable_CopyContactToFile = new Runnable() { // from class: com.syu.bt.App_Bt.35
        @Override // java.lang.Runnable
        public void run() {
            String path = Environment.getExternalStorageDirectory().getAbsolutePath();
            String src = String.valueOf(path) + "/mybtinfo/" + Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null);
            String dst = String.valueOf(path) + "/favmyinfo/info";
            File f = new File(dst);
            if (!f.exists()) {
                BTUtil.getInstance().copyFile(src, dst);
            }
        }
    };
    public Runnable mRunnable_ReadContactHeadFromFile = new Runnable() { // from class: com.syu.bt.App_Bt.36
        @Override // java.lang.Runnable
        public void run() {
            Log.d("fav", " 33  mListFavContact.clear");
            App_Bt.mBtInfo.mListFavContact.clear();
            App_Bt.mBtInfo.mListContactHeadId.clear();
            List<SparseArray<String>> data2 = BTUtil.getInstance().readHeadContactFromFile(String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "head");
            if (data2 != null) {
                App_Bt.mBtInfo.mListContactHeadId.addAll(data2);
            }
            List<SparseArray<String>> data = BTUtil.getInstance().readFavContactFromFile(String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "FAV");
            if (data != null) {
                App_Bt.mBtInfo.mListFavContact.addAll(data);
            }
            int length = App_Bt.mBtInfo.mListContactHeadId.size();
            if (length > 0 && App_Bt.mBtInfo.mListFavContact.size() > 0) {
                for (SparseArray<String> map : App_Bt.mBtInfo.mListFavContact) {
                    String headNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    for (int index = 0; index < length; index++) {
                        SparseArray<String> contact = App_Bt.mBtInfo.mListContactHeadId.get(index);
                        if (contact.get(FinalBtCtrl.ContactItem_Txt_Number).equals(headNumber)) {
                            map.put(FinalBtCtrl.ContactItem_HeadIcon, contact.get(FinalBtCtrl.ContactItem_HeadIcon));
                            break;
                        }
                    }
                }
            }
        }
    };
    public Runnable mRunnable_DismissPopBT = new Runnable() { // from class: com.syu.bt.App_Bt.37
        @Override // java.lang.Runnable
        public void run() {
            App_Bt.getInstance().popBt(false, false);
        }
    };
    public Runnable mRunnable_WriteFavContactToFile = new Runnable() { // from class: com.syu.bt.App_Bt.38
        @Override // java.lang.Runnable
        public void run() {
            BTUtil.getInstance().writeFavContactToFile(App_Bt.mBtInfo.mListFavContact, String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "FAV");
        }
    };
    public Runnable mRunnable_WriteContactHeadToFile = new Runnable() { // from class: com.syu.bt.App_Bt.39
        @Override // java.lang.Runnable
        public void run() {
            BTUtil.getInstance().writeHeadContactToFile(App_Bt.mBtInfo.mListContactHeadId, String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "head");
        }
    };
    public Runnable mRunnable_setContactHead = new Runnable() { // from class: com.syu.bt.App_Bt.40
        @Override // java.lang.Runnable
        public void run() {
            int length = App_Bt.mBtInfo.mListContact.size();
            if (length > 0 && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                for (SparseArray<String> map : App_Bt.mBtInfo.mListContactHeadId) {
                    String headNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    for (int index = 0; index < length; index++) {
                        SparseArray<String> contact = App_Bt.mBtInfo.mListContact.get(index);
                        if (contact.get(FinalBtCtrl.ContactItem_Txt_Number).equals(headNumber)) {
                            App_Bt.mBtInfo.mListContact.get(index).put(FinalBtCtrl.ContactItem_HeadIcon, map.get(FinalBtCtrl.ContactItem_HeadIcon));
                            break;
                        }
                    }
                }
            }
        }
    };
    public Runnable mRunnable_setContactHead2 = new Runnable() { // from class: com.syu.bt.App_Bt.41
        @Override // java.lang.Runnable
        public void run() {
            BTUtil.getInstance().writeFavContactToFile(App_Bt.mBtInfo.mListFavContact, String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "FAV");
            int length = App_Bt.mBtInfo.mListContact.size();
            if (length > 0 && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                for (SparseArray<String> map : App_Bt.mBtInfo.mListContactHeadId) {
                    String headNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    for (int index = 0; index < length; index++) {
                        SparseArray<String> contact = App_Bt.mBtInfo.mListContact.get(index);
                        if (contact.get(FinalBtCtrl.ContactItem_Txt_Number).equals(headNumber)) {
                            App_Bt.mBtInfo.mListContact.get(index).put(FinalBtCtrl.ContactItem_HeadIcon, map.get(FinalBtCtrl.ContactItem_HeadIcon));
                            break;
                        }
                    }
                }
            }
        }
    };
    public Runnable showPopBtWhen360Top = new Runnable() { // from class: com.syu.bt.App_Bt.42
        @Override // java.lang.Runnable
        public void run() {
            if (BTUtil.getInstance().chechTopActivity()) {
                if (Bt.DATA[9] == 4 || Bt.DATA[9] == 3 || Bt.DATA[9] == 5) {
                    BTUtil.writeLogToFile("showPopBtWhen360Top");
                    Log.d("gdy666", " 005 App_bt showPopBtWhen360Top ");
                    App_Bt.getInstance().popBt(true, false);
                }
            }
        }
    };

    public static App_Bt getInstance() {
        if (instance == null) {
            instance = new App_Bt();
        }
        return instance;
    }

    public App_Bt() {
        this.uiApp = new MyUi(MyApplication.myApp, this, FinalBtType.class, FinalAppCtrl.class);
        this.mySharePreference2 = new MySharePreference2();
        this.mySharePreference2.init(MyApplication.myApp, SpUtil.BT_SP);
    }

    public static boolean isAI_GT() {
        String bt_version2 = SystemProperties.get("sys.fyt.bt_version", "AI");
        Log.d("gtai", " ** isAI_GT bt_version = " + bt_version2);
        String bt_version_p = bt_version2.replace("ai", FinalChip.BSP_PLATFORM_Null);
        int count = (bt_version2.length() - bt_version_p.replace("AI", FinalChip.BSP_PLATFORM_Null).length()) / "ai".length();
        return count >= 2;
    }

    public void onCreate(MyApplication myApplication) {
        this.myApplication = myApplication;
        Log.d("gdy11", " ** 00 App_Bt onCreate    ");
        ReadConf();
        ReadConfig();
        if (bLinkTwoPhone) {
            sPhone2_MAC[0] = getInstance().mySharePreference2.getStringValue("phone1_mac");
            sPhone2_MAC[1] = getInstance().mySharePreference2.getStringValue("phone2_mac");
            sPhone2_NAME[0] = getInstance().mySharePreference2.getStringValue("phone1_name");
            sPhone2_NAME[1] = getInstance().mySharePreference2.getStringValue("phone2_name");
            Bt.sPhoneAddr = sPhone2_MAC[0];
        }
        Log.d("save111", " --- 00 mRunnable_scanDB isYFConfig = " + CustomerUtil.isYFConfig());
        Main.postRunnable_Ui(true, this.mIpcObj.mRunnable_scanDB, 3000L);
        if (bEnableHalfScreen) {
            getMethod();
        }
        DisplayMetrics metric = new DisplayMetrics();
        MyApplication.mWindowManager.getDefaultDisplay().getMetrics(metric);
        screenWidth = metric.widthPixels;
        screenHeight = metric.heightPixels;
        mBtInfo = new Bt_Info();
        CustomerConfig();
        InitBroadCast();
        this.mIpcObj.initIpc();
        if (bMediaManager) {
            MediaManager.init(getInstance().uiApp.mContext);
        }
        if (mStrCustomer.equals("YL_3") || mUi_Name.equalsIgnoreCase("yl_dn1")) {
            bUI_NightColour = true;
        }
        if (mStrCustomer.equals("BT_XYQ_HB")) {
            bUI_NightColour = true;
        }
        if (mStrCustomer.equals("SYU-XN")) {
            bUI_NightColour = true;
        }
        if (mStrCustomer.equals("TZY_NEW") && MyApplication.mStrFolderAsset != null && MyApplication.mStrFolderAsset.equals("UI7")) {
            bUI_NightColour = true;
        }
        Log.d("ai", "  App_Bt 22  getAIType isAIGT_Aiuvoice = " + isAIGT_Aiuvoice + " isAIGT_OnOff = " + isAIGT_OnOff);
        if (bAI_JZ2) {
            isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
            isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) >= 0;
            if (SystemProperties.getInt("persist.lsec.aecdelay", 255) == 255) {
                Main.postRunnable_Ui(true, this.mRunnReSetAIOn, 5000L);
            }
            if (isAIGT_Aiuvoice != 65535 && isAIGT_Aiuvoice != 0) {
                Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.App_Bt.43
                    @Override // java.lang.Runnable
                    public void run() {
                        App_Bt.isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
                        App_Bt.isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) >= 0;
                        if (App_Bt.isAIGT_Aiuvoice != 0) {
                            Main.postRunnable_Ui(true, this, 5000L);
                        }
                        if (App_Bt.isAIGT_Aiuvoice == 0) {
                            SystemProperties.set("persist.lsec.aecdelay", "0");
                            SystemProperties.set("persist.btaec.switch", "2");
                            SyuJniNative.getInstance().syu_jni_command(253, null, null);
                            App_Bt.getInstance().popMsgSet(true);
                        }
                        Log.d("ai11", "  App_Bt 33  getAIType isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + " isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
                    }
                });
            }
            if (isAIGT_Aiuvoice == 1 || isAIGT_Aiuvoice == 1873) {
                this.connectivityManager = (ConnectivityManager) MyApplication.myApp.getSystemService("connectivity");
                registerNetworkCallback();
            }
        }
        if (bAI_JZ) {
            Log.d("gtai", "  JAVA 00 App_Bt  mBtType = " + mBtType + " mStrPlatForm = " + mStrPlatForm);
            if (SystemProperties.getInt("persist.lsec.aecdelay", 255) == 255) {
                Main.postRunnable_Ui(true, this.mRunnReSetAIOn, 5000L);
            }
            if (mBtType == 7 && "6318".equals(mStrPlatForm)) {
                iAI_GT = 0;
                Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.App_Bt.44
                    @Override // java.lang.Runnable
                    public void run() {
                        App_Bt.bAI_GT = App_Bt.isAI_GT();
                        App_Bt.iAI_GT++;
                        Log.d("gtai", " 00 App_Bt postRunnable_Ui bAI_GT = " + App_Bt.bAI_GT + " iAI_GT = " + App_Bt.iAI_GT);
                        if (App_Bt.bAI_GT) {
                            UvoiceEcnr.getInstance();
                            App_Bt.isAIType = UvoiceEcnr.getAIType();
                            Log.d("gtai", " 11 App_Bt postRunnable_Ui isAIType = " + App_Bt.isAIType);
                            if (App_Bt.isAIType >= 0) {
                                Log.d("gtai", "  JAVA 00 App_Bt checkActivate isAIType = " + App_Bt.isAIType + " App_Bt.mBtType = " + App_Bt.mBtType + " mIdPlatForm = " + MyApplication.mIdPlatForm + " mStrPlatForm = " + App_Bt.mStrPlatForm);
                                UvoiceEcnr.getInstance();
                                int ok = UvoiceEcnr.checkActivate2();
                                App_Bt.isAiuvoice = ok == 0;
                                if (App_Bt.isAiuvoice) {
                                    App_Bt.bAI_JZ2 = false;
                                }
                                App_Bt.isAIOnOff = App_Bt.isAiuvoice && SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
                                Log.d("gtai", "  JAVA 11 App_Bt  isAiuvoice = " + App_Bt.isAiuvoice + "  ok = " + ok);
                                App_Bt.this.connectivityManager = (ConnectivityManager) MyApplication.myApp.getSystemService("connectivity");
                                App_Bt.this.registerNetworkCallback();
                                return;
                            }
                            return;
                        }
                        Log.d("gtai", " 11 App_Bt postRunnable_Ui iAI_GT = " + App_Bt.iAI_GT);
                        if (App_Bt.iAI_GT < 5) {
                            Main.postRunnable_Ui(true, this, 1500L);
                        }
                    }
                }, 50L);
                return;
            }
            UvoiceEcnr.getInstance();
            isAIType = UvoiceEcnr.getAIType();
            if (isAIType >= 0) {
                Log.d("jarr", "  JAVA 00 App_Bt checkActivate isAIType = " + isAIType + " App_Bt.mBtType = " + mBtType + " mIdPlatForm = " + MyApplication.mIdPlatForm + " mStrPlatForm = " + mStrPlatForm);
                UvoiceEcnr.getInstance();
                int ok = UvoiceEcnr.checkActivate2();
                isAiuvoice = ok == 0;
                if (isAiuvoice) {
                    bAI_JZ2 = false;
                }
                isAIOnOff = isAiuvoice && SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
                Log.d("jarr", "  JAVA 11 App_Bt  isAiuvoice = " + isAiuvoice + "  ok = " + ok);
                this.connectivityManager = (ConnectivityManager) MyApplication.myApp.getSystemService("connectivity");
                registerNetworkCallback();
            }
        }
    }

    public int AIUvEcnr() {
        int ok = -1;
        Log.d(TAG, "  JAVA 00 App_Bt AI降噪 激活 AIUvEcnr isAIType =" + isAIType);
        if (bAI_JZ && isAIType >= 0 && !isAiuvoice) {
            if (!bLinkNet) {
                ToastUtil.getInstance().showMessage(getInstance().uiApp.getString("bt_ai9"));
            } else {
                ok = -1;
                try {
                    UvoiceEcnr.getInstance();
                    ok = UvoiceEcnr.getActivateCreate();
                    isAiuvoice = ok == 0;
                    if (isAiuvoice) {
                        bAI_JZ2 = false;
                    }
                    Log.d("jarr", "  BT 11 App_Bt getActivateCreate ok = " + ok);
                } catch (Exception e) {
                }
                Log.d(TAG, "  JAVA 22 App_Bt ActivateCreate ok = " + ok);
                Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.App_Bt.45
                    @Override // java.lang.Runnable
                    public void run() {
                        if (App_Bt.isAiuvoice) {
                            SystemProperties.set("persist.lsec.aecdelay", "0");
                            SystemProperties.set("persist.btaec.switch", "2");
                            if (App_Bt.bAI_GT) {
                                SystemProperties.set("persist.blinkbt.qcc3031.ecnr.disable", "1");
                            }
                            App_Bt.isAIOnOff = true;
                            SyuJniNative.getInstance().syu_jni_command(253, null, null);
                            App_Bt.getInstance().popMsgSet(true);
                        }
                    }
                }, 2000L);
            }
        }
        return ok;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerNetworkCallback() {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        NetworkRequest networkRequest = builder.build();
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.syu.bt.App_Bt.46
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                super.onAvailable(network);
                Log.d(App_Bt.TAG, "网络已连接: " + network.toString());
                App_Bt.bLinkNet = true;
                if (App_Bt.bAI_JZ && !App_Bt.isAiuvoice && App_Bt.isAIType == 1) {
                    App_Bt.iRunnStep = 0;
                    Main.postRunnable_Ui(true, App_Bt.this.mRunnAIUvEcnr, 3000L);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                super.onLost(network);
                Log.d(App_Bt.TAG, "网络已断开: " + network.toString());
                App_Bt.bLinkNet = false;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                super.onCapabilitiesChanged(network, networkCapabilities);
                networkCapabilities.hasCapability(16);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onUnavailable() {
                super.onUnavailable();
                Log.d(App_Bt.TAG, "无可用网络");
                App_Bt.bLinkNet = false;
            }
        };
        this.connectivityManager.registerNetworkCallback(networkRequest, this.networkCallback);
    }

    private void updateUI(boolean isConnected, String type) {
        Log.i(TAG, "Update UI - Connected: " + isConnected + ", Type: " + type);
        if (isConnected) {
            Log.i(TAG, "网络已连接 (" + type + ")");
        } else {
            Log.i(TAG, "网络已断开");
        }
    }

    public void InitBroadCast() {
        IntentFilter iFilter = new IntentFilter();
        iFilter.addAction(Receiver.REMOVE_BROADCAST);
        iFilter.addAction(Receiver.ACTION_AMAPASSIST_CMD);
        iFilter.setPriority(Integer.MAX_VALUE);
        MyApplication.myApp.registerReceiver(this.mReceiver, iFilter);
        if (bShowTime) {
            IntentFilter iFilterTime = new IntentFilter();
            iFilterTime.addAction("android.intent.action.TIME_SET");
            iFilterTime.addAction("android.intent.action.TIME_TICK");
            iFilterTime.addAction("android.intent.action.TIMEZONE_CHANGED");
            iFilterTime.setPriority(Integer.MAX_VALUE);
            MyApplication.myApp.registerReceiver(this.mReceiver_TimeUpdate, iFilterTime);
        }
        if (mStrCustomer.equalsIgnoreCase("changecolor")) {
            IntentFilter iFilterColor = new IntentFilter();
            iFilterColor.addAction("launcher3.setcolor");
            iFilterColor.setPriority(Integer.MAX_VALUE);
            MyApplication.myApp.registerReceiver(this.mReceiver, iFilterColor);
        }
        if (CustomerUtil.is7731()) {
            if (this.mBatteryReceiver == null) {
                this.mBatteryReceiver = new BatteryReceiver();
            }
            IntentFilter iFilterColor2 = new IntentFilter();
            iFilterColor2.addAction("android.bluetooth.headsetclient.profile.action.AG_EVENT");
            iFilterColor2.setPriority(Integer.MAX_VALUE);
            MyApplication.myApp.registerReceiver(this.mBatteryReceiver, iFilterColor2);
        }
    }

    public void ReadConf() throws Throwable {
        String str;
        try {
            String strXml = this.uiApp.getRaw("conf_platform");
            if (!TextUtils.isEmpty(strXml)) {
                Markup xml = new Markup();
                xml.ReadXML(strXml);
                if (xml.IntoItem()) {
                    do {
                        String strTemp = xml.GetAttr("name");
                        if (strTemp != null) {
                            if (strTemp.equals("EnableHalfScreen")) {
                                String str2 = xml.GetAttr("value");
                                if (str2 != null && str2.equals("1")) {
                                    bEnableHalfScreen = true;
                                }
                            } else if (strTemp.equals("EnableFocusChange")) {
                                String str3 = xml.GetAttr("value");
                                if (str3 != null && str3.equals("1")) {
                                    this.bEnableFocusChange = true;
                                }
                            } else if (strTemp.equals("name_diy")) {
                                String str4 = xml.GetAttr("value");
                                if (str4 != null) {
                                    strDefaultName = str4;
                                }
                            } else if (strTemp.equals("pin_diy")) {
                                String str5 = xml.GetAttr("value");
                                if (str5 != null) {
                                    strDefaultPin = str5;
                                }
                            } else if (strTemp.equals("launcher_2ico")) {
                                String str6 = xml.GetAttr("value");
                                if (str6 != null && str6.equals("1")) {
                                    bIsLauncher_2Ico = true;
                                }
                            } else if (strTemp.equals("hide_btav_menu")) {
                                String str7 = xml.GetAttr("value");
                                if (str7 != null && str7.equals("1")) {
                                    bDelMenuFromBtAv = true;
                                }
                            } else if (strTemp.equals("hide_bt_dial")) {
                                String str8 = xml.GetAttr("value");
                                if (str8 != null && str8.equals("1")) {
                                    bHideBtDial = true;
                                }
                            } else if (strTemp.equals("spevalue")) {
                                String str9 = xml.GetAttr("value");
                                if (str9 != null && str9.equals("1")) {
                                    bSpeValue = true;
                                }
                            } else if (strTemp.equals("auto_downPhoneBook")) {
                                String str10 = xml.GetAttr("value");
                                if (str10 != null && str10.equals("1")) {
                                    bAutoDownPhoneBook = true;
                                }
                            } else if (strTemp.equals("HV_Kill")) {
                                String str11 = xml.GetAttr("value");
                                if (str11 != null && str11.equals("1")) {
                                    bHV_Kill = true;
                                }
                            } else if (strTemp.equals("media_manager")) {
                                String str12 = xml.GetAttr("value");
                                if (str12 != null && str12.equals("1")) {
                                    bMediaManager = true;
                                }
                            } else if (strTemp.equals("auto_savePhoneBook")) {
                                String str13 = xml.GetAttr("value");
                                if (str13 != null && str13.equals("1")) {
                                    bAutoSavePhoneBook = true;
                                }
                            } else if (strTemp.equals("changeappidwhentalking")) {
                                String str14 = xml.GetAttr("value");
                                if (str14 != null && str14.equals("1")) {
                                    bChangeAppIdWhenTalking = true;
                                }
                            } else if (strTemp.equals("show_pairedbt")) {
                                String str15 = xml.GetAttr("value");
                                if (str15 != null) {
                                    if (str15.equals("1")) {
                                        bShowPairedBt = true;
                                    }
                                    if (str15.equals("2")) {
                                        bShowPairedBt = true;
                                        bShowPairedBt2 = true;
                                    }
                                }
                            } else if (strTemp.equals("pop_hideKeyBoard")) {
                                String str16 = xml.GetAttr("value");
                                if (str16 != null && str16.equals("1")) {
                                    bPop_hideKeyBoard = true;
                                }
                            } else if (strTemp.equals("phone_voice")) {
                                String str17 = xml.GetAttr("value");
                                if (str17 != null && str17.equals("1")) {
                                    bPhoneVoice = true;
                                }
                            } else if (strTemp.equals("phone_ldd")) {
                                String str18 = xml.GetAttr("value");
                                if (str18 != null && str18.equals("1")) {
                                    bPhoneLDD = true;
                                }
                            } else if (strTemp.equals("show_PopBtTop")) {
                                String str19 = xml.GetAttr("value");
                                if (str19 != null && str19.equals("1")) {
                                    bShow_PopBtTop = true;
                                }
                            } else if (strTemp.equals("ShowFloatBtn")) {
                                String str20 = xml.GetAttr("value");
                                if (str20 != null && str20.equals("1")) {
                                    bShowFloatBtn = true;
                                }
                            } else if (strTemp.equals("AI_JZ")) {
                                String str21 = xml.GetAttr("value");
                                if (str21 != null && str21.equals("1")) {
                                    mStrPlatForm = getPlat();
                                    mRoPlatForm = SystemProperties.get("ro.fyt.platform", FinalChip.BSP_PLATFORM_Null);
                                    mBtType = BTUtil.getInstance().getSystemInt("sys.fyt.bluetooth_type", -1);
                                    Log.d("ai", " *** updateAIKG  str = " + str21 + " mBtType = " + mBtType + " mStrPlatForm = " + mStrPlatForm);
                                    if ((mBtType == 1 || mBtType == 7 || mBtType == 8) && "6319".equals(mStrPlatForm)) {
                                        bAI_JZ2 = true;
                                    } else {
                                        bAI_JZ = true;
                                    }
                                }
                            } else if (strTemp.equals("AI_JZ2")) {
                                String str22 = xml.GetAttr("value");
                                if (str22 != null && str22.equals("1")) {
                                    bAI_JZ2 = true;
                                }
                            } else if (strTemp.equals("No_Pair")) {
                                String str23 = xml.GetAttr("value");
                                if (str23 != null && str23.equals("1")) {
                                    bNo_Pair = true;
                                }
                            } else if (strTemp.equals("ShowBtInNaviFloatBtn")) {
                                String str24 = xml.GetAttr("value");
                                if (str24 != null && str24.equals("1")) {
                                    bShowBtInNaviFloatBtn = true;
                                }
                            } else if (strTemp.equals("favcontact")) {
                                String str25 = xml.GetAttr("value");
                                if (str25 != null && str25.equals("1")) {
                                    bFavcontact = true;
                                }
                            } else if (strTemp.equals("HideBtnWhenDisconnect")) {
                                String str26 = xml.GetAttr("value");
                                if (str26 != null && str26.equals("1")) {
                                    hideBtnWhenDisconnect = true;
                                }
                            } else if (strTemp.equals("SyncHistory")) {
                                String str27 = xml.GetAttr("value");
                                if (str27 != null && str27.equals("1")) {
                                    bSyncHistory = true;
                                }
                            } else if (strTemp.equals("ToastUtil_XY")) {
                                String str28 = xml.GetAttr("value");
                                if (str28 != null) {
                                    ToastUtil_XY = MyUi.getIntArray(str28);
                                }
                            } else if (strTemp.equals("UIUtil_XY")) {
                                String str29 = xml.GetAttr("value");
                                if (str29 != null) {
                                    UIUtil_XY = MyUi.getIntArray(str29);
                                }
                            } else if (strTemp.equals("HidePopBt")) {
                                String str30 = xml.GetAttr("value");
                                if (str30 != null && str30.equals("1")) {
                                    bHidePopBt = true;
                                }
                            } else if (strTemp.equals("HidePopBt2")) {
                                String str31 = xml.GetAttr("value");
                                if (str31 != null && str31.equals("1")) {
                                    bHidePopBt2 = true;
                                }
                            } else if (strTemp.equals("CallinPageFlag")) {
                                String str32 = xml.GetAttr("value");
                                if (str32 != null && str32.equals("1")) {
                                    bCallinPageFlag = true;
                                }
                            } else if (strTemp.equals("HistoryLogAllFlag")) {
                                String str33 = xml.GetAttr("value");
                                if (str33 != null && str33.equals("1")) {
                                    bHistoryLogAllFlag = true;
                                }
                            } else if (strTemp.equals("FirstPairPage")) {
                                String str34 = xml.GetAttr("value");
                                if (str34 != null) {
                                    if (str34.equals("1")) {
                                        bFirstPairPage = true;
                                    }
                                    if (str34.equals("2")) {
                                        bFirstPairPage = true;
                                        bFirstPairPage2 = true;
                                    }
                                }
                            } else if (strTemp.equals("BtNoAV")) {
                                String str35 = xml.GetAttr("value");
                                if (str35 != null && str35.equals("1")) {
                                    bBtNoAV = true;
                                }
                            } else if (strTemp.equals("LinkTwoPhone_test")) {
                                String str36 = xml.GetAttr("value");
                                if (str36 != null && str36.equals("1")) {
                                    bLinkTwoPhone_test = true;
                                }
                            } else if (strTemp.equals("ui_name")) {
                                String str37 = xml.GetAttr("value");
                                if (str37 != null) {
                                    mUi_Name = str37;
                                }
                            } else if (strTemp.equals("HideHang")) {
                                String str38 = xml.GetAttr("value");
                                if (str38 != null && str38.equals("1")) {
                                    bHideHang = true;
                                }
                            } else if (strTemp.equals("FirstBtAvPage")) {
                                String str39 = xml.GetAttr("value");
                                if (str39 != null && str39.equals("1")) {
                                    bFirstBtAvPage = true;
                                }
                            } else if (strTemp.equals("ShowTime")) {
                                String str40 = xml.GetAttr("value");
                                if (str40 != null && str40.equals("1")) {
                                    bShowTime = true;
                                }
                            } else if (strTemp.equals("ShowHead")) {
                                String str41 = xml.GetAttr("value");
                                if (str41 != null && str41.equals("1")) {
                                    bShowHeadIco = true;
                                }
                            } else if (strTemp.equals("customer")) {
                                String str42 = xml.GetAttr("value");
                                if (str42 != null) {
                                    mStrCustomer = str42;
                                }
                            } else if (strTemp.equals("show_float")) {
                                String str43 = xml.GetAttr("value");
                                if (str43 != null && str43.equals("1")) {
                                    bShowFloat = true;
                                }
                            } else if (strTemp.equals("syncinfo")) {
                                String str44 = xml.GetAttr("value");
                                if (str44 != null && str44.equals("1")) {
                                    bSyncInfo = true;
                                }
                            } else if (strTemp.equals("nosavecontact") && (str = xml.GetAttr("value")) != null && str.equals("1")) {
                                bSaveContactsToUrl = false;
                                Log.d("gdy14", " 00  App_Bt  bSaveContactsToUrl = false  ");
                            }
                        }
                    } while (xml.NextItem());
                    xml.ExitItem();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void InitMapPage(MyUi ui) {
        ui.mMapPage.put(1, "bt_popbt");
        ui.mMapPage.put(2, "bt_popbt_num");
        ui.mMapPage.put(3, "bt_popbt_func");
        ui.mMapPage.put(5, "bt_popbt_book");
        ui.mMapPage.put(6, "bt_popbt_bookitem");
        ui.mMapPage.put(7, "bt_popbt_historyitem");
        ui.mMapPage.put(10, "bt_popringset");
        ui.mMapPage.put(8, "bt_popphonemicset");
        ui.mMapPage.put(9, "bt_popbtavmicset");
        ui.mMapPage.put(12, "bt_pop3rdphone");
        ui.mMapPage.put(13, "bt_popphone_voice");
        ui.mMapPage.put(14, "bt_popswitch_phone");
        ui.mMapPage.put(16, "bt_popphone_sms");
        ui.mMapPage.put(15, "bt_pop_ldd");
        ui.mMapPage.put(11, "bt_pop_msg");
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void InitPage(JPage page) {
        int id = page.getId();
        switch (id) {
            case 1:
            case 2:
            case 3:
                page.setNotify(new Page_PopBt(page));
                break;
            case 5:
                page.setNotify(new Page_PopBt_Book(page));
                break;
            case 6:
                page.setNotify(new Page_PopBt_BookItem(page));
                break;
            case 7:
                page.setNotify(new Page_PopBt_HistoryItem(page));
                break;
            case 8:
                page.setNotify(new Page_PopPhoneMicSet(page));
                break;
            case 9:
                page.setNotify(new Page_PopBtAvMicSet(page));
                break;
            case 10:
                page.setNotify(new Page_PopBtRingSet(page));
                break;
            case 11:
                page.setNotify(new Page_PopMsg(page));
                break;
            case 12:
                page.setNotify(new Page_Pop3rdPhone(page));
                break;
            case 13:
                page.setNotify(new Page_PopPhoneVoice(page));
                break;
            case 14:
                page.setNotify(new Page_PopSwitchPhone(page));
                break;
            case 15:
                page.setNotify(new Page_PopLDD(page));
                break;
            case 16:
                page.setNotify(new Page_PopSms(page));
                break;
        }
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public View createUiItemOtherWay(JPage page, MyUiItem item) {
        return null;
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void setProperty(View child) {
    }

    public void popBtNum(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_PopBtNum);
        Main.removeRunnable_Ui(this.mRunnable_hideBtNum);
        if (bPop) {
            runnable = this.mRunnable_PopBtNum;
        } else {
            runnable = this.mRunnable_hideBtNum;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popBtBook(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_popBtBook);
        Main.removeRunnable_Ui(this.mRunnable_hideBtBook);
        if (bPop) {
            runnable = this.mRunnable_popBtBook;
        } else {
            runnable = this.mRunnable_hideBtBook;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void show_PopBt() {
        Log.d("gdy666", " 04 App_Bt show_PopBt  ");
        Main.postRunnable_Ui(true, this.mRunnable_hideBt);
        Main.postRunnable_Ui(true, this.mRunnable_PopBt, 500L);
    }

    public void popBt(boolean bPop, boolean bShowKeyBorad) {
        Runnable runnable;
        Log.d("gdy666", " 03 App_Bt popBt  bPop = " + bPop + " bShowKeyBorad = " + bShowKeyBorad);
        bShowKeyBoradWhenPopBt = bShowKeyBorad;
        Main.removeRunnable_Ui(this.mRunnable_PopBt);
        Main.removeRunnable_Ui(this.mRunnable_hideBt);
        if (!bPop) {
            Main.removeRunnable_Ui(this.showPopBtWhen360Top);
        }
        if (bPop) {
            if (CustomerUtil.isZhangConfig() && bPop3rdPhone_YF) {
                getInstance().pop3rdPhone(true);
            }
            showFloatBtn(false);
            if (!bShowKeyBorad) {
                popBtNum(false);
                popBtBook(false);
            }
        } else {
            popBtBook(false);
            if (((bShowFloatBtn && bShowFloatBtn_p) || mStrCustomer.equalsIgnoreCase("TZY_NEW") || mStrCustomer.equalsIgnoreCase("TZY4") || mStrCustomer.equalsIgnoreCase("TZY_UI5") || mStrCustomer.equalsIgnoreCase("TZY_OEM")) && !isAppTop()) {
                showFloatBtn(true);
            }
        }
        if (bPop) {
            runnable = this.mRunnable_PopBt;
        } else {
            runnable = this.mRunnable_hideBt;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popBtRingSet(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_hideBtRingSet);
        Main.removeRunnable_Ui(this.mRunnable_popBtRingSet);
        if (bPop) {
            runnable = this.mRunnable_popBtRingSet;
        } else {
            runnable = this.mRunnable_hideBtRingSet;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popSwitchPhone(boolean bPop) {
        Runnable runnable;
        Log.d("sfth2", " **  popSwitchPhone bPop = " + bPop);
        Main.removeRunnable_Ui(this.mRunnable_hideSwitchPhone);
        Main.removeRunnable_Ui(this.mRunnable_popSwitchPhone);
        if (bPop) {
            runnable = this.mRunnable_popSwitchPhone;
        } else {
            runnable = this.mRunnable_hideSwitchPhone;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popMsgSet(boolean bPop) {
        Runnable runnable;
        Log.d("pddd", "  JAVA 00 App_Bt  popMsgSet ");
        Main.removeRunnable_Ui(this.mRunnable_hideMSG);
        Main.removeRunnable_Ui(this.mRunnable_popMSG);
        if (bPop) {
            runnable = this.mRunnable_popMSG;
        } else {
            runnable = this.mRunnable_hideMSG;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void pop3rdPhone(boolean bPop) {
        Runnable runnable;
        Boolean isTALK = Boolean.valueOf(Bt.DATA[9] == 4 || Bt.DATA[9] == 3 || Bt.DATA[9] == 5);
        Log.d("gdy14", " **  pop3rdPhone bPop = " + bPop + " isTALK = " + isTALK);
        if (!isTALK.booleanValue()) {
            bPop = false;
        }
        Main.removeRunnable_Ui(this.mRunnable_hide3rdPhone);
        Main.removeRunnable_Ui(this.mRunnable_pop3rdPhone);
        if (!bPop && bPhone2_dialThrdPhone) {
            bPhone2_dialThrdPhone = false;
        }
        if (bPop) {
            runnable = this.mRunnable_pop3rdPhone;
        } else {
            runnable = this.mRunnable_hide3rdPhone;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popPhoneMicSet(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_hidePhoneMicSet);
        Main.removeRunnable_Ui(this.mRunnable_popPhoneMicSet);
        if (bPop) {
            runnable = this.mRunnable_popPhoneMicSet;
        } else {
            runnable = this.mRunnable_hidePhoneMicSet;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public void popShowLLD(boolean bPop) {
        Runnable runnable;
        Log.d("ldd", " 11 Page PopBt  popShowLLD bPhoneLDD = " + bPhoneLDD);
        if (bPhoneLDD) {
            Main.removeRunnable_Ui(this.mRunnable_hideLDD);
            Main.removeRunnable_Ui(this.mRunnable_popLDD);
            if (bPop) {
                runnable = this.mRunnable_popLDD;
            } else {
                runnable = this.mRunnable_hideLDD;
            }
            if (runnable != null) {
                if (isMainThread()) {
                    runnable.run();
                } else {
                    Main.postRunnable_Ui(true, runnable);
                }
            }
        }
    }

    public void popPhoneVoice(boolean bPop) {
        Runnable runnable;
        Log.d("gdy66", " ** Ipc_new 0x43 popPhoneVoice bBtVoice = " + bBtVoice + " bPop = " + bPop + " bPhoneVoice = " + bPhoneVoice + " mIdCustomer = " + MyApplication.mIdCustomer);
        if (bPhoneVoice || bBtVoice || MyApplication.mIdCustomer == 31 || MyApplication.mIdCustomer == 112 || MyApplication.mIdCustomer == 140) {
            Main.removeRunnable_Ui(this.mRunnable_hidePhoneVoice);
            Main.removeRunnable_Ui(this.mRunnable_popPhoneVoice);
            if (bPop) {
                runnable = this.mRunnable_popPhoneVoice;
            } else {
                runnable = this.mRunnable_hidePhoneVoice;
            }
            if (runnable != null) {
                if (isMainThread()) {
                    runnable.run();
                } else {
                    Main.postRunnable_Ui(true, runnable);
                }
            }
        }
    }

    public void popPhoneSMS(boolean bPop) {
        Runnable runnable;
        if (bSms_Ctrl) {
            if (this.bPopPhoneSms || bPop) {
                Main.removeRunnable_Ui(this.mRunnable_hidePhoneSMS);
                Main.removeRunnable_Ui(this.mRunnable_popPhoneSMS);
                if (bPop) {
                    runnable = this.mRunnable_popPhoneSMS;
                } else {
                    runnable = this.mRunnable_hidePhoneSMS;
                }
                if (runnable != null) {
                    if (isMainThread()) {
                        runnable.run();
                    } else {
                        Main.postRunnable_Ui(true, runnable);
                    }
                }
            }
        }
    }

    public void popBtAvMicSet(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_popBtAvMicSet);
        Main.removeRunnable_Ui(this.mRunnable_hideBtAvMicSet);
        if (bPop) {
            runnable = this.mRunnable_popBtAvMicSet;
        } else {
            runnable = this.mRunnable_hideBtAvMicSet;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    @Override // com.lsec.core.frame.app.MyApp
    public void requestAppIdRight() {
        this.mIpcObj.requestAppIdRight(MyApplication.sPage_Current);
    }

    public void showInput(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) MyApplication.myApp.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 0);
        }
    }

    public void hideInput(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) MyApplication.myApp.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public void EnableGainSpec() {
        bEnableSpec = true;
        this.mIpcObj.EnableGainSpec();
    }

    public void DisableGainSpec() {
        bEnableSpec = false;
        this.mIpcObj.DisableGainSpec();
    }

    public void initIpPhoneTip() {
    }

    class MyTask extends TimerTask {
        MyTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (App_Bt.iTimerCnt > 0) {
                App_Bt.iTimerCnt--;
            }
            if (App_Bt.iTimerCnt <= 1) {
                if (App_Bt.this.bPopBtRingSet) {
                    App_Bt.this.popBtRingSet(false);
                }
                if (App_Bt.this.bPopPhoneMicSet) {
                    App_Bt.this.popPhoneMicSet(false);
                }
                if (App_Bt.this.bPopBtAvMicSet) {
                    App_Bt.this.popBtAvMicSet(false);
                }
            }
        }
    }

    public void ReadConfig() {
        int length;
        File fr = new File("/system/app/config.txt");
        if (!fr.exists()) {
            fr = new File("/oem/app/config.txt");
            if (!fr.exists()) {
                fr = new File("/lshw/config/config.txt");
                if (!fr.exists()) {
                    return;
                }
            }
        }
        try {
            BufferedReader br = new BufferedReader(new FileReader(fr));
            while (true) {
                String strLine = br.readLine();
                if (strLine == null) {
                    break;
                }
                String[] strSub = strLine.split("#");
                if (strSub.length > 2 && "bt".equals(strSub[0])) {
                    strDefaultName = strSub[1];
                    strDefaultPin = strSub[2];
                }
            }
            br.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (CustomerUtil.isYZConfig() && !TextUtils.isEmpty(strDefaultName)) {
            String ss = BTUtil.getDevice_Imei();
            if (!TextUtils.isEmpty(ss) && (length = ss.length()) > 4) {
                strDefaultName = String.valueOf(strDefaultName) + "-" + ss.substring(length - 4);
            }
        }
    }

    public static String ReadNameFromFile() {
        File fw = new File("/mnt/sdcard/AppCfg/config.txt");
        if (!fw.exists()) {
            return null;
        }
        String name = null;
        try {
            BufferedReader br = new BufferedReader(new FileReader(fw));
            while (true) {
                String strLine = br.readLine();
                if (strLine != null) {
                    String[] strSub = strLine.split("#");
                    if (strSub.length > 2 && "bt".equals(strSub[0])) {
                        name = strSub[1];
                    }
                } else {
                    br.close();
                    return name;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public static String ReadPinFromFile() {
        File fw = new File("/mnt/sdcard/AppCfg/config.txt");
        if (!fw.exists()) {
            return null;
        }
        String pin = null;
        try {
            BufferedReader br = new BufferedReader(new FileReader(fw));
            while (true) {
                String strLine = br.readLine();
                if (strLine != null) {
                    String[] strSub = strLine.split("#");
                    if (strSub.length > 2 && "bt".equals(strSub[0])) {
                        pin = strSub[2];
                    }
                } else {
                    br.close();
                    return pin;
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public void SaveConfig(String name, String pin) {
        String strLine;
        File AppDir = new File("/mnt/sdcard");
        File AppFolder = new File("/mnt/sdcard/AppCfg");
        File fw = new File("/mnt/sdcard/AppCfg/config.txt");
        if (AppDir.exists()) {
            if (!AppFolder.exists() && !AppFolder.isDirectory()) {
                AppFolder.mkdir();
            }
            if (!fw.exists()) {
                try {
                    fw.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            try {
                BufferedReader br = new BufferedReader(new FileReader(fw));
                List<String> list = new ArrayList<>();
                String strTemp = "bt#" + name + "#" + pin;
                boolean bEnterFlag = false;
                while (true) {
                    strLine = br.readLine();
                    if (strLine == null) {
                        break;
                    } else {
                        list.add(strLine);
                    }
                }
                FileWriter fwr = new FileWriter(fw);
                if (list.size() > 0) {
                    for (int i = 0; i < list.size(); i++) {
                        String buffer = list.get(i);
                        String[] strSub = buffer.split("#");
                        if ("bt".equals(strSub[0])) {
                            list.set(i, strTemp);
                            bEnterFlag = true;
                        }
                    }
                    if (!bEnterFlag) {
                        list.add(strTemp);
                    }
                    for (int j = 0; j < list.size(); j++) {
                        String writeBuf = list.get(j).concat("\r\n");
                        fwr.write(writeBuf);
                    }
                    fwr.close();
                    br.close();
                    return;
                }
                if (strLine == null) {
                    fwr.write(strTemp);
                }
                fwr.close();
                br.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    public String getPlat() {
        String plat = SystemProperties.get("sys.fyt.platform", FinalChip.BSP_PLATFORM_Null);
        if (TextUtils.isEmpty(plat)) {
            return SystemProperties.get("ro.fyt.platform", FinalChip.BSP_PLATFORM_Null);
        }
        return plat;
    }

    public void CustomerConfig() {
        Log.d("gdy14", " 00 CustomerConfig App_Bt.mBtType=" + mBtType);
        bt_version = SystemProperties.get("sys.fyt.bt_version", "V2.0");
        bLinkTwoPhone = SystemProperties.getInt("ro.fyt.2phone", 0) == 1 && bt_version.contains("V3.0");
        Log.d("gdy14", " 33 CustomerConfig bLinkTwoPhone=" + bLinkTwoPhone + " bt_version = " + bt_version);
        Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.App_Bt.47
            @Override // java.lang.Runnable
            public void run() {
                App_Bt.bt_version = SystemProperties.get("sys.fyt.bt_version", "V2.0");
                App_Bt.bLinkTwoPhone = SystemProperties.getInt("ro.fyt.2phone", 0) == 1 && App_Bt.bt_version.contains("V3.0");
                Log.d("gdy14", " 33 CustomerConfig bLinkTwoPhone=" + App_Bt.bLinkTwoPhone + " bt_version = " + App_Bt.bt_version);
            }
        }, 3000L);
        iDensity = SystemProperties.getInt("ro.sf.lcd_density", 0);
        boolean sync = SystemProperties.getBoolean("persist.fyt.syncbook", false);
        Log.d("gdy14", " 00 CustomerConfig sync:" + sync);
        if (!sync) {
            String bForegin = SystemProperties.get("ro.client.foreign", "false");
            Log.d("gdy14", " 11 CustomerConfig bForegin:" + bForegin);
            if (!TextUtils.isEmpty(bForegin)) {
                Log.d("gdy14", " 22 CustomerConfig bForegin:" + bForegin);
                if (bForegin.equals("true")) {
                    bIsForegin = true;
                    if (CustomerUtil.needSpliceNumber()) {
                        needSplice = true;
                    }
                    Log.d("gdy14", "  33 CustomerConfig   bSaveContactsToUrl = false  ");
                }
            }
            bSaveContactsToUrl = false;
            bAutoSavePhoneBook = true;
        }
        if (mBtType == 0) {
            bSaveContactsToUrl = false;
            Log.d("gdy14", "  44 CustomerConfig   bSaveContactsToUrl = false  ");
        }
        bSms_Ctrl = getInstance().mySharePreference2.getBooleanValue("sms_function", true);
        barHeight = SystemProperties.getInt("sys.lsec.navi_bar_height", 0);
        Log.d("gdyy", " 00 App_Bt barHeight = " + barHeight);
        if (mStrCustomer.equalsIgnoreCase("SYU_DS")) {
            barHeight = FinalCanbus.CAR_WC2_2012Prado;
        }
        mBtType = BTUtil.getInstance().getSystemInt("sys.fyt.bluetooth_type", -1);
        mLocale = Locale.getDefault().getLanguage();
        bBtVoice = SystemProperties.getBoolean("persist.fyt.enablebtvoice", false);
        mStrPlatForm = getPlat();
        mRoPlatForm = SystemProperties.get("ro.fyt.platform", FinalChip.BSP_PLATFORM_Null);
        if (!TextUtils.isEmpty(mStrPlatForm) && mBtType == 0 && "6316".equals(mStrPlatForm)) {
            bChangeAppIdWhenTalking = true;
        }
        if (mStrCustomer.equalsIgnoreCase("changecolor")) {
            String ss = BTUtil.getInstance().getSystemPro("persist.launcher.color", "0,0,123");
            String[] strArr = new String[3];
            String[] str = ss.split(",");
            color = Color.rgb(Integer.parseInt(str[0]), Integer.parseInt(str[1]), Integer.parseInt(str[2]));
        }
        if (CustomerUtil.isYFConfig()) {
            sCallsType = 0;
        }
    }

    public static LocalDate extractDates(String text, String dateFormat) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateFormat);
        Pattern pattern = Pattern.compile("\\d{4}[-/]\\d{2}[-/]\\d{2}");
        Matcher matcher = pattern.matcher(text);
        while (matcher.find()) {
            try {
                return LocalDate.parse(matcher.group(), formatter);
            } catch (DateTimeParseException e) {
                Log.d("pop", " 11 extractDates err");
                System.err.println("解析日期失败: " + matcher.group());
            }
        }
        return null;
    }

    public void getMethod() {
        Method[] methodActivityManager = ActivityManager.class.getDeclaredMethods();
        for (Method method : methodActivityManager) {
            if (method.getName().equals("fytgetState")) {
                this.fytGetState = method;
            } else if (method.getName().equals("fytsetState")) {
                this.fytSetState = method;
            }
        }
    }

    public static String getDiyName() {
        String strDiyBtName = getInstance().mySharePreference2.getStringValue("name_diy");
        if (TextUtils.isEmpty(strDiyBtName)) {
            String strDiyBtName2 = ReadNameFromFile();
            return TextUtils.isEmpty(strDiyBtName2) ? strDefaultName : strDiyBtName2;
        }
        return strDiyBtName;
    }

    public static String getDiyPin() {
        String strDiyPin = getInstance().mySharePreference2.getStringValue("pin_diy");
        if (TextUtils.isEmpty(strDiyPin)) {
            String strDiyPin2 = ReadPinFromFile();
            return TextUtils.isEmpty(strDiyPin2) ? strDefaultPin : strDiyPin2;
        }
        return strDiyPin;
    }

    public void setDayOrNight(int value) {
        for (InterfaceBt interfaceBt : mInterfaceBt) {
            interfaceBt.setDayOrNight(value);
        }
    }

    public boolean isHalfScreenAble() {
        ActivityManager am;
        int iScreenMode = 0;
        if (this.fytGetState != null && (am = (ActivityManager) MyApplication.myApp.getSystemService("activity")) != null) {
            try {
                iScreenMode = ((Integer) this.fytGetState.invoke(am, new Object[0])).intValue();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return (iScreenMode & 32) != 0;
    }

    public int getFullScreenMode() {
        ActivityManager am;
        int iScreenMode = -1;
        if (this.fytGetState != null && (am = (ActivityManager) MyApplication.myApp.getSystemService("activity")) != null) {
            try {
                iScreenMode = ((Integer) this.fytGetState.invoke(am, new Object[0])).intValue();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return iScreenMode & 15;
    }

    public void setFullScreenMode(int iScreenMode) {
        ActivityManager am;
        if (this.fytSetState != null && (am = (ActivityManager) MyApplication.myApp.getSystemService("activity")) != null) {
            boolean bNeedSet = true;
            if (iScreenMode == 16) {
                try {
                    int iCurScreenMode = ((Integer) this.fytGetState.invoke(am, new Object[0])).intValue();
                    if ((iCurScreenMode & 16) != 0) {
                        bNeedSet = false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (bNeedSet) {
                try {
                    this.fytSetState.invoke(am, Integer.valueOf(iScreenMode));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static SparseArray<String> getNewMapContact(String name, String number) {
        String pinyin;
        if (!TextUtils.isEmpty(name)) {
            name = name.trim();
        }
        if (!TextUtils.isEmpty(number)) {
            number = number.trim();
        }
        SparseArray<String> map = new SparseArray<>();
        if (CustomerUtil.isYFConfig()) {
            pinyin = Pinyin.toPinyin(name, FinalChip.BSP_PLATFORM_Null);
        } else {
            pinyin = HanziToPinyin.getPinYin(name, false, true);
        }
        map.put(FinalBtCtrl.ContactItem_Txt_Name, name);
        map.put(FinalBtCtrl.ContactItem_Txt_NameCompare, pinyin);
        String newNumber = number;
        if (needSplice && !number.startsWith("+")) {
            newNumber = "+" + number;
        }
        map.put(FinalBtCtrl.ContactItem_Txt_Number, newNumber);
        if (CustomerUtil.isYFConfig() || CustomerUtil.isTZYConfig() || mStrCustomer.equals("YL_BT_1920") || bFavcontact) {
            String collection = FinalChip.BSP_PLATFORM_Null;
            int length = mBtInfo.mListFavContact.size();
            for (int i = 0; i < length; i++) {
                SparseArray<String> value = mBtInfo.mListFavContact.get(i);
                if (value != null) {
                    String myNumber = value.get(FinalBtCtrl.ContactItem_Txt_Number);
                    String myName = value.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (!TextUtils.isEmpty(myNumber) && !TextUtils.isEmpty(myName) && myNumber.equals(newNumber) && myName.equals(name)) {
                        collection = "collect";
                        value.put(FinalBtCtrl.ContactItem_Txt_Favorite_old, "exist");
                        mBtInfo.mListFavContact.set(i, value);
                        break;
                    }
                }
            }
            map.put(FinalBtCtrl.ContactItem_Txt_Favorite, collection);
        }
        return map;
    }

    public void updatePhoneName() {
        for (InterfaceBt interfaceBt : mInterfaceBt) {
            interfaceBt.updatePhoneName();
        }
        if (this.bPopBtShow) {
            JPage page = this.uiApp.getPage(1);
            if (page == null) {
                page = this.uiApp.getPage(3);
            }
            if (page != null) {
                JText txtContact = (JText) page.getChildViewByid(23);
                JText txtContact2 = (JText) page.getChildViewByid(24);
                JView headView = (JView) page.getChildViewByid(25);
                if (txtContact != null) {
                    if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        txtContact.setText(FinalChip.BSP_PLATFORM_Null);
                        if (txtContact2 != null) {
                            txtContact2.setText(FinalChip.BSP_PLATFORM_Null);
                            return;
                        }
                        return;
                    }
                    List<SparseArray<String>> list = new ArrayList<>();
                    list.addAll(mBtInfo.mListContact);
                    if (txtContact2 != null && CustomerUtil.isYFConfig()) {
                        String strPhone = Bt.sPhoneNumber;
                        if (Ipc_New.isRing() && !TextUtils.isEmpty(Bt.sPhoneNumberHoldOn)) {
                            strPhone = Bt.sPhoneNumberHoldOn;
                        }
                        MyApplication.startThread(MyApplication.mStrZipTag, StrThreadGetNameByNumber, new Runnable_getNameByNumberPopBtBook(list, txtContact, txtContact2, strPhone, strPhone, true), false, 5);
                        return;
                    }
                    if (headView != null) {
                        if (mStrCustomer.equalsIgnoreCase("TZY_OEM") || mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                            String defaultPhone = Bt.sPhoneNumber;
                            Log.d(FinalCustomer.VCustHuaTai, "defaultPhone B:" + defaultPhone);
                            MyApplication.startThread(MyApplication.mStrZipTag, StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, defaultPhone, true), false, 5);
                            return;
                        } else {
                            if (mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                                String defaultPhone2 = Bt.sPhoneNumber;
                                JText txtNumber = (JText) page.getChildViewByid(19);
                                Log.d("gdy66", " 00 App_BT defaultPhone defaultPhone = " + defaultPhone2);
                                MyApplication.startThread(MyApplication.mStrZipTag, StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, txtNumber, null, headView, null, defaultPhone2, true), false, 5);
                                return;
                            }
                            MyApplication.startThread(MyApplication.mStrZipTag, StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, null, null, headView, null, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                            return;
                        }
                    }
                    MyApplication.startThread(MyApplication.mStrZipTag, StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, FinalChip.BSP_PLATFORM_Null, false), false, 5);
                }
            }
        }
    }

    public void updatePhoneView() {
        for (InterfaceBt interfaceBt : mInterfaceBt) {
            interfaceBt.updateShowDial();
        }
    }

    public void simulateKey(final int keyCode) {
        MyApplication.startThread(MyApplication.mStrZipTag, StrThreadSimulateKey, new Runnable() { // from class: com.syu.bt.App_Bt.48
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Instrumentation inst = new Instrumentation();
                    inst.sendKeyDownUpSync(keyCode);
                } catch (Exception e) {
                }
            }
        }, false, 5);
    }

    public int dp2px(float dpValue) {
        float scale = MyApplication.myApp.getResources().getDisplayMetrics().density;
        return (int) ((dpValue * scale) + 0.5f);
    }

    public void sendCmd2AmapAssist(String strCmd) {
        Intent intent = new Intent();
        intent.setAction(Receiver.ACTION_BTSEND_CMD);
        intent.putExtra("CMD_TYPE", 10000);
        intent.putExtra("CMD_DESC", strCmd);
        intent.setFlags(32);
        try {
            MyApplication.myApp.sendBroadcast(intent);
        } catch (Exception e) {
        }
    }

    public void showFloatBtn(boolean bShow) {
        Runnable runnable;
        if (bIsAppAmapAssistInstall) {
            if (Bt_IpcObj.isDisConnect()) {
                getInstance().sendCmd2AmapAssist("bt_disconnect");
            } else {
                getInstance().sendCmd2AmapAssist("bt_connect");
            }
            if (bShow) {
                sendCmd2AmapAssist("ShowFloatBt");
            } else {
                sendCmd2AmapAssist("hideFloatBt");
            }
            if (!bShowBtInNaviFloatBtn) {
                return;
            }
        }
        Log.d("gdy66", " 00 showFloatBtn bShow = " + bShow + " isRing() = " + Bt_IpcObj.isRing() + " isInCall = " + Bt_IpcObj.isInCall() + " isTalk = " + Bt_IpcObj.isTalk());
        if (!Bt_IpcObj.isTalk()) {
            if (mStrCustomer.equalsIgnoreCase("YL_3") || mStrCustomer.equalsIgnoreCase("YL_BT_1920")) {
                if (!Bt_IpcObj.isInCall()) {
                    bShow = false;
                    if (this.mTxtFloat != null) {
                        this.mTxtFloat.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
            } else {
                bShow = mStrCustomer.equalsIgnoreCase("BT_23NEW") && Bt_IpcObj.isInCall() && bShow;
            }
        }
        Log.d("gdy66", " 11 showFloatBtn bShow = " + bShow + " isRing() = " + Bt_IpcObj.isRing() + " isInCall = " + Bt_IpcObj.isInCall() + " isTalk = " + Bt_IpcObj.isTalk());
        Main.removeRunnable_Ui(this.mRunnable_HideFloatBtn);
        Main.removeRunnable_Ui(this.mRunnable_ShowFloatButton);
        if (bShow) {
            runnable = this.mRunnable_ShowFloatButton;
        } else {
            runnable = this.mRunnable_HideFloatBtn;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }

    public boolean isMainThread() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void queryCallLog() {
        Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.App_Bt.49
            @Override // java.lang.Runnable
            public void run() {
                Log.d("his2", " 000 queryCallLog");
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, new Runnable_queryCallLog(), false, 10);
            }
        });
    }

    public static class Runnable_queryCallLog implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            List<SparseArray<String>> mListContactInQuery = new ArrayList<>();
            mListContactInQuery.addAll(App_Bt.mBtInfo.mListContact);
            Log.d("his2", " 00 Runnable_queryCallLog ");
            App_Bt.mBtInfo.queryHistory(mListContactInQuery);
            Main.postRunnable_Ui(true, App_Bt.mRunnableResetList);
        }
    }

    public static boolean includePage(int idPage) {
        return idPage >= 10001 && idPage < 20001;
    }

    public boolean isAppTop() {
        if (MyApplication.myApp.isAppTop()) {
            return includePage(MyApplication.sPage_Current);
        }
        return false;
    }

    public void readFavContactFromFile() {
        Log.d("fav", " 11  mListFavContact.clear");
        mBtInfo.mListFavContact.clear();
        List<SparseArray<String>> data = BTUtil.getInstance().readFavContactFromFile(String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "FAV");
        if (data != null) {
            mBtInfo.mListFavContact.addAll(data);
        }
    }

    public void readContactHeadFromFile() {
        Log.d("fav", " 22  mListFavContact.clear");
        mBtInfo.mListFavContact.clear();
        mBtInfo.mListContactHeadId.clear();
        List<SparseArray<String>> data2 = BTUtil.getInstance().readHeadContactFromFile(String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "head");
        if (data2 != null) {
            mBtInfo.mListContactHeadId.addAll(data2);
        }
        List<SparseArray<String>> data = BTUtil.getInstance().readFavContactFromFile(String.valueOf(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null)) + "FAV");
        if (data != null) {
            mBtInfo.mListFavContact.addAll(data);
        }
        int length = mBtInfo.mListContactHeadId.size();
        if (length > 0 && mBtInfo.mListFavContact.size() > 0) {
            for (SparseArray<String> map : mBtInfo.mListFavContact) {
                String headNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                for (int index = 0; index < length; index++) {
                    SparseArray<String> contact = mBtInfo.mListContactHeadId.get(index);
                    if (contact.get(FinalBtCtrl.ContactItem_Txt_Number).equals(headNumber)) {
                        map.put(FinalBtCtrl.ContactItem_HeadIcon, contact.get(FinalBtCtrl.ContactItem_HeadIcon));
                        break;
                    }
                }
            }
        }
    }

    public static void invilatePlayList(HashMap<String, Bitmap> data) {
        myAlbum.clear();
        myAlbum.putAll(data);
        for (InterfaceBt interfaceBt : mInterfaceBt) {
            interfaceBt.invilatePlayList();
        }
    }

    public static boolean isNotEmpty(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }
}
