package com.syu.bt;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemProperties;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.lsec.core.frame.app.InterfaceUi;
import com.lsec.core.frame.app.MyAct;
import com.lsec.core.frame.app.MyActivity;
import com.lsec.core.frame.app.MyApp;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSwitchButton;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.IPageNotify;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.Markup;
import com.lsec.core.util.data.FinalChip;
import com.myspec.MyClass;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.ctrl.BorderTextView;
import com.syu.bt.ctrl.CircleMenuLayout;
import com.syu.bt.ctrl.JPinBar;
import com.syu.bt.ctrl.JRotView;
import com.syu.bt.ctrl.JSpecView;
import com.syu.bt.ctrl.JSwitchButon2;
import com.syu.bt.ctrl.SlideBarView;
import com.syu.bt.ctrl.SwipeCallingView;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.data.FinalBtType;
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
import com.syu.bt.page.Page_ContactItem;
import com.syu.bt.page.Page_Dial;
import com.syu.bt.page.Page_DialItem;
import com.syu.bt.page.Page_Dial_HalfScreen;
import com.syu.bt.page.Page_Favorite;
import com.syu.bt.page.Page_FavoriteItem;
import com.syu.bt.page.Page_History;
import com.syu.bt.page.Page_HistoryItem;
import com.syu.bt.page.Page_Main;
import com.syu.bt.page.Page_Menu;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.page.Page_PairItem;
import com.syu.bt.page.Page_PairedItem;
import com.syu.bt.page.Page_Set;
import com.syu.bt.page.Page_SetPairItem;
import com.syu.bt.page.pop.Page_PopAIQR;
import com.syu.bt.page.pop.Page_PopAIQR2;
import com.syu.bt.page.pop.Page_PopBt;
import com.syu.bt.page.pop.Page_PopBtHead;
import com.syu.bt.page.pop.Page_PopBtRing;
import com.syu.bt.page.pop.Page_PopBtRingItem;
import com.syu.bt.page.pop.Page_PopCODEC;
import com.syu.bt.page.pop.Page_PopDel;
import com.syu.bt.page.pop.Page_PopDel2;
import com.syu.bt.page.pop.Page_PopHySet;
import com.syu.bt.page.pop.Page_PopHySetAI;
import com.syu.bt.page.pop.Page_PopMSBC;
import com.syu.bt.page.pop.Page_PopPinPwd;
import com.syu.bt.page.pop.Page_PopPwd;
import com.syu.bt.page.pop.Page_PopRecSound;
import com.syu.bt.recsound.RecSound;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.SpeechUtil;
import com.syu.bt.util.ToastUtil;
import com.syu.bt.util.UIUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Act_Bt extends MyAct implements InterfaceBt, InterfaceUi {
    public static final int BACK_FLAG_ACTIVITY_BIT = 2;
    public static final int BACK_FLAG_FULL_APP_BIT = 16;
    public static final int BACK_FLAG_FULL_NAVI2_BIT = 32;
    public static final int BACK_FLAG_FULL_NAVI_BIT = 4;
    public static final int BACK_FLAG_HALF_NAVI_BIT = 8;
    public static final int BACK_FLAG_PAGE_BIT = 1;
    public static final int FLAG_HOMEKEY_DISPATCHED = Integer.MIN_VALUE;
    public static final int FocusBtn_BtAv = 4;
    public static final int FocusBtn_Cnt = 8;
    public static final int FocusBtn_Contact = 6;
    public static final int FocusBtn_Dial = 2;
    public static final int FocusBtn_History = 5;
    public static final int FocusBtn_Main = 1;
    public static final int FocusBtn_Menu = 0;
    public static final int FocusBtn_Pair = 7;
    public static final int FocusBtn_Set = 3;
    public static boolean LauncherToobar = false;
    public static int Sel_Id;
    public ViewGroup mPageMain;
    public JPage mPageMenu;
    public UIUtil uiUtil;
    public JButton[] mBtnFocusLast = new JButton[8];
    public List<Integer> mScrollPageList = new ArrayList();
    public RecSound mRecSound = new RecSound();
    public ProgressDialog mProgressIpPhoneDlg = null;
    public HashMap<String, Drawable> mDrawables = new HashMap<>();
    public Runnable mRunnableDisLoading = new Runnable() { // from class: com.syu.bt.Act_Bt.1
        @Override // java.lang.Runnable
        public void run() {
            String msg = Act_Bt.this.uiUtil.getShowMsg();
            if (!TextUtils.isEmpty(msg)) {
                if (!App_Bt.bDownloading || !msg.equals(App_Bt.getInstance().uiApp.getString("bt_download"))) {
                    Log.d("pop", "mRunnableDisLoading");
                    Act_Bt.this.uiUtil.disLoading();
                    return;
                }
                return;
            }
            Act_Bt.this.uiUtil.disLoading();
        }
    };
    boolean isGrid = false;

    @Override // com.lsec.core.frame.app.MyAct
    public void onCreate(MyActivity act) {
        if (App_Bt.getInstance().myApplication == null) {
            App_Bt.getInstance().onCreate(MyApplication.myApp);
        }
        this.myActivity = act;
        this.uiUtil = new UIUtil(act);
        this.ui = new MyUi(act, this, FinalBtType.class, FinalBtCtrl.class);
        App_Bt.mInterfaceBt.add(this);
        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3")) {
            checkCustomerId();
        }
    }

    public static void checkCustomerId() {
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void onNewIntent(Intent intent, MyActivity act) {
        handleIntent(intent, act);
    }

    public void handleIntent(Intent intent, MyActivity act) {
        boolean bNeedHandle = false;
        if (intent != null) {
            String strAction = intent.getAction();
            if (!TextUtils.isEmpty(strAction)) {
                if (strAction.startsWith(Manifest.permission.bt)) {
                    if (App_Bt.bShowFloatBtn && strAction.equals(Manifest.permission.bt)) {
                        Log.d("gdy666", " 004 Act_bt handleIntent ");
                        App_Bt.getInstance().popBt(true, false);
                        BTUtil.writeLogToFile("handleIntent");
                        act.finish();
                    } else if (App_Bt.bShowFloatBtn && strAction.equals("com.syu.bt.showFloatBtn")) {
                        if (Bt_IpcObj.isDisConnect()) {
                            App_Bt.getInstance().sendCmd2AmapAssist("bt_disconnect");
                        } else {
                            App_Bt.getInstance().sendCmd2AmapAssist("bt_connect");
                        }
                        App_Bt.getInstance().sendCmd2AmapAssist("ShowFloatBt");
                        act.finish();
                    } else {
                        bNeedHandle = true;
                    }
                }
                if (bNeedHandle) {
                    if (this.myActivity == null) {
                        onCreate(act);
                    }
                    if ("btav".equals(intent.getStringExtra("launcher"))) {
                        MyApplication.myApp.startAct("com.syu.btav");
                        this.myActivity.finish();
                        return;
                    }
                    String strExtra = intent.getStringExtra(Manifest.permission.bt);
                    if (!TextUtils.isEmpty(strExtra)) {
                        if (strExtra.equals(SpeechUtil.KEY_CONTACT)) {
                            this.myActivity.goPage(FinalBtCtrl.Page_Contact);
                            return;
                        }
                        if (strExtra.equals("history")) {
                            this.myActivity.goPage(FinalBtCtrl.Page_History);
                        } else if (strExtra.equals("historyAccept")) {
                            this.myActivity.goPage(FinalBtCtrl.Page_History);
                        } else if (strExtra.equals("historyDismiss")) {
                            this.myActivity.goPage(FinalBtCtrl.Page_History);
                        }
                    }
                }
            }
        }
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void onDestroy() {
        BTUtil.releaseTone();
        App_Bt.mInterfaceBt.remove(this);
    }

    public void ReadScrollSet() throws Throwable {
        try {
            String strXml = this.ui.getRaw("bt_scroll");
            if (!TextUtils.isEmpty(strXml)) {
                Markup xml = new Markup();
                xml.ReadXML(strXml);
                if (xml.IntoItem()) {
                    do {
                        String str = xml.GetAttr("id");
                        if (str != null && this.ui.mCtrlId != null && this.ui.mCtrlId.containsKey(str)) {
                            this.mScrollPageList.add(Integer.valueOf(this.ui.mCtrlId.get(str).intValue()));
                        }
                    } while (xml.NextItem());
                    xml.ExitItem();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public class MyAnimatorListener implements Animator.AnimatorListener {
        private int left;
        private JPage page;

        public MyAnimatorListener(JPage page, int left) {
            this.page = page;
            this.left = left;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (this.page != null) {
                this.page.setX(this.left);
                this.page.setScaleX(1.0f);
                this.page.setScaleY(1.0f);
                this.page.setAlpha(1.0f);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            if (this.page != null) {
                this.page.setScaleX(1.0f);
                this.page.setScaleY(1.0f);
                this.page.setAlpha(1.0f);
            }
        }
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void onResume() {
        JPage page;
        Log.d("gdy", " ** 00 lib Act_Bt onResume     ");
        App_Bt.getInstance().popBt(false, false);
        App_Bt.getInstance().showFloatBtn(false);
        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") && (page = this.ui.getPage(10001)) != null) {
            page.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(App_Bt.mColorType > 0 ? "night_main_bk" : "main_bk", this.mDrawables, this.mDrawables));
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            LauncherToobar = SystemProperties.getInt("persist.launcher.toobar_height", 0) > 0;
            setBgColor();
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB")) {
            int theme_mode = SystemProperties.get("persist.syu.nightorlight").equals("night") ? 1 : 0;
            App_Bt.mColorType = theme_mode;
            App_Bt.getInstance().setDayOrNight(theme_mode);
        }
        if (CustomerUtil.isZhangConfig() && App_Bt.bPop3rdPhone_YF) {
            App_Bt.getInstance().pop3rdPhone(true);
        }
        showOrHideScreenButton("android.fyt.action.HIDE");
        if (!App_Bt.bResumeByDial) {
            App_Bt.getInstance().mIpcObj.requestAppIdRight(MyApplication.sPage_Current);
        }
        App_Bt.bResumeByDial = false;
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void onPause() {
        App_Bt.bResumeByDial = false;
        showOrHideScreenButton("android.fyt.action.SHOW");
        MyClass.getInstance().destCust();
        Log.d("gdy666", " 02 Act_bt onPause  showFloatBtn bShowFloatBtn = " + App_Bt.bShowFloatBtn + " App_Bt.bShowFloatBtn_p = " + App_Bt.bShowFloatBtn_p);
        if (App_Bt.bShowFloatBtn && App_Bt.bShowFloatBtn_p) {
            App_Bt.getInstance().showFloatBtn(true);
        } else {
            Main.postRunnable_Ui(true, App_Bt.getInstance().showPopBtWhen360Top, 1000L);
        }
    }

    private void showOrHideScreenButton(String action) {
        Intent i = new Intent(action);
        i.setPackage("com.fyt.screenbutton");
        MyApplication.myApp.startServiceSafely(i);
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void InitMapPage(MyUi ui) {
        if (!App_Bt.isAiuvoice && App_Bt.isAIType == 1) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai6"));
        }
        ui.mMapPage.put(10001, "bt_main");
        ui.mMapPage.put(10002, "bt_menu");
        ui.mMapPage.put(10003, "bt_dial");
        ui.mMapPage.put(FinalBtCtrl.Page_Contact, "bt_contact");
        ui.mMapPage.put(FinalBtCtrl.Page_History, "bt_history");
        ui.mMapPage.put(FinalBtCtrl.Page_Av, "bt_av");
        ui.mMapPage.put(FinalBtCtrl.Page_Set, "bt_set");
        ui.mMapPage.put(FinalBtCtrl.Page_Pair, "bt_pair");
        ui.mMapPage.put(FinalBtCtrl.Page_Favorite, "bt_favorite");
        ui.mMapPage.put(FinalBtCtrl.Page_FavoriteItem, "bt_favoriteitem");
        ui.mMapPage.put(FinalBtCtrl.Page_PairItem, "bt_pairitem");
        ui.mMapPage.put(FinalBtCtrl.Page_PairedItem, "bt_paireditem");
        ui.mMapPage.put(FinalBtCtrl.Page_SetPairItem, "bt_setpairitem");
        ui.mMapPage.put(FinalBtCtrl.Page_DialItem, "bt_dialitem");
        ui.mMapPage.put(FinalBtCtrl.Page_ContactItem, "bt_contactitem");
        ui.mMapPage.put(FinalBtCtrl.Page_HistoryItem, "bt_historyitem");
        ui.mMapPage.put(FinalBtCtrl.Page_PopDel, "bt_popdel");
        ui.mMapPage.put(FinalBtCtrl.Page_PopDel2, "bt_popdel2");
        ui.mMapPage.put(FinalBtCtrl.Page_PopHySet, "bt_pophyset");
        ui.mMapPage.put(FinalBtCtrl.Page_PopHySetAI, "bt_pophyset_ai");
        ui.mMapPage.put(FinalBtCtrl.Page_PopAIQR, "bt_popaiqr");
        ui.mMapPage.put(FinalBtCtrl.Page_PopAIQR2, "bt_popaiqr2");
        ui.mMapPage.put(FinalBtCtrl.Page_PopMSBC, "bt_popmsbc");
        ui.mMapPage.put(FinalBtCtrl.Page_PopCODEC, "bt_popcodec");
        ui.mMapPage.put(FinalBtCtrl.Page_PopPwd, "bt_poppwd");
        ui.mMapPage.put(FinalBtCtrl.Page_PopPinPwd, "bt_poppinpwd");
        ui.mMapPage.put(FinalBtCtrl.Page_PopRecSound, "bt_poprecsound");
        ui.mMapPage.put(FinalBtCtrl.Page_PopBtRing, "bt_popbtring");
        ui.mMapPage.put(FinalBtCtrl.Page_PopBtRingItem, "bt_popbtringitem");
        ui.mMapPage.put(FinalBtCtrl.Page_PopBtHead, "bt_popbthead");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin, "bt_callin");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowDial, "bt_callin_showdial");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowCall, "bt_callin_showcall");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowKey, "bt_callin_showkey");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_HideKey, "bt_callin_hidekey");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_HalfScreen, "bt_callin_halfscreen");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowDial_HalfScreen, "bt_callin_showdial_halfscreen");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowCall_HalfScreen, "bt_callin_showcall_halfscreen");
        ui.mMapPage.put(FinalBtCtrl.Page_Callin_ShowKey_HalfScreen, "bt_callin_showkey_halfscreen");
        ui.mMapPage.put(FinalBtCtrl.Page_Dial_HalfScreen, "bt_dial_halfscreen");
        ui.mMapPage.put(FinalBtCtrl.Page_Av_HalfScreen, "bt_av_halfscreen");
        if (CustomerUtil.is7731() && App_Bt.mStrCustomer.equals("TZY_UI5")) {
            ui.mMapPage.put(10001, "bt_main2");
            ui.mMapPage.put(10002, "bt_menu2");
            ui.mMapPage.put(10003, "bt_dial2");
            ui.mMapPage.put(FinalBtCtrl.Page_Contact, "bt_contact2");
            ui.mMapPage.put(FinalBtCtrl.Page_History, "bt_history2");
            ui.mMapPage.put(FinalBtCtrl.Page_Av, "bt_av2");
            ui.mMapPage.put(FinalBtCtrl.Page_Set, "bt_set2");
            ui.mMapPage.put(FinalBtCtrl.Page_Pair, "bt_pair2");
        }
    }

    public void setBgColor() {
        JView ivBgColor;
        JPage page = this.ui.mPages.get(10002);
        if (page != null && (ivBgColor = (JView) page.getChildViewByid(FinalBtCtrl.View_Bg_Color)) != null) {
            int theme_mode = SystemProperties.getInt("persist.syu.thememode", 0);
            if (theme_mode == 3) {
                String theme_app = SystemProperties.get("persist.syu.themecolor", "{\"bt\":0}");
                try {
                    JSONObject jsonApp = new JSONObject(theme_app);
                    App_Bt.color_set = jsonApp.getInt("bt");
                    Log.d("json", " 00 Act_Bt theme_app = " + theme_app);
                    if (App_Bt.color_set == 0) {
                        setBgColorDef(ivBgColor);
                    } else {
                        int[] colors = {-15724528, App_Bt.color_set};
                        GradientDrawable bg = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, colors);
                        if (ivBgColor != null) {
                            ivBgColor.setBackground(bg);
                        }
                    }
                    return;
                } catch (JSONException e) {
                    e.printStackTrace();
                    return;
                }
            }
            setBgColorDef(ivBgColor);
        }
    }

    public void setBgColorDef(JView ivBgColor) {
        ivBgColor.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bt_bk_def", this.mDrawables, this.mDrawables));
    }

    public Bitmap drawable2Bitmap(Drawable drawable) {
        Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmap;
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void InitPage(JPage page) {
        App_Bt.color_show = App_Bt.getInstance().mySharePreference2.getIntValue("colorshow", 1) == 1;
        int id = page.getId();
        switch (id) {
            case 10001:
                page.setNotify(new Page_Main(page, this));
                break;
            case 10002:
                page.setNotify(new Page_Menu(page, this));
                setBgColor();
                break;
            case 10003:
                page.setNotify(new Page_Dial(page, this));
                break;
            case FinalBtCtrl.Page_DialItem /* 10004 */:
                page.setNotify(new Page_DialItem(page, this));
                break;
            case FinalBtCtrl.Page_Contact /* 10005 */:
                page.setNotify(new Page_Contact(page, this));
                break;
            case FinalBtCtrl.Page_ContactItem /* 10006 */:
                page.setNotify(new Page_ContactItem(page, this));
                break;
            case FinalBtCtrl.Page_History /* 10008 */:
                page.setNotify(new Page_History(page, this));
                break;
            case FinalBtCtrl.Page_HistoryItem /* 10009 */:
                page.setNotify(new Page_HistoryItem(page, this));
                break;
            case FinalBtCtrl.Page_Av /* 10010 */:
                page.setNotify(new Page_Av(page, this));
                break;
            case FinalBtCtrl.Page_Set /* 10011 */:
                page.setNotify(new Page_Set(page, this));
                break;
            case FinalBtCtrl.Page_Pair /* 10012 */:
                page.setNotify(new Page_Pair(page, this));
                break;
            case FinalBtCtrl.Page_PairItem /* 10013 */:
                page.setNotify(new Page_PairItem(page));
                break;
            case FinalBtCtrl.Page_PairedItem /* 10014 */:
                page.setNotify(new Page_PairedItem(page, this));
                break;
            case FinalBtCtrl.Page_SetPairItem /* 10015 */:
                page.setNotify(new Page_SetPairItem(page, this));
                break;
            case FinalBtCtrl.Page_Favorite /* 10016 */:
                page.setNotify(new Page_Favorite(page, this));
                break;
            case FinalBtCtrl.Page_FavoriteItem /* 10017 */:
                page.setNotify(new Page_FavoriteItem(page, this));
                break;
            case FinalBtCtrl.Page_PopDel /* 10018 */:
                page.setNotify(new Page_PopDel(page, this));
                break;
            case FinalBtCtrl.Page_PopDel2 /* 10019 */:
                page.setNotify(new Page_PopDel2(page, this));
                break;
            case FinalBtCtrl.Page_PopHySet /* 10020 */:
                page.setNotify(new Page_PopHySet(page, this));
                break;
            case FinalBtCtrl.Page_PopHySetAI /* 10021 */:
                page.setNotify(new Page_PopHySetAI(page, this));
                break;
            case FinalBtCtrl.Page_PopAIQR /* 10022 */:
                page.setNotify(new Page_PopAIQR(page, this));
                break;
            case FinalBtCtrl.Page_PopAIQR2 /* 10023 */:
                page.setNotify(new Page_PopAIQR2(page, this));
                break;
            case FinalBtCtrl.Page_PopPwd /* 10024 */:
                page.setNotify(new Page_PopPwd(page, this));
                break;
            case FinalBtCtrl.Page_PopPinPwd /* 10025 */:
                page.setNotify(new Page_PopPinPwd(page, this));
                break;
            case FinalBtCtrl.Page_PopRecSound /* 10026 */:
                page.setNotify(new Page_PopRecSound(page, this));
                break;
            case FinalBtCtrl.Page_PopBtRing /* 10027 */:
                page.setNotify(new Page_PopBtRing(page, this));
                break;
            case FinalBtCtrl.Page_PopBtRingItem /* 10028 */:
                page.setNotify(new Page_PopBtRingItem(page));
                break;
            case FinalBtCtrl.Page_PopBtHead /* 10029 */:
                page.setNotify(new Page_PopBtHead(page, this));
                break;
            case FinalBtCtrl.Page_PopMSBC /* 10030 */:
                page.setNotify(new Page_PopMSBC(page, this));
                break;
            case FinalBtCtrl.Page_PopCODEC /* 10031 */:
                page.setNotify(new Page_PopCODEC(page, this));
                break;
            case FinalBtCtrl.Page_Callin /* 10032 */:
                page.setNotify(new Page_Callin(page, this));
                break;
            case FinalBtCtrl.Page_Callin_HalfScreen /* 10033 */:
                page.setNotify(new Page_Callin_HalfScreen(page, this));
                break;
            case FinalBtCtrl.Page_Dial_HalfScreen /* 10034 */:
                page.setNotify(new Page_Dial_HalfScreen(page, this));
                break;
            case FinalBtCtrl.Page_Av_HalfScreen /* 10035 */:
                page.setNotify(new Page_Av_HalfScreen(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowDial /* 10036 */:
                page.setNotify(new Page_Callin_ShowDial(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowCall /* 10037 */:
                page.setNotify(new Page_Callin_ShowCall(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowKey /* 10038 */:
                page.setNotify(new Page_Callin_ShowKey(page, this));
                break;
            case FinalBtCtrl.Page_Callin_HideKey /* 10039 */:
                page.setNotify(new Page_Callin_HideKey(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowDial_HalfScreen /* 10040 */:
                page.setNotify(new Page_Callin_ShowDial_HalfScreen(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowCall_HalfScreen /* 10041 */:
                page.setNotify(new Page_Callin_ShowCall_HalfScreen(page, this));
                break;
            case FinalBtCtrl.Page_Callin_ShowKey_HalfScreen /* 10042 */:
                page.setNotify(new Page_Callin_ShowKey_HalfScreen(page, this));
                break;
        }
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public void setProperty(View child) {
    }

    public JButton getBtnMenuFocus(JPage page, int idPageSel) {
        Log.d("gdy9", " 11 Act_Bt mRunnableGoPage idPageSel:" + idPageSel);
        if (page == null) {
            return null;
        }
        switch (idPageSel) {
            case 10003:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    return null;
                }
                JButton btnMenu = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Dial);
                return btnMenu;
            case FinalBtCtrl.Page_DialItem /* 10004 */:
            case FinalBtCtrl.Page_ContactItem /* 10006 */:
            case FinalBtCtrl.Page_LetterItem /* 10007 */:
            case FinalBtCtrl.Page_HistoryItem /* 10009 */:
            case FinalBtCtrl.Page_PairItem /* 10013 */:
            case FinalBtCtrl.Page_PairedItem /* 10014 */:
            case FinalBtCtrl.Page_SetPairItem /* 10015 */:
            default:
                return null;
            case FinalBtCtrl.Page_Contact /* 10005 */:
                JButton btnMenu2 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Contact);
                return btnMenu2;
            case FinalBtCtrl.Page_History /* 10008 */:
                JButton btnMenu3 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_History);
                return btnMenu3;
            case FinalBtCtrl.Page_Av /* 10010 */:
                JButton btnMenu4 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Av);
                return btnMenu4;
            case FinalBtCtrl.Page_Set /* 10011 */:
                JButton btnMenu5 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Set);
                return btnMenu5;
            case FinalBtCtrl.Page_Pair /* 10012 */:
                JButton btnMenu6 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Pair);
                return btnMenu6;
            case FinalBtCtrl.Page_Favorite /* 10016 */:
                JButton btnMenu7 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Save);
                return btnMenu7;
        }
    }

    public void getMenuViewFocus(JPage page, int idPageSel) {
        if (page != null) {
            JView viewDial = (JView) page.getChildViewByid(FinalBtCtrl.View_dial);
            JView viewHistory = (JView) page.getChildViewByid(FinalBtCtrl.View_history);
            JView viewContact = (JView) page.getChildViewByid(FinalBtCtrl.View_contact);
            JView viewBtav = (JView) page.getChildViewByid(FinalBtCtrl.View_btav);
            JView viewPair = (JView) page.getChildViewByid(FinalBtCtrl.View_pair);
            JView viewSet = (JView) page.getChildViewByid(FinalBtCtrl.View_set);
            if (viewDial != null) {
                viewDial.setVisibility(8);
            }
            if (viewHistory != null) {
                viewHistory.setVisibility(8);
            }
            if (viewContact != null) {
                viewContact.setVisibility(8);
            }
            if (viewBtav != null) {
                viewBtav.setVisibility(8);
            }
            if (viewPair != null) {
                viewPair.setVisibility(8);
            }
            if (viewSet != null) {
                viewSet.setVisibility(8);
            }
            switch (idPageSel) {
                case 10003:
                    if (viewDial != null) {
                        viewDial.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Page_Contact /* 10005 */:
                    if (viewContact != null) {
                        viewContact.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Page_History /* 10008 */:
                    if (viewHistory != null) {
                        viewHistory.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Page_Av /* 10010 */:
                    if (viewBtav != null) {
                        viewBtav.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Page_Set /* 10011 */:
                    if (viewSet != null) {
                        viewSet.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Page_Pair /* 10012 */:
                    if (viewPair != null) {
                        viewPair.setVisibility(0);
                    }
                    break;
            }
        }
    }

    public void updateBorderText(JButton btnMenu, boolean bSelected) {
        boolean doBack = false;
        if (!App_Bt.mStrCustomer.equalsIgnoreCase("zhtd_aodi")) {
            doBack = true;
        }
        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && !MyApplication.mStrFolderAsset.equalsIgnoreCase("ui1") && App_Bt.mStrCustomer.equals("bba")) {
            doBack = true;
        }
        if (btnMenu != null && !doBack) {
            BorderTextView text = null;
            JPage page = this.ui.mPages.get(10002);
            switch (btnMenu.getId()) {
                case FinalBtCtrl.Menu_Dial /* 10052 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_Dial);
                    }
                    break;
                case FinalBtCtrl.Menu_Contact /* 10053 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_Contact);
                    }
                    break;
                case FinalBtCtrl.Menu_History /* 10054 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_History);
                    }
                    break;
                case FinalBtCtrl.Menu_Av /* 10060 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_Av);
                    }
                    break;
                case FinalBtCtrl.Menu_Set /* 10061 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_Set);
                    }
                    break;
                case FinalBtCtrl.Menu_Pair /* 10062 */:
                    if (page != null) {
                        text = (BorderTextView) page.getChildViewByid(FinalBtCtrl.Menu_BorderText_Pair);
                    }
                    break;
            }
            if (text != null) {
                text.resetText(bSelected);
            }
        }
    }

    public void updateBtnFocus(JButton btnMenu, int indexLastFocus, boolean bSelected) {
        if (indexLastFocus >= 0 && indexLastFocus < 8 && btnMenu != null) {
            if (bSelected) {
                if (this.mBtnFocusLast[indexLastFocus] != null && this.mBtnFocusLast[indexLastFocus] != btnMenu) {
                    this.mBtnFocusLast[indexLastFocus].setFocus(false);
                    updateBorderText(this.mBtnFocusLast[indexLastFocus], false);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                        this.mBtnFocusLast[indexLastFocus].setSelected(false);
                    }
                }
                this.mBtnFocusLast[indexLastFocus] = btnMenu;
            }
            btnMenu.setFocus(bSelected);
            updateBorderText(btnMenu, bSelected);
            if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                btnMenu.setSelected(bSelected);
            }
        }
    }

    public void updateMainSelected(int idPage, boolean bSelected) {
        JButton btnMenu;
        JPage page = this.ui.getPage(10001);
        if (page != null) {
            if (idPage != 10010) {
                btnMenu = (JButton) page.getChildViewByid(FinalBtCtrl.Main_Bt);
            } else {
                btnMenu = (JButton) page.getChildViewByid(FinalBtCtrl.Main_BtAv);
            }
            updateBtnFocus(btnMenu, 1, bSelected);
        }
        MyClass.getInstance().initCust();
    }

    public void updateMenuSelected_New(int idPage, int idPageSel, int idPageSel_New, int indexFocus, boolean bSelected) {
        JPage page = this.ui.mPages.get(idPage);
        Log.d("gdy9", " 001 updateMenuSelected_New mRunnableGoPage idPageSel:" + idPageSel);
        JButton btnMenu = getBtnMenuFocus(page, idPageSel);
        updateBtnFocus(btnMenu, indexFocus, bSelected);
        getMenuViewFocus(page, idPageSel_New);
    }

    public void updateMenuSelected(int idPage, int idPageSel, int indexFocus, boolean bSelected) {
        Log.d("gdy9", " 002 updateMenuSelected mRunnableGoPage idPageSel:" + idPageSel);
        JPage page = this.ui.getPage(idPage);
        JButton btnMenu = getBtnMenuFocus(page, idPageSel);
        updateBtnFocus(btnMenu, indexFocus, bSelected);
        getMenuViewFocus(page, idPageSel);
    }

    @Override // com.lsec.core.frame.app.MyAct
    public int getRightPage(int idPageTo) {
        if (idPageTo == 10003 && App_Bt.getInstance().mIpcObj.isCalling()) {
            App_Bt.getInstance();
            if (App_Bt.bEnableHalfScreen || App_Bt.bCallinPageFlag) {
                idPageTo = FinalBtCtrl.Page_Callin;
            }
        }
        if (idPageTo == 10032 && !App_Bt.getInstance().mIpcObj.isCalling()) {
            return 10003;
        }
        return idPageTo;
    }

    public void addPage2Parent(ViewGroup viewParent, int idPage) {
        if (viewParent != null && viewParent.findViewById(idPage) == null) {
            JPage pageMain = this.ui.loadPage(true, idPage);
            if (pageMain != null) {
                viewParent.addView(pageMain);
            }
            if (idPage == 10002) {
                updateMenuSelected(10002, MyApplication.sPage_Current, 0, true);
            }
        }
    }

    public void removePageFromParent(ViewGroup viewParent, int idPage) {
        JPage pageMain;
        if (viewParent != null && (pageMain = (JPage) viewParent.findViewById(idPage)) != null) {
            pageMain.pause();
            pageMain.removeFromUiPages();
            viewParent.removeView(pageMain);
        }
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void addChild2Parent(ViewGroup viewParent) {
        addPage2Parent(viewParent, 10001);
        addPage2Parent(viewParent, 10002);
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void removeChildFromParent(ViewGroup viewParent) {
        removePageFromParent(viewParent, 10001);
        removePageFromParent(viewParent, 10002);
    }

    @Override // com.lsec.core.frame.app.MyAct
    @SuppressLint({"NewApi"})
    public void doActionWhenGoPage(int idPageTo) {
        if (App_Bt.includePage(idPageTo)) {
            if (idPageTo == 10010 && !App_Bt.bIsLauncher_2Ico && MyApplication.sPage_Current != 10010) {
                App_Bt.idPageBeforeAv = MyApplication.sPage_Current;
            }
            if (idPageTo != 10005 && App_Bt.mSelectContact > 0) {
                App_Bt.mSelectContact = -1;
            }
            App_Bt.getInstance().requestAppIdRight();
            updateMainSelected(MyApplication.sPage_Current, true);
            updateMenuSelected(10002, MyApplication.sPage_Current, 0, true);
            if (App_Bt.hideBtnWhenDisconnect) {
                setMenuBtnEnable(MyApplication.sPage_Current, Bt.DATA[9]);
            } else {
                updateMenuSelected(MyApplication.sPage_Current, MyApplication.sPage_Current, 2, true);
            }
            if (CustomerUtil.isDZSJMIB4Config()) {
                if (MyApplication.sPage_Current != 10003) {
                    this.myActivity.hideSystemUi();
                } else {
                    this.myActivity.showSystemUi();
                }
            }
        }
    }

    @Override // com.lsec.core.frame.app.MyAct
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (BTUtil.getInstance().IsConnectCarplay() || App_Bt.getInstance().mIpcObj.isCalling()) {
            return true;
        }
        App_Bt.getInstance();
        if (App_Bt.bEnableHalfScreen) {
            return false;
        }
        switch (keyCode) {
            case 4:
                Log.d("key", " Act_Bt  KEYCODE_BACK ");
                JPage pageMenu = this.ui.getPage(10002);
                App_Bt.bJumpFavorite = false;
                boolean bJumpDial = false;
                int idCurrent = -1;
                if (this.myActivity.mPageCurrent != null) {
                    idCurrent = this.myActivity.mPageCurrent.getId();
                }
                if (MyApplication.mIdCustomer == 21) {
                    if (pageMenu == null && idCurrent != 10003) {
                        bJumpDial = true;
                    }
                } else if (CustomerUtil.isDZSJMIB4Config()) {
                    if (idCurrent == 10010 && !App_Bt.bIsLauncher_2Ico) {
                        App_Bt.sPage = App_Bt.idPageBeforeAv;
                    } else if (idCurrent != 10003 && !App_Bt.bFirstPairPage && !App_Bt.bFirstBtAvPage) {
                        bJumpDial = true;
                    }
                } else {
                    if (CustomerUtil.isTZYConfig() && idCurrent == 10003 && getPageDial().getSaveViewState()) {
                        getPageDial().disableSaveView(true);
                        return true;
                    }
                    if (App_Bt.bIsLauncher_2Ico) {
                        if (idCurrent != 10003 && idCurrent != 10010 && !App_Bt.bFirstPairPage && !App_Bt.bFirstBtAvPage && pageMenu == null) {
                            bJumpDial = true;
                        }
                    } else if (idCurrent == 10010) {
                        App_Bt.sPage = App_Bt.idPageBeforeAv;
                    } else if (idCurrent != 10003 && !App_Bt.bFirstPairPage && !App_Bt.bFirstBtAvPage && pageMenu == null) {
                        bJumpDial = true;
                    }
                }
                if (bJumpDial) {
                    this.myActivity.goPage(10003);
                    return true;
                }
                if (MyApplication.mIdCustomer != 139) {
                    if (App_Bt.bChangeAppIdWhenTalking) {
                        App_Bt.getInstance().mIpcObj.requestAppIdNull(idCurrent);
                    } else {
                        App_Bt.getInstance().mIpcObj.requestAppIdNull();
                    }
                }
                Log.d("pv", " ** 11 moveTaskToBack ");
                this.myActivity.moveTaskToBack(true);
                return true;
            default:
                return false;
        }
    }

    public boolean Func_Back() {
        if (!BTUtil.getInstance().IsConnectCarplay() && !App_Bt.getInstance().mIpcObj.isCalling()) {
            boolean bJumpDial = false;
            int idCurrent = -1;
            if (this.myActivity.mPageCurrent != null) {
                idCurrent = this.myActivity.mPageCurrent.getId();
            }
            if (idCurrent == 10010) {
                bJumpDial = false;
            } else if (idCurrent != 10003) {
                bJumpDial = true;
            }
            if (bJumpDial) {
                this.myActivity.goPage(10003);
            } else {
                if (App_Bt.bChangeAppIdWhenTalking) {
                    App_Bt.getInstance().mIpcObj.requestAppIdNull(idCurrent);
                } else {
                    App_Bt.getInstance().mIpcObj.requestAppIdNull();
                }
                Log.d("pv", " ** 22 moveTaskToBack ");
                this.myActivity.moveTaskToBack(true);
            }
        }
        return true;
    }

    @Override // com.lsec.core.frame.app.MyAct
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return BTUtil.getInstance().IsConnectCarplay() || App_Bt.getInstance().mIpcObj.isCalling();
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        Log.d("key", " BT dispatchKeyEvent keyCode = " + event.getKeyCode());
        switch (event.getKeyCode()) {
            case 127:
                if (Bt_IpcObj.isAppIdBtAv()) {
                    Bt_IpcObj.avPause();
                    return true;
                }
            default:
                return false;
        }
    }

    @Override // com.lsec.core.frame.app.MyAct
    public void onTouchEvent(MotionEvent event) {
        if (this.myActivity.mPageCurrent != null) {
            int idPage = this.myActivity.mPageCurrent.getId();
            switch (idPage) {
                case FinalBtCtrl.Page_Set /* 10011 */:
                    Page_Set pageNotify = (Page_Set) this.myActivity.mPageCurrent.getNotify();
                    if (pageNotify != null) {
                        pageNotify.TouchEvent(event);
                    }
                    break;
            }
        }
    }

    @Override // com.lsec.core.frame.app.InterfaceUi
    public View createUiItemOtherWay(JPage page, MyUiItem item) throws Throwable {
        int type = item.getType();
        switch (type) {
            case 1000:
                JPinBar view = new JPinBar(page);
                return view;
            case 1001:
                JRotView view2 = new JRotView(page);
                return view2;
            case 1002:
                Rect[] rec = item.getRect();
                int iCnt = 64;
                int iStyle = 0;
                int[] para = item.getPara();
                if (para != null) {
                    iCnt = para[0];
                    if (para.length >= 2) {
                        iStyle = para[1];
                    }
                }
                if (rec == null) {
                    return null;
                }
                FrameLayout.LayoutParams layoutParams = item.getLayoutParams();
                float barwidth = ((layoutParams.width * 1.0f) / iCnt) - rec[0].top;
                JSpecView view3 = new JSpecView(page, barwidth, rec[0].top, rec[0].right - rec[0].left, rec[0].bottom - rec[0].top, item, iCnt, iStyle);
                return view3;
            case 1003:
                JSwitchButon2 view4 = new JSwitchButon2(page, item);
                return view4;
            case 1004:
                SlideBarView view5 = new SlideBarView(page);
                return view5;
            case 1005:
                SwipeCallingView view6 = new SwipeCallingView(page);
                return view6;
            case 1006:
                Drawable bk = null;
                Drawable point = null;
                if (item.getStrDrawableExtra() != null) {
                    bk = App_Bt.getInstance().uiApp.getDrawableFromPath(item.getStrDrawableExtra()[0], this.mDrawables, null);
                    if (item.getStrDrawableExtra().length > 1) {
                        point = App_Bt.getInstance().uiApp.getDrawableFromPath(item.getStrDrawableExtra()[1], this.mDrawables, null);
                    }
                }
                String[] para2 = item.getParaStr();
                if (para2 == null) {
                    return null;
                }
                CircleMenuLayout view7 = new CircleMenuLayout(this.ui.mContext, bk, point, para2);
                return view7;
            case 1007:
                int[] colorFocus = {ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK};
                if (item.getColor() != null) {
                    colorFocus = item.getColor();
                }
                String str = item.getText();
                int h = item.getHeight();
                BorderTextView view8 = new BorderTextView(this.ui.mContext, colorFocus, str, h);
                return view8;
            default:
                return null;
        }
    }

    public Page_Dial getPageDial() {
        return (Page_Dial) this.myActivity.getPageNotify(this.ui, 10003);
    }

    public Page_Dial_HalfScreen getPageDial_HalfScreen() {
        return (Page_Dial_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Dial_HalfScreen);
    }

    public Page_Callin getPageCallin() {
        return (Page_Callin) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin);
    }

    public Page_Callin_HalfScreen getPageCallin_HalfScreen() {
        return (Page_Callin_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_HalfScreen);
    }

    public Page_Callin_ShowDial_HalfScreen getPageCallin_ShowDial_HalfScreen() {
        return (Page_Callin_ShowDial_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowDial_HalfScreen);
    }

    public Page_Callin_ShowCall_HalfScreen getPageCallin_ShowCall_HalfScreen() {
        return (Page_Callin_ShowCall_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowCall_HalfScreen);
    }

    public Page_Callin_ShowKey_HalfScreen getPageCallin_ShowKey_HalfScreen() {
        return (Page_Callin_ShowKey_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowKey_HalfScreen);
    }

    public Page_Callin_ShowDial getPageCallin_ShowDial() {
        return (Page_Callin_ShowDial) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowDial);
    }

    public Page_Callin_ShowCall getPageCallin_ShowCall() {
        return (Page_Callin_ShowCall) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowCall);
    }

    public Page_Callin_ShowKey getPageCallin_ShowKey() {
        return (Page_Callin_ShowKey) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_ShowKey);
    }

    public Page_Callin_HideKey getPageCallin_HideKey() {
        return (Page_Callin_HideKey) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Callin_HideKey);
    }

    public Page_Menu getPageMenu() {
        return (Page_Menu) this.myActivity.getPageNotify(this.ui, 10002);
    }

    public Page_Contact getPageContact() {
        return (Page_Contact) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Contact);
    }

    public Page_Pair getPagePair() {
        return (Page_Pair) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Pair);
    }

    public Page_Favorite getPageFavorite() {
        return (Page_Favorite) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Favorite);
    }

    public Page_Av_HalfScreen getPageAv_HalfScreen() {
        return (Page_Av_HalfScreen) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Av_HalfScreen);
    }

    public Page_History getPageHistory() {
        return (Page_History) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_History);
    }

    public Page_Set getPageSet() {
        return (Page_Set) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Set);
    }

    public int getFixPageMain(int idMenu) {
        switch (idMenu) {
            case FinalBtCtrl.Main_Bt /* 10043 */:
                int idPageTo = App_Bt.idPageBeforeAv;
                return idPageTo;
            case FinalBtCtrl.Main_BtAv /* 10044 */:
                return FinalBtCtrl.Page_Av;
            default:
                return -1;
        }
    }

    public int getFixPage(int idMenu) {
        switch (idMenu) {
            case FinalBtCtrl.Menu_Dial /* 10052 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    return FinalBtCtrl.Page_History;
                }
                return 10003;
            case FinalBtCtrl.Menu_Contact /* 10053 */:
                return FinalBtCtrl.Page_Contact;
            case FinalBtCtrl.Menu_History /* 10054 */:
                return FinalBtCtrl.Page_History;
            case FinalBtCtrl.Menu_Dial_Txt /* 10055 */:
            case FinalBtCtrl.Menu_Contact_Txt /* 10056 */:
            case FinalBtCtrl.Menu_History_Txt /* 10057 */:
            case FinalBtCtrl.Menu_Pair_Txt /* 10058 */:
            case FinalBtCtrl.Menu_Set_Txt /* 10059 */:
            case FinalBtCtrl.Menu_XY_LC /* 10065 */:
            default:
                return -1;
            case FinalBtCtrl.Menu_Av /* 10060 */:
                return FinalBtCtrl.Page_Av;
            case FinalBtCtrl.Menu_Set /* 10061 */:
                return FinalBtCtrl.Page_Set;
            case FinalBtCtrl.Menu_Pair /* 10062 */:
                return FinalBtCtrl.Page_Pair;
            case FinalBtCtrl.Menu_Save /* 10063 */:
                return FinalBtCtrl.Page_Favorite;
            case FinalBtCtrl.Menu_Home /* 10064 */:
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                this.myActivity.startActivity(intent);
                return -1;
            case FinalBtCtrl.Menu_Back /* 10066 */:
                Log.d("gdy", " *** getFixPage Menu_Back ");
                this.myActivity.dispatchKeyEvent(new KeyEvent(0, 4));
                return -1;
        }
    }

    public boolean MenuClick(View v) {
        if (App_Bt.bDownloading) {
            this.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
            return true;
        }
        int id = v.getId();
        Log.d("gdy9", " 00 MenuClick id = " + id);
        int idPageTo = getFixPage(id);
        boolean jumpPage = idPageTo != -1;
        if (this.myActivity.mPageCurrent != null) {
            jumpPage = (idPageTo == -1 || idPageTo == this.myActivity.mPageCurrent.getId()) ? false : true;
        }
        if (!jumpPage) {
            return false;
        }
        this.myActivity.goPage(idPageTo);
        return true;
    }

    public boolean MainClick(View v) {
        int id = v.getId();
        int idPageTo = getFixPageMain(id);
        if (idPageTo == -1) {
            return false;
        }
        Log.d("HJT", "D");
        this.myActivity.goPage(idPageTo);
        return true;
    }

    public void showSystemUI() {
        if (this.myActivity != null) {
            this.myActivity.getWindow().clearFlags(1024);
        }
    }

    public void hideSystemUI() {
        if (this.myActivity != null) {
            this.myActivity.getWindow().addFlags(1024);
        }
    }

    public void popDeleteContacts(int type, String msg) {
        JText text;
        if (msg != null) {
            App_Bt.mDelType = type;
            Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopDel, FinalChip.BSP_PLATFORM_Null, true);
            JPage page = this.ui.getPage(FinalBtCtrl.Page_PopDel);
            if (page != null && (text = (JText) page.getChildViewByid(FinalBtCtrl.PopDel_Txt_Content)) != null) {
                text.setText(msg);
            }
            if (popDlg != null) {
                popDlg.show();
            }
        }
    }

    public void DismissPopContacts() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopDel, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void popDeleteContacts2(String msg, String msg2, int id) {
        if (msg != null && msg2 != null) {
            Sel_Id = id;
            Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopDel2, FinalChip.BSP_PLATFORM_Null, true);
            JPage page = this.ui.getPage(FinalBtCtrl.Page_PopDel2);
            if (page != null) {
                JText text = (JText) page.getChildViewByid(FinalBtCtrl.PopDel_Txt_Title);
                if (text != null) {
                    text.setText(msg);
                }
                JText text2 = (JText) page.getChildViewByid(FinalBtCtrl.PopDel_Txt_Content);
                if (text2 != null) {
                    if (!msg2.contains(":") && msg2.length() == 12) {
                        text2.setText(String.valueOf(msg2.substring(0, 2)) + ":" + msg2.substring(2, 4) + ":" + msg2.substring(4, 6) + ":" + msg2.substring(6, 8) + ":" + msg2.substring(8, 10) + ":" + msg2.substring(10, 12));
                    } else {
                        text2.setText(msg2);
                    }
                }
            }
            if (popDlg != null) {
                popDlg.show();
            }
        }
    }

    public void DismissPopContacts2() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopDel2, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void showPopHySet() {
        Log.d("hy", " 11 Act_Bt showPopHySet ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopHySet, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void DismissPopHySet() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopHySet, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void showPopHySetAI() {
        Log.d("hy", " 11 Act_Bt showPopHySetAI ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopHySetAI, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void DismissPopHySetAI() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopHySetAI, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void showPopAIQR() {
        Log.d("hy", " 11 Act_Bt Page_PopAIQR ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopAIQR, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public boolean DismissPopAIQR() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopAIQR, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg == null || !popDlg.isShowing()) {
            return false;
        }
        popDlg.dismiss();
        return true;
    }

    public void showPopAIQR2() {
        Log.d("hy", " 11 Act_Bt Page_PopAIQR2 ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopAIQR2, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public boolean DismissPopAIQR2() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopAIQR2, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg == null || !popDlg.isShowing()) {
            return false;
        }
        popDlg.dismiss();
        return true;
    }

    public void showPopMSBC() {
        Log.d("hy", " 11 Act_Bt showPopMSBC ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopMSBC, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void showPopCODEC() {
        Log.d("hy", " 11 Act_Bt showPopCODEC ");
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopCODEC, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void DismissPopHead() {
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.dismissPopBtHead();
        }
        Page_ContactItem page_ContactItem = (Page_ContactItem) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_ContactItem);
        if (page_ContactItem != null) {
            page_ContactItem.dismissPopBtHead();
        }
        Page_FavoriteItem page_FavoriteItem = (Page_FavoriteItem) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_FavoriteItem);
        if (page_FavoriteItem != null) {
            page_FavoriteItem.dismissPopBtHead();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void ClearAllContact(boolean bClearUrl) {
        Log.d("gdy13", " 11 DEL_CONTACT_ALL   ");
        JPage pageContact = this.ui.getPage(FinalBtCtrl.Page_Contact);
        if (pageContact != null) {
            JGridView gridView = (JGridView) pageContact.getChildViewByid(FinalBtCtrl.Contact_ListView);
            if (gridView != null) {
                if (App_Bt.bLinkTwoPhone) {
                    if (bClearUrl) {
                        this.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_deling"));
                        App_Bt.mBtInfo.clearAllContacts(App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]);
                    }
                    if (App_Bt.sPhone2_id == 0) {
                        App_Bt.mBtInfo.mListContact.clear();
                    } else {
                        Log.d("save11", " 33  mListContact2.clear ");
                        App_Bt.mBtInfo.mListContact2.clear();
                    }
                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                        interfaceBt.resetList();
                    }
                    EditText editSearch = (EditText) pageContact.getChildViewByid(FinalBtCtrl.Contact_Edit_Search);
                    if (editSearch != null) {
                        Page_Contact.strSearch = FinalChip.BSP_PLATFORM_Null;
                        editSearch.setText(FinalChip.BSP_PLATFORM_Null);
                        editSearch.clearFocus();
                        return;
                    }
                    return;
                }
                if (bClearUrl) {
                    this.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_deling"));
                    App_Bt.mBtInfo.clearAllContacts(Bt.sPhoneAddr);
                }
                App_Bt.mBtInfo.mListContact.clear();
                Log.d("fav", " 00  mListFavContact.clear");
                App_Bt.mBtInfo.mListFavContact.clear();
                for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                    interfaceBt2.resetList();
                }
                EditText editSearch2 = (EditText) pageContact.getChildViewByid(FinalBtCtrl.Contact_Edit_Search);
                if (editSearch2 != null) {
                    Page_Contact.strSearch = FinalChip.BSP_PLATFORM_Null;
                    editSearch2.setText(FinalChip.BSP_PLATFORM_Null);
                    editSearch2.clearFocus();
                }
            }
        }
    }

    public void showProgressIpPhoneDlg() {
        if (this.mProgressIpPhoneDlg == null) {
            this.mProgressIpPhoneDlg = new ProgressDialog(this.myActivity, 0);
        }
        if (!this.mProgressIpPhoneDlg.isShowing()) {
            this.mProgressIpPhoneDlg.setTitle(FinalChip.BSP_PLATFORM_Null);
            this.mProgressIpPhoneDlg.setCanceledOnTouchOutside(false);
            this.mProgressIpPhoneDlg.setMessage(App_Bt.getInstance().uiApp.getString("ipphone_dailing"));
            this.mProgressIpPhoneDlg.show();
        }
    }

    public void dismissProgressIpPhoneDlg() {
        if (this.mProgressIpPhoneDlg != null && this.mProgressIpPhoneDlg.isShowing()) {
            this.mProgressIpPhoneDlg.dismiss();
            this.mProgressIpPhoneDlg = null;
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void phoneState() {
        App_Bt.getInstance().mIpcObj.phoneState(this);
    }

    public void setMenuBtnEnable(int pageid, int value) {
        JPage page = this.ui.mPages.get(pageid);
        if (page != null) {
            switch (value) {
                case 0:
                case 1:
                case 6:
                    JButton btnMenu = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Dial);
                    if (btnMenu != null) {
                        btnMenu.setEnabled(false);
                    }
                    JButton btnMenu2 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Contact);
                    if (btnMenu2 != null) {
                        btnMenu2.setEnabled(false);
                    }
                    JButton btnMenu3 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_History);
                    if (btnMenu3 != null) {
                        btnMenu3.setEnabled(false);
                    }
                    updateMenuSelected(App_Bt.sPage, App_Bt.sPage, 2, false);
                    break;
                default:
                    JButton btnMenu4 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Dial);
                    if (btnMenu4 != null) {
                        btnMenu4.setEnabled(true);
                    }
                    JButton btnMenu5 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_Contact);
                    if (btnMenu5 != null) {
                        btnMenu5.setEnabled(true);
                    }
                    JButton btnMenu6 = (JButton) page.getChildViewByid(FinalBtCtrl.Menu_History);
                    if (btnMenu6 != null) {
                        btnMenu6.setEnabled(true);
                    }
                    updateMenuSelected(App_Bt.sPage, App_Bt.sPage, 2, true);
                    break;
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void dismissRecordDlg() {
        Dialog popDlg = this.ui.getPopDlg(FinalBtCtrl.Page_PopRecSound, FinalChip.BSP_PLATFORM_Null, true);
        Log.d("ai11", "  *** 00 Act_Bt dismissRecordDlg() popDlg  ");
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSimLayout(int flag) {
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.updateSimLayout(flag);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void resetList() {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if (pageNotify instanceof Page_Contact) {
                ((Page_Contact) pageNotify).resetList();
                return;
            }
            if (pageNotify instanceof Page_History) {
                ((Page_History) pageNotify).resetList();
                return;
            }
            if (pageNotify instanceof Page_Pair) {
                ((Page_Pair) pageNotify).refreshList();
                Log.d("hfp11", " ** 00   refreshPairedList ");
                ((Page_Pair) pageNotify).refreshPairedList();
            } else {
                if (pageNotify instanceof Page_Favorite) {
                    ((Page_Favorite) pageNotify).resetList();
                    return;
                }
                if (pageNotify instanceof Page_Dial) {
                    if (CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920")) {
                        ((Page_Dial) pageNotify).resetList();
                        return;
                    }
                    return;
                }
                if (pageNotify instanceof Page_Av) {
                }
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if (pageNotify instanceof Page_Av) {
                ((Page_Av) pageNotify).onNotify(updateCode, ints, flts, strs);
                Page_Av_HalfScreen page_Av_HalfScreen = getPageAv_HalfScreen();
                if (page_Av_HalfScreen != null) {
                    page_Av_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
            } else if (pageNotify instanceof Page_Dial) {
                ((Page_Dial) pageNotify).onNotify(updateCode, ints, flts, strs);
                Page_Dial_HalfScreen page_Dial_HalfScreen = getPageDial_HalfScreen();
                if (page_Dial_HalfScreen != null) {
                    page_Dial_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
            } else if (pageNotify instanceof Page_Set) {
                ((Page_Set) pageNotify).onNotify(updateCode, ints, flts, strs);
            } else if (pageNotify instanceof Page_Callin) {
                ((Page_Callin) pageNotify).onNotify(updateCode, ints, flts, strs);
                Page_Callin_HalfScreen page_Callin_HalfScreen = getPageCallin_HalfScreen();
                Page_Callin_ShowDial_HalfScreen page_Callin_ShowDial_HalfScreen = getPageCallin_ShowDial_HalfScreen();
                Page_Callin_ShowCall_HalfScreen page_Callin_ShowCall_HalfScreen = getPageCallin_ShowCall_HalfScreen();
                Page_Callin_ShowKey_HalfScreen page_Callin_ShowKey_HalfScreen = getPageCallin_ShowKey_HalfScreen();
                Page_Callin_ShowDial page_Callin_ShowDial = getPageCallin_ShowDial();
                Page_Callin_ShowCall page_Callin_ShowCall = getPageCallin_ShowCall();
                Page_Callin_ShowKey page_Callin_ShowKey = getPageCallin_ShowKey();
                Page_Callin_HideKey page_Callin_HideKey = getPageCallin_HideKey();
                if (page_Callin_HalfScreen != null) {
                    page_Callin_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowDial_HalfScreen != null) {
                    page_Callin_ShowDial_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowCall_HalfScreen != null) {
                    page_Callin_ShowCall_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowKey_HalfScreen != null) {
                    page_Callin_ShowKey_HalfScreen.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowDial != null) {
                    page_Callin_ShowDial.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowCall != null) {
                    page_Callin_ShowCall.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_ShowKey != null) {
                    page_Callin_ShowKey.onNotify(updateCode, ints, flts, strs);
                }
                if (page_Callin_HideKey != null) {
                    page_Callin_HideKey.onNotify(updateCode, ints, flts, strs);
                }
            }
        }
        App_Bt.getInstance().mIpcObj.onNotify(getPageContact(), updateCode, ints, flts, strs);
        App_Bt.getInstance().mIpcObj.onNotify(getPagePair(), updateCode, ints, flts, strs);
        App_Bt.getInstance().mIpcObj.onNotify(getPageHistory(), updateCode, ints, flts, strs);
        if (MyApplication.mIdCustomer == 86 && Main.mConf_PlatForm == 8 && this.mPageMenu != null && this.mPageMenu.getNotify() != null) {
            App_Bt.getInstance().mIpcObj.onNotify((Page_Menu) this.mPageMenu.getNotify(), updateCode, ints, flts, strs);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && this.mPageMenu != null && this.mPageMenu.getNotify() != null) {
            App_Bt.getInstance().mIpcObj.onNotify((Page_Menu) this.mPageMenu.getNotify(), updateCode, ints, flts, strs);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void onNotify_Sound(int updateCode, int[] ints, float[] flts, String[] strs) {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if (pageNotify instanceof Page_Set) {
                ((Page_Set) pageNotify).onNotify_Sound(updateCode, ints, flts, strs);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void onNotify_UniCar(int updateCode, int[] ints, float[] flts, String[] strs) {
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.onNotify_UniCar(updateCode, ints, flts, strs);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void moveTaskToBack() {
        Log.d("pv", " ** moveTaskToBack ");
        this.myActivity.moveTaskToBack(true);
    }

    @Override // com.syu.bt.InterfaceBt
    public void updatePhoneName() {
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.updatePhoneName();
        }
        Page_Callin page_Callin = getPageCallin();
        if (page_Callin != null) {
            page_Callin.updatePhoneName();
        }
        Page_Callin_HalfScreen page_Callin_HalfScreen = getPageCallin_HalfScreen();
        if (page_Callin_HalfScreen != null) {
            page_Callin_HalfScreen.updatePhoneName();
        }
    }

    public class RunnableShowLoading implements Runnable {
        private String msg;

        public RunnableShowLoading(String msg) {
            this.msg = msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            Act_Bt.this.uiUtil.showLoading(this.msg);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void disPostLoading(int delay) {
        Main.postRunnable_Ui(true, this.mRunnableDisLoading, delay);
    }

    @Override // com.syu.bt.InterfaceBt
    public void showPostLoading(String msg) {
        Main.postRunnable_Ui(false, new RunnableShowLoading(msg));
    }

    public void switch2DialWhenHalfScreen() {
        App_Bt.getInstance();
        if (App_Bt.bEnableHalfScreen && isHalf() && this.myActivity.mPageCurrent != null) {
            int idPage = this.myActivity.mPageCurrent.getId();
            switch (idPage) {
                case FinalBtCtrl.Page_Av /* 10010 */:
                    Log.d("HJT", "H");
                    this.myActivity.goPage(FinalBtCtrl.Page_Av);
                    break;
                case FinalBtCtrl.Page_Callin /* 10032 */:
                    this.myActivity.goPage(FinalBtCtrl.Page_Callin);
                    break;
                default:
                    this.myActivity.goPage(10003);
                    break;
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void scrollToPrev() {
        if (this.myActivity.bTop) {
            if (this.mScrollPageList.size() > 0) {
                if (this.myActivity.mPageCurrent != null) {
                    int idPage = this.myActivity.mPageCurrent.getId();
                    int index = 0;
                    for (Integer integer : this.mScrollPageList) {
                        if (integer.intValue() == idPage) {
                            break;
                        } else {
                            index++;
                        }
                    }
                    if (index > 0) {
                        Log.d("HJT", "G");
                        this.myActivity.goPage(this.mScrollPageList.get(index - 1).intValue());
                        return;
                    }
                    return;
                }
                return;
            }
            boolean bScroll = true;
            if (this.myActivity.mPageCurrent != null) {
                IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
                if (pageNotify instanceof Page_Contact) {
                    bScroll = !((Page_Contact) pageNotify).scrollToPrev(false);
                } else if (pageNotify instanceof Page_Dial) {
                    bScroll = !((Page_Dial) pageNotify).scrollToPrev();
                } else if (pageNotify instanceof Page_History) {
                    bScroll = !((Page_History) pageNotify).scrollToPrev();
                } else if (pageNotify instanceof Page_Pair) {
                    bScroll = !((Page_Pair) pageNotify).scrollToPrev();
                }
            }
            if (bScroll) {
                onKeyHandle(1);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void scrollToNext() {
        Log.d("key", " 00 Act_Bt scrollToNext  ");
        if (this.myActivity.bTop) {
            if (this.mScrollPageList.size() > 0) {
                int idPage = this.myActivity.mPageCurrent.getId();
                int index = 0;
                for (Integer integer : this.mScrollPageList) {
                    if (integer.intValue() == idPage) {
                        break;
                    } else {
                        index++;
                    }
                }
                if (index + 1 < this.mScrollPageList.size()) {
                    Log.d("HJT", "F");
                    this.myActivity.goPage(this.mScrollPageList.get(index + 1).intValue());
                    return;
                }
                return;
            }
            Log.d("key", " 11 Act_Bt scrollToNext  ");
            boolean bScroll = true;
            if (this.myActivity.mPageCurrent != null) {
                Log.d("key", " 22 Act_Bt scrollToNext  ");
                IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
                if (pageNotify instanceof Page_Contact) {
                    bScroll = !((Page_Contact) pageNotify).scrollToNext(false);
                } else if (pageNotify instanceof Page_Dial) {
                    bScroll = !((Page_Dial) pageNotify).scrollToNext();
                } else if (pageNotify instanceof Page_History) {
                    Log.d("key", " 33 Act_Bt scrollToNext Page_History ");
                    bScroll = !((Page_History) pageNotify).scrollToNext();
                } else if (pageNotify instanceof Page_Pair) {
                    Log.d("key", " 44 Act_Bt scrollToNext Page_Pair ");
                    bScroll = !((Page_Pair) pageNotify).scrollToNext();
                }
            }
            if (bScroll) {
                onKeyHandle(2);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void scrollOk() {
        if (this.myActivity.bTop) {
            if (CustomerUtil.isZhangConfig()) {
                if (this.myActivity.mPageCurrent != null) {
                    IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
                    if (pageNotify instanceof Page_Contact) {
                        ((Page_Contact) pageNotify).scrollOk(true);
                        return;
                    }
                    return;
                }
                return;
            }
            boolean bScroll = true;
            if (this.myActivity.mPageCurrent != null) {
                IPageNotify pageNotify2 = this.myActivity.mPageCurrent.getNotify();
                if (pageNotify2 instanceof Page_Contact) {
                    bScroll = !((Page_Contact) pageNotify2).scrollOk(false);
                } else if (pageNotify2 instanceof Page_Dial) {
                    bScroll = !((Page_Dial) pageNotify2).scrollOk();
                } else if (pageNotify2 instanceof Page_History) {
                    bScroll = !((Page_History) pageNotify2).scrollOk();
                } else if (pageNotify2 instanceof Page_Pair) {
                    bScroll = !((Page_Pair) pageNotify2).scrollOk();
                }
            }
            if (bScroll) {
                View v = getFocus(this.myActivity.mPageCurrent);
                if (v instanceof JSwitchButton) {
                    ((JSwitchButton) v).setChecked(((JSwitchButton) v).isChecked() ? false : true);
                    IPageNotify pageNotify3 = this.myActivity.mPageCurrent.getNotify();
                    if (pageNotify3 != null) {
                        pageNotify3.ResponseClick(v);
                        return;
                    }
                    return;
                }
                App_Bt.getInstance().simulateKey(66);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void DialByKey() {
        if (this.myActivity.bTop && this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if (pageNotify instanceof Page_Av) {
                this.myActivity.goPage(10003);
                return;
            }
            if (pageNotify instanceof Page_Contact) {
                ((Page_Contact) pageNotify).scrollOk(true);
                return;
            }
            if (pageNotify instanceof Page_Dial) {
                ((Page_Dial) pageNotify).dialByKey();
            } else if (pageNotify instanceof Page_History) {
                ((Page_History) pageNotify).scrollOk();
            } else if (pageNotify instanceof Page_Pair) {
                ((Page_Pair) pageNotify).scrollOk();
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void onKeyLeft() {
        onKeyHandle(17);
    }

    @Override // com.syu.bt.InterfaceBt
    public void onKeyUp() {
        boolean bHandled = false;
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if ((pageNotify instanceof Page_Contact) && CustomerUtil.isZhangConfig()) {
                bHandled = ((Page_Contact) pageNotify).scrollToPrev(true);
            }
        }
        if (!bHandled) {
            onKeyHandle(33);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void onKeyRight() {
        Log.d("key", " 00 onKeyRight  ");
        onKeyHandle(66);
    }

    @Override // com.syu.bt.InterfaceBt
    public void onKeyDown() {
        boolean bHandled = false;
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if ((pageNotify instanceof Page_Contact) && CustomerUtil.isZhangConfig()) {
                bHandled = ((Page_Contact) pageNotify).scrollToNext(true);
            }
        }
        if (!bHandled) {
            onKeyHandle(130);
        }
    }

    public void onKeyHandle(int direction) {
        Page_Menu menu;
        Log.d("key", " 00 onKeyHandle direction = " + direction);
        if (this.myActivity.bTop && this.myActivity.mPage != null) {
            Log.d("key", " 01 onKeyHandle mStrCustomer = " + App_Bt.mStrCustomer + " isGrid = " + this.isGrid);
            View v = this.myActivity.mPage.getFocusedChild();
            while (v instanceof ViewGroup) {
                v = ((ViewGroup) v).getFocusedChild();
            }
            View vFocus = null;
            JPage page = this.ui.mPages.get(10002);
            if (v != null) {
                vFocus = BTUtil.getInstance().getZHTDScroll(v, direction, this.myActivity, page);
                if (vFocus != null) {
                    vFocus.requestFocusFromTouch();
                    Page_Dial pageDial = (Page_Dial) this.myActivity.getPageNotify(this.ui, 10003);
                    if (pageDial != null) {
                        pageDial.resetMenuLayoutAngle(vFocus.getId());
                    }
                } else {
                    vFocus = BTUtil.getInstance().getZHTDScroll_AODI_8541(v, direction, this.myActivity, page);
                }
                int direction2 = BTUtil.getInstance().getZHTDScroll_AODI(v, direction);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor") && vFocus == null) {
                    int idPage = this.myActivity.mPageCurrent.getId();
                    Log.d("key", " 32 getZHTDScroll_AODI direction = " + direction2 + " v.getId() = " + v.getId() + "2 idPage = " + idPage);
                    if (direction2 == 1 && v.getId() == 10052 && idPage == 10005) {
                        JPage pageContact = this.ui.mPages.get(FinalBtCtrl.Page_Contact);
                        vFocus = pageContact.findViewById(FinalBtCtrl.Contact_ListView);
                    }
                }
                if (vFocus == null) {
                    vFocus = v.focusSearch(direction2);
                    if (vFocus != null) {
                        Log.d("key", " 33 getZHTDScroll_AODI vFocus.getId() = " + vFocus.getId() + "vFocus.getRight = " + vFocus.getRight());
                    } else {
                        Log.d("key", " 33 getZHTDScroll_AODI vFocus==null ");
                    }
                }
            } else if (this.isGrid) {
                this.isGrid = false;
                vFocus = BTUtil.getInstance().getZHTDGridViewScroll_AODI_8541(direction, this.myActivity, page);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    Log.d("key", " 23 BT_VWColor   Menu_Dial direction = " + direction);
                    if (direction == 2) {
                        vFocus = page.findViewById(FinalBtCtrl.Menu_Dial);
                    }
                }
                if (vFocus != null) {
                    Log.d("key", " 44 getZHTDScroll_AODI vFocus.getId() = " + vFocus.getId());
                } else {
                    Log.d("key", " 44 getZHTDScroll_AODI vFocus==null ");
                }
            }
            if (vFocus == null) {
                Log.d("key", " 55 vFocus==null ");
                if (this.myActivity.mPageCurrent != null) {
                    Object obj = this.myActivity.mPageCurrent.getTag();
                    if (obj instanceof MyUiItem) {
                        MyUiItem uiItemTmp = (MyUiItem) obj;
                        String[] strs = uiItemTmp.getParaStr();
                        Log.d("key", " 55 getParaStr  mIntPrevNext1 = " + uiItemTmp.mIntPrevNext[1] + " getId = " + uiItemTmp.getId());
                        if (strs != null && strs.length > 0 && this.ui.mCtrlId.containsKey(strs[0])) {
                            int idCtrl = this.ui.mCtrlId.get(strs[0]).intValue();
                            Log.d("key", " 55 getParaStr strs[0] = " + strs[0] + " strs.length = " + strs.length);
                            vFocus = this.myActivity.mPageCurrent.findViewById(idCtrl);
                            if (vFocus != null) {
                                Log.d("key", " 55 getParaStr vFocus.getId() = " + vFocus.getId());
                            } else {
                                Log.d("key", " 55 getParaStr vFocus==null ");
                            }
                        }
                    }
                }
            }
            if (vFocus != null) {
                Log.d("key", " 66 onKeyHandle vFocus.getId() = " + vFocus.getId());
                checkFocusOnGridView(vFocus.getId());
                vFocus.requestFocusFromTouch();
            }
            if (CustomerUtil.isZHTDConfig() && (menu = (Page_Menu) this.myActivity.getPageNotify(this.ui, 10002)) != null) {
                menu.resetMenuButton();
            }
        }
    }

    public boolean isFocusOnGridView() {
        return this.isGrid;
    }

    public void checkFocusOnGridView(int id) {
        switch (id) {
            case FinalBtCtrl.Contact_ListView /* 10257 */:
            case FinalBtCtrl.History_ListView /* 10289 */:
            case FinalBtCtrl.Pair_ListView /* 10451 */:
                this.isGrid = true;
                break;
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSoundAmp() {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if ((pageNotify instanceof Page_Av) && this.myActivity.bTop) {
                ((Page_Av) pageNotify).updateSoundAmp();
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSoundLoud() {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if ((pageNotify instanceof Page_Av) && this.myActivity.bTop) {
                ((Page_Av) pageNotify).updateSoundLoud();
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSoundMode() {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if ((pageNotify instanceof Page_Av) && this.myActivity.bTop) {
                ((Page_Av) pageNotify).updateSoundMode();
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void setSwitch(boolean on) {
        Page_Set pageSet = getPageSet();
        if (pageSet != null) {
            pageSet.setSwitch(on);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updatePin(String strPin) {
        Page_Set pageSet = getPageSet();
        if (pageSet != null) {
            pageSet.updatePin(strPin);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void voiceSearchContact() {
        Page_Contact pageContact = getPageContact();
        if (pageContact != null) {
            pageContact.voiceSearchContact();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSystemTime() {
        if (this.myActivity.mPageCurrent != null) {
            IPageNotify pageNotify = this.myActivity.mPageCurrent.getNotify();
            if (this.myActivity.bTop && (pageNotify instanceof Page_Dial)) {
                ((Page_Dial) pageNotify).updateSystemTime();
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateSoundVol() {
        Page_Dial pageDial = getPageDial();
        if (pageDial != null) {
            pageDial.updateSoundVol();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void checkAppIdIsRight(int delay) {
        Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.Act_Bt.2
            @Override // java.lang.Runnable
            public void run() {
                if (Act_Bt.this.myActivity.mPageCurrent != null && Act_Bt.this.myActivity.mPageCurrent.getId() == 10010 && !Bt_IpcObj.isAppIdBtAv()) {
                    App_Bt.getInstance().mIpcObj.requestAppIdRight(FinalBtCtrl.Page_Av);
                }
            }
        }, delay);
    }

    public boolean isFocus(View view) {
        return view != null && view.isFocused() && view.getVisibility() == 0;
    }

    public View getFocus(JPage page) {
        View v = null;
        if (this.myActivity.bTop && page != null) {
            v = page.getFocusedChild();
            while (v instanceof ViewGroup) {
                v = ((ViewGroup) v).getFocusedChild();
            }
        }
        return v;
    }

    @Override // com.syu.bt.InterfaceBt
    public boolean isHalf() {
        return !TextUtils.isEmpty(MyUi.mStrHeadXml);
    }

    @Override // com.lsec.core.frame.app.MyAct
    public MyApp getMyApp() {
        return App_Bt.getInstance();
    }

    @Override // com.lsec.core.frame.app.MyAct
    public boolean includePage(int idPage) {
        return App_Bt.includePage(idPage);
    }

    @Override // com.syu.bt.InterfaceBt
    public void resetColor() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            String ss = BTUtil.getInstance().getSystemPro("persist.launcher.color", "0,0,123");
            String[] strArr = new String[3];
            String[] str = ss.split(",");
            App_Bt.color = Color.rgb(Integer.parseInt(str[0]), Integer.parseInt(str[1]), Integer.parseInt(str[2]));
            Log.d("color", " Act_Bt resetColor color = " + App_Bt.color);
            Page_Dial page_Dial = getPageDial();
            if (page_Dial != null) {
                page_Dial.setButtonColor(App_Bt.color);
            }
            Page_Contact page_Contact = getPageContact();
            if (page_Contact != null) {
                page_Contact.setButtonColor(App_Bt.color);
            }
            Page_Pair page_Pair = getPagePair();
            if (page_Pair != null) {
                page_Pair.setButtonColor(App_Bt.color);
            }
            Page_Set page_Set = getPageSet();
            if (page_Set != null) {
                page_Set.setButtonColor(App_Bt.color);
            }
            Page_History page_History = getPageHistory();
            if (page_History != null) {
                page_History.setButtonColor(App_Bt.color);
            }
            Page_Av page_Av = (Page_Av) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Av);
            if (page_Av != null) {
                page_Av.setButtonColor(App_Bt.color);
            }
            Page_Menu page_Menu = (Page_Menu) this.myActivity.getPageNotify(this.ui, 10002);
            if (page_Menu != null) {
                page_Menu.setButtonColor(App_Bt.color);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateShowDial() {
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.updateShowDial();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updatePhoneBattery(int level) {
        Page_Av page_Av = (Page_Av) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Av);
        if (page_Av != null) {
            page_Av.updatePhoneBattery(level);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void setDayOrNight(int value) {
        Page_PopBt pagePopBt;
        Page_PopBt pagePopBt2;
        JPage page;
        JPage page2;
        JPage page3;
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && MyApplication.mStrFolderAsset.equals("UI7") && (page3 = this.ui.getPage(10001)) != null) {
            if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                page3.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_main2000_bk" : "main2000_bk", this.mDrawables, this.mDrawables));
            } else {
                page3.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_main_bk" : "main_bk", this.mDrawables, this.mDrawables));
            }
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") && (page2 = this.ui.getPage(10001)) != null) {
            page2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_main_bk" : "main_bk", this.mDrawables, this.mDrawables));
        }
        if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
            JPage page4 = this.ui.getPage(10001);
            if (page4 != null) {
                page4.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_bt_bk" : "bt_bk", this.mDrawables, this.mDrawables));
            }
            Page_Menu page_Menu = getPageMenu();
            if (page_Menu != null) {
                page_Menu.setDayOrNight(value);
            }
        }
        Log.d("night", " 00 setDayOrNight App_Bt.mStrCustomer = " + App_Bt.mStrCustomer);
        if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
            Log.d("night", " 11 setDayOrNight App_Bt.mStrCustomer = " + App_Bt.mStrCustomer);
            JPage page5 = this.ui.getPage(10001);
            if (page5 != null) {
                page5.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_main_bk" : "main_bk", this.mDrawables, this.mDrawables));
            }
            Page_Menu page_Menu2 = getPageMenu();
            if (page_Menu2 != null) {
                page_Menu2.setDayOrNight(value);
            }
        }
        Log.d("bug", " 11 setDayOrNight ");
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") && (page = this.ui.getPage(10001)) != null) {
            page.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath(value > 0 ? "night_bt_bk" : "bt_bk", this.mDrawables, this.mDrawables));
            Log.d("bug", " 22 setDayOrNight ");
        }
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.setDayOrNight(value);
        }
        Page_Contact page_Contact = getPageContact();
        if (page_Contact != null) {
            page_Contact.setDayOrNight(value);
        }
        Page_Pair page_Pair = getPagePair();
        if (page_Pair != null) {
            page_Pair.setDayOrNight(value);
        }
        Page_Set page_Set = getPageSet();
        if (page_Set != null) {
            page_Set.setDayOrNight(value);
        }
        Page_History page_History = getPageHistory();
        if (page_History != null) {
            page_History.setDayOrNight(value);
        }
        Page_Av page_Av = (Page_Av) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Av);
        if (page_Av != null) {
            page_Av.setDayOrNight(value);
        }
        if (App_Bt.getInstance().bPopBtShow) {
            JPage pagePop = App_Bt.getInstance().uiApp.getPage(3);
            if (pagePop != null && (pagePopBt2 = (Page_PopBt) pagePop.getNotify()) != null) {
                pagePopBt2.setDayOrNight(value);
            }
            JPage pageNum = App_Bt.getInstance().uiApp.getPage(2);
            if (pageNum != null && (pagePopBt = (Page_PopBt) pageNum.getNotify()) != null) {
                pagePopBt.setDayOrNight(value);
            }
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void invilatePlayList() {
        Page_Contact page_Contact = getPageContact();
        if (page_Contact != null) {
            page_Contact.invilatePlayList();
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateCarplayAuto(int state) {
        Page_Pair page_Pair = getPagePair();
        if (page_Pair != null) {
            page_Pair.updateCarplayAuto(state > 0);
        }
        Page_Set page_Set = getPageSet();
        if (page_Set != null) {
            page_Set.updateCarplayAuto(state > 0);
        }
    }

    @Override // com.syu.bt.InterfaceBt
    public void updateBtNameAndPinTip() {
        Page_Av page_Av = (Page_Av) this.myActivity.getPageNotify(this.ui, FinalBtCtrl.Page_Av);
        if (page_Av != null) {
            page_Av.updateBtNameAndPinTip();
        }
        Page_Dial page_Dial = getPageDial();
        if (page_Dial != null) {
            page_Dial.updateBtNameAndPinTip();
        }
    }
}
