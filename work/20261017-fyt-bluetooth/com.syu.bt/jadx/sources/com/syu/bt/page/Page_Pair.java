package com.syu.bt.page;

import android.R;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSwitchButton;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.ToastUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Page_Pair extends MyPage {
    public Act_Bt actBt;
    JSwitchButton auto;
    private boolean bRegisterReceiver;
    boolean bTop;
    JButton btnPairCut;
    JButton btnPairDel;
    JButton btnPairLink;
    JButton btnPairSearch;
    public boolean isBtavStop;
    public boolean isConnectBt;
    public boolean isSelfLink;
    public boolean isStartDiscovey;
    JGridView mGridView;
    HideText mHideText;
    JGridView mPairedView;
    private int mPosFocusCpy;
    private int mPosMoveTo;
    public Runnable mRunnJumpTalking;
    RunnableHideText mRunnableHideText;
    RunnableHideText2 mRunnableHideText2;
    public Runnable mRunnable_refreshPaired;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    public Random random;
    private BroadcastReceiver searchDevices;
    public String[] str_PairIcon;
    JText tipText;
    View vNoData;

    public Page_Pair(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.isSelfLink = false;
        this.isStartDiscovey = false;
        this.isBtavStop = false;
        this.isConnectBt = false;
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        this.bTop = false;
        this.btnPairSearch = null;
        this.btnPairLink = null;
        this.btnPairCut = null;
        this.btnPairDel = null;
        this.nightBtn = new int[]{FinalBtCtrl.Pair_Btn_Search, FinalBtCtrl.Pair_Btn_Link, FinalBtCtrl.Pair_Btn_Cut, FinalBtCtrl.Pair_Btn_Del, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set};
        this.nightView = new int[]{FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.TZY_View_Change_3, FinalBtCtrl.MenuView_bk};
        this.nightText = new int[]{FinalBtCtrl.Contact_Txt0, FinalBtCtrl.Contact_Txt1, FinalBtCtrl.Contact_Txt2, FinalBtCtrl.Contact_Txt3, FinalBtCtrl.Pair_Txt0, FinalBtCtrl.Pair_Txt1, FinalBtCtrl.Pair_Txt2, FinalBtCtrl.Pair_Txt_DevName, FinalBtCtrl.Pair_Txt_DevAddr};
        this.mRunnJumpTalking = new Runnable() { // from class: com.syu.bt.page.Page_Pair.1
            @Override // java.lang.Runnable
            public void run() {
                Log.d("gdy11", "Page_Pair mRunnJumpTalking isCalling = " + App_Bt.getInstance().mIpcObj.isCalling() + " Page_Id= " + Page_Pair.this.actBt.myActivity.mPageCurrent.getId());
                if (App_Bt.getInstance().mIpcObj.isCalling() && Page_Pair.this.actBt.myActivity.mPageCurrent.getId() != 10003) {
                    Page_Pair.this.actBt.myActivity.goPage(10003);
                }
            }
        };
        this.mRunnable_refreshPaired = new Runnable() { // from class: com.syu.bt.page.Page_Pair.2
            @Override // java.lang.Runnable
            public void run() {
                Log.d("hfp10", " 00 Page_Pair mRunnable_refreshPaired ");
                if (Page_Pair.this.mPairedView != null) {
                    if (App_Bt.mBtInfo.mListHasPaired.size() > 0) {
                        Log.d("hfp10", " 11 Page_Pair mRunnable_refreshPaired mListHasPaired.size = " + App_Bt.mBtInfo.mListHasPaired.size());
                        for (int i = 0; i < App_Bt.mBtInfo.mListHasPaired.size(); i++) {
                            SparseArray<String> ConnectDevice = App_Bt.mBtInfo.mListHasPaired.get(i);
                            if (ConnectDevice != null && !TextUtils.isEmpty(ConnectDevice.get(FinalBtCtrl.PairedItem_Txt_Addr)) && ConnectDevice.get(FinalBtCtrl.PairedItem_Txt_Addr).equalsIgnoreCase(Bt.sPhoneAddr)) {
                                App_Bt.mBtInfo.mListHasPaired.remove(i);
                                App_Bt.mBtInfo.mListHasPaired.add(0, ConnectDevice);
                                Log.d("hfp4", " 22 Page_Pair refreshPairedList ConnectDevice =" + ConnectDevice + " add mListHasPaired.size = " + App_Bt.mBtInfo.mListHasPaired.size());
                                if (Page_Pair.this.mPairedView == null) {
                                    break;
                                }
                                Page_Pair.this.mPairedView.scrollToPosition(0);
                                break;
                            }
                        }
                    }
                    Page_Pair.this.resetList(Page_Pair.this.mPairedView, App_Bt.mBtInfo.mListHasPaired);
                }
            }
        };
        this.mHideText = new HideText();
        this.mRunnableHideText = new RunnableHideText();
        this.mRunnableHideText2 = new RunnableHideText2();
        this.str_PairIcon = new String[]{"pair_icon1", "pair_icon2", "pair_icon3", "pair_icon4", "pair_icon5"};
        this.random = new Random();
        this.searchDevices = new BroadcastReceiver() { // from class: com.syu.bt.page.Page_Pair.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.bluetooth.device.action.FOUND".equals(action)) {
                } else if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(action)) {
                    BluetoothDevice device = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    switch (device.getBondState()) {
                        case 10:
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_unpaired_dev"));
                            break;
                        case 11:
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_paring"));
                            break;
                        case 12:
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_paired_dev"));
                            break;
                    }
                }
                JGridView gridView = (JGridView) Page_Pair.this.getPage().getChildViewByid(FinalBtCtrl.Pair_ListView);
                if (gridView != null) {
                    gridView.notifyDataSetChanged();
                }
            }
        };
        this.actBt = actBt;
    }

    public void popPwd() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopPwd, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }

    public SparseArray<String> getChoiceName(String mChoiceAddr) {
        if (TextUtils.isEmpty(mChoiceAddr)) {
            return null;
        }
        if (App_Bt.mBtInfo.mListPair != null) {
            for (SparseArray<String> entity : App_Bt.mBtInfo.mListPair) {
                String addr = entity.get(FinalBtCtrl.PairItem_Txt_Addr);
                if (!TextUtils.isEmpty(addr) && entity.get(FinalBtCtrl.PairItem_Txt_Addr).equals(mChoiceAddr)) {
                    return entity;
                }
            }
        }
        if (App_Bt.mBtInfo.mListHasPaired != null) {
            for (SparseArray<String> entity2 : App_Bt.mBtInfo.mListHasPaired) {
                String addr2 = entity2.get(FinalBtCtrl.PairedItem_Txt_Addr);
                if (!TextUtils.isEmpty(addr2) && entity2.get(FinalBtCtrl.PairedItem_Txt_Addr).equals(mChoiceAddr)) {
                    return entity2;
                }
            }
        }
        return null;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            if (App_Bt.bNo_Pair) {
                this.actBt.myActivity.goPage(FinalBtCtrl.Page_Set);
                return;
            }
            Log.d("hfp4", " Page_Pair resume mListHasPaired = " + App_Bt.mBtInfo.mListHasPaired.toString());
            Log.d("gdy5", " 00 Page_Pair resume ");
            this.bTop = true;
            App_Bt.getInstance().mIpcObj.recoverAppId();
            if (this.mPairedView != null && App_Bt.bShowPairedBt) {
                App_Bt.mBtInfo.mListHasPaired.clear();
                resetList(this.mPairedView, App_Bt.mBtInfo.mListHasPaired);
                Log.d("hfp", " 11 Page_Pair resumequeryPairList ");
            }
            App_Bt.getInstance().mIpcObj.queryPairList();
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581")) {
                Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
            }
            JText text_Name = (JText) getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevName);
            if (text_Name != null) {
                text_Name.setText(Bt.sDevName);
            }
            JText text_Addr = (JText) getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevAddr);
            JText text_Err = (JText) getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevErr);
            if (text_Addr != null && !TextUtils.isEmpty(Bt.sDevAddr)) {
                String value = Bt.sDevAddr;
                Log.d("gdy3", " U_LOCAL_MAC_ADDR value = " + value + " length = " + Bt.sDevAddr.length());
                if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                    text_Addr.setText(String.valueOf(value.substring(0, 2)) + ":" + value.substring(2, 4) + ":" + value.substring(4, 6) + ":" + value.substring(6, 8) + ":" + value.substring(8, 10) + ":" + value.substring(10, 12));
                } else {
                    text_Addr.setText(value);
                }
                if (text_Err != null) {
                    if (Bt.sDevAddr.length() > 20) {
                        text_Err.setText(value);
                    } else {
                        text_Err.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
            }
            refreshList();
            refreshPairedList();
            registerSearchDevicesReceiver();
            resetBtnEnable();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
            }
            BTUtil.resumeTone();
            updateCarplayAuto(App_Bt.bCarLinkAutoConnect);
            if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                Main.removeRunnable_Ui(this.mRunnJumpTalking);
                Main.postRunnable_Ui(true, this.mRunnJumpTalking, 1000L);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        this.bTop = false;
        super.pause();
        unregisterSearchDevicesReceiver();
        BTUtil.pauseTone();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Pair_ListView);
        this.mPairedView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Paired_ListView);
        this.tipText = (JText) getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_State);
        this.btnPairSearch = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Search);
        this.btnPairLink = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Link);
        this.btnPairCut = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Cut);
        this.btnPairDel = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Del);
        this.vNoData = getPage().getChildViewByid(FinalBtCtrl.List_View_None);
        refreshList();
        refreshPairedList();
        setButtonColor(App_Bt.color);
        setDayOrNight(App_Bt.mColorType);
        this.auto = (JSwitchButton) getPage().findViewById(FinalBtCtrl.Set_Switch_CarplayAutoLink);
        if (CustomerUtil.isYFConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            if (this.mGridView != null) {
                try {
                    App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM");
                    Drawable drawableVerthumb = getPage().getDrawableFromPath("grid_verthumb", getPage().mDrawables, getPage().mDrawables);
                    if (drawableVerthumb != null) {
                        Field f = View.class.getDeclaredField("mScrollCache");
                        f.setAccessible(true);
                        Object scrollabilityCache = f.get(this.mGridView);
                        Field f2 = f.getType().getDeclaredField("scrollBar");
                        f2.setAccessible(true);
                        Object scrollBarDrawable = f2.get(scrollabilityCache);
                        Field f3 = f2.getType().getDeclaredField("mVerticalThumb");
                        f3.setAccessible(true);
                        f3.set(scrollBarDrawable, drawableVerthumb);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.mPairedView != null) {
                try {
                    Drawable drawableVerthumb2 = getPage().getDrawableFromPath("grid_verthumb", getPage().mDrawables, getPage().mDrawables);
                    if (drawableVerthumb2 != null) {
                        Field f4 = View.class.getDeclaredField("mScrollCache");
                        f4.setAccessible(true);
                        Object scrollabilityCache2 = f4.get(this.mPairedView);
                        Field f5 = f4.getType().getDeclaredField("scrollBar");
                        f5.setAccessible(true);
                        Object scrollBarDrawable2 = f5.get(scrollabilityCache2);
                        Field f6 = f5.getType().getDeclaredField("mVerticalThumb");
                        f6.setAccessible(true);
                        f6.set(scrollBarDrawable2, drawableVerthumb2);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (!App_Bt.bShowPairedBt2 && this.mGridView != null) {
            this.mGridView.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Pair.4
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                        case 2:
                            Page_Pair.this.mGridView.getParent().requestDisallowInterceptTouchEvent(true);
                            return false;
                        case 1:
                        case 3:
                            Page_Pair.this.mGridView.getParent().requestDisallowInterceptTouchEvent(false);
                            return false;
                        default:
                            return false;
                    }
                }
            });
        }
    }

    public void resetList(JGridView gridView, List<SparseArray<String>> list) {
        resetBtnEnable();
        if (gridView != null) {
            MyApplication.resetList(gridView, list);
        }
        if (this.vNoData != null) {
            this.vNoData.setVisibility(list.size() > 0 ? 8 : 0);
        }
    }

    public void refreshList() {
        if (this.mGridView != null) {
            resetList(this.mGridView, App_Bt.mBtInfo.mListPair);
        }
    }

    public void refreshPairedList() {
        Log.d("hfp11", " ** Page_Pair 22   refreshPairedList ");
        Main.removeRunnable_Ui(this.mRunnable_refreshPaired);
        Main.postRunnable_Ui(false, this.mRunnable_refreshPaired, 500L);
    }

    public class HideText implements Runnable {
        public HideText() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Page_Pair.this.tipText != null) {
                Page_Pair.this.tipText.setVisibility(8);
            }
        }
    }

    public class RunnableHideText implements Runnable {
        public RunnableHideText() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Page_Pair.this.tipText != null) {
                Page_Pair.this.tipText.setVisibility(8);
            }
            if (Page_Pair.this.isConnectBt) {
                Log.d("hfp3", " 11 bt_linking ");
                Page_Pair.this.showConnectTip(true, App_Bt.getInstance().uiApp.getString("bt_linking"));
            }
            if (Page_Pair.this.isStartDiscovey) {
                Page_Pair.this.showDiscover(true, App_Bt.getInstance().uiApp.getString("bt_discovering"));
            }
        }
    }

    public class RunnableHideText2 implements Runnable {
        public RunnableHideText2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Page_Pair.this.isConnectBt) {
                Page_Pair.this.isConnectBt = false;
                if (Page_Pair.this.tipText != null) {
                    Page_Pair.this.tipText.setText(App_Bt.getInstance().uiApp.getString("bt_obd_disconnected"));
                    Page_Pair.this.tipText.postDelayed(new Runnable() { // from class: com.syu.bt.page.Page_Pair.RunnableHideText2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Page_Pair.this.tipText.setVisibility(8);
                        }
                    }, 1000L);
                }
            }
        }
    }

    public void showDiscover() {
        if (this.isStartDiscovey) {
            showDiscover(true, App_Bt.getInstance().uiApp.getString("bt_discovering"));
        } else {
            showDiscover(false, App_Bt.getInstance().uiApp.getString("bt_discover_end"));
        }
    }

    public void showDiscover(boolean flag, String txt) {
        if (this.tipText != null) {
            this.isStartDiscovey = flag;
            if (this.isStartDiscovey && this.tipText.getVisibility() == 8) {
                this.tipText.setText(txt);
                this.tipText.removeCallbacks(this.mHideText);
                this.tipText.removeCallbacks(this.mRunnableHideText2);
                this.tipText.setVisibility(0);
            } else if (!this.isStartDiscovey && this.tipText.getVisibility() == 0) {
                this.tipText.setText(txt);
                this.tipText.removeCallbacks(this.mHideText);
                this.tipText.removeCallbacks(this.mRunnableHideText2);
                this.tipText.postDelayed(this.mRunnableHideText, 1000L);
            }
            if (!flag && txt.equals(App_Bt.getInstance().uiApp.getString("bt_discover_end"))) {
                BTUtil.releaseTone();
            } else if (flag && txt.equals(App_Bt.getInstance().uiApp.getString("bt_discovering"))) {
                BTUtil.getBtTone(App_Bt.getInstance().uiApp.mContext, 100, 0);
            }
            if (CustomerUtil.isYFConfig() && this.isStartDiscovey && this.tipText.getVisibility() == 0) {
                this.tipText.postDelayed(this.mHideText, 10000L);
            }
        }
    }

    public void showConnectTip() {
        if (this.isConnectBt) {
            Log.d("hfp3", " 22 bt_linking ");
            showConnectTip(true, App_Bt.getInstance().uiApp.getString("bt_linking"));
        } else {
            showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_connected"));
        }
    }

    public void showConnectTip(boolean flag, String txt) {
        if (this.tipText != null) {
            this.isConnectBt = flag;
            if (this.isConnectBt && this.tipText.getVisibility() == 8) {
                this.tipText.setText(txt);
                this.tipText.setVisibility(0);
                this.tipText.removeCallbacks(this.mHideText);
                this.tipText.removeCallbacks(this.mRunnableHideText2);
                this.tipText.postDelayed(this.mRunnableHideText2, 30000L);
                return;
            }
            if (!this.isConnectBt && !this.isStartDiscovey && this.tipText.getVisibility() == 0) {
                this.tipText.setText(txt);
                this.tipText.removeCallbacks(this.mHideText);
                this.tipText.removeCallbacks(this.mRunnableHideText2);
                this.tipText.postDelayed(this.mRunnableHideText, 1000L);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0124  */
    /* JADX WARN: Code duplicated, block: B:63:0x0156  */
    /* JADX WARN: Code duplicated, block: B:67:0x0163  */
    /* JADX WARN: Code duplicated, block: B:68:0x0171  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a2 A[LOOP:1: B:64:0x0157->B:71:0x01a2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x018d A[SYNTHETIC] */
    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int i;
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        App_Bt.getInstance().setFullScreenMode(0);
                    }
                    break;
                case FinalBtCtrl.Pair_Btn_Search /* 10445 */:
                    if (Main.mConf_PlatForm == 2) {
                        Bt_IpcObj.cut();
                    } else if (Main.mConf_PlatForm == 7) {
                        if (this.isStartDiscovey) {
                            Bt_IpcObj.stopDiscover();
                            showDiscover(false, App_Bt.getInstance().uiApp.getString("bt_discover_end"));
                        } else {
                            Bt_IpcObj.startDiscover();
                            showDiscover(true, App_Bt.getInstance().uiApp.getString("bt_discovering"));
                        }
                    } else {
                        boolean flag = !this.isStartDiscovey;
                        if (CustomerUtil.isYFConfig() && this.tipText != null && this.isStartDiscovey && this.tipText.getVisibility() == 8) {
                            Log.d("hfp3", " 33 bt_linking ");
                            showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_linking"));
                            showDiscover(true, App_Bt.getInstance().uiApp.getString("bt_discovering"));
                        }
                        if (flag) {
                            App_Bt.mBtInfo.mListPair.clear();
                            refreshList();
                            Bt_IpcObj.startDiscover();
                            Log.d("hfp3", " 44 bt_linking ");
                            showConnectTip(false, App_Bt.getInstance().uiApp.getString("bt_linking"));
                            showDiscover(true, App_Bt.getInstance().uiApp.getString("bt_discovering"));
                        } else if (this.isStartDiscovey && MyApplication.mIdCustomer == 43) {
                            Bt_IpcObj.stopDiscover();
                        }
                    }
                    break;
                case FinalBtCtrl.Pair_Btn_Link /* 10446 */:
                    App_Bt.getInstance().mIpcObj.FuncPairLink(this);
                    break;
                case FinalBtCtrl.Pair_Btn_Cut /* 10447 */:
                    if (Bt_IpcObj.isConnect()) {
                        Bt_IpcObj.cut();
                    } else {
                        removeBond();
                    }
                    break;
                case FinalBtCtrl.Pair_Btn_Del /* 10448 */:
                    if (CustomerUtil.isZhangConfig()) {
                        boolean delete = false;
                        if (App_Bt.mBtInfo.mListPair != null) {
                            for (int i2 = 0; i2 < App_Bt.mBtInfo.mListPair.size(); i2++) {
                                if (Bt_IpcObj.getChoiceAddr().equalsIgnoreCase(App_Bt.mBtInfo.mListPair.get(i2).get(FinalBtCtrl.PairItem_Txt_Addr))) {
                                    delete = true;
                                    App_Bt.mBtInfo.mListPair.remove(i2);
                                    Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
                                    if (delete) {
                                        refreshList();
                                    } else {
                                        for (i = 0; i < App_Bt.mBtInfo.mListHasPaired.size(); i++) {
                                            if (Bt_IpcObj.getChoiceAddr().equalsIgnoreCase(App_Bt.mBtInfo.mListHasPaired.get(i).get(FinalBtCtrl.PairedItem_Txt_Addr))) {
                                                delete = true;
                                                Bt_IpcObj.deleteConnectedDevice(Bt_IpcObj.getChoiceAddr());
                                                App_Bt.mBtInfo.mListHasPaired.remove(i);
                                                Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
                                                if (delete) {
                                                    App_Bt.getInstance().mIpcObj.queryPairList();
                                                    refreshPairedList();
                                                }
                                            }
                                            break;
                                        }
                                        if (delete) {
                                            App_Bt.getInstance().mIpcObj.queryPairList();
                                            refreshPairedList();
                                        }
                                    }
                                }
                                break;
                            }
                            if (delete) {
                                refreshList();
                            } else {
                                while (i < App_Bt.mBtInfo.mListHasPaired.size()) {
                                    if (Bt_IpcObj.getChoiceAddr().equalsIgnoreCase(App_Bt.mBtInfo.mListHasPaired.get(i).get(FinalBtCtrl.PairedItem_Txt_Addr))) {
                                        delete = true;
                                        Bt_IpcObj.deleteConnectedDevice(Bt_IpcObj.getChoiceAddr());
                                        App_Bt.mBtInfo.mListHasPaired.remove(i);
                                        Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
                                        if (delete) {
                                            App_Bt.getInstance().mIpcObj.queryPairList();
                                            refreshPairedList();
                                        }
                                    }
                                    break;
                                }
                                if (delete) {
                                    App_Bt.getInstance().mIpcObj.queryPairList();
                                    refreshPairedList();
                                }
                            }
                        } else {
                            App_Bt.mBtInfo.mListPair.clear();
                            refreshList();
                        }
                    } else {
                        App_Bt.mBtInfo.mListPair.clear();
                        refreshList();
                    }
                    break;
                case FinalBtCtrl.Set_Switch_CarplayAutoLink /* 10449 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.setCarLinkAutoConnect(App_Bt.bCarLinkAutoConnect ? false : true);
                    } else {
                        return;
                    }
                    break;
                case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                    this.actBt.Func_Back();
                    break;
            }
            if (this.actBt.MenuClick(v)) {
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        View btnBtav;
        Set<BluetoothDevice> bindObdDevice;
        int id = gridView.getId();
        Log.d("a2dp", " 01 InitGridItem position = " + position + " id = " + id);
        switch (id) {
            case FinalBtCtrl.Pair_ListView /* 10451 */:
                if (page != null && App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    Log.d("key", " 00 InitGridItem set App_Bt.color = " + App_Bt.color);
                    int[] colors = {App_Bt.color, App_Bt.color, App_Bt.color, App_Bt.color};
                    int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_selected}, new int[]{R.attr.state_hovered}, new int[]{R.attr.state_focused}};
                    page.setBackgroundTintList(new ColorStateList(states, colors));
                    page.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
                }
                if (App_Bt.bUI_NightColour) {
                    String str = page.getStrDrawable();
                    Log.d("gdy66", "222 Page_History InitGridItem mColorType = " + App_Bt.mColorType + " str = " + str);
                    if (App_Bt.mColorType > 0) {
                        if (!str.startsWith("night_")) {
                            page.setStrDrawable("night_" + str, true);
                        }
                    } else if (str.startsWith("night_")) {
                        page.setStrDrawable(str.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                    }
                }
                View viewContent = page.getChildViewByid(FinalBtCtrl.PairItem_Content);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        page.setFocus(false);
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                boolean flag = false;
                String strAddr = map.get(FinalBtCtrl.PairItem_Txt_Addr);
                JText textAddr = (JText) page.getChildViewByid(FinalBtCtrl.PairItem_Txt_Addr);
                JText textName = (JText) page.getChildViewByid(FinalBtCtrl.PairItem_Txt_Name);
                if (!TextUtils.isEmpty(strAddr)) {
                    if (this.mPosMoveTo >= 0 && this.mPosMoveTo == position) {
                        Bt_IpcObj.setChoiceAddr(strAddr);
                    }
                    if (!TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr())) {
                        if (Bt_IpcObj.getChoiceAddr().equalsIgnoreCase(strAddr)) {
                            flag = true;
                        }
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581") && Bt.sPhoneAddr.equalsIgnoreCase(strAddr)) {
                        flag = true;
                    }
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581")) {
                        if (Bt.sPhoneAddr.equalsIgnoreCase(strAddr)) {
                            textName.setTextColor(Color.rgb(0, 150, 255));
                            textAddr.setTextColor(Color.rgb(0, 150, 255));
                        } else {
                            textName.setTextColor(-1);
                            textAddr.setTextColor(-1);
                        }
                    }
                }
                page.setFocus(flag);
                if (textName != null) {
                    textName.setEllipsize(flag ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
                    textName.setFocus(flag);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                        textName.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
                        if (MyApplication.mStrFolderAsset.equals("UI7")) {
                            textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                    }
                    Log.d("gdy1", " 00 mColorType = " + App_Bt.mColorType);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        Log.d("gdy1", " 01 mColorType = " + App_Bt.mColorType);
                        textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        Log.d("gdy1", " 02 mColorType = " + App_Bt.mColorType);
                    }
                }
                if (textAddr != null) {
                    textAddr.setEllipsize(flag ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
                    textAddr.setFocus(flag);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                        textAddr.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
                        if (MyApplication.mStrFolderAsset.equals("UI7")) {
                            textAddr.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                    }
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        textAddr.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                View view = page.getChildViewByid(FinalBtCtrl.PairItem_Icon);
                if (view != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr) || Bt_IpcObj.isDisConnect()) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            view.setBackground(getPage().getDrawableFromPath("bt2000_icocut", getPage().mDrawables, getPage().mDrawables));
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            view.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_icocut" : "bt_icocut", getPage().mDrawables, getPage().mDrawables));
                        } else {
                            view.setBackground(getPage().getDrawableFromPath("bt_icocut", getPage().mDrawables, getPage().mDrawables));
                        }
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                        view.setBackground(getPage().getDrawableFromPath("bt2000_icolink", getPage().mDrawables, getPage().mDrawables));
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        view.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_icolink" : "bt_icolink", getPage().mDrawables, getPage().mDrawables));
                    } else {
                        view.setBackground(getPage().getDrawableFromPath("bt_icolink", getPage().mDrawables, getPage().mDrawables));
                    }
                    if (App_Bt.bPopObdFlag && (bindObdDevice = getBindObdDevice()) != null && bindObdDevice.size() != 0) {
                        for (BluetoothDevice bluetoothDevice : bindObdDevice) {
                            if (bluetoothDevice.getAddress().equalsIgnoreCase(strAddr) && !Bt_IpcObj.getPhoneAddr().equals(strAddr)) {
                                view.setBackground(getPage().getDrawableFromPath("bt_icolinkobd", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    }
                }
                View view2 = page.getChildViewByid(FinalBtCtrl.PairItem_Device_Icon);
                if (view2 != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr) || Bt_IpcObj.isDisConnect()) {
                        view2.setBackground(getPage().getDrawableFromPath("bt_device", getPage().mDrawables, getPage().mDrawables));
                    } else {
                        view2.setBackground(getPage().getDrawableFromPath("bt_device_p", getPage().mDrawables, getPage().mDrawables));
                    }
                }
                View view3 = page.getChildViewByid(FinalBtCtrl.PairItem_Phone);
                if (view3 != null) {
                    view3.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_pair_icon" : "pair_icon", getPage().mDrawables, getPage().mDrawables));
                }
                View view_head_Icon = page.getChildViewByid(FinalBtCtrl.PairItem_head_Icon);
                if (view_head_Icon != null) {
                    view_head_Icon.setBackground(getPage().getDrawableFromPath(this.str_PairIcon[this.random.nextInt(5)], getPage().mDrawables, getPage().mDrawables));
                }
                TextView txt = (TextView) page.getChildViewByid(FinalBtCtrl.PairItem_State);
                if (txt != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr) || Bt_IpcObj.isDisConnect()) {
                        txt.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    } else {
                        txt.setText(App_Bt.getInstance().uiApp.getString("bt_connected"));
                    }
                    if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                        txt.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                break;
            case FinalBtCtrl.Paired_ListView /* 10465 */:
                if (page != null && App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    Log.d("key", " 00 InitGridItem set App_Bt.color = " + App_Bt.color);
                    int[] colors2 = {App_Bt.color, App_Bt.color, App_Bt.color, App_Bt.color};
                    int[][] states2 = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_selected}, new int[]{R.attr.state_hovered}, new int[]{R.attr.state_focused}};
                    page.setBackgroundTintList(new ColorStateList(states2, colors2));
                    page.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
                }
                Log.d("a2dp", " 111 A2DP_STATUS Paired_ListView ");
                if (App_Bt.bUI_NightColour) {
                    String str2 = page.getStrDrawable();
                    Log.d("gdy66", "222 Page_History InitGridItem mColorType = " + App_Bt.mColorType + " str = " + str2);
                    if (App_Bt.mColorType > 0) {
                        if (!str2.startsWith("night_")) {
                            page.setStrDrawable("night_" + str2, true);
                        }
                    } else if (str2.startsWith("night_")) {
                        page.setStrDrawable(str2.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                    }
                }
                View viewContent2 = page.getChildViewByid(FinalBtCtrl.PairedItem_Content);
                if (viewContent2 != null) {
                    if (map.size() == 0) {
                        page.setFocus(false);
                        viewContent2.setVisibility(8);
                    } else {
                        viewContent2.setVisibility(0);
                    }
                }
                boolean flag2 = false;
                String strAddr2 = map.get(FinalBtCtrl.PairedItem_Txt_Addr);
                String strName = map.get(FinalBtCtrl.PairedItem_Txt_Name);
                JText textAddr2 = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_Addr);
                JText textName2 = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_Name);
                JText textState = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_State);
                if (!TextUtils.isEmpty(strAddr2)) {
                    if (this.mPosMoveTo >= 0 && this.mPosMoveTo == position) {
                        Bt_IpcObj.setChoiceAddr(strAddr2);
                    }
                    if (!TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr()) && Bt_IpcObj.getChoiceAddr().equalsIgnoreCase(strAddr2)) {
                        flag2 = true;
                    }
                }
                page.setFocus(flag2);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    if (Bt_IpcObj.getPhoneAddr().equals(strAddr2) && Bt_IpcObj.isConnect()) {
                        page.setFocus(true);
                    } else {
                        page.setFocus(false);
                    }
                }
                if (textName2 != null) {
                    textName2.setEllipsize(flag2 ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
                    textName2.setFocus(flag2);
                    if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        textName2.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                if (textState != null) {
                    textState.setEllipsize(flag2 ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
                    textState.setFocus(flag2);
                    if (App_Bt.bLinkTwoPhone) {
                        Log.d("hfp", " 111 Page_Pair PairedItem_State sPhone2_MAC = " + App_Bt.sPhone2_MAC[0] + "-" + App_Bt.sPhone2_MAC[1] + " strAddr = " + strAddr2);
                        if (App_Bt.sPhone2_MAC[0].equals(strAddr2) && App_Bt.bPhone2_HFP[0] >= 3) {
                            textState.setText("P1 " + App_Bt.getInstance().uiApp.getString("bt_connected"));
                            App_Bt.sPhone2_NAME[0] = strName;
                        } else if (App_Bt.sPhone2_MAC[1].equals(strAddr2) && App_Bt.bPhone2_HFP[1] >= 3) {
                            textState.setText("P2 " + App_Bt.getInstance().uiApp.getString("bt_connected"));
                            App_Bt.sPhone2_NAME[1] = strName;
                        } else {
                            textState.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                        }
                    } else if (!Bt_IpcObj.getPhoneAddr().equals(strAddr2) || Bt_IpcObj.isDisConnect()) {
                        textState.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    } else {
                        textState.setText(App_Bt.getInstance().uiApp.getString("bt_connected"));
                    }
                    if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        textState.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                if (textAddr2 != null) {
                    textAddr2.setEllipsize(flag2 ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
                    textAddr2.setFocus(flag2);
                    if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        textAddr2.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                if (App_Bt.bLinkTwoPhone && (btnBtav = page.getChildViewByid(FinalBtCtrl.PairedItem_Btav)) != null && App_Bt.bLinkTwoPhone) {
                    Log.d("a2dp", " 222 Page_Pair PairedItem_Btav App_Bt.bPhone2_A2DP_Mac = " + App_Bt.bPhone2_A2DP_Mac + " strAddr = " + strAddr2);
                    if ((App_Bt.sPhone2_MAC[0].equals(strAddr2) && App_Bt.bPhone2_HFP[0] >= 3) || (App_Bt.sPhone2_MAC[1].equals(strAddr2) && App_Bt.bPhone2_HFP[1] >= 3)) {
                        btnBtav.setVisibility(0);
                        if (App_Bt.bPhone2_A2DP_Mac.equals(strAddr2)) {
                            btnBtav.setBackground(getPage().getDrawableFromPath("item_btav_p", getPage().mDrawables, getPage().mDrawables));
                        } else {
                            btnBtav.setBackground(getPage().getDrawableFromPath("item_btav", getPage().mDrawables, getPage().mDrawables));
                        }
                    } else {
                        btnBtav.setVisibility(8);
                    }
                }
                View view4 = page.getChildViewByid(FinalBtCtrl.PairedItem_Icon);
                if (view4 != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr2) || Bt_IpcObj.isDisConnect()) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            view4.setBackground(getPage().getDrawableFromPath("bt2000_icocut", getPage().mDrawables, getPage().mDrawables));
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            view4.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_icocut" : "bt_icocut", getPage().mDrawables, getPage().mDrawables));
                        } else {
                            view4.setBackground(getPage().getDrawableFromPath("bt_icocut", getPage().mDrawables, getPage().mDrawables));
                        }
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                        view4.setBackground(getPage().getDrawableFromPath("bt2000_icolink", getPage().mDrawables, getPage().mDrawables));
                    } else if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        view4.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_icolink" : "bt_icolink", getPage().mDrawables, getPage().mDrawables));
                    } else {
                        view4.setBackground(getPage().getDrawableFromPath("bt_icolink", getPage().mDrawables, getPage().mDrawables));
                    }
                }
                Log.d("gdy1", " 00 PairedItem_Delete1 = " + App_Bt.mColorType);
                View view5 = page.getChildViewByid(FinalBtCtrl.PairedItem_Delete1);
                if (view5 != null) {
                    Log.d("gdy1", " 11 PairedItem_Delete1 = " + App_Bt.mColorType);
                    view5.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_pairclear_ico1" : "bt_pairclear_ico1", getPage().mDrawables, getPage().mDrawables));
                }
                JButton btn = (JButton) page.getChildViewByid(FinalBtCtrl.PairedItem_Delete);
                if (btn != null && App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                    btn.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_bt_pairclear_ico" : "bt_pairclear_ico", getPage().mDrawables, getPage().mDrawables));
                }
                TextView txt2 = (TextView) page.getChildViewByid(FinalBtCtrl.PairedItem_State);
                if (txt2 != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr2) || Bt_IpcObj.isDisConnect()) {
                        txt2.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    } else {
                        txt2.setText(App_Bt.getInstance().uiApp.getString("bt_connected"));
                    }
                    if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        txt2.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                }
                break;
        }
    }

    @SuppressLint({"NewApi"})
    private Set<BluetoothDevice> getBindObdDevice() {
        try {
            if (Main.mConf_PlatForm == 5) {
                BluetoothManager bluetoothManager = (BluetoothManager) App_Bt.getInstance().myApplication.getSystemService("bluetooth");
                return bluetoothManager.getAdapter().getBondedDevices();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        int position = gridView.getPosition();
        switch (id) {
            case FinalBtCtrl.Pair_ListView /* 10451 */:
                if (App_Bt.mBtInfo.mListPair.size() > position) {
                    String addr = App_Bt.mBtInfo.mListPair.get(position).get(FinalBtCtrl.PairItem_Txt_Addr);
                    if (!TextUtils.isEmpty(addr)) {
                        this.mPosMoveTo = -1;
                        if (CustomerUtil.isYFConfig() || MyApplication.mIdCustomer == 66) {
                            if (Bt.sPhoneAddr.equals(addr) && Bt_IpcObj.isConnect()) {
                                Bt_IpcObj.cut();
                            } else {
                                Bt_IpcObj.setChoiceAddr(addr);
                                App_Bt.getInstance().mIpcObj.FuncPairLink(this);
                                if (this.mGridView != null && this.mGridView.adapter != null) {
                                    this.mGridView.adapter.notifyDataSetChanged();
                                }
                                if (this.mPairedView != null && this.mPairedView.adapter != null) {
                                    this.mPairedView.adapter.notifyDataSetChanged();
                                }
                            }
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                            int time = 100;
                            if (App_Bt.bLinkTwoPhone) {
                                if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3) {
                                    Bt_IpcObj.cut(App_Bt.sPhone2_MAC[1]);
                                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_unpaired_dev"));
                                    time = 2000;
                                }
                            } else if (Bt_IpcObj.isConnect()) {
                                Bt_IpcObj.cut();
                                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_unpaired_dev"));
                                time = Bt.sPhoneAddr.equals(addr) ? 0 : 2000;
                            }
                            if (time != 0) {
                                Bt_IpcObj.setChoiceAddr(addr);
                                App_Bt.getInstance().mIpcObj.FuncPairLinkRun(this, time);
                            }
                        } else if (!Bt_IpcObj.getChoiceAddr().equals(addr)) {
                            Bt_IpcObj.setChoiceAddr(addr);
                            if (this.mGridView != null && this.mGridView.adapter != null) {
                                this.mGridView.adapter.notifyDataSetChanged();
                            }
                            if (this.mPairedView != null && this.mPairedView.adapter != null) {
                                this.mPairedView.adapter.notifyDataSetChanged();
                            }
                        }
                        resetBtnEnable();
                    }
                }
                break;
            case FinalBtCtrl.Paired_ListView /* 10465 */:
                Log.d("con3", " 00 Paired_ListView ");
                if (App_Bt.mBtInfo.mListHasPaired.size() > position) {
                    String addr2 = App_Bt.mBtInfo.mListHasPaired.get(position).get(FinalBtCtrl.PairedItem_Txt_Addr);
                    if (!TextUtils.isEmpty(addr2)) {
                        this.mPosMoveTo = -1;
                        if (CustomerUtil.isYFConfig()) {
                            if (Bt.sPhoneAddr.equals(addr2) && Bt_IpcObj.isConnect()) {
                                Bt_IpcObj.cut();
                            } else {
                                Bt_IpcObj.setChoiceAddr(addr2);
                                App_Bt.getInstance().mIpcObj.FuncPairLink(this);
                                if (this.mGridView != null && this.mGridView.adapter != null) {
                                    this.mGridView.adapter.notifyDataSetChanged();
                                }
                                if (this.mPairedView != null && this.mPairedView.adapter != null) {
                                    this.mPairedView.adapter.notifyDataSetChanged();
                                }
                            }
                        }
                        Log.d("con3", " 11 Paired_ListView addr = " + addr2);
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                            String strName = App_Bt.mBtInfo.mListHasPaired.get(position).get(FinalBtCtrl.PairedItem_Txt_Name);
                            if (!strName.contains("lsec_gps")) {
                                int time2 = 100;
                                if (App_Bt.bLinkTwoPhone) {
                                    if (App_Bt.bPhone2_HFP[0] >= 3 || App_Bt.bPhone2_HFP[1] >= 3) {
                                        if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.sPhone2_MAC[0].equals(addr2)) {
                                            Bt_IpcObj.cut(App_Bt.sPhone2_MAC[0]);
                                            time2 = 0;
                                        } else if (App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.sPhone2_MAC[1].equals(addr2)) {
                                            Bt_IpcObj.cut(App_Bt.sPhone2_MAC[1]);
                                            time2 = 0;
                                        } else if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3) {
                                            Bt_IpcObj.cut(App_Bt.sPhone2_MAC[1]);
                                            time2 = 2000;
                                        }
                                    }
                                    Log.d("con3", " 22 Paired_ListView time = " + time2 + " addr = " + addr2 + "  ");
                                } else if (Bt_IpcObj.isConnect()) {
                                    Bt_IpcObj.cut();
                                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_unpaired_dev"));
                                    if (Bt.sPhoneAddr.equals(addr2)) {
                                        time2 = 0;
                                    } else {
                                        time2 = 2000;
                                    }
                                }
                                if (time2 != 0) {
                                    Bt_IpcObj.setChoiceAddr(addr2);
                                    App_Bt.getInstance().mIpcObj.FuncPairLinkRun(this, time2);
                                }
                            }
                        } else if (!Bt_IpcObj.getChoiceAddr().equals(addr2)) {
                            Bt_IpcObj.setChoiceAddr(addr2);
                            if (this.mGridView != null && this.mGridView.adapter != null) {
                                this.mGridView.adapter.notifyDataSetChanged();
                            }
                            if (this.mPairedView != null && this.mPairedView.adapter != null) {
                                this.mPairedView.adapter.notifyDataSetChanged();
                            }
                        }
                        resetBtnEnable();
                    }
                }
                break;
        }
    }

    public void clickItem(JGridView gridView, int position) {
        if (position >= 0 && App_Bt.mBtInfo.mListPair.size() > position) {
            String addr = App_Bt.mBtInfo.mListPair.get(position).get(FinalBtCtrl.PairItem_Txt_Addr);
            if (!TextUtils.isEmpty(addr)) {
                if (!Bt_IpcObj.getChoiceAddr().equals(addr)) {
                    Bt_IpcObj.setChoiceAddr(addr);
                    if (gridView.adapter != null) {
                        gridView.adapter.notifyDataSetChanged();
                    }
                }
                resetBtnEnable();
            }
        }
    }

    public void pressGridItem(JPage page, JPage pagePressed, boolean pressed) {
        boolean bFocus = pressed && page == pagePressed;
        JText txt = (JText) page.getChildViewByid(FinalBtCtrl.PairItem_Txt_Addr);
        if (txt != null) {
            txt.setFocus(bFocus);
        }
        JText txt2 = (JText) page.getChildViewByid(FinalBtCtrl.PairItem_Txt_Name);
        if (txt2 != null) {
            txt2.setFocus(bFocus);
        }
        JText txt3 = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_Addr);
        if (txt3 != null) {
            txt3.setFocus(bFocus);
        }
        JText txt4 = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_Name);
        if (txt4 != null) {
            txt4.setFocus(bFocus);
        }
        JText txt5 = (JText) page.getChildViewByid(FinalBtCtrl.PairedItem_Txt_State);
        if (txt5 != null) {
            txt5.setFocus(bFocus);
        }
    }

    public void resetBtnEnable() {
        if (App_Bt.hideBtnWhenDisconnect) {
            if (this.btnPairSearch != null) {
                this.btnPairSearch.setEnabled(true);
            }
            if (this.btnPairLink != null) {
                this.btnPairLink.setEnabled(true);
            }
            if (this.btnPairCut != null) {
                this.btnPairCut.setEnabled(true);
            }
            if (this.btnPairDel != null) {
                this.btnPairDel.setEnabled(true);
            }
            if (!TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr())) {
                if (Bt.sPhoneAddr.equals(Bt_IpcObj.getChoiceAddr())) {
                    if (!Bt_IpcObj.isDisConnect()) {
                        if (this.btnPairSearch != null) {
                            this.btnPairSearch.setEnabled(false);
                        }
                        if (this.btnPairLink != null) {
                            this.btnPairLink.setEnabled(false);
                            return;
                        }
                        return;
                    }
                    if (this.btnPairCut != null) {
                        this.btnPairCut.setEnabled(false);
                        return;
                    }
                    return;
                }
                if (Bt_IpcObj.isDisConnect()) {
                    if (this.btnPairCut != null) {
                        this.btnPairCut.setEnabled(false);
                        return;
                    }
                    return;
                } else {
                    if (this.btnPairSearch != null) {
                        this.btnPairSearch.setEnabled(false);
                    }
                    if (this.btnPairCut != null) {
                        this.btnPairCut.setEnabled(false);
                        return;
                    }
                    return;
                }
            }
            if (TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr())) {
                if (!Bt_IpcObj.isDisConnect() && ((App_Bt.mBtInfo.mListPair.size() > 0 || App_Bt.mBtInfo.mListHasPaired.size() > 0) && this.btnPairSearch != null)) {
                    this.btnPairSearch.setEnabled(false);
                }
                if (this.btnPairLink != null) {
                    this.btnPairLink.setEnabled(false);
                }
                if (this.btnPairCut != null) {
                    this.btnPairCut.setEnabled(false);
                }
                if (this.btnPairDel != null) {
                    this.btnPairDel.setEnabled(false);
                }
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridLongClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Paired_ListView /* 10465 */:
                int position = gridView.getPosition();
                SparseArray<String> map = gridView.getList().get(position);
                if (map != null && map.size() > 0) {
                    this.actBt.popDeleteContacts(9, App_Bt.getInstance().uiApp.getString("bt_is_delete_onepaired"));
                    break;
                }
                break;
        }
    }

    private void registerSearchDevicesReceiver() {
        if (Main.mConf_PlatForm != 8) {
            IntentFilter intent = new IntentFilter();
            intent.addAction("android.bluetooth.device.action.FOUND");
            intent.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            intent.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
            intent.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            this.actBt.myActivity.registerReceiver(this.searchDevices, intent);
            this.bRegisterReceiver = true;
        }
    }

    private void unregisterSearchDevicesReceiver() {
        if (this.bRegisterReceiver) {
            this.actBt.myActivity.unregisterReceiver(this.searchDevices);
        }
        this.bRegisterReceiver = false;
    }

    @SuppressLint({"NewApi"})
    public void removeBond() {
        if (Main.mConf_PlatForm == 5) {
            try {
                BluetoothManager bluetoothManager = (BluetoothManager) MyApplication.myApp.getSystemService("bluetooth");
                BluetoothAdapter adapter = bluetoothManager.getAdapter();
                BluetoothDevice bluetoothDevice = adapter.getRemoteDevice(Bt_IpcObj.getChoiceAddr());
                if (!TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr())) {
                    removeBond(bluetoothDevice);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean isPhoneType(BluetoothDevice bluetoothDevice) {
        int majorDeviceClass = bluetoothDevice.getBluetoothClass().getMajorDeviceClass();
        if (majorDeviceClass != 512) {
            return false;
        }
        return true;
    }

    public static boolean isAudioVideoType(BluetoothDevice bluetoothDevice) {
        int majorDeviceClass = bluetoothDevice.getBluetoothClass().getMajorDeviceClass();
        if (majorDeviceClass != 512) {
            return false;
        }
        return true;
    }

    public static boolean removeBond(BluetoothDevice device) {
        try {
            Method createBondMethod = device.getClass().getMethod("removeBond", new Class[0]);
            Boolean returnValue = (Boolean) createBondMethod.invoke(device, new Object[0]);
            return returnValue.booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean scrollToPrev() {
        if (!this.bTop || !this.actBt.isFocus(this.mGridView)) {
            return false;
        }
        if (this.mPosFocusCpy != this.mGridView.mIndexFocus) {
            this.mPosFocusCpy = this.mGridView.mIndexFocus;
            this.mPosMoveTo = this.mPosFocusCpy;
        }
        if (this.mPosMoveTo < 0) {
            this.mPosMoveTo = 0;
        } else {
            if (this.mPosMoveTo <= 0) {
                return false;
            }
            this.mPosMoveTo--;
        }
        this.mGridView.scrollToPosition(this.mPosMoveTo);
        return true;
    }

    public boolean scrollToNext() {
        if (!this.bTop || !this.actBt.isFocus(this.mGridView)) {
            return false;
        }
        if (this.mPosFocusCpy != this.mGridView.mIndexFocus) {
            this.mPosFocusCpy = this.mGridView.mIndexFocus;
            this.mPosMoveTo = this.mPosFocusCpy;
        }
        if (this.mPosMoveTo < 0) {
            this.mPosMoveTo = 0;
        } else {
            if (this.mPosMoveTo + 1 >= this.mGridView.getList().size()) {
                return false;
            }
            this.mPosMoveTo++;
        }
        this.mGridView.scrollToPosition(this.mPosMoveTo);
        return true;
    }

    public boolean scrollOk() {
        if (!this.bTop || !this.actBt.isFocus(this.mGridView)) {
            return false;
        }
        clickItem(this.mGridView, this.mPosMoveTo);
        return true;
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            JButton search = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Search);
            if (search != null) {
                search.setBackgroundTintList(new ColorStateList(states, colors));
                search.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton link = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Link);
            if (link != null) {
                link.setBackgroundTintList(new ColorStateList(states, colors));
                link.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton cut = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Cut);
            if (cut != null) {
                cut.setBackgroundTintList(new ColorStateList(states, colors));
                cut.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton del = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Del);
            if (del != null) {
                del.setBackgroundTintList(new ColorStateList(states, colors));
                del.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    public void setDayOrNight(int value) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW")) {
            if (value > 0) {
                getPage().setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bt_night", getPage().mDrawables, getPage().mDrawables));
                return;
            } else {
                getPage().setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bk_day", getPage().mDrawables, getPage().mDrawables));
                return;
            }
        }
        if (App_Bt.bUI_NightColour) {
            String str = value > 0 ? "night_" : FinalChip.BSP_PLATFORM_Null;
            for (int i = 0; i < this.nightBtn.length; i++) {
                JButton button = (JButton) getPage().getChildViewByid(this.nightBtn[i]);
                if (button != null) {
                    String drawableName = button.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName.startsWith("night_")) {
                            button.setStrDrawable(drawableName.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName.startsWith("night_")) {
                        button.setStrDrawable("night_" + drawableName, true);
                    }
                    if (this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061) {
                        button.setTextColor(value > 0 ? -1 : -16777216);
                    }
                }
            }
            for (int j = 0; j < this.nightView.length; j++) {
                JView view = (JView) getPage().getChildViewByid(this.nightView[j]);
                if (view != null) {
                    String drawableName2 = view.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName2.startsWith("night_")) {
                            view.setStrDrawable(drawableName2.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName2.startsWith("night_")) {
                        view.setStrDrawable("night_" + drawableName2, true);
                    }
                }
            }
            for (int k = 0; k < this.nightText.length; k++) {
                JText text = (JText) getPage().getChildViewByid(this.nightText[k]);
                if (text != null) {
                    text.setTextColor(value > 0 ? -1 : -16777216);
                }
            }
            JText text2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Text_ListView);
            if (text2 != null) {
                text2.setTextColor(value <= 0 ? -16777216 : -1);
            }
            if (this.mGridView != null) {
                this.mGridView.notifyDataSetChanged();
            }
            if (this.mPairedView != null) {
                this.mPairedView.notifyDataSetChanged();
            }
            if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                refreshList();
                refreshPairedList();
            }
        }
    }

    public void updateCarplayAuto(boolean bAuto) {
        if (this.auto != null) {
            this.auto.setChecked(bAuto);
        }
    }
}
