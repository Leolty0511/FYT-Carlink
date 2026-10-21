package com.syu.bt.act;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.TranslateAnimation;
import com.lsec.core.frame.app.MyAct;
import com.lsec.core.frame.app.MyActivity;
import com.lsec.core.frame.app.MyApp;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.AppBluetooth;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ActBt extends MyActivity {
    int idPageTo_p;
    private MediaPlayer mediaPlayer;
    JPage pageFrom_p;
    JPage pageMenu;
    JPage pageTo_p;
    ArrayList<MyAct> mListMyActs = new ArrayList<>();
    Act_Bt mActBt = new Act_Bt();
    JView ivMenuSel = null;
    int menu_step = 154;
    public int iSelStep = 0;
    public Runnable mRunnableGoPage = new Runnable() { // from class: com.syu.bt.act.ActBt.1
        @Override // java.lang.Runnable
        public void run() {
            if (ActBt.this.pageTo_p != null) {
                float from_x = 0.7f;
                if (ActBt.this.ivMenuSel != null) {
                    Log.d("sel", " 00 ActBt mRunnableGoPage  showMenuSel  sPage_WillBe = " + MyApplication.sPage_WillBe);
                    if (ActBt.this.getShowId(ActBt.this.idPageTo_p) > ActBt.this.getShowId(MyApplication.sPage_Current)) {
                        from_x = -0.7f;
                    }
                    ActBt.this.showMenuSel(ActBt.this.idPageTo_p);
                }
                Log.d("gdy19", " 00 ActBt mRunnableGoPage idPageTo:" + ActBt.this.idPageTo_p + " sPage_Current = " + MyApplication.sPage_Current + " from_x = " + from_x);
                MyApplication.sPage_Current = ActBt.this.idPageTo_p;
                MyApplication.sPage_WillBe = ActBt.this.idPageTo_p;
                App_Bt.sPage = ActBt.this.idPageTo_p;
                MyApp myApp = ActBt.this.getFixApp(ActBt.this.idPageTo_p);
                if (myApp != null) {
                    myApp.sPage = ActBt.this.idPageTo_p;
                }
                if (ActBt.this.mPageMain.indexOfChild(ActBt.this.pageTo_p) < 0) {
                    ActBt.this.mPageMain.addView(ActBt.this.pageTo_p);
                }
                ActBt.this.mPageCurrent = ActBt.this.pageTo_p;
                TranslateAnimation mShowAction = new TranslateAnimation(1, from_x, 1, 0.0f, 1, 0.0f, 1, 0.0f);
                mShowAction.setDuration(300L);
                ActBt.this.pageTo_p.startAnimation(mShowAction);
                if (ActBt.this.pageFrom_p != null) {
                    ActBt.this.pageFrom_p.pause();
                    ViewParent viewParent = ActBt.this.pageFrom_p.getParent();
                    if (viewParent instanceof ViewGroup) {
                        ((ViewGroup) viewParent).removeView(ActBt.this.pageFrom_p);
                    }
                }
                ActBt.this.pageTo_p.resume();
                for (MyAct myActTmp : ActBt.this.mListMyActs) {
                    myActTmp.doActionWhenGoPage(ActBt.this.idPageTo_p);
                    if (!myActTmp.includePage(ActBt.this.idPageTo_p)) {
                        myActTmp.removeChildFromParent(ActBt.this.mPageMain);
                    }
                }
            }
        }
    };

    @Override // com.lsec.core.frame.app.MyActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.mListMyActs.add(this.mActBt);
        initSystemUI();
        this.menu_step = (BTUtil.getInstance().getWindowManeger()[0] * 154) / 768;
        super.onCreate(savedInstanceState);
    }

    @SuppressLint({"NewApi"})
    public void initSystemUI() {
        Log.d("gdy", " 00 initSystemUI mStrCustomer = " + AppBluetooth.mStrCustomer);
        if (!AppBluetooth.mStrCustomer.equals("YF_BT") && !AppBluetooth.mStrCustomer.equals("zhtd_benz") && !AppBluetooth.mStrCustomer.equals("lexus") && !AppBluetooth.mStrCustomer.equals("CASKA_7731_5") && !AppBluetooth.mStrCustomer.equals("BT_OLD_9853") && !AppBluetooth.mStrCustomer.equals("BT_NEW_YX") && !AppBluetooth.mStrCustomer.equals("BT_VWColor") && !AppBluetooth.mStrCustomer.equals("NEW_BT_1920_2")) {
            if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset)) {
                Log.d("gdy", " 11 initSystemUI mStrCustomer = " + AppBluetooth.mStrCustomer + " mStrFolderAsset =  " + MyApplication.mStrFolderAsset);
                if (AppBluetooth.mStrCustomer.equals("bba")) {
                    return;
                }
            }
            Log.d("gdy", " 11 initSystemUI mStrCustomer = " + AppBluetooth.mStrCustomer + " mIsTranslucent = " + AppBluetooth.mIsTranslucent);
            if (AppBluetooth.mIsTranslucent == 1) {
                getWindow().setFlags(1024, 1024);
                return;
            }
            if (AppBluetooth.mIsTranslucent != 4 && Build.VERSION.SDK_INT >= 21) {
                Window window = getWindow();
                window.clearFlags(201326592);
                window.getDecorView().setSystemUiVisibility(1280);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
            }
        }
    }

    @Override // com.lsec.core.frame.app.MyActivity, android.app.Activity
    protected void onDestroy() {
        Log.d("gdyy", " 00 ActBt onDestroy ");
        for (MyAct myAct : this.mListMyActs) {
            myAct.onDestroy();
        }
        super.onDestroy();
    }

    @Override // com.lsec.core.frame.app.MyActivity
    public void handleIntent(Intent intent) {
        for (MyAct myAct : this.mListMyActs) {
            myAct.onNewIntent(intent, this);
        }
    }

    @Override // com.lsec.core.frame.app.MyActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.d("gdy", "  22 ActBt onResume    sPage_WillBe = " + MyApplication.sPage_WillBe);
        if (!App_Bt.includePage(MyApplication.sPage_WillBe)) {
            MyApplication.sPage_WillBe = 10003;
        }
        Log.d("sel", " 00 ActBt onResume    sPage_WillBe = " + MyApplication.sPage_WillBe + " App_Bt.mStrCustomer = " + App_Bt.mStrCustomer);
        if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
            if (Bt.DATA[9] == 0 && MyApplication.sPage_WillBe != 10011) {
                MyApplication.sPage_WillBe = FinalBtCtrl.Page_Pair;
            }
            Log.d("sel", " 11 ActBt onResume  showMenuSel  sPage_WillBe = " + MyApplication.sPage_WillBe);
            Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.act.ActBt.2
                @Override // java.lang.Runnable
                public void run() {
                    if (ActBt.this.ivMenuSel == null) {
                        Log.d("sel", " 33 ActBt onResume  postRunnable_Ui ivMenuSel==null ");
                        MyUi uiTo = ActBt.this.getFixUi(MyApplication.sPage_WillBe);
                        ActBt.this.pageMenu = uiTo.loadPage(true, 10002);
                        if (ActBt.this.pageMenu != null) {
                            ActBt.this.ivMenuSel = (JView) ActBt.this.pageMenu.getChildViewByid(FinalBtCtrl.View_Menu_Sel);
                        }
                    }
                    if (ActBt.this.ivMenuSel != null) {
                        Log.d("sel", " 22 ActBt onResume  showMenuSel ivMenuSel!=null ");
                        ActBt.this.showMenuSel(MyApplication.sPage_WillBe);
                    } else {
                        Log.d("sel", " 33 ActBt onResume  postRunnable_Ui this  ");
                        Main.postRunnable_Ui(true, this, 500L);
                    }
                }
            });
        }
        MyAct myAct = getFixAct(MyApplication.sPage_WillBe);
        if (myAct != null && myAct.myActivity == null) {
            myAct.onCreate(this);
        }
        Log.d("gdy", " ** 00 goPage    sPage_WillBe = " + MyApplication.sPage_WillBe);
        goPage(MyApplication.sPage_WillBe);
        if (myAct != null) {
            myAct.onResume();
        }
        Log.d("gdyy", " 00 ActBt onResume mediaPlayer ");
        if (App_Bt.mStrCustomer.equals("BT_LXZ")) {
            Log.d("gdyy", " 11 ActBt onResume mediaPlayer ");
            if (this.mediaPlayer != null) {
                this.mediaPlayer.release();
            }
            Uri uri = Uri.parse("android.resource://com.syu.bt/raw/mute");
            Log.d("gdyy", " 22 ActBt onResume mediaPlayer uri = " + uri);
            this.mediaPlayer = MediaPlayer.create(this, uri);
            this.mediaPlayer.start();
        }
    }

    @Override // com.lsec.core.frame.app.MyActivity, android.app.Activity
    protected void onPause() throws Throwable {
        super.onPause();
        Log.d("gdyy", " 00 ActBt onPause ");
        Log.d("gdy6", "11 ActBt onPause: sPage_WillBe = " + MyApplication.sPage_WillBe);
        App_Bt.getInstance().mySharePreference2.saveIntValue("page_id", MyApplication.sPage_WillBe);
        MyAct myAct = getFixAct(MyApplication.sPage_Current);
        if (myAct != null) {
            myAct.onPause();
        }
        if (this.mPageCurrent != null) {
            this.mPageCurrent.pause();
        }
    }

    @Override // com.lsec.core.frame.app.MyActivity
    public void handleSizeChanged() {
        super.handleSizeChanged();
        Log.d("half1", " 00 *** ActBt handleSizeChanged  ***   bHV_Kill = " + App_Bt.bHV_Kill + " bHV_Kill_p = " + App_Bt.bHV_Kill_p);
        if (App_Bt.bHV_Kill && App_Bt.bHV_Kill_p) {
            App_Bt.bHV_Kill_p = false;
            Intent intent = getIntent();
            finish();
            startActivity(intent);
        }
        if ((AppBluetooth.mStrCustomer.equals("BT_NEW") || AppBluetooth.mStrCustomer.equals("BT_NEW_YX")) && MyApplication.sPage_Current != 10003 && MyApplication.sPage_Current != 10010 && MyApplication.sPage_Current != 10011) {
            goPage(10003);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        MyAct myAct = getFixAct(MyApplication.sPage_Current);
        if (myAct == null || !myAct.onKeyDown(keyCode, event)) {
            return super.onKeyDown(keyCode, event);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        MyAct myAct = getFixAct(MyApplication.sPage_Current);
        if (myAct == null || !myAct.onKeyUp(keyCode, event)) {
            return super.onKeyUp(keyCode, event);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        MyAct myAct = getFixAct(MyApplication.sPage_Current);
        if (myAct != null) {
            myAct.onTouchEvent(event);
        }
        return super.onTouchEvent(event);
    }

    @Override // com.lsec.core.frame.app.MyActivity
    public void requestAppIdRight() {
        MyApp myApp = getFixApp(MyApplication.sPage_Current);
        if (myApp != null) {
            myApp.requestAppIdRight();
        }
    }

    public MyAct getFixAct(int idPage) {
        for (MyAct myAct : this.mListMyActs) {
            if (myAct.includePage(idPage)) {
                return myAct;
            }
        }
        return null;
    }

    public MyApp getFixApp(int idPage) {
        for (MyAct myAct : this.mListMyActs) {
            if (myAct.includePage(idPage)) {
                return myAct.getMyApp();
            }
        }
        return null;
    }

    public MyUi getFixUi(int idPage) {
        MyAct myAct = getFixAct(idPage);
        if (myAct != null) {
            return myAct.ui;
        }
        return null;
    }

    @Override // com.lsec.core.frame.app.MyActivity
    @SuppressLint({"NewApi"})
    public void goPage(int idPageTo) {
        Log.d("gdy", " ** 00 ActBt goPage    idPageTo = " + idPageTo);
        MyAct myAct = getFixAct(idPageTo);
        if (myAct != null) {
            if (myAct.myActivity == null) {
                myAct.onCreate(this);
            }
            this.mPageMain.setBackground(myAct.getBackground());
            myAct.addChild2Parent(this.mPageMain);
            idPageTo = myAct.getRightPage(idPageTo);
        }
        Log.d("gdy", " ** 11 ActBt goPage    idPageTo = " + idPageTo);
        MyUi uiTo = getFixUi(idPageTo);
        if (uiTo != null) {
            JPage pageFrom = this.mPageCurrent;
            if (pageFrom != null) {
                int idPageFrom = pageFrom.getId();
                if (idPageFrom == idPageTo && !pageFrom.isNeedReload()) {
                    pageFrom.resume();
                    return;
                }
            }
            JPage pageTo = uiTo.loadPage(true, idPageTo);
            Log.d("gdyy", " ** 22 ActBt pageTo idPageTo =" + idPageTo + " getWindowManeger = " + BTUtil.getInstance().getWindowManeger()[0] + "," + BTUtil.getInstance().getWindowManeger()[1] + " menu_step = " + this.menu_step);
            if (pageTo != null) {
                Log.d("gdy", " ** 33 ActBt pageTo.getId = " + pageTo.getId() + " isAppTop = " + App_Bt.getInstance().isAppTop());
                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && App_Bt.getInstance().isAppTop()) {
                    if (this.ivMenuSel == null) {
                        this.pageMenu = uiTo.loadPage(true, 10002);
                        if (this.pageMenu != null) {
                            this.ivMenuSel = (JView) this.pageMenu.getChildViewByid(FinalBtCtrl.View_Menu_Sel);
                        }
                    }
                    this.pageTo_p = pageTo;
                    this.pageFrom_p = pageFrom;
                    this.idPageTo_p = idPageTo;
                    Main.postRunnable_Ui(true, this.mRunnableGoPage, 200L);
                    return;
                }
                MyApplication.sPage_Current = idPageTo;
                MyApplication.sPage_WillBe = idPageTo;
                App_Bt.sPage = idPageTo;
                MyApp myApp = getFixApp(idPageTo);
                if (myApp != null) {
                    myApp.sPage = idPageTo;
                }
                if (this.mPageMain.indexOfChild(pageTo) < 0) {
                    this.mPageMain.addView(pageTo);
                }
                this.mPageCurrent = pageTo;
                if (pageFrom != null) {
                    pageFrom.pause();
                    ViewParent viewParent = pageFrom.getParent();
                    if (viewParent instanceof ViewGroup) {
                        ((ViewGroup) viewParent).removeView(pageFrom);
                    }
                }
                Log.d("gdy", " ** 44 ActBt goPage    mPageCurrent = " + this.mPageCurrent);
                pageTo.resume();
                for (MyAct myActTmp : this.mListMyActs) {
                    myActTmp.doActionWhenGoPage(idPageTo);
                    if (!myActTmp.includePage(idPageTo)) {
                        myActTmp.removeChildFromParent(this.mPageMain);
                    }
                }
                Log.d("gdy", " ** 55 ActBt goPage    mPageCurrent = " + this.mPageCurrent);
            }
        }
    }

    public int getShowId(int id) {
        switch (id) {
            case 10003:
            case FinalBtCtrl.Page_DialItem /* 10004 */:
            case FinalBtCtrl.Page_ContactItem /* 10006 */:
            case FinalBtCtrl.Page_LetterItem /* 10007 */:
            case FinalBtCtrl.Page_HistoryItem /* 10009 */:
            case FinalBtCtrl.Page_Av /* 10010 */:
            default:
                return 0;
            case FinalBtCtrl.Page_Contact /* 10005 */:
                return 2;
            case FinalBtCtrl.Page_History /* 10008 */:
                return 1;
            case FinalBtCtrl.Page_Set /* 10011 */:
                return 4;
            case FinalBtCtrl.Page_Pair /* 10012 */:
                return 3;
        }
    }

    public void showMenuSel(int page_id) {
        Log.d("sel", " 00 ActBt showMenuSel  page_id = " + page_id);
        if (this.ivMenuSel != null) {
            Log.d("sel", " 11 ActBt showMenuSel  page_id = " + page_id + " ivMenuSel!=null ");
            ObjectAnimator animator = ObjectAnimator.ofFloat(this.ivMenuSel, "translationX", getShowId(page_id) * this.menu_step);
            animator.setDuration(300L);
            animator.start();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (this.mActBt != null) {
            this.mActBt.dispatchKeyEvent(event);
        }
        return super.dispatchKeyEvent(event);
    }
}
