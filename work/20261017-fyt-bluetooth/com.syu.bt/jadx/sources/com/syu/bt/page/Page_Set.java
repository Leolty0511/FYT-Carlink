package com.syu.bt.page;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemProperties;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JEditText;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSwitchButton;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.Runnable_AnimDrawable;
import com.lsec.core.util.data.FinalChip;
import com.syu.Uvoice.UvoiceEcnr;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.JSwitchButon2;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.pop.ColorPickerDialog;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.ToastUtil;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Page_Set extends MyPage {
    public static Act_Bt actBt;
    public static JSwitchButon2 mSet_Switch_AI_KG;
    public static JSwitchButon2 mSet_Switch_AI_KG2;
    public static View tvBtAi;
    public static View tvBtAi2;
    public static JText tvSetCodec;
    public static JText tvSetMsbc;
    public static JText tvSetTxtAI;
    public static JText tvSetTxtAIKG;
    public static JText tvSetTxtAIKG2;
    public static JText tvSetTxtAI_KG;
    public static JText tvSetTxtAI_KG2;
    public static View vBtAiKG;
    public static View vBtAiKG2;
    public View View_Color;
    ValueAnimator animReset;
    public boolean bDevEditFlag;
    public boolean bPinEditFlag;
    JSwitchButton check_BtMic;
    private int idAutoSelect;
    public boolean isAutoAnswer;
    public boolean isClickReSet;
    public boolean isSetSelfLink;
    AnimationDrawable mAnimationDrawable;
    public JSwitchButon2 mBTOnOff;
    public JButton mBtReset;
    public JButton mBtRing;
    JButton mBtnPairSearch;
    JSwitchButton mButtonCarplayAuto;
    JSwitchButon2 mButtonCarplayAuto2;
    public EditText mEditName;
    public EditText mEditPin;
    private View.OnFocusChangeListener mFocus;
    View mProgLoad;
    Runnable_AnimDrawable mRunnable_AnimDrawable;
    public Runnable mRunnable_ColorDlgShow;
    public JSwitchButon2 mSB2;
    public JSwitchButon2 mSMS2;
    public JText mTextCarplayAuto;
    public JText mTvPin;
    public View mViewPin;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    int resetDelay;
    public int[] sb_set;
    String strBtAvMicSet;
    String strPhoneMicSet;
    String strRingLevel;
    public JText tvBtAvMicSet;
    public JText tvBtReset;
    public JText tvColor;
    public JText tvDevName;
    public JText tvLinkName;
    public JText tvPhoneMicSet;
    public JText tvPhoneState;
    public JText tvPin;
    public JText tvRingName;
    public JText tvRingSet;
    public JText tv_BtMic;
    public static boolean isSetStartDiscovey = false;
    static boolean iRunnAIQR_BTN = true;
    public static Runnable mRunnAIQR_BTN = new Runnable() { // from class: com.syu.bt.page.Page_Set.2
        @Override // java.lang.Runnable
        public void run() {
            Page_Set.iRunnAIQR_BTN = true;
        }
    };
    public static Runnable mRunnExitAIQR = new Runnable() { // from class: com.syu.bt.page.Page_Set.3
        @Override // java.lang.Runnable
        public void run() {
            SystemProperties.set("sys.blinkbt.ai.noise.scan", "0");
        }
    };
    public static int iRunnAIQR = 0;
    public static Runnable mRunnAIQR = new Runnable() { // from class: com.syu.bt.page.Page_Set.4
        @Override // java.lang.Runnable
        public void run() {
            Log.d("AIQR3", "  000  mRunnAIQR 扫码后自动激活  isAiuvoice = " + App_Bt.isAiuvoice + " iRunnAIQR = " + Page_Set.iRunnAIQR);
            if (App_Bt.isAiuvoice) {
                Main.removeRunnable_Ui(Page_Set.mRunnAIQR);
                if (Page_Set.actBt.DismissPopAIQR()) {
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai5"));
                    return;
                }
                return;
            }
            byte[] qr_code = new byte[1024];
            qr_code[0] = 0;
            int ok = App_Bt.getInstance().AIUvEcnr();
            Log.d("ai", "  444 Set_Btn_AI checkQrCode ok =" + ok + " iRunnAIQR = " + Page_Set.iRunnAIQR);
            if (ok == 0) {
                Main.removeRunnable_Ui(Page_Set.mRunnAIQR);
                Page_Set.actBt.DismissPopAIQR();
                Page_Set.updateAI();
                Page_Set.updateAIKG();
                return;
            }
            Page_Set.iRunnAIQR++;
            if (Page_Set.iRunnAIQR < 3) {
                Main.postRunnable_Ui(true, Page_Set.mRunnAIQR, 5000L);
            } else if (Page_Set.actBt.DismissPopAIQR()) {
                ToastUtil.getInstance().showMessage(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_ai6")) + "  Code : " + ok);
            }
        }
    };

    public Page_Set(JPage page, Act_Bt actBt2) {
        super(page, App_Bt.getInstance().uiApp);
        this.isSetSelfLink = false;
        this.isClickReSet = false;
        this.bDevEditFlag = false;
        this.bPinEditFlag = false;
        this.idAutoSelect = -1;
        this.isAutoAnswer = false;
        this.sb_set = new int[1];
        this.mRunnable_AnimDrawable = null;
        this.nightBtn = new int[]{FinalBtCtrl.Set_Btn_DevNameOk, FinalBtCtrl.Set_Btn_PinOk, FinalBtCtrl.Set_Switch_AutoAnswer_2, FinalBtCtrl.Set_Switch_SMS_2, FinalBtCtrl.Set_Edit_DevName, FinalBtCtrl.Set_Edit_Pin, FinalBtCtrl.Set_Btn_Ring, FinalBtCtrl.Set_Btn_Reset, FinalBtCtrl.Set_Btn_RingTone, FinalBtCtrl.Set_Btn_RingVoice, FinalBtCtrl.Set_Btn_RingOff, FinalBtCtrl.Set_Btn_Update, FinalBtCtrl.Set_Btn_AI, FinalBtCtrl.Set_Btn_AI2, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set, FinalBtCtrl.Set_Btn_Msbc, FinalBtCtrl.Set_Btn_Codec, FinalBtCtrl.Set_Btn_AI2};
        this.nightView = new int[]{FinalBtCtrl.MenuView_bk, FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.TZY_View_Change_3, FinalBtCtrl.TZY_View_Change_4, FinalBtCtrl.TZY_View_Change_5, FinalBtCtrl.TZY_View_Change_6, FinalBtCtrl.TZY_View_Change_7, FinalBtCtrl.TZY_View_Change_8, FinalBtCtrl.TZY_View_Change_9, FinalBtCtrl.TZY_View_Change_10, FinalBtCtrl.TZY_View_Change_11, FinalBtCtrl.TZY_View_Change_12};
        this.nightText = new int[]{FinalBtCtrl.Txt_Btn_DevNameOk, FinalBtCtrl.Txt_Btn_PinOk, FinalBtCtrl.Txt_Btn_AutoAnswer, FinalBtCtrl.Txt_Btn_SMS, FinalBtCtrl.Txt_Btn_RingName, FinalBtCtrl.Set_Txt_RingName, FinalBtCtrl.Set_Txt_SMS, FinalBtCtrl.Set_Txt_AI, FinalBtCtrl.Set_Txt_AutoAnswer, FinalBtCtrl.Set_Txt_Reset, FinalBtCtrl.TZY_Text_Change_1, FinalBtCtrl.Set_Txt_AI_KG, FinalBtCtrl.Set_Txt_Msbc, FinalBtCtrl.Set_Txt_Codec, FinalBtCtrl.Set_Txt_AI2, FinalBtCtrl.Set_Txt_AIKG, FinalBtCtrl.TZY_Text_Change_2, FinalBtCtrl.TZY_Text_Change_3, FinalBtCtrl.TZY_Text_Change_4, FinalBtCtrl.TZY_Text_Change_5, FinalBtCtrl.TZY_Text_Change_6, FinalBtCtrl.TZY_Text_Change_7, FinalBtCtrl.TZY_Text_Change_8, FinalBtCtrl.TZY_Text_Change_9, FinalBtCtrl.TZY_Text_Change_10, FinalBtCtrl.TZY_Text_Change_11, FinalBtCtrl.TZY_Text_Change_12, FinalBtCtrl.TZY_Text_Change_13, FinalBtCtrl.TZY_Text_Change_14};
        this.mFocus = new View.OnFocusChangeListener() { // from class: com.syu.bt.page.Page_Set.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View v, boolean hasFocus) {
                Log.d("edit", " Set_Edit_DevName no Focus hasFocus = " + hasFocus + "  v.getId() = " + v.getId());
                if (hasFocus) {
                    switch (v.getId()) {
                        case FinalBtCtrl.Set_Edit_DevName /* 10381 */:
                            Page_Set.this.bDevEditFlag = true;
                            Page_Set.this.bPinEditFlag = false;
                            break;
                        case FinalBtCtrl.Set_Edit_Pin /* 10383 */:
                            Page_Set.this.bDevEditFlag = false;
                            Page_Set.this.bPinEditFlag = true;
                            break;
                    }
                }
                switch (v.getId()) {
                    case FinalBtCtrl.Set_Edit_DevName /* 10381 */:
                        Log.d("edit", " Set_Edit_DevName no Focus ");
                        EditText tvName = (EditText) v;
                        if (!tvName.getText().toString().equals(Bt_IpcObj.getDevName()) && TextUtils.isEmpty(Bt_IpcObj.getDevName())) {
                            tvName.setText(Bt_IpcObj.getDevName());
                            Page_Set.this.setBtName(Bt_IpcObj.getDevName());
                            break;
                        }
                        break;
                    case FinalBtCtrl.Set_Edit_Pin /* 10383 */:
                        EditText tvpin = (EditText) v;
                        if (!tvpin.getText().toString().equals(Bt_IpcObj.getDevPin())) {
                            tvpin.setText(Bt_IpcObj.getDevPin());
                            Page_Set.this.setBtPin(Bt_IpcObj.getDevPin());
                        }
                        break;
                }
            }
        };
        this.resetDelay = 0;
        this.mRunnable_ColorDlgShow = new Runnable() { // from class: com.syu.bt.page.Page_Set.5
            @Override // java.lang.Runnable
            public void run() {
                ColorPickerDialog dialog = new ColorPickerDialog(Page_Set.actBt.myActivity, App_Bt.color_set, App_Bt.getInstance().uiApp.getString("bt_bt_color"), new ColorPickerDialog.OnColorChangedListener() { // from class: com.syu.bt.page.Page_Set.5.1
                    @Override // com.syu.bt.page.pop.ColorPickerDialog.OnColorChangedListener
                    public void colorChanged(int color) throws Throwable {
                        App_Bt.color_set = color;
                        App_Bt.getInstance().mySharePreference2.saveIntValue("colortype", App_Bt.color_set);
                        Log.d("gdy7", " 11 Set_Btn_Color = " + color);
                        JPage pageMenu = Page_Set.actBt.ui.mPages.get(10002);
                        JView ivBgColor = (JView) pageMenu.getChildViewByid(FinalBtCtrl.View_Bg_Color);
                        if (ivBgColor != null) {
                            int[] colors = {-15724528, App_Bt.color_set};
                            GradientDrawable bg = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, colors);
                            bg.setCornerRadius(100.0f);
                            ivBgColor.setBackground(bg);
                        }
                    }
                });
                Log.d("gdy7", " 22 color_set = " + App_Bt.color_set);
                dialog.show();
            }
        };
        actBt = actBt2;
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }

    public void onNotify_Sound(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify_Sound(this, updateCode, ints, flts, strs);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() throws Throwable {
        JPage pageMenu;
        int value;
        if (actBt.myActivity.bTop) {
            if (App_Bt.mBtType == 7 && "6318".equals(App_Bt.mStrPlatForm)) {
                Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.page.Page_Set.6
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d("gtai", " 11 PageSet resume postRunnable_Ui iAI_GT = " + App_Bt.iAI_GT);
                        if (App_Bt.bAI_GT) {
                            Page_Set.updateAIKG();
                            Page_Set.updateAI();
                        } else if (App_Bt.iAI_GT < 5) {
                            Main.postRunnable_Ui(true, this, 1500L);
                        }
                    }
                }, 50L);
            } else if (App_Bt.bAI_GT) {
                updateAIKG();
            }
            Log.d("gdyy ", " 11 PageSet resume postRunnable_Ui iAI_GT = " + App_Bt.iAI_GT + " App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2);
            if (App_Bt.isAIGT_Aiuvoice != 65535 && App_Bt.bAI_JZ2) {
                App_Bt.isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
                App_Bt.isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
                showAIGT();
                if (App_Bt.isAIGT_Aiuvoice != 0) {
                    Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.page.Page_Set.7
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.d("gtai", " 11 PageSet resume postRunnable_Ui iAI_GT = " + App_Bt.iAI_GT);
                            Page_Set.showAIGT();
                        }
                    }, 2000L);
                }
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Set();
            App_Bt.getInstance().mIpcObj.recoverAppId();
            if (this.tvPhoneMicSet != null) {
                this.tvPhoneMicSet.setFocusable(true);
                this.tvPhoneMicSet.setFocusableInTouchMode(true);
                this.tvPhoneMicSet.requestFocus();
            }
            if (this.mEditName != null) {
                this.mEditName.setText(Bt_IpcObj.getDevName());
                this.mEditName.clearFocus();
            }
            if (this.mEditPin != null) {
                if (!TextUtils.isEmpty(Bt.sDevPin)) {
                    this.mEditPin.setText(Bt_IpcObj.getDevPin());
                } else {
                    String strDiyPin = App_Bt.getDiyPin();
                    if (!TextUtils.isEmpty(strDiyPin)) {
                        Bt_IpcObj.setDevPin(strDiyPin);
                        this.mEditPin.setText(Bt_IpcObj.getDevPin());
                    }
                }
            }
            if (this.mTvPin != null) {
                this.mTvPin.setText(Bt_IpcObj.getDevPin());
            }
            if (this.tvDevName != null) {
                this.tvDevName.setText(Bt_IpcObj.getDevName());
            }
            if (this.tvPin != null) {
                this.tvPin.setText(Bt_IpcObj.getDevPin());
            }
            if (this.check_BtMic != null) {
                String set_mic = SystemProperties.get("persist.btmic.switch", "external");
                Log.d("gdy", " resume set mic set_mic = " + set_mic);
                this.check_BtMic.setChecked(set_mic.equals("external"));
                if (this.tv_BtMic != null) {
                    this.tv_BtMic.setText(set_mic);
                }
            }
            if (this.tvPhoneState != null && (value = Bt.DATA[9]) >= 0 && value <= 6) {
                this.tvPhoneState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
            }
            if (this.tvLinkName != null) {
                this.tvLinkName.setText(Bt.sPhoneName);
            }
            if (this.tvRingSet != null) {
                this.strRingLevel = String.valueOf(App_Bt.iRingLevel);
                this.tvRingSet.setText(this.strRingLevel);
            }
            if (this.mBTOnOff != null) {
                this.mBTOnOff.setSwitch(App_Bt.bBtPowerOnOff);
            }
            Log.d("pop", " resume updateMsbc ");
            updateMsbc();
            updateCodec();
            if (this.tvPhoneMicSet != null) {
                App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
                App_Bt.iPhoneMicSet = App_Bt.SB[2];
                this.strPhoneMicSet = String.valueOf(App_Bt.iPhoneMicSet);
                this.tvPhoneMicSet.setText(this.strPhoneMicSet);
            }
            if (this.tvBtAvMicSet != null) {
                App_Bt.SB = App_Bt.getInstance().mIpcObj.getSB();
                App_Bt.iBtAvMicSet = App_Bt.SB[3];
                this.strBtAvMicSet = String.valueOf(App_Bt.iBtAvMicSet);
                this.tvBtAvMicSet.setText(this.strBtAvMicSet);
            }
            if (this.tvRingName != null) {
                String ringName = App_Bt.getInstance().mySharePreference2.getStringValue("name_ring");
                if (!TextUtils.isEmpty(ringName)) {
                    this.tvRingName.setText(ringName);
                } else {
                    this.tvRingName.setText(App_Bt.getInstance().uiApp.getString("bt_ring_none"));
                }
            }
            updateCarplayAuto(App_Bt.bCarLinkAutoConnect);
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
            }
            resetList_BtSet(App_Bt.mBtInfo.mListSetPair);
            updateRingSelect(App_Bt.getInstance().mySharePreference2.getIntValue("ringtype", 2));
            setSmsFunction(App_Bt.bSms_Ctrl);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        if (this.mEditName != null) {
            this.mEditName.clearFocus();
            App_Bt.getInstance().hideInput(this.mEditName);
        }
        if (this.mEditPin != null) {
            this.mEditPin.clearFocus();
            App_Bt.getInstance().hideInput(this.mEditPin);
        }
        dismissPopBtRing();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() throws Throwable {
        LinearLayout lay;
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.mEditName = (EditText) getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
        if (this.mEditName != null) {
            this.mEditName.setText(Bt_IpcObj.getDevName());
            this.mEditName.setSingleLine();
            this.mEditName.setEms(16);
            this.mEditName.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
            this.mEditName.setEllipsize(TextUtils.TruncateAt.END);
            this.mEditName.setOnFocusChangeListener(this.mFocus);
            this.mEditName.setInputType(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_END);
        }
        this.mViewPin = getPage().getChildViewByid(FinalBtCtrl.Set_view_Pin);
        if (this.mViewPin != null) {
            if ("890A".equals(App_Bt.mStrPlatForm) || "6318".equals(App_Bt.mStrPlatForm) || "6319".equals(App_Bt.mStrPlatForm) || FinalChip.BSP_PLATFORM_6321.equals(App_Bt.mStrPlatForm)) {
                this.mViewPin.setVisibility(8);
            } else {
                int hide_pin = SystemProperties.getInt("persist.btpair.ssp", 0);
                this.mViewPin.setVisibility(hide_pin == 1 ? 8 : 0);
            }
        }
        this.mEditPin = (EditText) getPage().getChildViewByid(FinalBtCtrl.Set_Edit_Pin);
        View viewCarplayAuto = getPage().getChildViewByid(FinalBtCtrl.Set_View_CarplayAutoLink);
        if (MyApplication.mIdCustomer == 112 || MyApplication.mIdCustomer == 140) {
            if (viewCarplayAuto != null) {
                viewCarplayAuto.setVisibility(0);
            }
            this.mButtonCarplayAuto = (JSwitchButton) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_CarplayAutoLink);
            this.mButtonCarplayAuto2 = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_CarplayAutoLink2);
            this.mTextCarplayAuto = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_CarplayAutoLink);
        } else if (viewCarplayAuto != null) {
            viewCarplayAuto.setVisibility(8);
        }
        if (this.mEditPin != null) {
            this.mEditPin.setTypeface(Typeface.MONOSPACE);
            String strDiyPin = App_Bt.getDiyPin();
            if (!strDiyPin.equals(Bt.sDevPin)) {
                Bt_IpcObj.setDevPin(strDiyPin);
            }
            this.mEditPin.setText(strDiyPin);
            this.mEditPin.setEms(4);
            this.mEditPin.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
            this.mEditPin.setSingleLine();
            this.mEditPin.setInputType(2);
            this.mEditPin.setOnFocusChangeListener(this.mFocus);
        }
        this.check_BtMic = (JSwitchButton) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_BtMic);
        this.tv_BtMic = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_BtMic);
        this.View_Color = getPage().getChildViewByid(FinalBtCtrl.Set_View_Color);
        this.mTvPin = (JText) getPage().getChildViewByid(FinalBtCtrl.SetPin_TXT_PASSWORD);
        if (this.mTvPin != null) {
            this.mTvPin.setText(Bt_IpcObj.getDevPin());
        }
        this.tvDevName = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_DevName);
        if (this.tvDevName != null) {
            this.tvDevName.setText(Bt_IpcObj.getDevName());
        }
        this.tvPin = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Pin);
        if (this.tvPin != null) {
            this.tvPin.setText(Bt_IpcObj.getDevPin());
        }
        this.tvPhoneState = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State2);
        int value = Bt.DATA[9];
        if (this.tvPhoneState != null && value >= 0 && value <= 6) {
            this.tvPhoneState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
        }
        this.tvLinkName = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName2);
        if (this.tvLinkName != null) {
            this.tvLinkName.setText(Bt.sPhoneName);
        }
        this.mSB2 = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_Color);
        if (this.mSB2 != null) {
            this.mSB2.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.8
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() throws Throwable {
                    Page_Set.this.setColorSwitch(true);
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() throws Throwable {
                    Page_Set.this.setColorSwitch(false);
                }
            });
        }
        if (this.mButtonCarplayAuto2 != null) {
            this.mButtonCarplayAuto2.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.9
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() {
                    Log.d("gdy", " 00  Set_Switch_CarplayAutoLink2 onSwitchOn  ");
                    Bt_IpcObj.setCarLinkAutoConnect(true);
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() {
                    Log.d("gdy", " 00  Set_Switch_CarplayAutoLink2 onSwitchOff  ");
                    Bt_IpcObj.setCarLinkAutoConnect(false);
                }
            });
        }
        mSet_Switch_AI_KG2 = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AI_KG2);
        if (mSet_Switch_AI_KG2 != null) {
            mSet_Switch_AI_KG2.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.10
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() {
                    if (App_Bt.isAIGT_Aiuvoice == 0) {
                        Page_Set.actBt.popDeleteContacts(14, App_Bt.getInstance().uiApp.getString("bt_aikg3"));
                    } else {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai7"));
                    }
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() {
                    if (App_Bt.isAIGT_Aiuvoice == 0) {
                        Page_Set.actBt.popDeleteContacts(14, App_Bt.getInstance().uiApp.getString("bt_aikg4"));
                    } else {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai7"));
                    }
                }
            });
        }
        this.mSB2 = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AutoAnswer_2);
        if (this.mSB2 != null) {
            this.mSB2.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.11
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() {
                    Log.d("sms", " 00 mSB2 != null   ");
                    Page_Set.this.setAutoAnswer(true);
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() {
                    Page_Set.this.setAutoAnswer(false);
                }
            });
        }
        this.mSMS2 = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_SMS_2);
        if (this.mSMS2 != null) {
            Log.d("sms", " 00 mSB2 != null   ");
            this.mSMS2.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.12
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() throws Throwable {
                    Log.d("sms", " 11 setSmsFunction(true)  ");
                    Page_Set.this.setSmsFunction(true);
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() throws Throwable {
                    Log.d("sms", " 22 setSmsFunction(false)  ");
                    Page_Set.this.setSmsFunction(false);
                    App_Bt.getInstance().popPhoneSMS(false);
                }
            });
        }
        this.mBTOnOff = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_BtSwitch_2);
        if (this.mBTOnOff != null) {
            this.mBTOnOff.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.13
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() {
                    Bt_IpcObj.setBtSwitch(true);
                    Page_Set.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_opening"));
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() {
                    Bt_IpcObj.setBtSwitch(false);
                    Page_Set.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_closing"));
                }
            });
        }
        this.tvRingSet = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_RingLevel);
        this.tvPhoneMicSet = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_PhoneMicSet);
        this.tvBtAvMicSet = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_BtAvMicSet);
        this.mBtnPairSearch = (JButton) getPage().getChildViewByid(FinalBtCtrl.Pair_Btn_Search);
        this.tvRingName = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_RingName);
        this.tvColor = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Color);
        tvSetTxtAI = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AI);
        mSet_Switch_AI_KG = (JSwitchButon2) getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AI_KG);
        if (mSet_Switch_AI_KG != null) {
            mSet_Switch_AI_KG.setOnSwitchStateLisenter(new JSwitchButon2.OnSwitchStateLisenter() { // from class: com.syu.bt.page.Page_Set.14
                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOn() {
                    Page_Set.actBt.popDeleteContacts(12, App_Bt.getInstance().uiApp.getString(App_Bt.isAIOnOff ? "bt_aikg4" : "bt_aikg3"));
                }

                @Override // com.syu.bt.ctrl.JSwitchButon2.OnSwitchStateLisenter
                public void onSwitchOff() {
                    Page_Set.actBt.popDeleteContacts(12, App_Bt.getInstance().uiApp.getString(App_Bt.isAIOnOff ? "bt_aikg4" : "bt_aikg3"));
                }
            });
        }
        tvSetTxtAI_KG = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AI_KG);
        tvSetTxtAIKG = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AIKG);
        tvSetTxtAIKG2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AIKG2);
        tvSetTxtAI_KG2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AI_KG2);
        App_Bt.isAIOnOff = App_Bt.isAiuvoice && SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
        updateAI();
        tvSetMsbc = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Msbc);
        tvSetCodec = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Codec);
        if (this.tvColor != null) {
            this.tvColor.setText(App_Bt.getInstance().uiApp.getString(App_Bt.color_show ? "bt_opened" : "bt_closed"));
        }
        this.mBtReset = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_Reset);
        this.tvBtReset = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Reset);
        int id_facturer = SystemProperties.getInt("ro.build.fytmanufacturer", 0);
        View tvBtUpdate = getPage().getChildViewByid(FinalBtCtrl.Set_View_Update);
        if (App_Bt.mBtType != 4 && App_Bt.mBtType != 6 && App_Bt.mBtType != 7) {
            if (tvBtUpdate != null) {
                tvBtUpdate.setVisibility(8);
            }
        } else if (CustomerUtil.isZhangConfig() && App_Bt.mBtType == 4) {
            BTUtil.getInstance().setFileName("bc5update.dfu");
        } else {
            BTUtil.getInstance().setFileName("BT.bin");
        }
        if (id_facturer == 53 && tvBtUpdate != null) {
            tvBtUpdate.setVisibility(8);
        }
        tvBtAi = getPage().getChildViewByid(FinalBtCtrl.Set_View_AI);
        if (tvBtAi != null) {
            Log.d("gdy11", " ** 55 Page_set ***  mBtType = " + App_Bt.mBtType + " isAIType = " + App_Bt.isAIType);
            if (App_Bt.isAIType >= 0) {
                tvBtAi.setVisibility(0);
            } else {
                tvBtAi.setVisibility(8);
            }
        }
        tvBtAi2 = getPage().getChildViewByid(FinalBtCtrl.Set_View_AI2);
        if (tvBtAi2 != null) {
            Log.d("ai", " 44 Page_Set  tvBtAi2 isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  App_Bt.mRoPlatForm = " + App_Bt.mRoPlatForm);
            if ((App_Bt.isAIGT_Aiuvoice == 1 || App_Bt.isAIGT_Aiuvoice == 1873) && (App_Bt.mRoPlatForm.equals("825") || App_Bt.mRoPlatForm.equals("6316"))) {
                tvBtAi2.setVisibility(0);
            } else {
                tvBtAi2.setVisibility(8);
            }
        }
        vBtAiKG2 = getPage().getChildViewByid(FinalBtCtrl.Set_View_AI_KG2);
        if (vBtAiKG2 != null) {
            Log.d("ai", " 33 Page_Set  showAIGT isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  0xffff = " + SupportMenu.USER_MASK);
            if (App_Bt.isAIGT_Aiuvoice != 65535) {
                vBtAiKG2.setVisibility(0);
            } else {
                vBtAiKG2.setVisibility(8);
            }
        }
        vBtAiKG = getPage().getChildViewByid(FinalBtCtrl.Set_View_AI_KG);
        if (vBtAiKG != null) {
            if (App_Bt.isAiuvoice) {
                vBtAiKG.setVisibility(0);
            } else {
                vBtAiKG.setVisibility(8);
            }
        }
        this.mProgLoad = getPage().getChildViewByid(FinalBtCtrl.Set_LoadProg);
        if (this.mProgLoad != null) {
            MyUiItem item = (MyUiItem) this.mProgLoad.getTag();
            String[] str = item.getStrDrawableExtra();
            if (str != null && str.length > 0) {
                this.mAnimationDrawable = (AnimationDrawable) getPage().getDrawableFromPath(str[0], getPage().mDrawables, getPage().mDrawables);
            }
        }
        View view = getPage().getChildViewByid(FinalBtCtrl.Set_View_Ring);
        if (view != null) {
            if (CustomerUtil.is7731() || App_Bt.mBtType == 0 || App_Bt.mBtType == 7) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
            if (id_facturer == 53) {
                view.setVisibility(8);
            }
            if (MyApplication.mIdCustomer == 139) {
                view.setVisibility(8);
            }
        }
        Log.d("pop", " App_Bt.mBtType = " + App_Bt.mBtType + " mIdPlatForm = " + MyApplication.mIdPlatForm + " mStrPlatForm = " + App_Bt.mStrPlatForm);
        View view1 = getPage().getChildViewByid(FinalBtCtrl.Set_View_Msbc);
        if (view1 != null) {
            if (App_Bt.mBtType == 1 && ("6318".equals(App_Bt.mStrPlatForm) || FinalChip.BSP_PLATFORM_6321.equals(App_Bt.mStrPlatForm) || "6319".equals(App_Bt.mStrPlatForm) || "890A".equals(App_Bt.mStrPlatForm))) {
                view1.setVisibility(0);
            } else {
                view1.setVisibility(8);
            }
        }
        View view2 = getPage().getChildViewByid(FinalBtCtrl.Set_View_Codec);
        if (view2 != null) {
            if (App_Bt.mBtType == 1 && ("6318".equals(App_Bt.mStrPlatForm) || FinalChip.BSP_PLATFORM_6321.equals(App_Bt.mStrPlatForm) || "6319".equals(App_Bt.mStrPlatForm) || "890A".equals(App_Bt.mStrPlatForm))) {
                int baudrate = SystemProperties.getInt("persist.blinkbt.baudrate", 0);
                Log.d("pop", " **  Set_View_Codec   baudrate = " + baudrate);
                if (baudrate == 500000) {
                    view2.setVisibility(8);
                } else {
                    view2.setVisibility(0);
                }
            } else {
                view2.setVisibility(8);
            }
        }
        if (CustomerUtil.isYFConfig() && (lay = (LinearLayout) getPage().getChildViewByid(FinalBtCtrl.Set_Layout)) != null) {
            lay.setFocusable(true);
            lay.setFocusableInTouchMode(true);
        }
        setButtonColor(App_Bt.color);
        initTypeface();
        setDayOrNight(App_Bt.mColorType);
    }

    public void setBtName(String name) {
        JText text2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_DevName);
        if (text2 != null) {
            text2.setText(name);
        }
        JText text3 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_DevName2);
        if (text3 != null) {
            text3.setText(name);
        }
    }

    public void setBtPin(String pin) {
        JText text4 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Pin);
        if (text4 != null) {
            text4.setText(pin);
        }
        JText text5 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Pin2);
        if (text5 != null) {
            text5.setText(pin);
        }
    }

    public void updateResetEnable(boolean flag) {
        this.isClickReSet = !flag;
        if (this.mBtReset != null) {
            this.mBtReset.setEnabled(flag);
        }
        if (this.animReset == null) {
            this.animReset = ValueAnimator.ofInt(20, 0);
            this.animReset.setDuration(40000L);
            this.animReset.setInterpolator(new TimeInterpolator() { // from class: com.syu.bt.page.Page_Set.15
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float arg0) {
                    return arg0;
                }
            });
            this.animReset.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.syu.bt.page.Page_Set.16
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator arg0) {
                    int cur = ((Integer) arg0.getAnimatedValue()).intValue();
                    if (Page_Set.this.resetDelay != cur) {
                        Page_Set.this.resetDelay = cur;
                        if (cur < 1) {
                            Page_Set.actBt.uiUtil.disLoading();
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_reset_fail"));
                            Page_Set.this.updateResetEnable(true);
                        } else if (Page_Set.this.tvBtReset != null) {
                            Page_Set.this.tvBtReset.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_reset")) + cur);
                        }
                    }
                }
            });
        }
        if (flag) {
            if (this.tvBtReset != null) {
                this.tvBtReset.setText(App_Bt.getInstance().uiApp.getString("bt_reset"));
            }
            if (this.animReset != null) {
                this.animReset.cancel();
                return;
            }
            return;
        }
        if (this.animReset != null) {
            this.animReset.cancel();
            this.animReset.start();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        switch (v.getId()) {
            case FinalBtCtrl.SetPin_del /* 10538 */:
                if (this.mTvPin != null) {
                    this.mTvPin.setText(FinalChip.BSP_PLATFORM_Null);
                }
                break;
        }
        return false;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) throws Throwable {
        String temp;
        if (!BTUtil.getInstance().IsConnectCarplay() && !actBt.MenuClick(v)) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Dial_Btn_Link /* 10159 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.link();
                    }
                    break;
                case FinalBtCtrl.Dial_Btn_Disconnect /* 10160 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.cut();
                    }
                    break;
                case FinalBtCtrl.Set_Btn_AutoAnswerOn /* 10355 */:
                    setAutoAnswer(true);
                    break;
                case FinalBtCtrl.Set_Btn_AutoAnswerOff /* 10356 */:
                    setAutoAnswer(false);
                    break;
                case FinalBtCtrl.Set_Btn_AutoAnswerOnOffSellect /* 10357 */:
                    if (this.isAutoAnswer) {
                        Bt_IpcObj.setAutoAnswer(false);
                    } else {
                        Bt_IpcObj.setAutoAnswer(true);
                    }
                    break;
                case FinalBtCtrl.Set_Btn_DevNameOk /* 10358 */:
                    if (this.mEditName != null) {
                        this.mEditName.clearFocus();
                        App_Bt.getInstance().hideInput(this.mEditName);
                    }
                    EditText edit = (EditText) getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
                    if (edit != null) {
                        String tmpDevName = edit.getText().toString();
                        if (TextUtils.isEmpty(tmpDevName)) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_device_name_not_null"));
                        } else {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_update_successed"));
                            Log.d("name", " 11 Set_Btn_DevNameOk setDevName  tmpDevName = " + tmpDevName);
                            Bt_IpcObj.setDevName(tmpDevName);
                            switch (MyApplication.mIdCustomer) {
                                case 53:
                                    if (this.bDevEditFlag) {
                                        this.bDevEditFlag = false;
                                        if (this.mSB2 != null) {
                                            this.mSB2.setFocusableInTouchMode(true);
                                        }
                                        Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.page.Page_Set.17
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                EditText edit3 = (EditText) Page_Set.this.getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
                                                edit3.clearFocus();
                                            }
                                        }, 1000L);
                                        if (this.mSB2 != null) {
                                            App_Bt.getInstance().hideInput(this.mSB2);
                                        }
                                    }
                                    break;
                            }
                            App_Bt.getInstance().SaveConfig(tmpDevName, App_Bt.getDiyPin());
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_PinOk /* 10360 */:
                    String tmpPin = null;
                    EditText edit2 = (EditText) getPage().getChildViewByid(FinalBtCtrl.Set_Edit_Pin);
                    if (edit2 != null) {
                        tmpPin = edit2.getText().toString();
                    } else if (this.mTvPin != null) {
                        tmpPin = this.mTvPin.getText().toString();
                    }
                    if (TextUtils.isEmpty(tmpPin) || (!TextUtils.isEmpty(tmpPin) && tmpPin.length() < 4)) {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_pin_prompt"));
                    } else {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_update_successed"));
                        Bt_IpcObj.setDevPin(tmpPin);
                        switch (MyApplication.mIdCustomer) {
                            case 53:
                                if (this.bPinEditFlag) {
                                    this.bPinEditFlag = false;
                                    App_Bt.getInstance().hideInput(edit2);
                                    EditText edit3 = (EditText) getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
                                    edit3.setFocusableInTouchMode(true);
                                    edit2.clearFocus();
                                }
                                break;
                        }
                        App_Bt.getInstance().SaveConfig(App_Bt.getDiyName(), tmpPin);
                        if (this.mEditPin != null) {
                            this.mEditPin.clearFocus();
                            App_Bt.getInstance().hideInput(this.mEditPin);
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_Reset /* 10362 */:
                    actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_closing"));
                    if (!this.isClickReSet && App_Bt.bBtPowerOnOff) {
                        App_Bt.getInstance().mySharePreference2.saveStringValue("name_diy", App_Bt.strDefaultName);
                        App_Bt.getInstance().mySharePreference2.saveStringValue("pin_diy", App_Bt.strDefaultPin);
                        App_Bt.getInstance().SaveConfig(App_Bt.strDefaultName, App_Bt.strDefaultPin);
                        Bt_IpcObj.Reset();
                        actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_resetting"));
                        updateResetEnable(false);
                        if (App_Bt.mBtInfo.mListPair != null) {
                            App_Bt.mBtInfo.mListPair.clear();
                        }
                        File file = new File("/mnt/sdcard/.btring/ring.mp3");
                        if (file.exists() && file.isFile()) {
                            file.delete();
                            break;
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_SMS /* 10368 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        if (App_Bt.bSms_Ctrl) {
                            setSmsFunction(false);
                            App_Bt.getInstance().popPhoneSMS(false);
                        } else {
                            setSmsFunction(true);
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_Ring /* 10372 */:
                    if (!this.isClickReSet) {
                        popBtRing();
                    }
                    break;
                case FinalBtCtrl.Set_Btn_Color /* 10373 */:
                    Main.postRunnable_Ui(true, this.mRunnable_ColorDlgShow, 800L);
                    break;
                case FinalBtCtrl.Set_Btn_Update /* 10375 */:
                    if (!this.isClickReSet) {
                        if (BTUtil.getInstance().isExistFile()) {
                            actBt.popDeleteContacts(7, App_Bt.getInstance().uiApp.getString("bt_update_config"));
                        } else {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_update_nofile"));
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_RingTone /* 10377 */:
                    App_Bt.getInstance().mySharePreference2.saveIntValue("ringtype", 1);
                    updateRingSelect(1);
                    break;
                case FinalBtCtrl.Set_Btn_RingVoice /* 10378 */:
                    App_Bt.getInstance().mySharePreference2.saveIntValue("ringtype", 2);
                    updateRingSelect(2);
                    break;
                case FinalBtCtrl.Set_Btn_RingOff /* 10379 */:
                    App_Bt.getInstance().mySharePreference2.saveIntValue("ringtype", 3);
                    updateRingSelect(3);
                    break;
                case FinalBtCtrl.Set_Switch_AutoAnswer /* 10380 */:
                    JSwitchButton switchButton = (JSwitchButton) v;
                    if (switchButton.isChecked()) {
                        Bt_IpcObj.setAutoAnswer(true);
                    } else {
                        Bt_IpcObj.setAutoAnswer(false);
                    }
                    break;
                case FinalBtCtrl.Set_Btn_BtSwitch /* 10385 */:
                    JSwitchButton switchButton2 = (JSwitchButton) v;
                    if (switchButton2.isChecked()) {
                        Bt_IpcObj.setBtSwitch(true);
                        actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_opening"));
                    } else {
                        Bt_IpcObj.setBtSwitch(false);
                        actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_closing"));
                    }
                    break;
                case FinalBtCtrl.Set_Btn_RingEnter /* 10386 */:
                    App_Bt.getInstance().popBtRingSet(true);
                    break;
                case FinalBtCtrl.Set_Btn_AI /* 10388 */:
                    if (App_Bt.bNotRestart) {
                        App_Bt.getInstance().popMsgSet(true);
                    } else if (!App_Bt.bLinkNet) {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai9"));
                    } else {
                        Log.d("AIQR2", "  000  Set_Btn_AI iRunnAIQR_BTN = " + iRunnAIQR_BTN);
                        Main.postRunnable_Ui(true, mRunnAIQR_BTN, App_Bt.aiStrQR == null ? 3000 : 500);
                        if (iRunnAIQR_BTN) {
                            iRunnAIQR_BTN = false;
                            Log.d("AIQR2", "  111  Set_Btn_AI iRunnAIQR_BTN = " + iRunnAIQR_BTN);
                            if (!App_Bt.isNotEmpty(App_Bt.aiStrQR)) {
                                Log.d("AIQR2", "  222 mRunnAIQR_BTN  获取二维码 getQrCode ");
                                byte[] qr_code = new byte[1024];
                                qr_code[0] = 0;
                                UvoiceEcnr.getInstance();
                                int qrCode = UvoiceEcnr.getQrCode2(qr_code);
                                Log.d("AIQR2", "  333 mRunnAIQR_BTN  获取二维码 getQrCode  qrCode = " + qrCode);
                                if (qrCode == 0) {
                                    String str_qr = new String(qr_code);
                                    StringBuilder sb = new StringBuilder();
                                    for (int i = 0; i < str_qr.length(); i++) {
                                        char c = str_qr.charAt(i);
                                        int b = str_qr.charAt(i);
                                        if (b != 0) {
                                            sb.append(c);
                                        }
                                    }
                                    App_Bt.aiStrQR = sb.toString();
                                    Log.d("AIQR2", "  444 mRunnAIQR_BTN aiStrQR qrCode =" + qrCode + "  aiStrQR = " + App_Bt.aiStrQR);
                                } else {
                                    ToastUtil.getInstance().showMessage(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_ai4")) + " Code : " + qrCode);
                                }
                            }
                            if (App_Bt.isNotEmpty(App_Bt.aiStrQR)) {
                                actBt.showPopAIQR();
                                iRunnAIQR = 0;
                                Log.d("AIQR3", "  000  mRunnAIQR 扫码后自动激活  iRunnAIQR = " + iRunnAIQR);
                                Main.postRunnable_Ui(true, mRunnAIQR, 10000L);
                            } else {
                                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai4"));
                            }
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_AI2 /* 10389 */:
                    if (!App_Bt.bLinkNet) {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai9"));
                    } else {
                        actBt.showPopAIQR2();
                    }
                    break;
                case FinalBtCtrl.Set_Switch_BtMic /* 10405 */:
                    Log.d("gdy", " 00 Set_Switch_BtMic set mic set_mic = " + this.check_BtMic.isChecked());
                    if (this.check_BtMic.isChecked()) {
                        Log.d("gdy", " 22 Set_Switch_BtMic set mic external  ");
                        SystemProperties.set("persist.btmic.switch", "external");
                        this.check_BtMic.setChecked(true);
                        if (this.tv_BtMic != null) {
                            this.tv_BtMic.setText("external");
                        }
                    } else {
                        Log.d("gdy", " 11 Set_Switch_BtMic set mic internal  ");
                        SystemProperties.set("persist.btmic.switch", "internal");
                        this.check_BtMic.setChecked(false);
                        if (this.tv_BtMic != null) {
                            this.tv_BtMic.setText("internal");
                        }
                    }
                    break;
                case FinalBtCtrl.Set_Btn_PhoneMicSet /* 10417 */:
                    App_Bt.getInstance().popPhoneMicSet(true);
                    break;
                case FinalBtCtrl.Set_Btn_BtAvMicSet /* 10418 */:
                    App_Bt.getInstance().popBtAvMicSet(true);
                    break;
                case FinalBtCtrl.Set_Btn_Msbc /* 10433 */:
                    actBt.showPopMSBC();
                    break;
                case FinalBtCtrl.Set_Btn_Codec /* 10438 */:
                    actBt.showPopCODEC();
                    break;
                case FinalBtCtrl.Pair_Btn_Search /* 10445 */:
                    if (App_Bt.bBtPowerOnOff) {
                        if (App_Bt.bBtInitFlag) {
                            if (Main.mConf_PlatForm != 5) {
                                Bt_IpcObj.cut();
                            }
                            App_Bt.mBtInfo.mListSetPair.clear();
                            resetList_BtSet(App_Bt.mBtInfo.mListSetPair);
                            Bt_IpcObj.startDiscover();
                            showSetDiscover(true);
                        } else {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_btinit"));
                            Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.page.Page_Set.18
                                @Override // java.lang.Runnable
                                public void run() {
                                    App_Bt.bBtInitFlag = true;
                                }
                            }, 3000L);
                        }
                    } else {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_opendevice"));
                    }
                    break;
                case FinalBtCtrl.Set_Switch_CarplayAutoLink /* 10449 */:
                    Log.d("gdy", " 00  Set_Switch_CarplayAutoLink Set_Switch_CarplayAutoLink  ");
                    JSwitchButton switchButton3 = (JSwitchButton) v;
                    if (switchButton3.isChecked()) {
                        Bt_IpcObj.setCarLinkAutoConnect(true);
                    } else {
                        Bt_IpcObj.setCarLinkAutoConnect(false);
                    }
                    break;
                case FinalBtCtrl.SetPin_0 /* 10528 */:
                case FinalBtCtrl.SetPin_1 /* 10529 */:
                case FinalBtCtrl.SetPin_2 /* 10530 */:
                case FinalBtCtrl.SetPin_3 /* 10531 */:
                case FinalBtCtrl.SetPin_4 /* 10532 */:
                case FinalBtCtrl.SetPin_5 /* 10533 */:
                case FinalBtCtrl.SetPin_6 /* 10534 */:
                case FinalBtCtrl.SetPin_7 /* 10535 */:
                case FinalBtCtrl.SetPin_8 /* 10536 */:
                case FinalBtCtrl.SetPin_9 /* 10537 */:
                    if (this.mTvPin != null) {
                        String temp2 = this.mTvPin.getText().toString();
                        if (temp2.length() > 3) {
                            temp = String.valueOf(temp2.substring(1, temp2.length())) + (id - 10528);
                        } else {
                            temp = String.valueOf(temp2) + (id - 10528);
                        }
                        this.mTvPin.setText(temp);
                    }
                    break;
                case FinalBtCtrl.SetPin_del /* 10538 */:
                    if (this.mTvPin != null) {
                        String temp3 = this.mTvPin.getText().toString();
                        try {
                            if (!TextUtils.isEmpty(temp3)) {
                                this.mTvPin.setText(temp3.substring(0, temp3.length() - 1));
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    break;
                case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                    actBt.Func_Back();
                    break;
            }
        }
    }

    public void updateRingSelect(int type) {
        JButton tone = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_RingTone);
        JButton voice = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_RingVoice);
        JButton off = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_RingOff);
        if (tone != null) {
            tone.setFocus(type == 1);
        }
        if (voice != null) {
            voice.setFocus(type == 2);
        }
        if (off != null) {
            off.setFocus(type == 3);
        }
    }

    public void setAutoAnswer(boolean bAuto) {
        updateAutoSelected(bAuto ? FinalBtCtrl.Set_Btn_AutoAnswerOn : FinalBtCtrl.Set_Btn_AutoAnswerOff, true);
        Bt_IpcObj.setAutoAnswer(bAuto);
    }

    public void setColorSwitch(boolean bShow) throws Throwable {
        App_Bt.color_show = bShow;
        App_Bt.getInstance().mySharePreference2.saveIntValue("colorshow", App_Bt.color_show ? 1 : 0);
        if (this.View_Color != null) {
            this.View_Color.setVisibility(App_Bt.color_show ? 0 : 8);
        }
        JPage pageMenu = actBt.ui.mPages.get(10002);
        JView ivBgColor = (JView) pageMenu.getChildViewByid(FinalBtCtrl.View_Bg_Color);
        if (ivBgColor != null) {
            ivBgColor.setVisibility(App_Bt.color_show ? 0 : 8);
        }
        if (this.tvColor != null) {
            this.tvColor.setText(App_Bt.getInstance().uiApp.getString(App_Bt.color_show ? "bt_opened" : "bt_closed"));
        }
    }

    public void setSmsFunction(boolean open) throws Throwable {
        String str;
        Log.d("sms", " 00 setSmsFunction open =  " + open);
        App_Bt.bSms_Ctrl = open;
        App_Bt.getInstance().mySharePreference2.saveBooleanValue("sms_function", App_Bt.bSms_Ctrl);
        if (open) {
            str = App_Bt.getInstance().uiApp.getString("bt_opened");
        } else {
            str = App_Bt.getInstance().uiApp.getString("bt_closed");
        }
        Log.d("sms", " 00 setSmsFunction str =  " + str);
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_SMS);
        if (text != null) {
            text.setText(str);
        }
        if (this.mSMS2 != null) {
            this.mSMS2.setSwitch(open);
        }
    }

    public void updateAutoSelected(int idAutoSel, boolean bSelected) {
        if (bSelected && this.idAutoSelect != idAutoSel) {
            updateAutoSelected(this.idAutoSelect, false);
            this.idAutoSelect = idAutoSel;
        }
        JButton btn = (JButton) getPage().getChildViewByid(idAutoSel);
        if (btn != null) {
            btn.setFocus(bSelected);
        }
    }

    public void updateSelected(int id, boolean bSelected) {
        int idAuto = -1;
        switch (id) {
            case FinalBtCtrl.Set_Btn_AutoAnswerOn /* 10355 */:
            case FinalBtCtrl.Set_Btn_AutoAnswerOff /* 10356 */:
                idAuto = id;
                break;
        }
        if (idAuto != -1 && this.idAutoSelect != idAuto && this.idAutoSelect > 0) {
            updateAutoSelected(this.idAutoSelect, bSelected);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void setPressed(JButton jButton, boolean pressed) {
        int id = jButton.getId();
        Log.d("gdy9", " Page_set setPressed id = " + id);
        updateSelected(id, !pressed);
    }

    public void TouchEvent(MotionEvent event) {
        int iAction = event.getAction();
        if (iAction == 1) {
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            if (App_Bt.getInstance().bPopPhoneMicSet) {
                App_Bt.getInstance().popPhoneMicSet(false);
            }
            if (App_Bt.getInstance().bPopBtAvMicSet) {
                App_Bt.getInstance().popBtAvMicSet(false);
            }
        }
    }

    public void popPwd() {
        Dialog popDlg = actBt.ui.getPopDlg(FinalBtCtrl.Page_PopPinPwd, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public SparseArray<String> getChoiceName(String mChoiceAddr) {
        if (TextUtils.isEmpty(mChoiceAddr)) {
            return null;
        }
        if (App_Bt.mBtInfo.mListSetPair != null) {
            for (SparseArray<String> entity : App_Bt.mBtInfo.mListSetPair) {
                if (!TextUtils.isEmpty(entity.get(FinalBtCtrl.SetPairItem_Txt_Addr)) && entity.get(FinalBtCtrl.SetPairItem_Txt_Addr).equals(mChoiceAddr)) {
                    return entity;
                }
            }
        }
        return null;
    }

    public void resetList_BtSet(List<SparseArray<String>> list) {
        JGridView gridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.SetPair_ListView);
        if (gridView != null) {
            MyApplication.resetList(gridView, list);
        }
    }

    public class RunnableHideText implements Runnable {
        private JText text;

        public RunnableHideText(JText text) {
            this.text = text;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.text != null) {
                this.text.setVisibility(8);
            }
        }
    }

    public void showSetDiscover(boolean flag) {
        if (flag) {
            showLoadAnim();
            isSetStartDiscovey = true;
        } else if (isSetStartDiscovey) {
            isSetStartDiscovey = false;
            hideLoadAnim();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.SetPair_ListView /* 10476 */:
                View viewContent = page.getChildViewByid(FinalBtCtrl.SetPairItem_Content);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        page.setFocus(false);
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                String strAddr = map.get(FinalBtCtrl.SetPairItem_Txt_Addr);
                JText textName = (JText) page.getChildViewByid(FinalBtCtrl.SetPairItem_Txt_Addr);
                JText textAddr = (JText) page.getChildViewByid(FinalBtCtrl.SetPairItem_Txt_Name);
                View view = page.getChildViewByid(FinalBtCtrl.SetPairItem_Icon);
                if (view != null) {
                    if (!Bt_IpcObj.getPhoneAddr().equals(strAddr) || Bt_IpcObj.isDisConnect()) {
                        view.setBackground(getPage().getDrawableFromPath("bt_icocut", getPage().mDrawables, getPage().mDrawables));
                        if (textName != null) {
                            textName.setTextColor(-1);
                            textName.setEllipsize(TextUtils.TruncateAt.END);
                            textName.setFocus(false);
                        }
                        if (textAddr != null) {
                            textAddr.setTextColor(-1);
                            textAddr.setEllipsize(TextUtils.TruncateAt.END);
                            textAddr.setFocus(false);
                        }
                    } else {
                        view.setBackground(getPage().getDrawableFromPath("bt_icolink", getPage().mDrawables, getPage().mDrawables));
                        if (textName != null) {
                            textName.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                            textName.setTextColor(-16711936);
                            textName.setFocus(true);
                        }
                        if (textAddr != null) {
                            textAddr.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                            textAddr.setTextColor(-16711936);
                            textAddr.setFocus(true);
                        }
                    }
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        int position = gridView.getPosition();
        switch (id) {
            case FinalBtCtrl.SetPair_ListView /* 10476 */:
                String addr = null;
                if (App_Bt.mBtInfo.mListSetPair != null && App_Bt.mBtInfo.mListSetPair.size() > position) {
                    addr = App_Bt.mBtInfo.mListSetPair.get(position).get(FinalBtCtrl.SetPairItem_Txt_Addr);
                }
                if (!TextUtils.isEmpty(addr) && !Bt_IpcObj.getChoiceAddr().equals(addr)) {
                    Bt_IpcObj.setChoiceAddr(addr);
                    App_Bt.getInstance().mIpcObj.FuncPairLink(this);
                    if (gridView.adapter != null) {
                        gridView.adapter.notifyDataSetChanged();
                    }
                    break;
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridPressed(JGridView gridView, JPage page, boolean pressed) {
        if (pressed) {
            for (WeakReference<JPage> pageReference : gridView.mPageInfos) {
                JPage pageTmp = pageReference.get();
                if (pageTmp != null) {
                    pressGridItem(pageTmp, page, pressed);
                }
            }
        }
        super.GridPressed(gridView, page, pressed);
    }

    public void pressGridItem(JPage page, JPage pagePressed, boolean pressed) {
    }

    public void popPinPwd() {
        Dialog popDlg = actBt.ui.getPopDlg(FinalBtCtrl.Page_PopPinPwd, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void popBtRing() {
        Dialog popDlg = actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtRing, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }

    public void dismissPopBtRing() {
        Dialog popDlg = actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtRing, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void showLoadAnim() {
        if (this.mBtnPairSearch != null) {
            this.mBtnPairSearch.setVisibility(8);
        }
        if (this.mProgLoad != null) {
            this.mProgLoad.setVisibility(0);
        }
        if (this.mRunnable_AnimDrawable != null) {
            Main.removeRunnable_Ui(this.mRunnable_AnimDrawable);
            this.mRunnable_AnimDrawable.stopRun();
            this.mRunnable_AnimDrawable = null;
        }
        this.mRunnable_AnimDrawable = new Runnable_AnimDrawable(this.mProgLoad, this.mAnimationDrawable, 80);
        Main.postRunnable_Ui(false, this.mRunnable_AnimDrawable);
    }

    public void hideLoadAnim() {
        if (this.mRunnable_AnimDrawable != null) {
            Main.removeRunnable_Ui(this.mRunnable_AnimDrawable);
            this.mRunnable_AnimDrawable.stopRun();
            this.mRunnable_AnimDrawable = null;
        }
        if (this.mBtnPairSearch != null) {
            this.mBtnPairSearch.setVisibility(0);
        }
        if (this.mProgLoad != null) {
            this.mProgLoad.setVisibility(8);
        }
    }

    public void setSwitch(boolean on) {
        if (this.mBTOnOff != null) {
            this.mBTOnOff.setSwitch(on);
        }
    }

    public void updatePin(String strPin) {
        if (this.mEditName != null) {
            this.mEditName.setText(strPin);
        }
    }

    public void updateRingName(String name) {
        if (this.tvRingName != null) {
            this.tvRingName.setText(name);
        }
    }

    public static void updateMsbc() throws Throwable {
        String string;
        int iMsbc = SystemProperties.getInt("persist.blinkbt.msbc", 0);
        if (tvSetMsbc != null) {
            JText jText = tvSetMsbc;
            if (iMsbc == 0) {
                string = App_Bt.getInstance().uiApp.getString("bt_bt_msbc1");
            } else {
                string = App_Bt.getInstance().uiApp.getString("bt_bt_msbc2");
            }
            jText.setText(string);
        }
    }

    public static void showAIGT() {
        Log.d("gdyyai", " 00 Page_Set  showAIGT isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  isAIGT_OnOff = " + App_Bt.isAIGT_OnOff + " App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2);
        if (!App_Bt.bAI_JZ2) {
            if (vBtAiKG2 != null) {
                vBtAiKG2.setVisibility(8);
            }
            if (tvBtAi2 != null) {
                tvBtAi2.setVisibility(8);
                return;
            }
            return;
        }
        Log.d("ai", " 11 Page_Set  showAIGT isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  0xffff = " + SupportMenu.USER_MASK);
        if (vBtAiKG2 != null) {
            Log.d("ai", " 22 Page_Set  showAIGT isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  0xffff = " + SupportMenu.USER_MASK);
            if (App_Bt.isAIGT_Aiuvoice != 65535) {
                vBtAiKG2.setVisibility(0);
            } else {
                vBtAiKG2.setVisibility(8);
            }
        }
        if (tvBtAi2 != null) {
            Log.d("ai", " 44 Page_Set  tvBtAi2 isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  0xffff = " + SupportMenu.USER_MASK);
            if (App_Bt.isAIGT_Aiuvoice == 1 || App_Bt.isAIGT_Aiuvoice == 1873) {
                tvBtAi2.setVisibility(0);
            } else {
                tvBtAi2.setVisibility(8);
            }
        }
        if (mSet_Switch_AI_KG2 != null) {
            mSet_Switch_AI_KG2.setSwitch(App_Bt.isAIGT_OnOff);
        }
        if (tvSetTxtAIKG != null) {
            if (App_Bt.isAIGT_Aiuvoice == 0) {
                if (App_Bt.isAIGT_OnOff) {
                    Log.d("gdyyai", " *** 33 showAIGT tvSetTxtAIKG.setText = " + App_Bt.getInstance().uiApp.getString("bt_aikg1"));
                    tvSetTxtAIKG.setText(App_Bt.getInstance().uiApp.getString("bt_aikg1"));
                } else {
                    tvSetTxtAIKG.setText(App_Bt.getInstance().uiApp.getString("bt_aikg2"));
                }
            } else {
                tvSetTxtAIKG.setText(" Error Code : " + App_Bt.isAIGT_Aiuvoice);
            }
        }
        if (tvSetTxtAIKG2 != null) {
            if (App_Bt.isAIGT_OnOff) {
                tvSetTxtAIKG2.setText(App_Bt.getInstance().uiApp.getString("bt_opened"));
            } else {
                tvSetTxtAIKG2.setText(App_Bt.getInstance().uiApp.getString("bt_closed"));
            }
        }
    }

    public static void updateAI() {
        Log.d("gdyy", " *** updateAI  App_Bt.isAIOnOff = " + App_Bt.isAIOnOff + " App_Bt.bAI_JZ2 = " + App_Bt.bAI_JZ2);
        if (tvBtAi != null) {
            if (App_Bt.isAIType >= 0) {
                tvBtAi.setVisibility(0);
            } else {
                tvBtAi.setVisibility(8);
            }
        }
        if (tvSetTxtAI != null) {
            if (App_Bt.isAiuvoice) {
                tvSetTxtAI.setText(App_Bt.getInstance().uiApp.getString("bt_ai3"));
            } else {
                tvSetTxtAI.setText(App_Bt.getInstance().uiApp.getString("bt_ai2"));
            }
        }
        updateAIKG();
    }

    public static void updateAIKG() {
        Log.d("gdyyai", " *** updateAIKG  App_Bt.isAIOnOff = " + App_Bt.isAIOnOff + " App_Bt.bAI_JZ = " + App_Bt.bAI_JZ);
        if (App_Bt.bAI_JZ2) {
            showAIGT();
            return;
        }
        if (vBtAiKG != null) {
            if (App_Bt.isAiuvoice) {
                vBtAiKG.setVisibility(0);
            } else {
                vBtAiKG.setVisibility(8);
            }
        }
        if (mSet_Switch_AI_KG != null) {
            if (App_Bt.isAiuvoice) {
                mSet_Switch_AI_KG.setVisibility(0);
            } else {
                mSet_Switch_AI_KG.setVisibility(8);
            }
        }
        if (mSet_Switch_AI_KG != null) {
            mSet_Switch_AI_KG.setSwitch(App_Bt.isAIOnOff);
        }
        Log.d("gdyyai", " *** 00 updateAIKG  App_Bt.isAIOnOff = " + App_Bt.isAIOnOff);
        if (tvSetTxtAI_KG != null) {
            if (App_Bt.isAIOnOff) {
                Log.d("gdyyai", " *** 11 updateAIKG tvSetTxtAIKG.setText = " + App_Bt.getInstance().uiApp.getString("bt_aikg1"));
                tvSetTxtAI_KG.setText(App_Bt.getInstance().uiApp.getString("bt_aikg1"));
            } else {
                Log.d("gdyyai", " *** 11 updateAIKG tvSetTxtAIKG.setText = " + App_Bt.getInstance().uiApp.getString("bt_aikg2"));
                tvSetTxtAI_KG.setText(App_Bt.getInstance().uiApp.getString("bt_aikg2"));
            }
        }
        if (tvSetTxtAIKG2 != null) {
            if (App_Bt.isAIGT_OnOff) {
                tvSetTxtAIKG2.setText(App_Bt.getInstance().uiApp.getString("bt_opened"));
            } else {
                tvSetTxtAIKG2.setText(App_Bt.getInstance().uiApp.getString("bt_closed"));
            }
        }
        if (tvSetTxtAI_KG2 != null) {
            if (App_Bt.isAIGT_OnOff) {
                tvSetTxtAI_KG2.setText(App_Bt.getInstance().uiApp.getString("bt_opened"));
            } else {
                tvSetTxtAI_KG2.setText(App_Bt.getInstance().uiApp.getString("bt_closed"));
            }
        }
    }

    public static void updateCodec() {
        int iCodec = SystemProperties.getInt("persist.blinkbt.a2dp.codec", 0);
        if (tvSetCodec != null) {
            switch (iCodec) {
                case 0:
                    tvSetCodec.setText("sbc");
                    break;
                case 1:
                    tvSetCodec.setText("sbc+aac");
                    break;
                case 2:
                    tvSetCodec.setText("sbc+ldac");
                    break;
                case 3:
                    tvSetCodec.setText("sbc+aac+ldac");
                    break;
            }
        }
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            JButton name = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_DevNameOk);
            if (name != null) {
                name.setBackgroundTintList(new ColorStateList(states, colors));
                name.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton pin = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_PinOk);
            if (pin != null) {
                pin.setBackgroundTintList(new ColorStateList(states, colors));
                pin.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            if (this.mBtReset != null) {
                this.mBtReset.setBackgroundTintList(new ColorStateList(states, colors));
                this.mBtReset.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    public void initTypeface() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
            if (this.mEditName != null) {
                this.mEditName.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            if (this.mEditPin != null) {
                this.mEditPin.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AutoAnswer);
            if (text != null) {
                text.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            if (this.tvRingName != null) {
                this.tvRingName.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JButton name = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_DevNameOk);
            if (name != null) {
                name.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JButton pin = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_PinOk);
            if (pin != null) {
                pin.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JButton ring = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_Ring);
            if (ring != null) {
                ring.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JButton Msbc = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_Msbc);
            if (Msbc != null) {
                Msbc.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JButton Codec = (JButton) getPage().getChildViewByid(FinalBtCtrl.Set_Btn_Codec);
            if (Codec != null) {
                Codec.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            if (this.mBtReset != null) {
                this.mBtReset.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtNameOk = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_DevNameOk);
            if (txtNameOk != null) {
                txtNameOk.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtPinOk = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_PinOk);
            if (txtPinOk != null) {
                txtPinOk.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtAutoAnswer = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_AutoAnswer);
            if (txtAutoAnswer != null) {
                txtAutoAnswer.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtSMS = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_SMS);
            if (txtSMS != null) {
                txtSMS.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtSyncPhoneBook_Native = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_SyncPhoneBook_Native);
            if (txtSyncPhoneBook_Native != null) {
                txtSyncPhoneBook_Native.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText ringName = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_RingName);
            if (ringName != null) {
                ringName.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
            JText txtReset = (JText) getPage().getChildViewByid(FinalBtCtrl.Txt_Btn_Reset);
            if (txtReset != null) {
                txtReset.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
            }
        }
    }

    public void setDayOrNight(int value) {
        Drawable on;
        Drawable on2;
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
                JButton button = null;
                JSwitchButon2 switchBtn = null;
                JEditText editText = null;
                if (i == 2 || i == 3) {
                    switchBtn = (JSwitchButon2) getPage().getChildViewByid(this.nightBtn[i]);
                } else if (i == 4 || i == 5) {
                    editText = (JEditText) getPage().getChildViewByid(this.nightBtn[i]);
                } else {
                    button = (JButton) getPage().getChildViewByid(this.nightBtn[i]);
                }
                if (button != null) {
                    String drawableName = button.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName.startsWith("night_")) {
                            button.setStrDrawable(drawableName.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName.startsWith("night_")) {
                        button.setStrDrawable("night_" + drawableName, true);
                    }
                }
                if (!App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") && ((this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061) && button != null)) {
                    button.setTextColor(value > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                }
                if (switchBtn != null) {
                    if (TextUtils.isEmpty(switchBtn.getSwitchTag())) {
                        if (value > 0) {
                            if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                                on2 = getPage().getDrawableFromPath("night_bt2000_confirm", getPage().mDrawables, getPage().mDrawables);
                            } else {
                                on2 = getPage().getDrawableFromPath("night_bt_confirm", getPage().mDrawables, getPage().mDrawables);
                            }
                            switchBtn.setSwitchBk("night_", on2, on2);
                        }
                    } else if (value <= 0) {
                        if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            on = getPage().getDrawableFromPath("bt2000_confirm", getPage().mDrawables, getPage().mDrawables);
                        } else {
                            on = getPage().getDrawableFromPath("bt_confirm", getPage().mDrawables, getPage().mDrawables);
                        }
                        switchBtn.setSwitchBk(FinalChip.BSP_PLATFORM_Null, on, on);
                    }
                }
                if (editText != null) {
                    editText.setTextColor(value > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                        editText.setStrDrawable(value > 0 ? "night_bt_set_editbk" : "bt_set_editbk", true);
                    } else {
                        editText.setStrDrawable(value > 0 ? "night_bt2000_set_editbk" : "bt2000_set_editbk", true);
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
                    text.setTextColor(value > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                }
            }
        }
    }

    public void updateCarplayAuto(boolean bAuto) {
        Log.d("gdy", " 33 recv 166  updateCarplayAutob Auto = " + bAuto);
        if (this.mButtonCarplayAuto != null) {
            this.mButtonCarplayAuto.setChecked(bAuto);
        }
        if (this.mButtonCarplayAuto2 != null) {
            this.mButtonCarplayAuto2.setSwitch(bAuto);
        }
        String str = App_Bt.getInstance().uiApp.getString("bt_closed");
        if (bAuto) {
            str = App_Bt.getInstance().uiApp.getString("bt_opened");
        }
        if (this.mTextCarplayAuto != null) {
            this.mTextCarplayAuto.setText(str);
        }
    }
}
