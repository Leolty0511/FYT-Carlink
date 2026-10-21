package com.syu.app.ipc;

import android.support.v4.os.EnvironmentCompat;
import android.telecom.Log;
import android.text.TextUtils;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc786.module.Bt786;
import com.lsec.core.util.IUiNotify;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.util.SpeechUtil;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Ipc_786 {
    static final int[] NumCmd = {23, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24};
    public static final int[] NOTIFYCODE_DIAL = {1, 14, 5, 9};
    public static final int[] NOTIFYCODE_BtAV = {2, 18, 19, 1};
    public static final int[] NOTIFYCODE_SET = {6, 8, 11};
    public Ipc_786NotifyPage mNotify = new Ipc_786NotifyPage();
    private IUiNotify notify_PopBt = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_786.1
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) throws Throwable {
            JText text;
            JText text2;
            Log.d("gdy", " 00 Ipc_786 notify_PopBt updateCode = " + updateCode, new Object[0]);
            JPage page = App_Bt.getInstance().uiApp.getPage(1);
            if (page == null) {
                page = App_Bt.getInstance().uiApp.getPage(3);
            }
            if (page != null) {
                switch (updateCode) {
                    case 1:
                        int value = Bt.DATA[updateCode];
                        int iState = -1;
                        switch (value) {
                            case 0:
                                iState = 0;
                                break;
                            case 1:
                                iState = 2;
                                break;
                            case 2:
                                iState = 6;
                                break;
                            case 3:
                                iState = 1;
                                break;
                            case 4:
                                iState = 4;
                                break;
                            case 5:
                                iState = 5;
                                break;
                            case 6:
                                iState = 3;
                                break;
                        }
                        if (iState >= 0 && (text2 = (JText) page.getChildViewByid(18)) != null) {
                            text2.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[iState]));
                        }
                        if (!Ipc_786.isTalk() && (text = (JText) page.getChildViewByid(22)) != null) {
                            text.setText(FinalChip.BSP_PLATFORM_Null);
                        }
                        if (Ipc_786.this.isCalling(Bt.sLastPhoneState)) {
                            if (value == 1 || value == 0) {
                                App_Bt.getInstance().popBt(false, false);
                            }
                        }
                        break;
                    case 5:
                        Log.d("pop33", " 00 Ipc768  Runnable", new Object[0]);
                        JText txtNum = (JText) page.getChildViewByid(19);
                        if (txtNum != null) {
                            txtNum.setText(Bt.sPhoneNumber);
                        }
                        JText txtContact = (JText) page.getChildViewByid(23);
                        if (txtContact != null) {
                            if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                txtContact.setText(FinalChip.BSP_PLATFORM_Null);
                            } else {
                                List<SparseArray<String>> list = new ArrayList<>();
                                list.addAll(App_Bt.mBtInfo.mListContact);
                                String strUnKnown = App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN);
                                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, txtContact, strUnKnown, false), false, 5);
                            }
                        }
                        break;
                    case 9:
                        JText text3 = (JText) page.getChildViewByid(22);
                        if (text3 != null) {
                            int value2 = (Bt.DATA[updateCode] + 100) / 1000;
                            if (!Ipc_786.isTalk()) {
                                text3.setText(FinalChip.BSP_PLATFORM_Null);
                            } else {
                                text3.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(value2 / 60), Integer.valueOf(value2 % 60)));
                            }
                        }
                        break;
                }
            }
        }
    };
    IUiNotify notify_Bt_Pop = null;
    IUiNotify notify_Bt = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_786.2
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            switch (updateCode) {
                case 1:
                    Ipc_786.this.phoneState();
                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                        interfaceBt.phoneState();
                    }
                    break;
                case 6:
                    String strDiyBtName = App_Bt.getDiyName();
                    String strDiyPin = App_Bt.getDiyPin();
                    if (!TextUtils.isEmpty(strDiyBtName) && !strDiyBtName.equals(Bt.sDevName)) {
                        Ipc_786.setDevName(strDiyBtName);
                    }
                    if (!TextUtils.isEmpty(strDiyPin) && !strDiyPin.equals(Bt.sDevPin)) {
                        Ipc_786.setDevPin(strDiyPin);
                    }
                    break;
            }
            for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                interfaceBt2.onNotify(updateCode, ints, flts, strs);
            }
            if (Ipc_786.this.notify_Bt_Pop != null) {
                Ipc_786.this.notify_Bt_Pop.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    IUiNotify notify_Main = new IUiNotify() { // from class: com.syu.app.ipc.Ipc_786.3
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            switch (updateCode) {
                case 0:
                    Bt_IpcObj.mcuOn(updateCode, Main.DATA[updateCode]);
                    break;
                case 3:
                    Ipc_786.appId();
                    break;
            }
        }
    };

    public void initIpc() {
        MyApplication.mListUiNotify_Main_786.add(this.notify_Main);
        MyApplication.mListUiNotify_Bt_786.add(this.notify_Bt);
    }

    public void addNotify_PopBt() {
        this.notify_Bt_Pop = this.notify_PopBt;
    }

    public void removeNotify_PopBt() {
        this.notify_Bt_Pop = null;
    }

    public static boolean isStateDisconnect() {
        return Bt.DATA[1] == 0;
    }

    public static boolean isStateConnect() {
        return Bt.DATA[1] == 1;
    }

    public static boolean isStateDialAble() {
        switch (Bt.DATA[1]) {
            case 1:
            case 4:
                return true;
            case 2:
            case 3:
            default:
                return false;
        }
    }

    public static void setNum(String number) {
        Bt786.cmdBt(3, -2, Bt_IpcObj.filterNumber(number));
    }

    public static void setDevName(String name) {
        Bt786.cmdBt(35, -2, name);
    }

    public static void setDevPin(String pin) {
        Bt786.cmdBt(34, -2, pin);
    }

    public static void Reset() {
        Bt786.cmdBt(36, -2, null);
        setAutoAnswer(false);
    }

    public static void setAutoAnswer(boolean flag) {
        Bt786.cmdBt(33, flag ? 5 : -1, null);
    }

    public static void setNumKey(int key) {
        Bt786.cmdBt(key, -2, null);
    }

    public static void clearKey(boolean isLongClick) {
        if (isLongClick) {
            int len = Bt.sPhoneNumber.length();
            for (int i = 0; i < len; i++) {
                Bt786.cmdBt(0, -2, null);
            }
            return;
        }
        Bt786.cmdBt(0, -2, null);
    }

    public static void link() {
        Bt786.cmdBt(10, -2, null);
    }

    public static void cut() {
        Bt786.cmdBt(11, -2, null);
    }

    public static void hang() {
        Bt786.cmdBt(6, -2, null);
    }

    public static void dial() {
        Bt786.cmdBt(4, -2, null);
    }

    public static void redial() {
        Bt786.cmdBt(5, -2, null);
    }

    public static void hfp() {
        Bt786.cmdBt(9, -2, null);
    }

    public static void downloadBook() {
        Bt786.cmdBt(37, -2, null);
    }

    public static void avPrev() {
        Bt786.cmdBt(26, -2, null);
    }

    public static void avNext() {
        Bt786.cmdBt(31, -2, null);
    }

    public static void avPlayPause() {
        Bt786.cmdBt(29, -2, null);
    }

    public static void avPlay() {
        Bt786.cmdBt(27, -2, null);
    }

    public static void avPause() {
        Bt786.cmdBt(28, -2, null);
    }

    public static void avStop() {
        Bt786.cmdBt(30, -2, null);
    }

    public static void startDiscover() {
        Bt786.cmdBt(39, -2, null);
    }

    public static void stopDiscover() {
        Bt786.cmdBt(40, -2, null);
    }

    public static void queryPairList() {
        Bt786.cmdBt(41, -2, null);
    }

    public static void connectOBD(String str) {
        Bt786.cmdBt(43, -2, str);
    }

    public static void connectDevice(String str) {
        Bt786.cmdBt(42, -2, str);
    }

    public static void test(String str) {
        Bt786.cmdBt(44, -2, str);
    }

    public static void updateBt(String path) {
        Bt786.cmdBt(44, -2, path);
    }

    public static boolean isAppIdBtAv() {
        return Main.DATA[3] == 9;
    }

    public static boolean isAppIdBtPhone() {
        return Main.DATA[3] == 7;
    }

    public void requestAppIdBtPhone() {
        Main.requestAppIdByOnTop(7);
    }

    public void requestAppIdBtAv() {
        Main.requestAppIdByOnTop(9);
    }

    public static boolean isRightAppId() {
        return Main.mConf_PlatForm == 1 || isAppIdBtAv() || isAppIdBtPhone();
    }

    public void requestAppIdNull() {
        if (isAppIdBtAv()) {
            avStop();
        }
        if (isRightAppId()) {
            Main.requestAppId(11);
        }
    }

    public static void appId() {
        boolean bIsAppIdBtAv = isAppIdBtAv();
        if (!Bt_IpcObj.bIsAppIdBtAv && bIsAppIdBtAv) {
            avPlay();
        }
        Bt_IpcObj.bIsAppIdBtAv = bIsAppIdBtAv;
    }

    public void recoverAppId() {
        if (!isRightAppId()) {
            requestAppIdBtPhone();
        }
    }

    public static void LongClick0() {
        setNumKey(25);
    }

    public void cmdNum(int index) {
        setNumKey(NumCmd[index]);
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
        Log.d("hfp11", " ** 33 updateNotify_BtAv ", new Object[0]);
        for (int updateCode : NOTIFYCODE_BtAV) {
            for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                interfaceBt.onNotify(updateCode, null, null, null);
            }
        }
    }

    public static boolean isDisConnect(int iState) {
        switch (iState) {
            case 0:
            case 2:
            case 3:
                return true;
            case 1:
            default:
                return false;
        }
    }

    public static boolean isDisConnect() {
        return isDisConnect(Bt.DATA[1]);
    }

    public boolean isCalling(int iState) {
        switch (iState) {
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public boolean isCalling() {
        return isCalling(Bt.DATA[1]);
    }

    public boolean isMute() {
        return Main.DATA[1] == 1 || Main.DATA[2] == 0;
    }

    public boolean isPauseDraw() {
        return isDisConnect() || Bt.DATA[4] != 1;
    }

    public boolean isPBAPStateLoad() {
        return Bt.DATA[1] == 8;
    }

    public static boolean isPairing() {
        return Bt.DATA[1] == 2;
    }

    public static boolean isInCall() {
        switch (Bt.DATA[1]) {
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public static boolean isTalk() {
        return Bt.DATA[1] == 5;
    }

    public static boolean isRing() {
        return Bt.DATA[1] == 4;
    }

    public static boolean isConnect() {
        return Bt.DATA[1] != 0;
    }

    public void checkFirstDialOrRing() {
        if (!isDisConnect(Bt.sLastPhoneState) && isDisConnect()) {
            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_ClearContactAndHistory_Disp);
        } else if (!isDisConnect()) {
            if (isDisConnect(Bt.sLastPhoneState) || !App_Bt.bHaveScanDB) {
                Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
            }
        }
    }

    public void phoneState() {
        checkFirstDialOrRing();
        switch (Bt.DATA[1]) {
            case 0:
            case 1:
                if (isCalling(Bt.sLastPhoneState)) {
                    clearKey(true);
                    App_Bt.mBtInfo.insertCallLog(Bt.values, true);
                }
                break;
            case 4:
                Bt.values.clear();
                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_786.5
                    @Override // java.lang.Runnable
                    public void run() {
                        Bt.values.put("type", (Integer) 3);
                        Bt.values.put("date", Long.valueOf(System.currentTimeMillis()));
                        Bt.values.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                    }
                }, 500L);
                break;
            case 5:
                if (Bt.values.getAsInteger("type") != null && Bt.values.getAsInteger("type").intValue() == 3) {
                    Bt.values.put("type", (Integer) 1);
                    break;
                }
                break;
            case 6:
                Bt.values.clear();
                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.app.ipc.Ipc_786.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Bt.values.put("type", (Integer) 2);
                        Bt.values.put("date", Long.valueOf(System.currentTimeMillis()));
                        Bt.values.put(SpeechUtil.KEY_NUMBER, Bt.sPhoneNumber);
                    }
                }, 500L);
                break;
        }
    }

    public void phoneState(Act_Bt actBt) {
        int value = Bt.DATA[1];
        if (isCalling(Bt.sLastPhoneState) && !isCalling(value)) {
            if (App_Bt.sBackFlag != 0) {
                boolean bMoveTask2Back = false;
                if ((App_Bt.sBackFlag & 2) != 0) {
                    Log.d("pv", " 00 BACK_FLAG_ACTIVITY_BIT", new Object[0]);
                    bMoveTask2Back = true;
                    actBt.myActivity.moveTaskToBack(true);
                }
                if ((App_Bt.sBackFlag & 1) != 0) {
                    if (!bMoveTask2Back) {
                        actBt.myActivity.goPage(App_Bt.sPageBak);
                    }
                    App_Bt.getInstance();
                    App_Bt.sPage = App_Bt.sPageBak;
                }
                App_Bt.sBackFlag = 0;
            }
        } else if (Bt.sLastPhoneState != 0 && value == 0) {
            actBt.ClearAllContact(false);
        }
        if (isCalling()) {
            if (MyApplication.sPage_Current != 10003) {
                App_Bt.sPageBak = MyApplication.sPage_Current;
                App_Bt.sBackFlag |= 1;
            }
            actBt.myActivity.goPage(10003);
        }
    }

    public void FuncDial() {
        if (Bt.sPhoneNumber.startsWith("#") && Bt.sPhoneNumber.endsWith("#") && Bt.sPhoneNumber.length() == 5 && Bt.DATA[1] == 0) {
            test(Bt.sPhoneNumber.substring(1, 4));
            return;
        }
        if (Bt.sPhoneNumber.equals("*") && Bt.DATA[1] == 0) {
            test(null);
            return;
        }
        if (Bt.DATA[1] != 1 && Bt.DATA[1] != 4) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_cannot_dial"));
        } else if (!FinalChip.BSP_PLATFORM_Null.equals(Bt.sPhoneNumber)) {
            dial();
        } else if (Bt.DATA[1] == 1) {
            redial();
        }
    }
}
