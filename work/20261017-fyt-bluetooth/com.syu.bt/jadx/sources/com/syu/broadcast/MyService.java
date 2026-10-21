package com.syu.broadcast;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.Manifest;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.pop.Page_PopSms;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;

/* JADX INFO: loaded from: classes.dex */
public class MyService extends Service {
    public static final int BROADCAST_CMD_NULL = 0;
    public static final int BROADCAST_CMD_PAGE_BTAV = 4;
    public static final int BROADCAST_CMD_PAGE_BTAV_FORCE = 5;
    public static final int BROADCAST_CMD_PAGE_DIAL_BY_KEY = 2;
    public static final int BROADCAST_CMD_PAGE_DIAL_BY_WORK = 3;
    public static final int BROADCAST_CMD_SHOW_PHONE_SMS = 7;
    public static final int BROADCAST_CMD_SHOW_PHONE_VOICE = 6;
    public static final int BROADCAST_CMD_SHOW_PIP = 1;
    public static final String SERVICE_MS_BTAV = "com.syu.bt.byav";
    public static final String SERVICE_MS_BTAV_FORCE = "com.syu.bt.byav.force";
    public static final String SERVICE_MS_BTAV_WIDGET = "com.syu.bt.byav.widgetkey";
    public static final String SERVICE_MS_BYKEY = "com.syu.bt.bykey";
    public static final String SERVICE_MS_BYWORK = "com.syu.bt.bywork";
    public static final String SERVICE_MS_PHONE_SMS = "com.syu.bt.phone.sms";
    public static final String SERVICE_MS_PHONE_VOICE = "com.syu.bt.phone.voice";
    public static final String SERVICE_MS_PIPSHOW = "com.syu.bt.pip";
    public static final Binder BINDER = new Binder();
    public static Runnable mRunnable_isCallingState = new Runnable() { // from class: com.syu.broadcast.MyService.1
        @Override // java.lang.Runnable
        public void run() {
            Log.d("gdy6", "STATE:" + App_Bt.getInstance().mIpcObj.isCalling());
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                App_Bt.sBackFlag |= 1;
            } else {
                App_Bt.sPageBak = MyApplication.sPage_Current;
                App_Bt.sBackFlag = 0;
            }
        }
    };
    public static Runnable mRunnable_goPageDial = new Runnable() { // from class: com.syu.broadcast.MyService.2
        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb = new StringBuilder(" ** 44 MyService mRunnable_goPageDial   sPage = ");
            App_Bt.getInstance();
            Log.d("gdy", sb.append(App_Bt.sPage).toString());
            int iPageGo = 10003;
            if (App_Bt.getInstance().mIpcObj.isCalling() && App_Bt.bCallinPageFlag) {
                iPageGo = FinalBtCtrl.Page_Callin;
            }
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    ((Act_Bt) interfaceBt).myActivity.goPage(iPageGo);
                }
            }
        }
    };
    public static Runnable mRunnable_goPageContact = new Runnable() { // from class: com.syu.broadcast.MyService.3
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Contact);
                }
            }
        }
    };
    public static Runnable mRunnable_goVoiceSearchContact = new Runnable() { // from class: com.syu.broadcast.MyService.4
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Contact);
                }
                interfaceBt.voiceSearchContact();
            }
        }
    };
    public static Runnable mRunnable_goPageAv = new Runnable() { // from class: com.syu.broadcast.MyService.5
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    Log.d("HJT", "B");
                    ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Av);
                }
            }
        }
    };
    public static Runnable mRunnable_goPageSet = new Runnable() { // from class: com.syu.broadcast.MyService.6
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Set);
                }
            }
        }
    };
    public static Runnable mRunnable_goPagePair = new Runnable() { // from class: com.syu.broadcast.MyService.7
        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb = new StringBuilder(" ** 22 MyService mRunnable_goPagePair   sPage = ");
            App_Bt.getInstance();
            Log.d("gdy", sb.append(App_Bt.sPage).toString());
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    if (App_Bt.bNo_Pair) {
                        ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Set);
                    } else {
                        ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_Pair);
                    }
                }
            }
        }
    };
    public static Runnable mRunnable_goPageHistory = new Runnable() { // from class: com.syu.broadcast.MyService.8
        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                if (interfaceBt instanceof Act_Bt) {
                    ((Act_Bt) interfaceBt).myActivity.goPage(FinalBtCtrl.Page_History);
                }
            }
        }
    };
    public static Runnable mRunnable_getSMS = new Runnable() { // from class: com.syu.broadcast.MyService.9
        @Override // java.lang.Runnable
        public void run() {
            Page_PopSms page_PopSms;
            if (App_Bt.myHandle.size() > 0 && !App_Bt.getInstance().bPopPhoneSms) {
                App_Bt.handleSMS = App_Bt.myHandle.get(App_Bt.myHandle.size() - 1);
                App_Bt.myHandle.remove(App_Bt.handleSMS);
                App_Bt.getInstance().mIpcObj.requestSMS(App_Bt.handleSMS);
            } else {
                JPage pageSMS = App_Bt.getInstance().uiApp.mPages.get(16);
                if (pageSMS != null && (page_PopSms = (Page_PopSms) pageSMS.getNotify()) != null) {
                    page_PopSms.updateSmsNum();
                }
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return BINDER;
    }

    public static boolean activityMain() {
        if (App_Bt.getInstance().isAppTop()) {
            return false;
        }
        if (App_Bt.bShowFloatBtn && !App_Bt.mStrCustomer.equals("BT_23NEW")) {
            BTUtil.writeLogToFile("activityMain");
            Log.d("gdy666", " 001 MyService activityMain ");
            App_Bt.getInstance().popBt(true, false);
            return false;
        }
        MyApplication.myApp.startAct(Manifest.permission.bt, "com.syu.bt.act.ActBt");
        return true;
    }

    public static void handleSeverCmd(int cmd) {
        Log.d("gdy66", " 00 MyService handleSeverCmd  cmd = " + cmd);
        switch (cmd) {
            case 1:
                Log.d("gdy66", " 01 MyService handleSeverCmd  U_PHONE_STATE = " + Bt.DATA[9]);
                if (!App_Bt.bHideBtDial) {
                    Main.removeRunnable_Ui(App_Bt.getInstance().mRunnable_DismissPopBT);
                    App_Bt.getInstance();
                    if (App_Bt.bEnableHalfScreen) {
                        if (App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) {
                            if (App_Bt.bBackCarFlag) {
                                switch (Bt.DATA[9]) {
                                    case 3:
                                    case 4:
                                    case 5:
                                        Bt_IpcObj.hang();
                                }
                            } else {
                                if (MyApplication.sPage_Current != 10032) {
                                    App_Bt.sPageBak = MyApplication.sPage_Current;
                                    App_Bt.sBackFlag |= 1;
                                    App_Bt.getInstance();
                                    App_Bt.sPage = FinalBtCtrl.Page_Callin;
                                }
                                App_Bt.bResumeByDial = true;
                                int mode = App_Bt.getInstance().getFullScreenMode();
                                int state = mode & 15;
                                if (state == 0) {
                                    App_Bt.sBackFlag |= 8;
                                } else if (state == 1) {
                                    App_Bt.sBackFlag |= 16;
                                } else if (state == 2) {
                                    App_Bt.sBackFlag |= 4;
                                }
                                if (activityMain()) {
                                    App_Bt.sBackFlag |= 2;
                                }
                            }
                        }
                    } else if (App_Bt.bCallinPageFlag) {
                        Log.d("gdy66", " 11 MyService handleSeverCmd  ");
                        if ((App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) && MyApplication.sPage_Current != 10032) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            App_Bt.sBackFlag |= 1;
                            App_Bt.getInstance();
                            App_Bt.sPage = FinalBtCtrl.Page_Callin;
                        }
                        Main.removeRunnable_Ui(mRunnable_goPageAv);
                        if (App_Bt.getInstance().isAppTop()) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            Main.postRunnable_Ui(true, mRunnable_goPageDial);
                            Main.postRunnable_Ui(true, mRunnable_isCallingState, 300L);
                        } else {
                            App_Bt.getInstance().bPopBtShowBak_Num = false;
                            Log.d("gdy666", " 002 MyService handleSeverCmd ");
                            App_Bt.getInstance().popBt(true, false);
                            BTUtil.writeLogToFile("bPopBtShowBak_Num");
                        }
                    } else {
                        Log.d("gdy66", " 22 MyService handleSeverCmd  ");
                        if ((App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) && MyApplication.sPage_Current != 10003) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            App_Bt.sBackFlag |= 1;
                            App_Bt.getInstance();
                            App_Bt.sPage = 10003;
                        }
                        Main.removeRunnable_Ui(mRunnable_goPageAv);
                        if (App_Bt.getInstance().isAppTop()) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            Main.postRunnable_Ui(true, mRunnable_goPageDial);
                            Main.postRunnable_Ui(true, mRunnable_isCallingState, 300L);
                        } else {
                            Log.d("gdy66", " 001 MyService handleSeverCmd  bHidePopBt = " + App_Bt.bHidePopBt + " bHidePopBt2 = " + App_Bt.bHidePopBt2 + " bShowFloatBtn_p = " + App_Bt.bShowFloatBtn_p);
                            if (App_Bt.bHidePopBt) {
                                App_Bt.sBackFlag |= 32;
                                App_Bt.bResumeByDial = true;
                                if (activityMain()) {
                                    App_Bt.sBackFlag |= 2;
                                }
                            } else if (App_Bt.bHidePopBt2) {
                                App_Bt.bResumeByDial = true;
                            } else if (!App_Bt.bShowFloatBtn_p) {
                                App_Bt.getInstance().bPopBtShowBak_Num = false;
                                Log.d("gdy666", " 003 MyService handleSeverCmd ");
                                App_Bt.getInstance().popBt(true, false);
                                BTUtil.writeLogToFile("bPopBtShowBak_Num c");
                            }
                        }
                    }
                }
                break;
            case 2:
                boolean isToPair = false;
                Log.d("gdy", " ** 00 MyService mStrCustomer = " + App_Bt.mStrCustomer + "  U_PHONE_STATE = " + Bt.DATA[9]);
                if (App_Bt.mStrCustomer.equals("BT_23NEW") && Bt.DATA[9] == 0) {
                    isToPair = true;
                }
                if (App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) {
                    App_Bt.getInstance();
                    App_Bt.sPage = 10003;
                    if (isToPair) {
                        App_Bt.getInstance();
                        App_Bt.sPage = FinalBtCtrl.Page_Pair;
                    }
                }
                StringBuilder sbAppend = new StringBuilder(" ** 11 MyService isToPair = ").append(isToPair).append("  sPage = ");
                App_Bt.getInstance();
                Log.d("gdy6", sbAppend.append(App_Bt.sPage).append(" bPopBtShow = ").append(App_Bt.getInstance().bPopBtShow).toString());
                App_Bt.sPageBak = MyApplication.sPage_Current;
                Main.removeRunnable_Ui(mRunnable_goPageAv);
                if (isToPair) {
                    Main.postRunnable_Ui(true, mRunnable_goPagePair);
                } else {
                    Main.postRunnable_Ui(true, mRunnable_goPageDial);
                    Main.postRunnable_Ui(true, mRunnable_isCallingState, 300L);
                }
                if (App_Bt.getInstance().bPopBtShow) {
                    App_Bt.getInstance().popBt(false, false);
                }
                activityMain();
                break;
            case 3:
                if (App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) {
                    App_Bt.getInstance();
                    if (App_Bt.bEnableHalfScreen) {
                        if (App_Bt.bBackCarFlag) {
                            switch (Bt.DATA[9]) {
                                case 3:
                                case 4:
                                case 5:
                                    Bt_IpcObj.hang();
                                    break;
                            }
                        } else if (MyApplication.sPage_Current != 10032) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            App_Bt.sBackFlag |= 1;
                            App_Bt.getInstance();
                            App_Bt.sPage = FinalBtCtrl.Page_Callin;
                            int mode2 = App_Bt.getInstance().getFullScreenMode();
                            int state2 = mode2 & 15;
                            if (state2 == 0) {
                                App_Bt.sBackFlag |= 8;
                            } else if (state2 == 1) {
                                App_Bt.sBackFlag |= 16;
                            } else if (state2 == 2) {
                                App_Bt.sBackFlag |= 4;
                            }
                        }
                    } else if (App_Bt.bCallinPageFlag) {
                        if (MyApplication.sPage_Current != 10032) {
                            App_Bt.sPageBak = MyApplication.sPage_Current;
                            App_Bt.sBackFlag |= 1;
                            App_Bt.getInstance();
                            App_Bt.sPage = FinalBtCtrl.Page_Callin;
                        }
                    } else if (MyApplication.sPage_Current != 10003) {
                        App_Bt.sPageBak = MyApplication.sPage_Current;
                        App_Bt.sBackFlag |= 1;
                        App_Bt.getInstance();
                        App_Bt.sPage = 10003;
                    }
                } else {
                    App_Bt.getInstance();
                    if (App_Bt.bEnableHalfScreen) {
                        int mode3 = App_Bt.getInstance().getFullScreenMode();
                        int state3 = mode3 & 15;
                        if (state3 == 0) {
                            App_Bt.sBackFlag |= 8;
                        } else if (state3 == 1) {
                            App_Bt.sBackFlag |= 16;
                        } else if (state3 == 2) {
                            App_Bt.sBackFlag |= 4;
                        }
                    }
                }
                Main.removeRunnable_Ui(mRunnable_goPageAv);
                App_Bt.getInstance().popBt(false, false);
                App_Bt.bResumeByDial = true;
                Log.d("pv", " 33 BACK_FLAG_ACTIVITY_BIT");
                if (activityMain()) {
                    App_Bt.sBackFlag |= 2;
                }
                break;
            case 4:
                if (!App_Bt.bBtNoAV && CustomerUtil.needskipBtMusic()) {
                    if (App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) {
                        App_Bt.sPage = FinalBtCtrl.Page_Av;
                    }
                    Main.removeRunnable_Ui(mRunnable_goPageDial);
                    Main.postRunnable_Ui(true, mRunnable_goPageAv);
                    break;
                }
                break;
            case 5:
                if (!App_Bt.bBtNoAV && CustomerUtil.needskipBtMusic()) {
                    if (App_Bt.mInterfaceBt.size() == 0 || !App_Bt.getInstance().isAppTop()) {
                        MyApplication.sPage_WillBe = FinalBtCtrl.Page_Av;
                        App_Bt.sPage = FinalBtCtrl.Page_Av;
                    }
                    Main.removeRunnable_Ui(mRunnable_goPageDial);
                    Main.postRunnable_Ui(true, mRunnable_goPageAv);
                    activityMain();
                    break;
                }
                break;
            case 6:
                Log.d("pv", " ** 33 BROADCAST_CMD_SHOW_PHONE_VOICE  ");
                if (App_Bt.getInstance().bPopPhoneFirstValue == 1) {
                    App_Bt.getInstance().bPopPhoneFirstValue = 0;
                }
                App_Bt.getInstance().popPhoneVoice(true);
                break;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d("gdy61", " 00 onStartCommand  ");
        if (intent != null && !App_Bt.bFirstBtAvPage) {
            String action = intent.getAction();
            Log.d("gdy61", "11 onStartCommand action:" + action);
            if (SERVICE_MS_PIPSHOW.equals(action)) {
                handleSeverCmd(1);
            } else if (SERVICE_MS_BYWORK.equals(action)) {
                handleSeverCmd(3);
            } else if (SERVICE_MS_BYKEY.equals(action)) {
                handleSeverCmd(2);
            } else if (SERVICE_MS_BTAV.equals(action)) {
                handleSeverCmd(4);
            } else if (SERVICE_MS_BTAV_FORCE.equals(action)) {
                handleSeverCmd(5);
            } else if (SERVICE_MS_PHONE_VOICE.equals(action)) {
                handleSeverCmd(6);
            } else if (SERVICE_MS_PHONE_SMS.equals(action)) {
                String handleSMS = intent.getStringExtra("handle");
                if (!TextUtils.isEmpty(handleSMS) && (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920"))) {
                    App_Bt.myHandle.add(0, handleSMS);
                    Main.postRunnable_Ui(false, mRunnable_getSMS, App_Bt.bAppFirstInit ? 2000 : 0);
                    App_Bt.bAppFirstInit = false;
                }
            }
        }
        return super.onStartCommand(intent, flags, startId);
    }
}
