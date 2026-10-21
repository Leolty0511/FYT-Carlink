package com.syu.bt.page;

import android.R;
import android.app.Dialog;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.os.SystemProperties;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSeekBar;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.ctrl.JViewPager;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc.module.main.Sound;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.Runnable_AnimDrawable;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.CircleMenuLayout;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.SpUtil;
import com.syu.bt.util.ToastUtil;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Page_Dial extends MyPage {
    public static final int FLAG_ANSWER = 1;
    public static final int FLAG_DIAL = 3;
    public static final int FLAG_HANGUP = 2;
    public static final int FLAG_RING_THIRD = 4;
    public static final int FLAG_TALK_THIRD = 5;
    public JText[] ContactAdd;
    public JText[] ContactName;
    public JView[] ContactView;
    public Act_Bt actBt;
    boolean bTop;
    private String checkPhoneNumber;
    private String dialThrdNumber;
    boolean dialThrdPhone;
    public boolean isShow_p;
    AnimationDrawable mAnimationDrawable;
    JButton mDialBtn;
    JButton mDialBtnWhenCall;
    public int mFullSwitch;
    JGridView mGridView;
    JButton mHangBtn;
    JButton mHangBtnWhenCall;
    JText mHeadTime;
    private int mPosFocusCpy;
    private int mPosMoveTo;
    public Runnable mRunnJumpPair;
    public Runnable mRunnPhoneSwitch;
    public Runnable mRunnShowTalking;
    RunnableIpPhoneTimer mRunnableIpPhoneTimer;
    Runnable_AnimDrawable mRunnable_AnimDrawable;
    public Runnable mRunnable_updateSysTime;
    public JSeekBar mSB_BtVol;
    View mViewBtNotConnectTip;
    View mViewContact;
    View mViewDialFullScreen;
    View mViewDialHalfScreen;
    View mViewDialHideKeyboard;
    View mViewDialHideNumber;
    View mViewDialShowKeyboard;
    View mViewInCall;
    View mViewNoSim;
    public JViewPager mViewPager;
    View mViewShowCall;
    View mViewShowCall_Third;
    View mViewShowDial;
    View mViewShowGps;
    View mViewShowHang;
    View mViewShowHide;
    View mViewShowSave;
    View mViewShowTalk_Third;
    View mViewTalking;
    View mViewWithSim;
    JButton mVoiceSwitchBtn;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    private int[] numText;
    public Random random;
    public String sPhoneNumber1_p;
    public String sPhoneNumber2_p;
    public String strNumber;
    public String[] str_ContIcon;
    JText textAddr;
    JText textAddr2;
    JText textOperator;
    JText textState;
    JText textState2;
    public JText tvDevName2;
    public JText tvDialAnswer;
    public JText tvDialHangup;
    public JText tvTxtMiniNumber;
    public JText tvTxtName;
    public JText tvTxtName2;
    public JText tvTxtNum2;
    public JText tvTxtNumBig;
    public JText tvTxtNumber;
    public JText tvTxtPhone1;
    public JText tvTxtPhone2;
    public JText tvmPin2;
    JText txtLinkName;
    JText txtLinkName2;
    JText txtTalkTime;
    JText txtTalkTime2;
    View vDial_AIU;
    View vDial_AIU2;
    private JButton voiceButton;
    private JButton voiceButton1;

    public Page_Dial(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mViewNoSim = null;
        this.mViewWithSim = null;
        this.mViewShowDial = null;
        this.mViewShowCall = null;
        this.mViewShowHang = null;
        this.mViewShowCall_Third = null;
        this.mViewShowTalk_Third = null;
        this.mViewShowSave = null;
        this.mViewShowHide = null;
        this.mViewTalking = null;
        this.mViewContact = null;
        this.vDial_AIU2 = null;
        this.vDial_AIU = null;
        this.mFullSwitch = 0;
        this.ContactAdd = new JText[6];
        this.ContactName = new JText[6];
        this.ContactView = new JView[6];
        this.mRunnable_AnimDrawable = null;
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        this.bTop = false;
        this.dialThrdPhone = false;
        this.dialThrdNumber = FinalChip.BSP_PLATFORM_Null;
        this.nightBtn = new int[]{FinalBtCtrl.Dial_Btn_0, FinalBtCtrl.Dial_Btn_1, FinalBtCtrl.Dial_Btn_2, FinalBtCtrl.Dial_Btn_3, FinalBtCtrl.Dial_Btn_4, FinalBtCtrl.Dial_Btn_5, FinalBtCtrl.Dial_Btn_6, FinalBtCtrl.Dial_Btn_7, FinalBtCtrl.Dial_Btn_8, FinalBtCtrl.Dial_Btn_9, FinalBtCtrl.Dial_Btn_X, FinalBtCtrl.Dial_Btn_J, FinalBtCtrl.Dial_Btn_VoiceSwitch, FinalBtCtrl.Dial_Btn_VoiceSwitch1, FinalBtCtrl.Dial_Btn_Dial, FinalBtCtrl.Dial_Btn_Hang, FinalBtCtrl.Dial_SaveView, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set, FinalBtCtrl.Menu_Av, FinalBtCtrl.Dial_Btn_Backspace, FinalBtCtrl.Contace_Btn_Save1, FinalBtCtrl.Contace_Btn_Save2, FinalBtCtrl.Contace_Btn_Save3, FinalBtCtrl.Contace_Btn_Save4, FinalBtCtrl.Contace_Btn_Save5, FinalBtCtrl.Contace_Btn_Save6, FinalBtCtrl.Dial_Btn_Mute, FinalBtCtrl.Dial_View_ShowCall_Btn_Dial, FinalBtCtrl.Dial_View_ShowCall_Btn_Hang, FinalBtCtrl.Dial_View_ShowHang_Btn_Hang, FinalBtCtrl.Dial_View_ShowHang_Btn_VoiceSwitch, FinalBtCtrl.Keyboard_Btn_J, FinalBtCtrl.Keyboard_Btn_0, FinalBtCtrl.Keyboard_Btn_X, FinalBtCtrl.Keyboard_Btn_9, FinalBtCtrl.Keyboard_Btn_8, FinalBtCtrl.Keyboard_Btn_7, FinalBtCtrl.Keyboard_Btn_6, FinalBtCtrl.Keyboard_Btn_5, FinalBtCtrl.Keyboard_Btn_4, FinalBtCtrl.Keyboard_Btn_3, FinalBtCtrl.Keyboard_Btn_2, FinalBtCtrl.Keyboard_Btn_1, FinalBtCtrl.Dial_Btn_LinkCut, FinalBtCtrl.Dial_Btn_LinkCut1};
        this.nightView = new int[]{FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.TZY_View_Change_3, FinalBtCtrl.TZY_View_Change_4, FinalBtCtrl.TZY_View_Change_5, FinalBtCtrl.MenuView_bk, FinalBtCtrl.Dial_AIU, FinalBtCtrl.Dial_AIU2};
        this.nightText = new int[]{FinalBtCtrl.Dial_Txt_LinkName, FinalBtCtrl.Dial_Txt_State, FinalBtCtrl.Dial_Txt_Num, FinalBtCtrl.Dial_Txt_Name, FinalBtCtrl.Dial_Txt_Operator, FinalBtCtrl.Contact_name1, FinalBtCtrl.Contact_add1, FinalBtCtrl.Contact_name2, FinalBtCtrl.Contact_add2, FinalBtCtrl.Contact_name3, FinalBtCtrl.Contact_add3, FinalBtCtrl.Contact_name4, FinalBtCtrl.Contact_add4, FinalBtCtrl.Contact_name5, FinalBtCtrl.Contact_add5, FinalBtCtrl.Contact_name6, FinalBtCtrl.Contact_add6, FinalBtCtrl.TZY_Text_Change_1, FinalBtCtrl.Dial_Txt_State2, FinalBtCtrl.Dial_Txt_BigNum, FinalBtCtrl.Dial_Txt_TalkTime, FinalBtCtrl.Dial_Txt_TalkTime2, FinalBtCtrl.Dial_Txt_Num2, FinalBtCtrl.Dial_Txt_Name3, FinalBtCtrl.Contace_Txt_Save_None, FinalBtCtrl.Dial_Txt_Name2, FinalBtCtrl.Dial_Txt_DevAddr};
        this.numText = new int[]{FinalBtCtrl.Dial_Txt_Num, FinalBtCtrl.Dial_Txt_Num2, FinalBtCtrl.Dial_Txt_MiniNum, FinalBtCtrl.Dial_Txt_TalkTime, FinalBtCtrl.Dial_Txt_TalkTime2, FinalBtCtrl.Dial_Txt_Name2, FinalBtCtrl.Dial_Txt_BigNum};
        this.mRunnPhoneSwitch = new Runnable() { // from class: com.syu.bt.page.Page_Dial.1
            @Override // java.lang.Runnable
            public void run() {
                App_Bt.iPhoneSwitchStep = 0;
            }
        };
        this.mRunnJumpPair = new Runnable() { // from class: com.syu.bt.page.Page_Dial.2
            @Override // java.lang.Runnable
            public void run() {
                if (Bt.DATA[9] == 0 && Page_Dial.this.actBt.myActivity.mPageCurrent.getId() != 10012 && !App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                    Page_Dial.this.actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                    return;
                }
                if (App_Bt.getInstance().mIpcObj.isCalling()) {
                    if (Page_Dial.this.txtLinkName != null && Bt.sPhoneName != null) {
                        Page_Dial.this.txtLinkName.setVisibility(0);
                        Page_Dial.this.txtLinkName.setText(Bt.sPhoneName);
                    }
                    if (Page_Dial.this.textOperator != null && App_Bt.mOperator != null) {
                        Page_Dial.this.textOperator.setText(App_Bt.mOperator);
                    }
                    Log.d("gdy16", " 00 Page_Dial mRunnJumpPair  Bt.sPhoneName = " + Bt.sPhoneName + " App_Bt.mOperator = " + App_Bt.mOperator + "  textOperator = " + Page_Dial.this.textOperator.getVisibility());
                    Page_Dial.this.updatePhoneName();
                }
            }
        };
        this.isShow_p = false;
        this.mRunnShowTalking = new Runnable() { // from class: com.syu.bt.page.Page_Dial.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d("gdy8", " 11 mRunnShowTalking isShow_p = " + Page_Dial.this.isShow_p);
                if (Page_Dial.this.mViewTalking != null) {
                    Page_Dial.this.mViewTalking.setVisibility(Page_Dial.this.isShow_p ? 0 : 8);
                }
                Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Dial_Head);
                if (Page_Dial.this.mViewContact != null) {
                    Page_Dial.this.mViewContact.setVisibility(Page_Dial.this.isShow_p ? 8 : 0);
                }
                Page_Dial.this.updateShowHand();
            }
        };
        this.sPhoneNumber1_p = FinalChip.BSP_PLATFORM_Null;
        this.sPhoneNumber2_p = FinalChip.BSP_PLATFORM_Null;
        this.mRunnableIpPhoneTimer = null;
        this.str_ContIcon = new String[]{"Cont_icon1", "Cont_icon2", "Cont_icon3", "Cont_icon4", "Cont_icon5"};
        this.random = new Random();
        this.mRunnable_updateSysTime = new Runnable() { // from class: com.syu.bt.page.Page_Dial.4
            @Override // java.lang.Runnable
            public void run() {
                Page_Dial.this.initTime();
            }
        };
        this.actBt = actBt;
    }

    public void showAI() {
        Log.d("ai11", " 00 Page_Dial  showAI isAiuvoice = " + App_Bt.isAiuvoice + "  bAI_JZ = " + App_Bt.bAI_JZ);
        if (this.vDial_AIU != null && App_Bt.bAI_JZ) {
            Log.d("ai11", " 11 Page_Dial  showAI isAiuvoice = " + App_Bt.isAiuvoice + "  isAIOnOff = " + App_Bt.isAIOnOff);
            if (App_Bt.isAIOnOff && App_Bt.isAiuvoice) {
                this.vDial_AIU.setVisibility(App_Bt.getInstance().mIpcObj.isCalling() ? 0 : 8);
            } else {
                this.vDial_AIU.setVisibility(8);
            }
        }
        if (this.vDial_AIU2 != null && App_Bt.bAI_JZ2) {
            if (App_Bt.isAIGT_Aiuvoice == 0 && App_Bt.isAIGT_OnOff) {
                this.vDial_AIU2.setVisibility(App_Bt.getInstance().mIpcObj.isCalling() ? 0 : 8);
            } else {
                this.vDial_AIU2.setVisibility(8);
            }
        }
    }

    public void showAIGT() {
        Log.d("ai", " 00 Page_Dial  showAIGT isAIGT_Aiuvoice = " + App_Bt.isAIGT_Aiuvoice + "  isAIGT_OnOff = " + App_Bt.isAIGT_OnOff);
        if (this.vDial_AIU2 != null && App_Bt.bAI_JZ2) {
            if (App_Bt.isAIGT_Aiuvoice == 0 && App_Bt.isAIGT_OnOff) {
                this.vDial_AIU2.setVisibility(App_Bt.getInstance().mIpcObj.isCalling() ? 0 : 8);
            } else {
                this.vDial_AIU2.setVisibility(8);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            Log.d("his3", " ** Page Dial resume  mListHistoryOut = " + App_Bt.mBtInfo.mListHistoryOut.toString() + " mListHistoryOut2 = " + App_Bt.mBtInfo.mListHistoryOut2.toString());
            this.bTop = true;
            if (!App_Bt.bResumeByDial) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(10003);
            }
            App_Bt.getInstance().mIpcObj.updateNotify_Dial();
            updateBtNameAndPin();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            App_Bt.getInstance();
            if (App_Bt.bEnableHalfScreen) {
                switchFull();
                if (this.mViewShowGps != null) {
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        this.mViewShowGps.setVisibility(0);
                    } else {
                        this.mViewShowGps.setVisibility(8);
                    }
                }
            }
            if (App_Bt.bHistoryLogAllFlag) {
                resetList();
            }
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
            }
            controlDialInfo(Bt.DATA[9]);
            if (App_Bt.bShowTime) {
                initTime();
            }
            if (App_Bt.bAI_JZ2) {
                App_Bt.isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
                App_Bt.isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
                showAIGT();
            }
            resetBtnEnable();
            disableSaveView(false);
            updateBtnVoiceSwitch(App_Bt.bHFP);
            updateNameOrDevice(false);
            childResume();
            updateMicSwitch(App_Bt.bPhoneMIC);
            if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                Main.removeRunnable_Ui(this.mRunnJumpPair);
                Main.postRunnable_Ui(true, this.mRunnJumpPair, 1000L);
            }
            showPhone();
            if (App_Bt.bHideBtDial) {
                this.actBt.myActivity.goPage(FinalBtCtrl.Page_Av);
            }
            updateShowHand();
        }
    }

    public boolean getSaveViewState() {
        return this.mViewShowSave != null && this.mViewShowSave.getVisibility() == 0;
    }

    public void showPhone() {
        Log.d("hfp4", " 00 Page Dial showPhone   sPhone_callin_id = " + App_Bt.sPhone_callin_id + " sPhone1_NAME = " + App_Bt.sPhone2_NAME[0] + " sPhone2_NAME = " + App_Bt.sPhone2_NAME[1]);
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] < 3) {
                App_Bt.sPhone2_id = 0;
            }
            if (App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.bPhone2_HFP[0] < 3) {
                App_Bt.sPhone2_id = 1;
            }
            Log.d("hfp4", " 44 HFP_STATUS  bPhone2_HFP = " + App_Bt.bPhone2_HFP[0] + "  , " + App_Bt.bPhone2_HFP[1]);
            if (App_Bt.bPhone2_HFP[0] <= 3 && App_Bt.bPhone2_HFP[1] <= 3) {
                App_Bt.sPhone_callin_id = 255;
            }
            set_Visible(FinalBtCtrl.Dial_Btn_Dial, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Phoen_Icon, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Dial_Txt_LinkName, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Dial_Btn_LinkCut, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Dial_Btn_LinkCut1, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Dial_Txt_Operator, !App_Bt.bLinkTwoPhone);
            set_Visible(FinalBtCtrl.Phone2_switch, App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.sPhone_callin_id > 1);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p1, App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.sPhone_callin_id != 1);
            set_Visible(FinalBtCtrl.Phoen_Icon_p1, App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.sPhone_callin_id != 1);
            set_Visible(FinalBtCtrl.Dial_Txt_LinkName_p1, App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.sPhone_callin_id != 1);
            if (!TextUtils.isEmpty(App_Bt.sPhone2_NAME[0]) && this.tvTxtPhone1 != null) {
                this.tvTxtPhone1.setText(App_Bt.sPhone2_NAME[0]);
            }
            Log.d("hfp4", " 44 Page_Dial  showPhone sPhone2_NAME = " + App_Bt.sPhone2_NAME[0] + "  , " + App_Bt.sPhone2_NAME[1]);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p2, App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.sPhone_callin_id != 0);
            set_Visible(FinalBtCtrl.Phoen_Icon_p2, App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.sPhone_callin_id != 0);
            set_Visible(FinalBtCtrl.Dial_Txt_LinkName_p2, App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.sPhone_callin_id != 0);
            if (!TextUtils.isEmpty(App_Bt.sPhone2_NAME[1]) && this.tvTxtPhone2 != null) {
                this.tvTxtPhone2.setText(App_Bt.sPhone2_NAME[1]);
            }
        } else {
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p2, false);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p1, false);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial, true);
        }
        if (App_Bt.bLinkTwoPhone_test) {
            if (this.tvTxtPhone1 != null) {
                this.tvTxtPhone1.setText(" PHONE 1 ");
            }
            if (this.tvTxtPhone2 != null) {
                this.tvTxtPhone2.setText(" PHONE 2 ");
            }
            set_Visible(FinalBtCtrl.Phone2_switch, true);
            set_Visible(FinalBtCtrl.Phoen_Icon_p1, true);
            set_Visible(FinalBtCtrl.Phoen_Icon_p2, true);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p2, false);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial_p1, true);
            set_Visible(FinalBtCtrl.Dial_Btn_Dial, false);
        }
    }

    public void set_Visible(int id, boolean b) {
        View btn = getPage().getChildViewByid(id);
        if (btn != null) {
            btn.setVisibility(b ? 0 : 8);
        }
    }

    public void disableSaveView(boolean ani) {
        JButton save;
        if (App_Bt.mStrCustomer.equals("TZY6") || App_Bt.mStrCustomer.equals("TZY4") || App_Bt.mStrCustomer.equals("TZY_UI5")) {
            JButton hang = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            if (App_Bt.mStrCustomer.equals("TZY_NEW")) {
                save = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Dial);
            } else {
                save = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_SaveView);
            }
            boolean saveEnable = false;
            switch (Bt.DATA[9]) {
                case 2:
                    saveEnable = true;
                    break;
            }
            if (hang != null) {
                hang.setVisibility(saveEnable ? 8 : 0);
            }
            if (save != null) {
                save.setVisibility(saveEnable ? 0 : 8);
            }
        }
        if (this.mViewShowSave != null) {
            if (App_Bt.bJumpFavorite) {
                showLoveNumber();
                hideDialView(false);
                this.mViewShowSave.animate().alpha(1.0f).withLayer();
                this.mViewShowSave.setVisibility(0);
                return;
            }
            if (this.mViewShowSave.getVisibility() == 0) {
                if (ani) {
                    this.mViewShowSave.animate().alpha(0.0f).setDuration(300L).withLayer().withEndAction(new Runnable() { // from class: com.syu.bt.page.Page_Dial.5
                        @Override // java.lang.Runnable
                        public void run() {
                            Page_Dial.this.mViewShowSave.setVisibility(8);
                            Page_Dial.this.hideDialView(true);
                        }
                    });
                    return;
                }
                this.mViewShowSave.animate().alpha(0.0f).withLayer();
                this.mViewShowSave.setVisibility(8);
                hideDialView(true);
            }
        }
    }

    public void hideDialView(boolean vis) {
        if (this.mViewShowHide != null) {
            this.mViewShowHide.setVisibility(vis ? 0 : 8);
        }
    }

    public void resetThridDial(int value) {
        JView ico;
        switch (value) {
            case 0:
            case 1:
            case 2:
            case 6:
                this.dialThrdPhone = false;
                this.dialThrdNumber = FinalChip.BSP_PLATFORM_Null;
                break;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("XINGKE") && (ico = (JView) getPage().getChildViewByid(FinalBtCtrl.Bt_State_Ico)) != null) {
            if (value == 0) {
                ico.setBackground(getPage().getDrawableFromPath("disconnect", getPage().mDrawables, getPage().mDrawables));
            } else {
                ico.setBackground(getPage().getDrawableFromPath("connect", getPage().mDrawables, getPage().mDrawables));
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        super.pause();
        this.bTop = false;
        App_Bt.bJumpFavorite = false;
        App_Bt.bResumeByDial = false;
        childPause();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mViewNoSim = getPage().getChildViewByid(FinalBtCtrl.Dial_View_NoSim);
        this.mViewWithSim = getPage().getChildViewByid(FinalBtCtrl.Dial_View_WithSim);
        this.voiceButton = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
        this.voiceButton1 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch1);
        this.mViewDialFullScreen = getPage().getChildViewByid(FinalBtCtrl.Dial_FullScreen);
        this.mViewDialHalfScreen = getPage().getChildViewByid(FinalBtCtrl.Dial_HalfScreen);
        this.mViewShowGps = getPage().getChildViewByid(FinalBtCtrl.Callin_Btn_ShowGPS);
        this.mViewDialHideNumber = getPage().getChildViewByid(FinalBtCtrl.Dial_HideNumber);
        this.mViewDialHideKeyboard = getPage().getChildViewByid(FinalBtCtrl.Dial_HideKeyboard);
        this.mViewDialShowKeyboard = getPage().getChildViewByid(FinalBtCtrl.Dial_ShowKeyboard);
        EnableHideNumber(true);
        EnableHideKeyboard(false);
        updateSimLayout(0);
        Log.d("size", " init iDensity = " + App_Bt.iDensity);
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.textOperator = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Operator);
        this.mViewShowDial = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowDial);
        this.mViewShowCall = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall);
        if (this.mViewShowCall != null) {
            this.mViewShowCall.setVisibility(8);
        }
        this.mViewShowHang = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowHang);
        if (this.mViewShowHang != null) {
            if (App_Bt.mStrCustomer.equals("TZY_NEW")) {
                this.mViewShowHang.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.Page_Dial.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View arg0) {
                    }
                });
            }
            this.mViewShowHang.setVisibility(8);
        }
        this.vDial_AIU = (JView) getPage().getChildViewByid(FinalBtCtrl.Dial_AIU);
        Log.d("ai", "  setTypeface isAIOnOff = " + App_Bt.isAIOnOff + " isAiuvoice = " + App_Bt.isAiuvoice);
        if (App_Bt.bAI_JZ) {
            showAI();
        }
        if (App_Bt.bAI_JZ2) {
            App_Bt.isAIGT_Aiuvoice = SystemProperties.getInt("sys.blinkbt.ai.noise.code", SupportMenu.USER_MASK);
            App_Bt.isAIGT_OnOff = SystemProperties.getInt("persist.lsec.aecdelay", -1) == 0;
            this.vDial_AIU2 = (JView) getPage().getChildViewByid(FinalBtCtrl.Dial_AIU2);
            showAIGT();
        }
        this.mViewShowCall_Third = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Third);
        this.mViewShowTalk_Third = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowTalk_Third);
        this.mViewShowSave = getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowSave);
        this.mViewShowHide = getPage().getChildViewByid(FinalBtCtrl.Dial_View_HideSave);
        this.tvDialAnswer = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Answer);
        this.tvDialHangup = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Hangup);
        this.tvTxtNumber = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num);
        this.tvTxtPhone1 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName_p1);
        this.tvTxtPhone2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName_p2);
        this.tvTxtName2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name2);
        this.tvTxtNum2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num2);
        this.tvTxtNumBig = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_BigNum);
        if (this.tvTxtNumber != null) {
            this.tvTxtNumber.addTextChangedListener(new MyTextWatcher(this.tvTxtNumber));
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            for (int k = 0; k < this.numText.length; k++) {
                JText text = (JText) getPage().getChildViewByid(this.numText[k]);
                if (text != null) {
                    text.setTypeface(Typeface.MONOSPACE);
                    Log.d("gdy7", "  setTypeface k = " + k);
                }
            }
        }
        this.tvTxtMiniNumber = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_MiniNum);
        Log.d("gdy7", " init tvTxtMiniNumber 000 ");
        if (this.tvTxtMiniNumber != null) {
            this.tvTxtMiniNumber.setVisibility(8);
            Log.d("gdy7", " init tvTxtMiniNumber 111 ");
            this.tvTxtMiniNumber.addTextChangedListener(new MyTextWatcher(this.tvTxtNumber));
        }
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Dial_SearchListView);
        this.mViewPager = (JViewPager) getPage().getChildViewByid(FinalBtCtrl.Dial_ViewPage);
        if (this.mViewPager != null) {
            this.mViewPager.setFocusable(false);
            this.mViewPager.isCanScroll(false);
            updateViewFocus();
        }
        this.mViewInCall = getPage().getChildViewByid(FinalBtCtrl.Dial_InCall_Anim);
        if (this.mViewInCall != null) {
            MyUiItem item = (MyUiItem) this.mViewInCall.getTag();
            String[] str = item.getStrDrawableExtra();
            if (str != null && str.length > 0) {
                this.mAnimationDrawable = (AnimationDrawable) getPage().getDrawableFromPath(str[0], getPage().mDrawables, getPage().mDrawables);
            }
        }
        initMyInfo();
        if (CustomerUtil.isYFConfig()) {
            this.mSB_BtVol = (JSeekBar) getPage().getChildViewByid(FinalBtCtrl.Vol_SeekBar);
            if (this.mSB_BtVol != null) {
                this.mSB_BtVol.setProgressMax(36);
            }
        }
        if (CustomerUtil.isZHTDConfig()) {
            initMenuLayout();
        }
        setButtonColor(App_Bt.color);
        updateShowDial();
        initTypeface();
        setDayOrNight(App_Bt.mColorType);
        updateBtNameAndPinTip();
    }

    private void initHead() {
        for (int i = 0; i < this.ContactView.length; i++) {
            this.ContactView[i] = (JView) getPage().getChildViewByid(i + FinalBtCtrl.Contact_view1);
            if (this.ContactView[i] != null) {
                final int type = i + 1;
                this.ContactView[i].setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.Page_Dial.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View arg0) {
                        App_Bt.iIcoType = type;
                        Page_Dial.this.popBtHead();
                    }
                });
            }
        }
    }

    public void showViewTalking(boolean isShow) {
        Log.d("gdy8", " 00 showViewTalking isShow = " + isShow);
        this.isShow_p = isShow;
        Main.removeRunnable_Ui(this.mRunnShowTalking);
        Main.postRunnable_Ui(true, this.mRunnShowTalking, 300L);
    }

    private void initMyInfo() {
        boolean bEnableFavorite = false;
        if (CustomerUtil.isDZSJMIB4Config()) {
            this.mHeadTime = (JText) getPage().getChildViewByid(FinalBtCtrl.Head_Time);
            this.mViewTalking = getPage().getChildViewByid(FinalBtCtrl.View_Dial_Info);
            this.mViewContact = getPage().getChildViewByid(FinalBtCtrl.View_Concact_info);
            bEnableFavorite = true;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            this.mViewTalking = getPage().getChildViewByid(FinalBtCtrl.View_Dial_Info);
            this.mViewContact = getPage().getChildViewByid(FinalBtCtrl.View_Concact_info);
        }
        View viewPhone1 = getPage().getChildViewByid(FinalBtCtrl.view_phone1);
        if (viewPhone1 != null) {
            viewPhone1.setVisibility(App_Bt.bLinkTwoPhone ? 8 : 0);
        }
        View viewPhone2 = getPage().getChildViewByid(FinalBtCtrl.view_phone2);
        if (viewPhone2 != null) {
            viewPhone2.setVisibility(App_Bt.bLinkTwoPhone ? 0 : 8);
        }
        if (App_Bt.bLinkTwoPhone_test) {
            if (viewPhone1 != null) {
                viewPhone1.setVisibility(8);
            }
            if (viewPhone2 != null) {
                viewPhone2.setVisibility(0);
            }
        }
        if (CustomerUtil.isTZYConfig() && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
            initHead();
            bEnableFavorite = true;
        }
        if (bEnableFavorite) {
            for (int i = 0; i < this.ContactAdd.length; i++) {
                this.ContactAdd[i] = (JText) getPage().getChildViewByid(i + FinalBtCtrl.Contact_add1);
            }
            for (int i2 = 0; i2 < this.ContactName.length; i2++) {
                this.ContactName[i2] = (JText) getPage().getChildViewByid(i2 + FinalBtCtrl.Contact_name1);
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                for (int i3 = 0; i3 < this.ContactAdd.length; i3++) {
                    if (this.ContactAdd[i3] != null) {
                        this.ContactAdd[i3].setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                    }
                }
                for (int i4 = 0; i4 < this.ContactName.length; i4++) {
                    if (this.ContactName[i4] != null) {
                        this.ContactName[i4].setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                    }
                }
            }
        }
    }

    public void controlDialInfo(int state) {
        if (CustomerUtil.isDZSJMIB4Config() || App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            showLoveNumber();
            switch (state) {
                case 0:
                case 1:
                case 6:
                    updateSimLayout(0);
                    EnableHideNumber(true);
                    showViewTalking(false);
                    break;
                case 2:
                    updateSimLayout(1);
                    EnableHideNumber(true);
                    showViewTalking(false);
                    break;
                case 3:
                case 4:
                case 5:
                    updateSimLayout(1);
                    showViewTalking(true);
                    break;
            }
        }
    }

    public void updateBtnVoiceSwitch(boolean flag) {
        Log.d("hfp", " 22 IpcNewPage U_HFP  mIdCustomer = " + MyApplication.mIdCustomer + " App_Bt.bHFP = " + App_Bt.bHFP);
        if ((CustomerUtil.isYFConfig() || CustomerUtil.isZhangConfig() || MyApplication.mIdCustomer == 139 || App_Bt.mStrCustomer.equals("BT_23NEW")) && this.voiceButton != null) {
            if (App_Bt.mStrCustomer.equals("BT_23NEW")) {
                this.voiceButton.setStrDrawable(App_Bt.bHFP ? "bt_dialsound" : "bt_dialsound1", true);
                if (this.voiceButton1 != null) {
                    this.voiceButton1.setStrDrawable(App_Bt.bHFP ? "bt_dialsound" : "bt_dialsound1", true);
                }
                Log.d("hfp", " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
                return;
            }
            Log.d("hfp", " 22 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
            MyUiItem item = (MyUiItem) this.voiceButton.getTag();
            if (item.getParaStr() != null) {
                Log.d("hfp", " 33 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
                String str = null;
                if (!flag) {
                    str = item.getStrDrawable();
                } else if (item.getParaStr() != null) {
                    str = item.getParaStr()[0];
                }
                if (this.voiceButton.getStrDrawable() != str && str != null) {
                    this.voiceButton.setStrDrawable(str, true);
                    return;
                }
                return;
            }
            Log.d("hfp", " 44 Page_Dial updateBtnVoiceSwitch App_Bt.bHFP = " + App_Bt.bHFP);
            this.voiceButton.setFocus(App_Bt.bHFP);
        }
    }

    public void showLoveNumber() {
        JText tip;
        boolean isShowOrHide;
        if (CustomerUtil.isDZSJMIB4Config()) {
            for (int i = 0; i < 5; i++) {
                new SparseArray();
                SparseArray<String> map = SpUtil.getContact("contact_save1" + i);
                String txt = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                String txt2 = txt;
                if (!TextUtils.isEmpty(map.get(FinalBtCtrl.ContactItem_Txt_Name)) && Bt_IpcObj.isConnect()) {
                    isShowOrHide = true;
                } else {
                    isShowOrHide = false;
                }
                if (this.ContactName[i] != null) {
                    this.ContactName[i].setText(isShowOrHide ? txt2 : FinalChip.BSP_PLATFORM_Null);
                    this.ContactName[i].setVisibility(isShowOrHide ? 0 : 8);
                }
                if (this.ContactAdd[i] != null) {
                    this.ContactAdd[i].setVisibility(isShowOrHide ? 8 : 0);
                }
            }
            return;
        }
        if (CustomerUtil.isTZYConfig()) {
            int length = App_Bt.mBtInfo.mListFavContact.size();
            String addr = Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null);
            String path = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo/" + addr;
            File f = new File(path);
            if (f.exists()) {
            }
            int num = 0;
            for (int i2 = 0; i2 <= 5; i2++) {
                boolean bShowOrHide = true;
                String name = FinalChip.BSP_PLATFORM_Null;
                String number = FinalChip.BSP_PLATFORM_Null;
                String head = FinalChip.BSP_PLATFORM_Null;
                if (i2 < length) {
                    String name2 = App_Bt.mBtInfo.mListFavContact.get(i2).get(FinalBtCtrl.ContactItem_Txt_Name);
                    name = name2;
                    String number2 = App_Bt.mBtInfo.mListFavContact.get(i2).get(FinalBtCtrl.ContactItem_Txt_Number);
                    number = number2;
                    String head2 = App_Bt.mBtInfo.mListFavContact.get(i2).get(FinalBtCtrl.ContactItem_HeadIcon);
                    head = head2;
                    if (TextUtils.isEmpty(name) && TextUtils.isEmpty(number)) {
                        bShowOrHide = true;
                    } else {
                        bShowOrHide = false;
                        num++;
                    }
                }
                JButton button = (JButton) getPage().getChildViewByid(i2 + FinalBtCtrl.Contace_Btn_Save1);
                if (button != null) {
                    button.setVisibility(bShowOrHide ? 8 : 0);
                }
                JText Contact_name = (JText) getPage().getChildViewByid(i2 + FinalBtCtrl.Contact_name1);
                JText Contact_number = (JText) getPage().getChildViewByid(i2 + FinalBtCtrl.Contact_add1);
                JView Contact_view = (JView) getPage().getChildViewByid(i2 + FinalBtCtrl.Contact_view1);
                if (Contact_name != null) {
                    Contact_name.setVisibility(bShowOrHide ? 8 : 0);
                    Contact_name.setText(name);
                }
                if (Contact_number != null) {
                    Contact_number.setVisibility(bShowOrHide ? 8 : 0);
                    Contact_number.setText(number);
                }
                if (Contact_view != null) {
                    Contact_view.setVisibility(bShowOrHide ? 8 : 0);
                    boolean defaultHead = true;
                    int index = 0;
                    if (!TextUtils.isEmpty(head)) {
                        index = Integer.parseInt(head);
                        if (!bShowOrHide && index > 0) {
                            defaultHead = false;
                        }
                    }
                    if (index > 15) {
                        Bitmap bmp = BTUtil.getInstance().getHeadIco(number);
                        if (bmp != null) {
                            Contact_view.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                        } else {
                            Contact_view.setBackground(defaultHead ? getPage().getDrawableFromPath("bt_navitxt_bk", getPage().mDrawables, getPage().mDrawables) : getPage().getDrawableFromPath("headbig" + index, getPage().mDrawables, getPage().mDrawables));
                        }
                    } else {
                        Contact_view.setBackground(defaultHead ? getPage().getDrawableFromPath("bt_navitxt_bk", getPage().mDrawables, getPage().mDrawables) : getPage().getDrawableFromPath("headbig" + index, getPage().mDrawables, getPage().mDrawables));
                    }
                }
                if (!App_Bt.mStrCustomer.equals("TZY_BT_1920") && (tip = (JText) getPage().getChildViewByid(FinalBtCtrl.Contace_Txt_Save_None)) != null) {
                    tip.setVisibility(num > 0 ? 8 : 0);
                }
            }
        }
    }

    public void showInCallAnim() {
        if (this.mViewInCall != null && this.mViewInCall.getVisibility() != 0) {
            this.mViewInCall.setVisibility(0);
            if (this.mRunnable_AnimDrawable != null) {
                Main.removeRunnable_Ui(this.mRunnable_AnimDrawable);
                this.mRunnable_AnimDrawable.stopRun();
                this.mRunnable_AnimDrawable = null;
            }
            this.mRunnable_AnimDrawable = new Runnable_AnimDrawable(this.mViewInCall, this.mAnimationDrawable, 200);
            Main.postRunnable_Ui(false, this.mRunnable_AnimDrawable);
        }
    }

    public void hideInCallAnim() {
        if (this.mViewInCall != null && this.mViewInCall.getVisibility() != 8) {
            this.mViewInCall.setVisibility(8);
            if (this.mRunnable_AnimDrawable != null) {
                Main.removeRunnable_Ui(this.mRunnable_AnimDrawable);
                this.mRunnable_AnimDrawable.stopRun();
                this.mRunnable_AnimDrawable = null;
            }
        }
    }

    public void resetBtnEnable() {
        if (App_Bt.hideBtnWhenDisconnect) {
            boolean flag = Bt_IpcObj.isConnect();
            for (int i = FinalBtCtrl.Callin_Btn_ShowGPS; i < 10163; i++) {
                JButton button = (JButton) getPage().getChildViewByid(i);
                if (button != null) {
                    button.setEnabled(flag);
                }
            }
        }
        if (CustomerUtil.isLuChangConfig() && !CustomerUtil.is7731()) {
            boolean flag2 = Bt_IpcObj.isConnect();
            JButton button2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
            if (button2 != null) {
                button2.setEnabled(flag2);
            }
        }
        updateSoundVol();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay() && !btnClick_Third(v)) {
            Log.d("gdy7", " **  btnClick_Third   bPop3rdPhone = " + App_Bt.bPop3rdPhone);
            if (!App_Bt.bPop3rdPhone && !App_Bt.bPop3rdPhone_YF && !btnClick(v)) {
                if (App_Bt.getInstance().mIpcObj.isCalling() && (!this.dialThrdPhone || v.getId() != 10053)) {
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
                } else {
                    if (this.actBt.MenuClick(v)) {
                    }
                }
            }
        }
    }

    private boolean btnClick_Third(View v) throws Throwable {
        boolean bRet = true;
        int id = v.getId();
        Log.d("gdy7", " **  btnClick_Third   id = " + id);
        switch (id) {
            case FinalBtCtrl.Dial_Btn_Hang /* 10132 */:
            case FinalBtCtrl.Dial_Btn_Hang1 /* 10134 */:
                if (App_Bt.bPop3rdPhone || App_Bt.bPop3rdPhone_YF) {
                    if (CustomerUtil.isYFConfig()) {
                        if (Ipc_New.isTalk() || Ipc_New.isRing()) {
                            Ipc_New.hang3rdPhoneCurrent();
                        }
                    } else if (Ipc_New.isTalk()) {
                        Ipc_New.hang3rdPhoneCurrent();
                    }
                } else {
                    bRet = false;
                }
                break;
            case FinalBtCtrl.Dial_Btn_Dial1 /* 10133 */:
            case FinalBtCtrl.Dial_Btn_LinkCut1 /* 10135 */:
            case FinalBtCtrl.Dial_Btn_Dial_p1 /* 10138 */:
            case FinalBtCtrl.Dial_Btn_Dial_p2 /* 10139 */:
            case FinalBtCtrl.Phone2_switch /* 10140 */:
            case FinalBtCtrl.Phoen_Icon /* 10141 */:
            case FinalBtCtrl.Phoen_Icon_p1 /* 10142 */:
            case FinalBtCtrl.Phoen_Icon_p2 /* 10143 */:
            case FinalBtCtrl.Dial_Txt_LinkName_p1 /* 10144 */:
            case FinalBtCtrl.Dial_Txt_LinkName_p2 /* 10145 */:
            case FinalBtCtrl.Dial_Btn_LinkCut /* 10158 */:
            case FinalBtCtrl.Dial_Btn_Link /* 10159 */:
            case FinalBtCtrl.Dial_Btn_Disconnect /* 10160 */:
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
            case FinalBtCtrl.Dial_Btn_HideKeyboard /* 10164 */:
            case FinalBtCtrl.Dial_Btn_ShowKeyboard /* 10165 */:
            case FinalBtCtrl.Dial_Btn_HideNumber /* 10166 */:
            case FinalBtCtrl.Dial_Btn_Search /* 10167 */:
            case FinalBtCtrl.Dial_History /* 10171 */:
            case FinalBtCtrl.Dial_Favorite /* 10172 */:
            case FinalBtCtrl.Dial_Contact /* 10173 */:
            case FinalBtCtrl.Dial_View_NoSim /* 10174 */:
            case FinalBtCtrl.Dial_View_WithSim /* 10175 */:
            case FinalBtCtrl.Dial_View_ShowDial /* 10176 */:
            case FinalBtCtrl.Dial_View_ShowCall /* 10177 */:
            case FinalBtCtrl.Dial_View_ShowHang /* 10178 */:
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Dial /* 10179 */:
            case FinalBtCtrl.Dial_View_ShowHead /* 10183 */:
            case FinalBtCtrl.Dial_View_ShowHead2 /* 10184 */:
            case FinalBtCtrl.Dial_View_Disconnect /* 10185 */:
            default:
                bRet = false;
                break;
            case FinalBtCtrl.Dial_Btn_VoiceSwitch1 /* 10136 */:
            case FinalBtCtrl.Dial_Btn_VoiceSwitch /* 10161 */:
            case FinalBtCtrl.Dial_View_ShowHang_Btn_VoiceSwitch /* 10181 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.VoiceSwitch();
                break;
                break;
            case FinalBtCtrl.Dial_Btn_steer /* 10137 */:
                Log.d("pop3", " Dial_Btn_steer  U_PHONE_STATE = " + Bt.DATA[9]);
                if (Bt_IpcObj.isTalk()) {
                    showViewTalking(false);
                }
                break;
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
            case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
            case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
            case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
            case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
            case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
            case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
            case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
            case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
            case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
            case FinalBtCtrl.Dial_Btn_X /* 10156 */:
            case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                Log.d("gdy7", " 00 btnClick dialThrdPhone = " + this.dialThrdPhone + HanziToPinyin.Token.SEPARATOR);
                if (MyApplication.mIdCustomer == 34) {
                    if (Bt.sPhoneNumber.length() < 17) {
                        App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
                    }
                } else if (this.dialThrdPhone) {
                    this.dialThrdNumber = String.valueOf(this.dialThrdNumber) + Integer.toString(id - 10146);
                    Log.d("gdy7", " 11 btnClick dialThrdNumber = " + this.dialThrdNumber + HanziToPinyin.Token.SEPARATOR);
                    this.tvTxtNumber.setText(this.dialThrdNumber);
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setText(this.dialThrdNumber);
                    }
                    updatePhoneName(this.dialThrdNumber);
                } else {
                    App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
                    Log.d("gdy7", " 22 btnClick dialThrdNumber = " + (id - 10146) + HanziToPinyin.Token.SEPARATOR);
                }
                break;
            case FinalBtCtrl.Dial_Btn_MicSwitch /* 10162 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.MicSwitch();
                break;
                break;
            case FinalBtCtrl.Dial3rdPhone_Btn_Accept /* 10168 */:
            case FinalBtCtrl.Dial3rdPhone_Btn_Switch /* 10170 */:
                Ipc_New.switch3rdPhone();
                break;
            case FinalBtCtrl.Dial3rdPhone_Btn_Hang /* 10169 */:
                if (Ipc_New.isRing()) {
                    Ipc_New.hang3rdPhoneHold();
                } else {
                    Ipc_New.hang3rdPhoneCurrent();
                }
                break;
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Hang /* 10180 */:
            case FinalBtCtrl.Dial_View_ShowHang_Btn_Hang /* 10182 */:
                if (App_Bt.bPop3rdPhone || App_Bt.bPop3rdPhone_YF) {
                    if (Ipc_New.isRing()) {
                        Ipc_New.hang3rdPhoneHold();
                    } else {
                        Ipc_New.hang3rdPhoneCurrent();
                    }
                } else {
                    bRet = false;
                }
                break;
            case FinalBtCtrl.Dial_Btn_Mute /* 10186 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.MuteSwitch(App_Bt.bSoundMute ? 0 : 1);
                break;
                break;
        }
        return bRet;
    }

    private boolean btnClick(View v) throws Throwable {
        boolean bRet = true;
        App_Bt.bJumpFavorite = false;
        int id = v.getId();
        Log.d("gdy7", " **  btnClick   id = " + id);
        switch (id) {
            case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                if (CustomerUtil.isZhangConfig()) {
                    Bt_IpcObj.SetJumpNavi();
                } else if (App_Bt.getInstance().isHalfScreenAble()) {
                    App_Bt.getInstance().setFullScreenMode(0);
                }
                break;
            case FinalBtCtrl.Dial_Btn_DialIp /* 10129 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (App_Bt.getInstance().mIpcObj.FuncDialIpPhone()) {
                    this.actBt.showProgressIpPhoneDlg();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_DialThrd /* 10130 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (Bt_IpcObj.isTalk() && !this.dialThrdPhone) {
                    this.dialThrdPhone = true;
                    this.tvTxtNumber.setText(this.dialThrdNumber);
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setText(this.dialThrdNumber);
                    }
                    updatePhoneName(this.dialThrdNumber);
                } else if (this.dialThrdPhone) {
                    this.dialThrdPhone = false;
                    this.tvTxtNumber.setText(Bt.sPhoneNumber);
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setText(Bt.sPhoneNumber);
                    }
                    updatePhoneName(Bt.sPhoneNumber);
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
            case FinalBtCtrl.Dial_Btn_Dial1 /* 10133 */:
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Dial /* 10179 */:
                Log.d("hy", " ** 11 dial Dial_Btn_Dial1 sPhone_callin_mac = " + App_Bt.sPhone_callin_mac + " sPhone_callin_id = " + App_Bt.sPhone_callin_id);
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (this.dialThrdPhone && !TextUtils.isEmpty(this.dialThrdNumber)) {
                    Bt_IpcObj.dial(this.dialThrdNumber);
                } else {
                    Log.d("hy", " ** 00 dial C_DIAL phoneNumer strNumberBak = " + App_Bt.strNumberBak + " sPhoneNumber = " + Bt.sPhoneNumber);
                    if (!TextUtils.isEmpty(App_Bt.strNumberBak) && TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        Log.d("hy", " ** 11 dial C_DIAL phoneNumer strNumberBak = " + App_Bt.strNumberBak);
                        Bt_IpcObj.setNum(App_Bt.strNumberBak);
                    } else {
                        Log.d("hy", " ** 22 dial C_DIAL phoneNumer strNumberBak = " + App_Bt.strNumberBak);
                        App_Bt.getInstance().mIpcObj.FuncDial();
                    }
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Hang /* 10132 */:
            case FinalBtCtrl.Dial_Btn_Hang1 /* 10134 */:
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Hang /* 10180 */:
            case FinalBtCtrl.Dial_View_ShowHang_Btn_Hang /* 10182 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Log.d("gdy8", " 00 btnClick Dial_Btn_Hang1 U_PHONE_STATE = " + Bt.DATA[9] + HanziToPinyin.Token.SEPARATOR);
                Bt_IpcObj.hangIpPhone();
                stopIpPhoneTimer();
                Log.d("sfth3", " ** 33 Ipc Dial_Btn_Hang1  App_Bt.bPhone2_dialThrdPhone = " + App_Bt.bPhone2_dialThrdPhone + " dialThrdPhone = " + this.dialThrdPhone);
                if (this.dialThrdPhone && Bt.DATA[9] == 3 && !App_Bt.bLinkTwoPhone) {
                    Ipc_New.hang3rdPhoneCurrent();
                } else if (App_Bt.bLinkTwoPhone && App_Bt.bPhone2_dialThrdPhone && Bt.DATA[9] >= 3) {
                    App_Bt.bPhone2_dialThrdPhone = false;
                    Ipc_New.hang3rdPhoneCurrent();
                } else if (Bt_IpcObj.isInCall() || CustomerUtil.is7731()) {
                    Bt_IpcObj.hang();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_LinkCut1 /* 10135 */:
            case FinalBtCtrl.Dial_Btn_LinkCut /* 10158 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (Bt.DATA[9] != 0 && Bt_IpcObj.isInCall()) {
                    if (App_Bt.bHFP) {
                        this.actBt.popDeleteContacts(6, App_Bt.getInstance().uiApp.getString("str_note_swith2htp"));
                    }
                } else {
                    Bt_IpcObj.linkCut();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_VoiceSwitch1 /* 10136 */:
            case FinalBtCtrl.Dial_Btn_VoiceSwitch /* 10161 */:
            case FinalBtCtrl.Dial_View_ShowHang_Btn_VoiceSwitch /* 10181 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.VoiceSwitch();
                break;
                break;
            case FinalBtCtrl.Dial_Btn_steer /* 10137 */:
                Log.d("pop3", " Dial_Btn_steer  U_PHONE_STATE = " + Bt.DATA[9]);
                if (Bt_IpcObj.isTalk()) {
                    showViewTalking(false);
                }
                break;
            case FinalBtCtrl.Dial_Btn_Dial_p1 /* 10138 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Log.d("book3", " 00 Dial_Btn_Dial_p1 ");
                if (!TextUtils.isEmpty(Bt.sPhoneNumber) || !App_Bt.bLinkTwoPhone) {
                    Log.d("book3", " 11 Dial_Btn_Dial_p1 sPhoneNumber = " + Bt.sPhoneNumber);
                    if (App_Bt.sPhone2_id == 1) {
                        Bt.PROXY.cmd(15, new int[]{1}, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
                    }
                    App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[0];
                    App_Bt.sPhone_callin_id = 0;
                    Log.d("dial", "Dial_Btn_Dial1 id = " + id + " sPhoneNumber = " + Bt.sPhoneNumber + " CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[0] + "," + App_Bt.sPhone2_CALL_NUMBER[1]);
                    if (TextUtils.isEmpty(Bt.sPhoneNumber) && !TextUtils.isEmpty(this.sPhoneNumber1_p) && App_Bt.bPhone2_HFP[0] == 3) {
                        Bt.sPhoneNumber = this.sPhoneNumber1_p;
                    }
                    this.sPhoneNumber1_p = Bt.sPhoneNumber;
                    Bt_IpcObj.dial(Bt.sPhoneNumber);
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Dial_p2 /* 10139 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (!TextUtils.isEmpty(Bt.sPhoneNumber) || !App_Bt.bLinkTwoPhone) {
                    if (App_Bt.sPhone2_id == 0) {
                        Bt.PROXY.cmd(15, new int[]{1}, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
                    }
                    App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[1];
                    App_Bt.sPhone_callin_id = 1;
                    Log.d("dial", "Dial_Btn_Dial2 id = " + id + " sPhoneNumber = " + Bt.sPhoneNumber + " CALL_NUMBER = " + App_Bt.sPhone2_CALL_NUMBER[0] + "," + App_Bt.sPhone2_CALL_NUMBER[1]);
                    if (TextUtils.isEmpty(Bt.sPhoneNumber) && !TextUtils.isEmpty(this.sPhoneNumber2_p) && App_Bt.bPhone2_HFP[1] == 3) {
                        Bt.sPhoneNumber = this.sPhoneNumber2_p;
                    }
                    this.sPhoneNumber2_p = Bt.sPhoneNumber;
                    Bt_IpcObj.dial(Bt.sPhoneNumber);
                }
                break;
                break;
            case FinalBtCtrl.Phone2_switch /* 10140 */:
                if (!Ipc_New.isInCall() && !App_Bt.bDownloading) {
                    Main.removeRunnable_Ui(this.mRunnPhoneSwitch);
                    Main.postRunnable_Ui(true, this.mRunnPhoneSwitch, 1500L);
                    if (App_Bt.iPhoneSwitchStep == 0 && App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3) {
                        App_Bt.iPhoneSwitchStep = 1;
                        Bt.PROXY.cmd(66, (int[]) null, (float[]) null, (String[]) null);
                        App_Bt.mListHis_p.clear();
                        App_Bt.mListHis_p2.clear();
                        App_Bt.mListHis_p.addAll(App_Bt.mBtInfo.mListHistoryIn);
                        App_Bt.mListHis_p.addAll(App_Bt.mBtInfo.mListHistoryOut);
                        App_Bt.mListHis_p.addAll(App_Bt.mBtInfo.mListHistoryMiss);
                        App_Bt.mListHis_p2.addAll(App_Bt.mBtInfo.mListHistoryIn2);
                        App_Bt.mListHis_p2.addAll(App_Bt.mBtInfo.mListHistoryOut2);
                        App_Bt.mListHis_p2.addAll(App_Bt.mBtInfo.mListHistoryMiss2);
                    }
                }
                break;
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
            case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
            case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
            case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
            case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
            case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
            case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
            case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
            case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
            case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
            case FinalBtCtrl.Dial_Btn_X /* 10156 */:
            case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                Log.d("gdy7", " 00 btnClick dialThrdPhone = " + this.dialThrdPhone + HanziToPinyin.Token.SEPARATOR);
                if (MyApplication.mIdCustomer == 34) {
                    if (Bt.sPhoneNumber.length() < 17) {
                        App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
                    }
                } else if (this.dialThrdPhone) {
                    this.dialThrdNumber = String.valueOf(this.dialThrdNumber) + Integer.toString(id - 10146);
                    Log.d("gdy7", " 11 btnClick dialThrdNumber = " + this.dialThrdNumber + HanziToPinyin.Token.SEPARATOR);
                    this.tvTxtNumber.setText(this.dialThrdNumber);
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setText(this.dialThrdNumber);
                    }
                    updatePhoneName(this.dialThrdNumber);
                } else {
                    App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
                    Log.d("gdy7", " 22 btnClick dialThrdNumber = " + (id - 10146) + HanziToPinyin.Token.SEPARATOR);
                }
                break;
            case FinalBtCtrl.Dial_Btn_Link /* 10159 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (App_Bt.mStrCustomer.equals("TZY_BT_1920")) {
                    if (Bt.DATA[9] == 0 && !App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                    } else {
                        Bt_IpcObj.cut();
                    }
                } else {
                    Bt_IpcObj.link();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Disconnect /* 10160 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if ((Main.mConf_PlatForm == 5 || Main.mConf_PlatForm == 6 || Main.mConf_PlatForm == 7) && Bt_IpcObj.isInCall()) {
                    if (App_Bt.bHFP) {
                        this.actBt.popDeleteContacts(6, App_Bt.getInstance().uiApp.getString("str_note_swith2htp"));
                    }
                } else {
                    Bt_IpcObj.cut();
                }
                break;
                break;
            case FinalBtCtrl.Dial_Btn_MicSwitch /* 10162 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                Bt_IpcObj.MicSwitch();
                break;
                break;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (CustomerUtil.filterDemand_DZSJ() && !this.dialThrdPhone) {
                    Bt_IpcObj.clearKey(false);
                } else if (this.dialThrdPhone) {
                    if (TextUtils.isEmpty(this.dialThrdNumber)) {
                        this.dialThrdPhone = false;
                        updatePhoneName(Bt.sPhoneNumber);
                        this.tvTxtNumber.setText(Bt.sPhoneNumber);
                        if (this.tvTxtMiniNumber != null) {
                            this.tvTxtMiniNumber.setText(Bt.sPhoneNumber);
                        }
                    } else {
                        this.dialThrdNumber = this.dialThrdNumber.subSequence(0, this.dialThrdNumber.length() - 1).toString();
                        updatePhoneName(this.dialThrdNumber);
                        this.tvTxtNumber.setText(this.dialThrdNumber);
                        if (this.tvTxtMiniNumber != null) {
                            this.tvTxtMiniNumber.setText(this.dialThrdNumber);
                        }
                    }
                }
                break;
            case FinalBtCtrl.Dial_Btn_HideKeyboard /* 10164 */:
                EnableHideKeyboard(true);
                break;
            case FinalBtCtrl.Dial_Btn_ShowKeyboard /* 10165 */:
                EnableHideKeyboard(false);
                break;
            case FinalBtCtrl.Dial_Btn_HideNumber /* 10166 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    if (this.mViewDialHideNumber != null) {
                        if (this.mViewDialHideNumber.getVisibility() == 8) {
                            this.mViewDialHideNumber.setVisibility(0);
                        } else {
                            this.mViewDialHideNumber.setVisibility(8);
                        }
                    }
                } else {
                    Bt_IpcObj.setNum(FinalChip.BSP_PLATFORM_Null);
                    EnableHideNumber(true);
                }
                break;
            case FinalBtCtrl.Dial_History /* 10171 */:
                if (this.mViewPager != null) {
                    this.mViewPager.setCurrentItem(3);
                    childPause();
                    updateViewFocus();
                    childResume();
                }
                break;
            case FinalBtCtrl.Dial_Favorite /* 10172 */:
                if (this.mViewPager != null) {
                    this.mViewPager.setCurrentItem(2);
                    childPause();
                    updateViewFocus();
                    childResume();
                }
                break;
            case FinalBtCtrl.Dial_Contact /* 10173 */:
                if (this.mViewPager != null) {
                    this.mViewPager.setCurrentItem(1);
                    childPause();
                    updateViewFocus();
                    childResume();
                }
                break;
            case FinalBtCtrl.Keyboard_Btn_0 /* 10196 */:
            case FinalBtCtrl.Keyboard_Btn_1 /* 10197 */:
            case FinalBtCtrl.Keyboard_Btn_2 /* 10198 */:
            case FinalBtCtrl.Keyboard_Btn_3 /* 10199 */:
            case FinalBtCtrl.Keyboard_Btn_4 /* 10200 */:
            case FinalBtCtrl.Keyboard_Btn_5 /* 10201 */:
            case FinalBtCtrl.Keyboard_Btn_6 /* 10202 */:
            case FinalBtCtrl.Keyboard_Btn_7 /* 10203 */:
            case FinalBtCtrl.Keyboard_Btn_8 /* 10204 */:
            case FinalBtCtrl.Keyboard_Btn_9 /* 10205 */:
            case FinalBtCtrl.Keyboard_Btn_X /* 10206 */:
            case FinalBtCtrl.Keyboard_Btn_J /* 10207 */:
                App_Bt.getInstance().mIpcObj.cmdNum(id - 10196);
                int num = id - 10196;
                if (num == 10) {
                    App_Bt.sDialInput = String.valueOf(App_Bt.sDialInput) + "*";
                } else if (num == 11) {
                    App_Bt.sDialInput = String.valueOf(App_Bt.sDialInput) + "#";
                } else {
                    App_Bt.sDialInput = String.valueOf(App_Bt.sDialInput) + num;
                }
                break;
            case FinalBtCtrl.Dial_SaveView /* 10212 */:
                if (!Bt_IpcObj.isInCall() && this.mViewShowSave != null) {
                    showLoveNumber();
                    this.mViewShowSave.animate().alpha(1.0f).setDuration(300L).withLayer().withStartAction(new Runnable() { // from class: com.syu.bt.page.Page_Dial.8
                        @Override // java.lang.Runnable
                        public void run() {
                            Page_Dial.this.hideDialView(false);
                            Page_Dial.this.mViewShowSave.setVisibility(0);
                        }
                    });
                }
                break;
            case FinalBtCtrl.Vol_SeekBar /* 10342 */:
                Sound.PROXY.cmd(0, this.mSB_BtVol.getValue());
                break;
            case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                this.actBt.Func_Back();
                break;
            case FinalBtCtrl.Contace_Btn_Save1 /* 10575 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map1 = SpUtil.getContact("contact_save1");
                    if (!TextUtils.isEmpty(map1.get(FinalBtCtrl.ContactItem_Txt_Name)) && !TextUtils.isEmpty(map1.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map1.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                } else if (App_Bt.mBtInfo.mListFavContact.size() > 0) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(0).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            case FinalBtCtrl.Contace_Btn_Save2 /* 10576 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map2 = SpUtil.getContact("contact_save2");
                    if (!TextUtils.isEmpty(map2.get(FinalBtCtrl.ContactItem_Txt_Name)) && !TextUtils.isEmpty(map2.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map2.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                } else if (App_Bt.mBtInfo.mListFavContact.size() > 1) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(1).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            case FinalBtCtrl.Contace_Btn_Save3 /* 10577 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map3 = SpUtil.getContact("contact_save3");
                    if (!TextUtils.isEmpty(map3.get(FinalBtCtrl.ContactItem_Txt_Name)) && !TextUtils.isEmpty(map3.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map3.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                } else if (App_Bt.mBtInfo.mListFavContact.size() > 2) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(2).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            case FinalBtCtrl.Contace_Btn_Save4 /* 10578 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map4 = SpUtil.getContact("contact_save4");
                    if (!TextUtils.isEmpty(map4.get(FinalBtCtrl.ContactItem_Txt_Name)) && !TextUtils.isEmpty(map4.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map4.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                } else if (App_Bt.mBtInfo.mListFavContact.size() > 3) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(3).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            case FinalBtCtrl.Contace_Btn_Save5 /* 10579 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map5 = SpUtil.getContact("contact_save5");
                    if (!TextUtils.isEmpty(map5.get(FinalBtCtrl.ContactItem_Txt_Name)) && !TextUtils.isEmpty(map5.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map5.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                } else if (App_Bt.mBtInfo.mListFavContact.size() > 4) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(4).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            case FinalBtCtrl.Contace_Btn_Save6 /* 10580 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                if (App_Bt.mBtInfo.mListFavContact.size() > 5) {
                    Bt_IpcObj.itemDial(App_Bt.mBtInfo.mListFavContact.get(5).get(FinalBtCtrl.ContactItem_Txt_Number));
                }
                break;
                break;
            default:
                bRet = false;
                break;
        }
        return bRet;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) throws Throwable {
        int id = v.getId();
        Log.d("gdy7", " **  ResponseLongClick   id = " + id);
        switch (id) {
            case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
            case FinalBtCtrl.Dial_Btn_Dial_p1 /* 10138 */:
            case FinalBtCtrl.Dial_Btn_Dial_p2 /* 10139 */:
                if (App_Bt.bPhoneVoice) {
                    Log.d("pv", " ** 00 ResponseLongClick PhoneVoice  ");
                    App_Bt.getInstance().mIpcObj.PhoneVoice();
                }
                break;
            case FinalBtCtrl.Dial_Btn_VoiceSwitch1 /* 10136 */:
            case FinalBtCtrl.Dial_Btn_VoiceSwitch /* 10161 */:
                if (App_Bt.isAIGT_Aiuvoice == 0 && App_Bt.isAIGT_OnOff) {
                    this.actBt.showPopHySetAI();
                } else {
                    this.actBt.showPopHySet();
                }
                break;
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                Bt_IpcObj.LongClick0();
                break;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (CustomerUtil.filterDemand_DZSJ() && !this.dialThrdPhone) {
                    Bt_IpcObj.clearKey(true);
                } else if (this.dialThrdPhone) {
                    this.dialThrdNumber = FinalChip.BSP_PLATFORM_Null;
                    updatePhoneName(this.dialThrdNumber);
                    this.tvTxtNumber.setText(this.dialThrdNumber);
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setText(this.dialThrdNumber);
                    }
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save1 /* 10575 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map1 = SpUtil.getContact("contact_save1");
                    if (!TextUtils.isEmpty(map1.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                        App_Bt.mSelectContact = 1;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                        break;
                    } else if (Bt_IpcObj.isConnect() && App_Bt.mBtInfo.mListContact.size() > 0) {
                        App_Bt.mSelectContact = 1;
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Contact);
                        break;
                    }
                } else {
                    if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.mSelectContact = 1;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    }
                    break;
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save2 /* 10576 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map2 = SpUtil.getContact("contact_save2");
                    if (!TextUtils.isEmpty(map2.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                        App_Bt.mSelectContact = 2;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                        break;
                    } else if (Bt_IpcObj.isConnect() && App_Bt.mBtInfo.mListContact.size() > 0) {
                        App_Bt.mSelectContact = 2;
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Contact);
                        break;
                    }
                } else {
                    if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.mSelectContact = 2;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    }
                    break;
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save3 /* 10577 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map3 = SpUtil.getContact("contact_save3");
                    if (!TextUtils.isEmpty(map3.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                        App_Bt.mSelectContact = 3;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                        break;
                    } else if (Bt_IpcObj.isConnect() && App_Bt.mBtInfo.mListContact.size() > 0) {
                        App_Bt.mSelectContact = 3;
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Contact);
                        break;
                    }
                } else {
                    if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.mSelectContact = 3;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    }
                    break;
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save4 /* 10578 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map4 = SpUtil.getContact("contact_save4");
                    if (!TextUtils.isEmpty(map4.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                        App_Bt.mSelectContact = 4;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                        break;
                    } else if (Bt_IpcObj.isConnect() && App_Bt.mBtInfo.mListContact.size() > 0) {
                        App_Bt.mSelectContact = 4;
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Contact);
                        break;
                    }
                } else {
                    if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.mSelectContact = 4;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    }
                    break;
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save5 /* 10579 */:
                if (CustomerUtil.isDZSJMIB4Config()) {
                    SparseArray<String> map5 = SpUtil.getContact("contact_save5");
                    if (!TextUtils.isEmpty(map5.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                        App_Bt.mSelectContact = 5;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                        break;
                    } else if (Bt_IpcObj.isConnect() && App_Bt.mBtInfo.mListContact.size() > 0) {
                        App_Bt.mSelectContact = 5;
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Contact);
                        break;
                    }
                } else {
                    if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.mSelectContact = 5;
                        this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    }
                    break;
                }
                break;
            case FinalBtCtrl.Contace_Btn_Save6 /* 10580 */:
                if (App_Bt.mStrCustomer.equals("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    App_Bt.mSelectContact = 6;
                    this.actBt.popDeleteContacts(10, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                }
                break;
        }
        return false;
    }

    public void popTestDlg() {
        Dialog popDlg;
        if (Main.mConf_PlatForm == 5 && (popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopRecSound, FinalChip.BSP_PLATFORM_Null, true)) != null) {
            JPage page = this.actBt.ui.getPage(FinalBtCtrl.Page_PopRecSound);
            if (page != null) {
                page.resume();
            }
            popDlg.show();
        }
    }

    public void updateSimLayout(int flag) {
        boolean state = false;
        if (Ipc_New.isIpPhoneConnect() && flag == 1) {
            state = true;
        }
        if (CustomerUtil.isDZSJMIB4Config() && flag == 1) {
            state = true;
        }
        if (state) {
            if (this.mViewNoSim != null) {
                this.mViewNoSim.setVisibility(8);
            }
            if (this.mViewWithSim != null) {
                this.mViewWithSim.setVisibility(0);
                return;
            }
            return;
        }
        if (this.mViewNoSim != null) {
            this.mViewNoSim.setVisibility(0);
        }
        if (this.mViewWithSim != null) {
            this.mViewWithSim.setVisibility(8);
        }
    }

    public void HideOrShowNumberPad() {
        if (this.mViewDialHideNumber != null && !CustomerUtil.isDZSJMIB4Config()) {
            this.mViewDialHideNumber.setVisibility(Bt.sPhoneNumber.length() != 0 ? 0 : 8);
        }
        if (this.mGridView != null) {
            this.mGridView.setVisibility((Bt.sPhoneNumber.length() == 0 || App_Bt.mBtInfo.mListContact.size() <= 0) ? 8 : 0);
        }
    }

    public void EnableHideNumber(boolean flag) {
        if (flag) {
            if (this.mViewDialHideNumber != null) {
                this.mViewDialHideNumber.setVisibility(8);
            }
            if (this.mGridView != null) {
                this.mGridView.setVisibility(8);
            }
        } else {
            if (this.mViewDialHideNumber != null) {
                this.mViewDialHideNumber.setVisibility(0);
            }
            if (this.mGridView != null) {
                this.mGridView.setVisibility(0);
            }
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") && this.mGridView != null) {
            this.mGridView.setVisibility(0);
        }
    }

    public void EnableHideKeyboard(boolean flag) {
        if (flag) {
            if (this.mViewDialHideKeyboard != null) {
                this.mViewDialHideKeyboard.setVisibility(0);
            }
            if (this.mViewDialShowKeyboard != null) {
                this.mViewDialShowKeyboard.setVisibility(8);
                return;
            }
            return;
        }
        if (this.mViewDialHideKeyboard != null) {
            this.mViewDialHideKeyboard.setVisibility(8);
        }
        if (this.mViewDialShowKeyboard != null) {
            this.mViewDialShowKeyboard.setVisibility(0);
        }
    }

    public void updateBtConnectTip() {
        if (App_Bt.mStrCustomer.equals("TZY_BT_1920")) {
            if (this.mViewBtNotConnectTip == null) {
                this.mViewBtNotConnectTip = getPage().getChildViewByid(FinalBtCtrl.Dial_View_Disconnect);
            }
            if (this.mViewBtNotConnectTip != null && this.actBt.myActivity.mPageCurrent != null) {
                if (this.actBt.myActivity.mPageCurrent.getId() != 10003) {
                    this.mViewBtNotConnectTip.setVisibility(8);
                } else if (Bt.DATA[9] == 0) {
                    this.mViewBtNotConnectTip.setVisibility(0);
                } else {
                    this.mViewBtNotConnectTip.setVisibility(8);
                    this.actBt.myActivity.goPage(FinalBtCtrl.Page_Favorite);
                }
            }
            JText tip = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkOrCut);
            if (tip != null) {
                tip.setText(Bt.DATA[9] == 0 ? App_Bt.getInstance().uiApp.getString("bt_dial_link") : App_Bt.getInstance().uiApp.getString("bt_pair_cut"));
            }
        }
    }

    public void updateShowDial() {
        int flag = 3;
        if (App_Bt.bPop3rdPhone_YF) {
            switch (Bt.DATA[9]) {
                case 3:
                    flag = 4;
                    break;
                case 4:
                    flag = 4;
                    break;
                case 5:
                    flag = 5;
                    break;
            }
        } else {
            switch (Bt.DATA[9]) {
                case 3:
                    if (CustomerUtil.isYFConfig() || App_Bt.mStrCustomer.equals("TZY_NEW")) {
                        flag = 2;
                    } else {
                        flag = 1;
                    }
                    break;
                case 4:
                    if (CustomerUtil.isYFConfig()) {
                        flag = 2;
                    } else {
                        flag = 1;
                    }
                    break;
                case 5:
                    flag = 2;
                    break;
                default:
                    flag = 3;
                    break;
            }
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
            if (flag == 1) {
                flag = 2;
            }
            if (this.mHangBtn == null) {
                this.mHangBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            }
            if (this.mDialBtn == null) {
                this.mDialBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Dial);
            }
            if (this.mVoiceSwitchBtn == null) {
                this.mVoiceSwitchBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
            }
            if (this.mDialBtnWhenCall == null) {
                this.mDialBtnWhenCall = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Btn_Dial);
            }
            if (this.mHangBtnWhenCall == null) {
                this.mHangBtnWhenCall = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Btn_Hang);
            }
            if (Bt.DATA[9] == 3 || Bt.DATA[9] == 5) {
                this.mHangBtn.setVisibility(8);
                this.mDialBtn.setVisibility(8);
                this.mDialBtnWhenCall.setVisibility(8);
                this.mVoiceSwitchBtn.setVisibility(0);
                this.mHangBtnWhenCall.setVisibility(0);
            } else if (Bt.DATA[9] == 4) {
                this.mHangBtn.setVisibility(0);
                this.mDialBtn.setVisibility(8);
                this.mDialBtnWhenCall.setVisibility(0);
                this.mVoiceSwitchBtn.setVisibility(8);
                this.mHangBtnWhenCall.setVisibility(8);
            } else {
                this.mHangBtn.setVisibility(8);
                this.mDialBtn.setVisibility(0);
                this.mDialBtnWhenCall.setVisibility(8);
                this.mVoiceSwitchBtn.setVisibility(0);
                this.mHangBtnWhenCall.setVisibility(8);
            }
            updateBtConnectTip();
        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            if (this.mHangBtn == null) {
                this.mHangBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            }
            if (this.mDialBtn == null) {
                this.mDialBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Dial);
            }
            if (this.mVoiceSwitchBtn == null) {
                this.mVoiceSwitchBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
            }
            if (this.mHangBtnWhenCall == null) {
                this.mHangBtnWhenCall = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Btn_Hang);
            }
            if (Bt.DATA[9] == 3 || Bt.DATA[9] == 5) {
                this.mHangBtn.setVisibility(0);
                this.mDialBtn.setVisibility(8);
                this.mVoiceSwitchBtn.setVisibility(0);
                this.mHangBtnWhenCall.setVisibility(8);
            } else if (Bt.DATA[9] == 4) {
                this.mHangBtn.setVisibility(8);
                this.mDialBtn.setVisibility(0);
                this.mVoiceSwitchBtn.setVisibility(8);
                this.mHangBtnWhenCall.setVisibility(0);
            } else {
                this.mHangBtn.setVisibility(8);
                this.mDialBtn.setVisibility(0);
                this.mVoiceSwitchBtn.setVisibility(0);
                this.mHangBtnWhenCall.setVisibility(8);
            }
        } else if (CustomerUtil.isYFConfig()) {
            boolean falg = false;
            if (Bt.DATA[9] == 4 && !App_Bt.bPop3rdPhone_YF) {
                falg = true;
            }
            if (this.mHangBtn == null) {
                this.mHangBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            }
            if (this.mHangBtnWhenCall == null) {
                this.mHangBtnWhenCall = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Btn_Hang);
            }
            if (this.mDialBtnWhenCall == null) {
                this.mDialBtnWhenCall = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowCall_Btn_Dial);
            }
            if (this.mHangBtn != null && this.mHangBtnWhenCall != null && this.mDialBtnWhenCall != null) {
                this.mHangBtn.setVisibility(falg ? 8 : 0);
                this.mHangBtnWhenCall.setVisibility(falg ? 0 : 8);
                this.mDialBtnWhenCall.setVisibility(falg ? 0 : 8);
            }
        }
        if (flag != 3) {
            App_Bt.bJumpFavorite = false;
        }
        disableSaveView(false);
        switch (flag) {
            case 1:
                if (this.mViewShowDial != null) {
                    this.mViewShowDial.setVisibility(8);
                }
                if (this.mViewShowCall != null) {
                    this.mViewShowCall.setVisibility(0);
                }
                if (this.mViewShowHang != null) {
                    this.mViewShowHang.setVisibility(8);
                }
                if (this.tvDialAnswer != null) {
                    this.tvDialAnswer.setVisibility(8);
                }
                if (this.tvDialHangup != null) {
                    this.tvDialHangup.setVisibility(8);
                }
                if (this.mViewShowCall_Third != null) {
                    this.mViewShowCall_Third.setVisibility(8);
                }
                if (this.mViewShowTalk_Third != null) {
                    this.mViewShowTalk_Third.setVisibility(8);
                }
                break;
            case 2:
                if (this.mViewShowDial != null) {
                    this.mViewShowDial.setVisibility(8);
                }
                if (this.mViewShowCall != null) {
                    this.mViewShowCall.setVisibility(8);
                }
                if (this.mViewShowHang != null) {
                    this.mViewShowHang.setVisibility(0);
                }
                if (this.tvDialHangup != null) {
                    this.tvDialHangup.setVisibility(0);
                    this.tvDialHangup.setText(App_Bt.getInstance().uiApp.getString("bt_hangup"));
                }
                if (this.mViewShowCall_Third != null) {
                    this.mViewShowCall_Third.setVisibility(8);
                }
                if (this.mViewShowTalk_Third != null) {
                    this.mViewShowTalk_Third.setVisibility(8);
                }
                break;
            case 3:
                if (this.mViewShowDial != null) {
                    this.mViewShowDial.setVisibility(0);
                }
                if (this.mViewShowCall != null) {
                    this.mViewShowCall.setVisibility(8);
                }
                if (this.mViewShowHang != null) {
                    this.mViewShowHang.setVisibility(8);
                }
                if (this.tvDialAnswer != null) {
                    this.tvDialAnswer.setVisibility(0);
                    this.tvDialAnswer.setText(App_Bt.getInstance().uiApp.getString("bt_page_dial"));
                }
                if (this.mViewShowCall_Third != null) {
                    this.mViewShowCall_Third.setVisibility(8);
                }
                if (this.mViewShowTalk_Third != null) {
                    this.mViewShowTalk_Third.setVisibility(8);
                }
                break;
            case 4:
                if (this.mViewShowDial != null) {
                    this.mViewShowDial.setVisibility(8);
                }
                if (this.mViewShowCall != null) {
                    this.mViewShowCall.setVisibility(8);
                }
                if (this.mViewShowHang != null) {
                    this.mViewShowHang.setVisibility(0);
                }
                if (this.mViewShowCall_Third != null) {
                    this.mViewShowCall_Third.setVisibility(0);
                }
                if (this.mViewShowTalk_Third != null) {
                    this.mViewShowTalk_Third.setVisibility(8);
                }
                break;
            case 5:
                if (this.mViewShowDial != null) {
                    this.mViewShowDial.setVisibility(8);
                }
                if (this.mViewShowCall != null) {
                    this.mViewShowCall.setVisibility(8);
                }
                if (this.mViewShowHang != null) {
                    this.mViewShowHang.setVisibility(0);
                }
                if (this.mViewShowCall_Third != null) {
                    this.mViewShowCall_Third.setVisibility(8);
                }
                if (this.mViewShowTalk_Third != null) {
                    this.mViewShowTalk_Third.setVisibility(0);
                }
                break;
        }
    }

    public void updateShowHand() {
        if (App_Bt.bHideHang) {
            if (this.mHangBtn == null) {
                this.mHangBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            }
            if (this.mDialBtn == null) {
                this.mDialBtn = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Dial);
            }
            if (this.mHangBtn != null) {
                this.mHangBtn.setVisibility(Ipc_New.isTalk() ? 0 : 8);
            }
            if (this.mDialBtn != null) {
                this.mDialBtn.setVisibility(Ipc_New.isTalk() ? 8 : 0);
            }
        }
    }

    public void updatePhoneName(String number) throws Throwable {
        JView view = (JView) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowHead);
        JView view2 = (JView) getPage().getChildViewByid(FinalBtCtrl.Dial_View_ShowHead2);
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
        JText text3 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name3);
        Log.d("name", " 00 Page_Dial updatePhoneName number = " + number);
        if (!TextUtils.isEmpty(number)) {
            Log.d("name", " 11 Page_DialupdatePhoneName ");
            String sDisplay = FinalChip.BSP_PLATFORM_Null;
            String strName = App_Bt.mBtInfo.getNameByNumber(number);
            if (!TextUtils.isEmpty(strName)) {
                sDisplay = strName;
            } else if (!App_Bt.getInstance().mIpcObj.isCalling()) {
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                    sDisplay = number;
                }
            } else if (CustomerUtil.isYFConfig()) {
                sDisplay = App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN);
            }
            Log.d("name", " 22 Page_Dial updatePhoneName sDisplay = " + sDisplay);
            if (text != null) {
                text.setText(sDisplay);
            }
            if (this.tvTxtName2 != null) {
                this.tvTxtName2.setText(sDisplay);
            }
            if (text3 != null) {
                text3.setText(number);
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && App_Bt.getInstance().mIpcObj.isCalling() && this.tvTxtNumBig != null) {
                boolean isEmpty = TextUtils.isEmpty(sDisplay);
                Log.d("name", " 33 Page_Dial updatePhoneName sDisplay = " + sDisplay + " isEmpty = " + isEmpty);
                this.tvTxtNumBig.setVisibility(isEmpty ? 0 : 8);
                if (this.tvTxtName2 != null) {
                    this.tvTxtName2.setVisibility(isEmpty ? 8 : 0);
                }
                if (this.tvTxtNum2 != null) {
                    this.tvTxtNum2.setVisibility(isEmpty ? 8 : 0);
                }
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                if (number.equalsIgnoreCase(sDisplay) || TextUtils.isEmpty(sDisplay)) {
                    updateNameOrDevice(true);
                } else {
                    updateNameOrDevice(false);
                }
            }
            if (this.tvTxtMiniNumber != null) {
                boolean isVis = true;
                if (sDisplay == null || sDisplay.length() < 1) {
                    isVis = false;
                }
                if (sDisplay != null) {
                    Log.d("gdy7", " updatePhoneName sDisplay length= " + sDisplay.length());
                }
                if (isVis) {
                    Log.d("gdy7", " updatePhoneName sDisplay = *" + sDisplay + "*");
                    if (this.tvTxtNumber != null) {
                        this.tvTxtNumber.setVisibility(8);
                    }
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setVisibility(0);
                    }
                    Log.d("gdy7", " updatePhoneName tvTxtMiniNumber visible sDisplay = " + sDisplay);
                } else {
                    if (this.tvTxtNumber != null) {
                        this.tvTxtNumber.setVisibility(0);
                    }
                    if (this.tvTxtMiniNumber != null) {
                        this.tvTxtMiniNumber.setVisibility(8);
                    }
                    Log.d("gdy7", " updatePhoneName tvTxtMiniNumber gone sDisplay = " + sDisplay);
                }
            }
            if (view != null) {
                if (App_Bt.iTalkHead > 15) {
                    Bitmap bmp = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                    if (bmp != null) {
                        view.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                    } else {
                        view.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                    }
                } else if (App_Bt.iTalkHead > 0) {
                    view.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("talkhead" + App_Bt.iTalkHead, App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                } else {
                    view.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                }
            }
            if (view2 != null) {
                if (App_Bt.iTalkHead > 15) {
                    Bitmap bmp2 = BTUtil.getInstance().getHeadIco(Bt.sPhoneNumber);
                    if (bmp2 != null) {
                        view2.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp2)));
                        return;
                    } else {
                        view2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                        return;
                    }
                }
                if (App_Bt.iTalkHead > 0) {
                    view2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("talkhead" + App_Bt.iTalkHead, App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                    return;
                } else {
                    view2.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("people2", App_Bt.getInstance().mDrawables, App_Bt.getInstance().mDrawables));
                    return;
                }
            }
            return;
        }
        if (text != null) {
            text.setText(FinalChip.BSP_PLATFORM_Null);
        }
        if (this.tvTxtName2 != null) {
            this.tvTxtName2.setText(FinalChip.BSP_PLATFORM_Null);
        }
        if (text3 != null) {
            text3.setText(FinalChip.BSP_PLATFORM_Null);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            updateNameOrDevice(true);
        }
    }

    public void updateThirdPhoneName() {
        if (CustomerUtil.isYFConfig()) {
            JText text4 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial3rdPhone_Txt_Name);
            JText text5 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial3rdPhone_Txt_Name2);
            if (text4 != null) {
                String strPhone = Bt.sPhoneNumberHoldOn;
                String strName = App_Bt.mBtInfo.getNameByNumber(strPhone);
                if (text4 != null) {
                    if (!TextUtils.isEmpty(strName)) {
                        text4.setText(strName);
                    } else {
                        text4.setText(strPhone);
                    }
                }
                if (text5 != null) {
                    if (!TextUtils.isEmpty(strName)) {
                        text5.setText(strName);
                    } else {
                        text5.setText(strPhone);
                    }
                }
            }
        }
    }

    public void updatePhoneName() {
        Log.d("name", " 00 Page_Dial updatePhoneName() sPhoneNumber = " + Bt.sPhoneNumber);
        updatePhoneName(Bt.sPhoneNumber);
    }

    public class RunnableIpPhoneTimer implements Runnable {
        public int iTimer = 0;
        public boolean bRun = true;

        public RunnableIpPhoneTimer() {
        }

        public void stopRun() {
            this.bRun = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.bRun) {
                this.iTimer++;
                JText text = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                JText text2 = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
                if (text != null) {
                    text.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(this.iTimer / 60), Integer.valueOf(this.iTimer % 60)));
                }
                if (text2 != null) {
                    text2.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(this.iTimer / 60), Integer.valueOf(this.iTimer % 60)));
                }
                Main.postRunnable_Ui(true, this, 1000L);
            }
        }
    }

    public void startIpPhoneTimer() {
        stopIpPhoneTimer();
        this.mRunnableIpPhoneTimer = new RunnableIpPhoneTimer();
        if (this.mRunnableIpPhoneTimer != null) {
            Main.postRunnable_Ui(true, this.mRunnableIpPhoneTimer);
        }
    }

    public void stopIpPhoneTimer() {
        if (this.mRunnableIpPhoneTimer != null) {
            Main.removeRunnable_Ui(this.mRunnableIpPhoneTimer);
            this.mRunnableIpPhoneTimer.stopRun();
            this.mRunnableIpPhoneTimer = null;
        }
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }

    public void onNotify_UniCar(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify_UniCar(this, updateCode, ints, flts, strs);
    }

    public void switchFull() {
        if (App_Bt.getInstance().fytGetState != null) {
            Main.postRunnable_Ui(false, new RunnableSwitchFull());
        }
    }

    public class RunnableSwitchFull implements Runnable {
        public RunnableSwitchFull() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean isHalf = true;
            if (App_Bt.getInstance().isAppTop() && App_Bt.getInstance().getFullScreenMode() != 0) {
                isHalf = false;
            }
            if (Page_Dial.this.actBt.myActivity.mPageCurrent == Page_Dial.this.getPage()) {
                if (Page_Dial.this.actBt.isHalf() && isHalf) {
                    if (Page_Dial.this.mViewDialFullScreen != null) {
                        Page_Dial.this.mViewDialFullScreen.setVisibility(8);
                    }
                    if (Page_Dial.this.mViewDialHalfScreen != null) {
                        Page_Dial.this.mViewDialHalfScreen.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (Page_Dial.this.mViewDialHalfScreen != null) {
                    Page_Dial.this.mViewDialHalfScreen.setVisibility(8);
                }
                if (Page_Dial.this.mViewDialFullScreen != null) {
                    Page_Dial.this.mViewDialFullScreen.setVisibility(0);
                    return;
                }
                return;
            }
            if (Page_Dial.this.actBt.isHalf() && isHalf) {
                if (Page_Dial.this.mViewDialHalfScreen != null && Page_Dial.this.mViewDialHalfScreen.getVisibility() != 0) {
                    Page_Dial.this.mViewDialHalfScreen.setVisibility(0);
                }
                if (Page_Dial.this.mViewDialFullScreen != null && Page_Dial.this.mViewDialFullScreen.getVisibility() != 8) {
                    Page_Dial.this.mViewDialFullScreen.setVisibility(8);
                    return;
                }
                return;
            }
            if (Page_Dial.this.mViewDialHalfScreen != null && Page_Dial.this.mViewDialHalfScreen.getVisibility() != 8) {
                Page_Dial.this.mViewDialHalfScreen.setVisibility(8);
            }
            if (Page_Dial.this.mViewDialFullScreen != null && Page_Dial.this.mViewDialFullScreen.getVisibility() != 0) {
                Page_Dial.this.mViewDialFullScreen.setVisibility(0);
            }
        }
    }

    public class MyTextWatcher implements TextWatcher {
        private JText jTxtNumber;

        public MyTextWatcher(JText jTxtNumber) {
            this.jTxtNumber = jTxtNumber;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (Page_Dial.this.mGridView != null) {
                Page_Dial.this.strNumber = this.jTxtNumber.getText().toString();
                Page_Dial.this.queryContacts(Page_Dial.this.strNumber);
            }
            if (MyApplication.mIdCustomer == 75) {
                CustomerUtil.otoSkipCarSetting(s, Page_Dial.this.actBt.myActivity);
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
        }
    }

    public void queryContacts(String qry) {
        if (TextUtils.isEmpty(qry)) {
            resetList(App_Bt.mBtInfo.mListContact);
            return;
        }
        List<SparseArray<String>> listContact = new ArrayList<>();
        if (isNumber(qry)) {
            for (SparseArray<String> map : App_Bt.mBtInfo.mListContact) {
                String number = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                if (number.contains(qry)) {
                    listContact.add(map);
                }
            }
            resetList(listContact);
        }
    }

    public void resetList() {
        Page_History page_History;
        if (App_Bt.mStrCustomer.equals("YL_BT_1920")) {
            if (App_Bt.mDialPageId == 10005) {
                Page_Contact page_Contact = this.actBt.getPageContact();
                if (page_Contact != null) {
                    page_Contact.resetList();
                    return;
                }
                return;
            }
            if (App_Bt.mDialPageId == 10008 && (page_History = this.actBt.getPageHistory()) != null) {
                page_History.resetList();
                return;
            }
            return;
        }
        if (CustomerUtil.isTZYConfig()) {
            showLoveNumber();
            return;
        }
        if (this.mGridView != null) {
            App_Bt.mBtInfo.sortContact();
        }
        resetList(App_Bt.mBtInfo.mListContact);
    }

    public void resetList(List<SparseArray<String>> list) {
        if (this.mGridView != null) {
            if (!Bt_IpcObj.isConnect()) {
                MyApplication.resetList(this.mGridView, (List<SparseArray<String>>) null);
            } else {
                MyApplication.resetList(this.mGridView, list);
            }
        }
    }

    public boolean isNumber(String str) {
        Pattern p = Pattern.compile("[0-9]*");
        return p.matcher(str).matches();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Dial_SearchListView /* 10208 */:
                View viewContent = page.getChildViewByid(FinalBtCtrl.DialItem_Content);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                if (map.size() > 0) {
                    JText textNumber = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Number);
                    JText textName = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Name);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                        textNumber.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                    }
                    String strNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    String strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (textNumber != null) {
                        textNumber.setText(strNumber);
                    }
                    if (textName != null) {
                        textName.setText(strName);
                    }
                    JText textDialHead = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_head_Icon);
                    if (textDialHead != null) {
                        textDialHead.setText(new StringBuilder().append(strName.charAt(0)).toString());
                        textDialHead.setBackground(getPage().getDrawableFromPath(this.str_ContIcon[this.random.nextInt(5)], getPage().mDrawables, getPage().mDrawables));
                    }
                    if (!TextUtils.isEmpty(strNumber) && this.mPosMoveTo >= 0 && this.mPosMoveTo == position) {
                        this.checkPhoneNumber = strNumber;
                        pressGridItem(page, page, true);
                        break;
                    }
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridPressed(JGridView gridView, JPage page, boolean pressed) {
        if (gridView.mPageInfos != null) {
            for (WeakReference<JPage> pageReference : gridView.mPageInfos) {
                JPage pageTmp = pageReference.get();
                if (pageTmp != null) {
                    pressGridItem(pageTmp, page, pressed);
                }
            }
        }
    }

    public void pressGridItem(JPage page, JPage pagePressed, boolean pressed) {
        boolean bFocus = pressed && page == pagePressed;
        JText txt = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Number);
        if (txt != null) {
            txt.setFocus(bFocus);
        }
        JText txt2 = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Name);
        if (txt2 != null) {
            txt2.setFocus(bFocus);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Dial_SearchListView /* 10208 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    int position = gridView.getPosition();
                    SparseArray<String> map = gridView.getList().get(position);
                    if (!TextUtils.isEmpty(map.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                }
                break;
        }
    }

    public void initTime() {
        CharSequence text;
        if (this.mHeadTime != null) {
            if (DateFormat.is24HourFormat(App_Bt.getInstance().uiApp.mContext)) {
                text = DateFormat.format("k:mm", Calendar.getInstance());
            } else {
                text = DateFormat.format("h:mm", Calendar.getInstance());
            }
            if (text.subSequence(0, 1).equals("0")) {
                text = "0" + ((Object) text);
            }
            this.mHeadTime.setText(text);
        }
    }

    public void updateSystemTime() {
        Main.postRunnable_Ui(true, this.mRunnable_updateSysTime);
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
        if (!TextUtils.isEmpty(this.checkPhoneNumber)) {
            Bt_IpcObj.itemDial(this.checkPhoneNumber);
        }
        return true;
    }

    public boolean dialByKey() {
        if (this.bTop) {
            if (Bt.DATA[9] == 4) {
                Bt.PROXY.cmd(9);
            } else if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                Bt_IpcObj.redial();
            } else {
                Bt_IpcObj.itemDial(Bt.sPhoneNumber);
            }
            return true;
        }
        return false;
    }

    public void updateNameOrDevice(boolean flag) {
        JText linkName;
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
            if (text != null) {
                text.setVisibility(flag ? 8 : 0);
            }
            if (!App_Bt.bLinkTwoPhone && (linkName = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName)) != null) {
                linkName.setVisibility(flag ? 0 : 8);
            }
        }
    }

    public void updateSoundVol() {
        if (this.mSB_BtVol != null) {
            this.mSB_BtVol.setProgress(App_Bt.bSoundVol);
        }
    }

    public void resetMenuLayoutAngle(int id) {
        CircleMenuLayout menuLayout = (CircleMenuLayout) getPage().getChildViewByid(FinalBtCtrl.Dial_Circle_Menu);
        if (menuLayout != null) {
            menuLayout.setCircleAngle(id);
        }
    }

    public void initMenuLayout() {
        CircleMenuLayout menuLayout = (CircleMenuLayout) getPage().getChildViewByid(FinalBtCtrl.Dial_Circle_Menu);
        if (menuLayout != null) {
            menuLayout.setOnMenuItemClickListener(new CircleMenuLayout.OnMenuItemClickListener() { // from class: com.syu.bt.page.Page_Dial.9
                @Override // com.syu.bt.ctrl.CircleMenuLayout.OnMenuItemClickListener
                public void itemClick(View view, int pos) throws Throwable {
                    switch (pos) {
                        case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
                        case FinalBtCtrl.Dial_Btn_Dial1 /* 10133 */:
                        case FinalBtCtrl.Dial_View_ShowCall_Btn_Dial /* 10179 */:
                            if (Page_Dial.this.dialThrdPhone && !TextUtils.isEmpty(Page_Dial.this.dialThrdNumber)) {
                                Bt_IpcObj.dial(Page_Dial.this.dialThrdNumber);
                            } else if (!TextUtils.isEmpty(App_Bt.strNumberBak) && TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                Bt_IpcObj.setNum(App_Bt.strNumberBak);
                            } else {
                                App_Bt.getInstance().mIpcObj.FuncDial();
                            }
                            break;
                        case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                        case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
                        case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
                        case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
                        case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
                        case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
                        case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
                        case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
                        case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
                        case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
                        case FinalBtCtrl.Dial_Btn_X /* 10156 */:
                        case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                            Log.d("gdy7", " 11 Dial_Btn_1  ");
                            JText text = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num);
                            if (text != null) {
                                if (pos - 10146 == 10) {
                                    text.setText("*");
                                } else if (pos - 10146 == 11) {
                                    text.setText("#");
                                } else {
                                    text.setText(Integer.toString(pos - 10146));
                                }
                            }
                            if (Page_Dial.this.dialThrdPhone) {
                                Page_Dial page_Dial = Page_Dial.this;
                                page_Dial.dialThrdNumber = String.valueOf(page_Dial.dialThrdNumber) + Integer.toString(pos - 10146);
                                Page_Dial.this.tvTxtNumber.setText(Page_Dial.this.dialThrdNumber);
                                if (Page_Dial.this.tvTxtMiniNumber != null) {
                                    Page_Dial.this.tvTxtMiniNumber.setText(Page_Dial.this.dialThrdNumber);
                                }
                                Page_Dial.this.updatePhoneName(Page_Dial.this.dialThrdNumber);
                            } else {
                                App_Bt.getInstance().mIpcObj.cmdNum(pos - 10146);
                            }
                            break;
                        case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                            JText text2 = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num);
                            if (text2 != null) {
                                text2.setText(FinalChip.BSP_PLATFORM_Null);
                            }
                            if (CustomerUtil.filterDemand_DZSJ() && !Page_Dial.this.dialThrdPhone) {
                                Bt_IpcObj.clearKey(false);
                            } else if (Page_Dial.this.dialThrdPhone) {
                                if (!TextUtils.isEmpty(Page_Dial.this.dialThrdNumber)) {
                                    Page_Dial.this.dialThrdNumber = Page_Dial.this.dialThrdNumber.subSequence(0, Page_Dial.this.dialThrdNumber.length() - 1).toString();
                                    Page_Dial.this.updatePhoneName(Page_Dial.this.dialThrdNumber);
                                    Page_Dial.this.tvTxtNumber.setText(Page_Dial.this.dialThrdNumber);
                                    if (Page_Dial.this.tvTxtMiniNumber != null) {
                                        Page_Dial.this.tvTxtMiniNumber.setText(Page_Dial.this.dialThrdNumber);
                                    }
                                } else {
                                    Page_Dial.this.dialThrdPhone = false;
                                    Page_Dial.this.updatePhoneName(Bt.sPhoneNumber);
                                    Page_Dial.this.tvTxtNumber.setText(Bt.sPhoneNumber);
                                    if (Page_Dial.this.tvTxtMiniNumber != null) {
                                        Page_Dial.this.tvTxtMiniNumber.setText(Bt.sPhoneNumber);
                                    }
                                }
                            }
                            break;
                    }
                }
            });
            menuLayout.setOnMenuItemLongClickListener(new CircleMenuLayout.OnMenuItemLongClickListener() { // from class: com.syu.bt.page.Page_Dial.10
                @Override // com.syu.bt.ctrl.CircleMenuLayout.OnMenuItemLongClickListener
                public void itemLongClick(View view, int pos) throws Throwable {
                    switch (pos) {
                        case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
                        case FinalBtCtrl.Dial_Btn_Dial1 /* 10133 */:
                            if (Page_Dial.this.dialThrdPhone && !TextUtils.isEmpty(Page_Dial.this.dialThrdNumber)) {
                                Bt_IpcObj.dial(Page_Dial.this.dialThrdNumber);
                            } else if (!TextUtils.isEmpty(App_Bt.strNumberBak) && TextUtils.isEmpty(Bt.sPhoneNumber)) {
                                Bt_IpcObj.setNum(App_Bt.strNumberBak);
                            } else {
                                App_Bt.getInstance().mIpcObj.FuncDial();
                            }
                            break;
                        case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                            Bt_IpcObj.LongClick0();
                            JText text = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num);
                            if (text != null) {
                                text.setText("+");
                            }
                            break;
                        case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
                        case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
                        case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
                        case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
                        case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
                        case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
                        case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
                        case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
                        case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
                        case FinalBtCtrl.Dial_Btn_X /* 10156 */:
                        case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                            Log.d("gdy7", " 22 Dial_Btn_1  ");
                            JText tv = (JText) Page_Dial.this.getPage().getChildViewByid(FinalBtCtrl.Callin_Txt_Num);
                            if (tv != null) {
                                if (pos - 10146 == 10) {
                                    tv.setText("*");
                                } else if (pos - 10146 == 11) {
                                    tv.setText("#");
                                } else {
                                    tv.setText(Integer.toString(pos - 10146));
                                }
                            }
                            if (Page_Dial.this.dialThrdPhone) {
                                Page_Dial page_Dial = Page_Dial.this;
                                page_Dial.dialThrdNumber = String.valueOf(page_Dial.dialThrdNumber) + Integer.toString(pos - 10146);
                                Page_Dial.this.tvTxtNumber.setText(Page_Dial.this.dialThrdNumber);
                                if (Page_Dial.this.tvTxtMiniNumber != null) {
                                    Page_Dial.this.tvTxtMiniNumber.setText(Page_Dial.this.dialThrdNumber);
                                }
                                Page_Dial.this.updatePhoneName(Page_Dial.this.dialThrdNumber);
                            } else {
                                App_Bt.getInstance().mIpcObj.cmdNum(pos - 10146);
                            }
                            break;
                        case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                            if (CustomerUtil.filterDemand_DZSJ() && !Page_Dial.this.dialThrdPhone) {
                                Bt_IpcObj.clearKey(true);
                            } else if (Page_Dial.this.dialThrdPhone) {
                                Page_Dial.this.dialThrdNumber = FinalChip.BSP_PLATFORM_Null;
                                Page_Dial.this.updatePhoneName(Page_Dial.this.dialThrdNumber);
                                Page_Dial.this.tvTxtNumber.setText(Page_Dial.this.dialThrdNumber);
                                if (Page_Dial.this.tvTxtMiniNumber != null) {
                                    Page_Dial.this.tvTxtMiniNumber.setText(Page_Dial.this.dialThrdNumber);
                                }
                            }
                            break;
                    }
                }
            });
        }
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            Log.d("color", " PageDial setButtonColor color = " + color);
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            ImageView bk = (ImageView) getPage().getChildViewByid(FinalBtCtrl.Main_View);
            if (bk != null) {
                bk.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
                bk.setImageDrawable(getPage().getDrawableFromPath("bk0", getPage().mDrawables, getPage().mDrawables));
            }
            JButton back = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Backspace);
            if (back != null) {
                back.setBackgroundTintList(new ColorStateList(states, colors));
                back.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial1 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_1);
            if (dial1 != null) {
                dial1.setBackgroundTintList(new ColorStateList(states, colors));
                dial1.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_2);
            if (dial2 != null) {
                dial2.setBackgroundTintList(new ColorStateList(states, colors));
                dial2.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial3 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_3);
            if (dial3 != null) {
                dial3.setBackgroundTintList(new ColorStateList(states, colors));
                dial3.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial4 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_4);
            if (dial4 != null) {
                dial4.setBackgroundTintList(new ColorStateList(states, colors));
                dial4.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial5 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_5);
            if (dial5 != null) {
                dial5.setBackgroundTintList(new ColorStateList(states, colors));
                dial5.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial6 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_6);
            if (dial6 != null) {
                dial6.setBackgroundTintList(new ColorStateList(states, colors));
                dial6.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial7 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_7);
            if (dial7 != null) {
                dial7.setBackgroundTintList(new ColorStateList(states, colors));
                dial7.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial8 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_8);
            if (dial8 != null) {
                dial8.setBackgroundTintList(new ColorStateList(states, colors));
                dial8.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial9 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_9);
            if (dial9 != null) {
                dial9.setBackgroundTintList(new ColorStateList(states, colors));
                dial9.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dialj = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_J);
            if (dialj != null) {
                dialj.setBackgroundTintList(new ColorStateList(states, colors));
                dialj.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dialx = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_X);
            if (dialx != null) {
                dialx.setBackgroundTintList(new ColorStateList(states, colors));
                dialx.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial0 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_0);
            if (dial0 != null) {
                dial0.setBackgroundTintList(new ColorStateList(states, colors));
                dial0.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton voice = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_VoiceSwitch);
            if (voice != null) {
                voice.setBackgroundTintList(new ColorStateList(states, colors));
                voice.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton dial = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Dial);
            if (dial != null) {
                dial.setBackgroundTintList(new ColorStateList(states, colors));
                dial.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton hang = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_Hang);
            if (hang != null) {
                hang.setBackgroundTintList(new ColorStateList(states, colors));
                hang.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton link = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_LinkCut);
            if (link != null) {
                link.setBackgroundTintList(new ColorStateList(states, colors));
                link.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    public void initTypeface() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
            JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
            if (text != null) {
                text.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
            JText state = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State);
            if (state != null) {
                state.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
            JText time = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
            if (time != null) {
                time.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
            JText time2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
            if (time2 != null) {
                time2.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
            if (this.tvTxtNumber != null) {
                this.tvTxtNumber.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
            JText name = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
            if (name != null) {
                name.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
        }
    }

    public void setDayOrNight(int value) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW")) {
            if (value > 0) {
                getPage().setBackground(getPage().getDrawableFromPath("bt_night", getPage().mDrawables, getPage().mDrawables));
            } else {
                getPage().setBackground(getPage().getDrawableFromPath("bk_day", getPage().mDrawables, getPage().mDrawables));
            }
        } else if (App_Bt.bUI_NightColour) {
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
            if (!App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB")) {
                for (int k = 0; k < this.nightText.length; k++) {
                    JText text = (JText) getPage().getChildViewByid(this.nightText[k]);
                    if (text != null) {
                        text.setTextColor(value > 0 ? -1 : -16777216);
                    }
                }
            }
        }
        if (this.mGridView != null) {
            this.mGridView.notifyDataSetChanged();
        }
    }

    public void popBtHead() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtHead, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && !popDlg.isShowing()) {
            popDlg.show();
        }
    }

    public void dismissPopBtHead() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtHead, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }

    public void updateMicSwitch(boolean mute) {
        JButton mic = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Btn_MicSwitch);
        if (mic != null) {
            MyUiItem item = (MyUiItem) mic.getTag();
            if (item.getParaStr() != null) {
                String str = null;
                if (mute) {
                    str = item.getStrDrawable();
                } else if (item.getParaStr() != null) {
                    str = item.getParaStr()[0];
                }
                if (mic.getStrDrawable() != str && str != null) {
                    mic.setStrDrawable(str, true);
                }
            }
        }
    }

    public void updateDeviceInfo(int value) {
        Log.d("bttt", " 00  Page_Dial  updateDeviceInfo value = " + value);
        if (this.textAddr == null) {
            this.textAddr = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr);
        }
        if (this.textAddr2 == null) {
            this.textAddr2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr2);
        }
        if (this.textAddr != null) {
            Log.d("his", " PageDial MyApplication.mIdCustomer = " + MyApplication.mIdCustomer);
            if (value != 0 || MyApplication.mIdCustomer == 111 || MyApplication.mIdCustomer == 139) {
                this.textAddr.setVisibility(4);
            } else {
                this.textAddr.setVisibility(0);
            }
            if (this.textAddr2 != null) {
                this.textAddr2.setVisibility(this.textAddr.getVisibility());
            }
        }
        if (App_Bt.bAI_JZ) {
            showAI();
        }
        showAIGT();
        if (this.textState == null) {
            this.textState = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State);
        }
        if (this.textState2 == null) {
            this.textState2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State2);
        }
        if (this.textState != null) {
            boolean bSetText = false;
            if (value == 0 && Ipc_New.isIpPhoneConnect()) {
                bSetText = true;
                this.textState.setText(App_Bt.getInstance().uiApp.getString("ipphone_connected"));
            }
            Log.d("hold", " PageDial updateDeviceInfo bSetText = " + bSetText + " value = " + value + " Bt.sPhoneNumberHoldOn = " + Bt.sPhoneNumberHoldOn);
            if (!bSetText) {
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                    if (value == 0 || value == 6 || value == 1) {
                        this.textState.setText(App_Bt.getInstance().uiApp.getString("bt_disconnected"));
                    } else {
                        this.textState.setText(App_Bt.getInstance().uiApp.getString("bt_connected"));
                    }
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    if (value == 5 || value == 4 || value == 3) {
                        if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                            this.textState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                        } else {
                            this.textState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                        }
                    } else {
                        this.textState.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                } else if (value >= 0 && value <= 6) {
                    this.textState.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                Log.d("bttt", " 11 Page_Dial updateDeviceInfo operator = " + App_Bt.mOperator);
                if (this.textOperator != null && App_Bt.mOperator != null) {
                    this.textOperator.setText(App_Bt.mOperator);
                }
                if (this.mViewTalking != null && this.mViewContact != null) {
                    if (value == 4 || value == 3) {
                        showViewTalking(true);
                    } else if (value != 5) {
                        showViewTalking(false);
                    }
                    if (App_Bt.bLinkTwoPhone) {
                        if (value == 0 && !App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") && App_Bt.bFirstPairPage2) {
                            this.actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                        }
                    } else if (value == 0 && !App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                    }
                }
                if (App_Bt.bHideHang) {
                    updateShowHand();
                }
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                Drawable ico = null;
                int color = -5131853;
                if (!Bt_IpcObj.isDisConnect()) {
                    color = -1;
                    if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                        ico = App_Bt.getInstance().uiApp.getDrawableFromPath("connect2000", getPage().mDrawables, getPage().mDrawables);
                    } else {
                        ico = App_Bt.getInstance().uiApp.getDrawableFromPath("connect", getPage().mDrawables, getPage().mDrawables);
                    }
                }
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                    this.textState.setTextColor(color);
                }
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    this.textState.setCompoundDrawablesWithIntrinsicBounds(ico, (Drawable) null, (Drawable) null, (Drawable) null);
                } else {
                    this.textState.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, ico, (Drawable) null);
                }
            }
            if (this.textState2 != null && value >= 0 && value <= 6) {
                if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                    Log.d("pop3", " Page_dial sPhone_callin_id = " + App_Bt.sPhone_callin_id + " * bPhone2_HFP = " + App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id]);
                    this.textState2.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id] - 1]));
                } else {
                    this.textState2.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[value]));
                }
            }
        }
        if (this.txtTalkTime == null) {
            this.txtTalkTime = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
        }
        if (this.txtTalkTime != null) {
            if (value == 5 || (value == 4 && Bt.DATA[20] > 0)) {
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                    if (this.textState2 != null) {
                        this.textState2.setVisibility(4);
                    }
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && this.textState != null) {
                    this.textState.setVisibility(4);
                }
                this.txtTalkTime.setVisibility(0);
            } else {
                this.txtTalkTime.setVisibility(4);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                    if (this.textState2 != null) {
                        if (value == 3 || value == 4) {
                            this.textState2.setVisibility(0);
                        } else {
                            this.textState2.setVisibility(4);
                        }
                    }
                } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && this.textState != null) {
                    this.textState.setVisibility(0);
                }
            }
        }
        if (this.txtTalkTime2 == null) {
            this.txtTalkTime2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime2);
        }
        if (this.txtTalkTime2 != null) {
            this.txtTalkTime2.setVisibility(this.txtTalkTime.getVisibility());
        }
        if (this.txtLinkName == null) {
            this.txtLinkName = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
        }
        if (this.txtLinkName != null) {
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                if (value == 2) {
                    this.txtLinkName.setText(Bt.sPhoneName);
                } else if (value == 0) {
                    this.txtLinkName.setText(App_Bt.getInstance().uiApp.getString("bt_connect_null"));
                }
            } else if (value == 2) {
                this.txtLinkName.setVisibility(0);
            } else if (value == 0) {
                this.txtLinkName.setVisibility(8);
            }
            if (this.txtLinkName2 == null) {
                this.txtLinkName2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName2);
            }
            if (this.txtLinkName2 != null) {
                this.txtLinkName2.setVisibility(this.txtLinkName.getVisibility());
            }
        }
    }

    public void updateHead(int viewId, int headId) {
        JView view = null;
        if (viewId <= this.ContactView.length) {
            view = this.ContactView[viewId - 1];
        }
        if (view != null) {
            if (headId > 15) {
                Bitmap bmp = BTUtil.getInstance().getHeadIco(App_Bt.mBtInfo.mListFavContact.get(viewId - 1).get(FinalBtCtrl.ContactItem_Txt_Number));
                if (bmp != null) {
                    view.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                    return;
                } else {
                    view.setBackground(getPage().getDrawableFromPath("headbig" + headId, getPage().mDrawables, getPage().mDrawables));
                    return;
                }
            }
            view.setBackground(getPage().getDrawableFromPath("headbig" + headId, getPage().mDrawables, getPage().mDrawables));
        }
    }

    public void updateBtNameAndPinTip() {
        if (CustomerUtil.isTZYConfig()) {
            JText name = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_Txt_BtName);
            if (name != null) {
                name.setText(App_Bt.getInstance().uiApp.getString("bt_connetc_name").replace("Teyes", App_Bt.getDiyName()));
            }
            JText Pin = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_Txt_BtPin);
            if (Pin != null) {
                Pin.setText(App_Bt.getInstance().uiApp.getString("bt_connetc_pin").replace("0000", App_Bt.getDiyPin()));
            }
        }
    }

    public void updateBtNameAndPin() {
        if (this.tvDevName2 == null) {
            this.tvDevName2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_DevName2);
        }
        if (this.tvDevName2 != null) {
            this.tvDevName2.setText(Bt.sDevName);
        }
        if (this.tvmPin2 == null) {
            this.tvmPin2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Set_Txt_Pin2);
        }
        if (this.tvmPin2 != null) {
            this.tvmPin2.setText(Bt.sDevPin);
        }
    }

    public void childPause() {
        Page_Favorite page_Favorite;
        if (App_Bt.mStrCustomer.equals("YL_BT_1920")) {
            if (App_Bt.mDialPageId == 10005) {
                Page_Contact page_Contact = this.actBt.getPageContact();
                if (page_Contact != null) {
                    page_Contact.pause();
                    return;
                }
                return;
            }
            if (App_Bt.mDialPageId == 10008) {
                Page_History page_History = this.actBt.getPageHistory();
                if (page_History != null) {
                    page_History.pause();
                    return;
                }
                return;
            }
            if (App_Bt.mDialPageId == 10016 && (page_Favorite = this.actBt.getPageFavorite()) != null) {
                page_Favorite.pause();
            }
        }
    }

    public void childResume() {
        Page_Favorite page_Favorite;
        if (App_Bt.mStrCustomer.equals("YL_BT_1920")) {
            if (App_Bt.mDialPageId == 10005) {
                Page_Contact page_Contact = this.actBt.getPageContact();
                if (page_Contact != null) {
                    page_Contact.resume();
                    return;
                }
                return;
            }
            if (App_Bt.mDialPageId == 10008) {
                Page_History page_History = this.actBt.getPageHistory();
                if (page_History != null) {
                    page_History.resume();
                    return;
                }
                return;
            }
            if (App_Bt.mDialPageId == 10016 && (page_Favorite = this.actBt.getPageFavorite()) != null) {
                page_Favorite.resume();
            }
        }
    }

    public void updateViewFocus() {
        if (App_Bt.mStrCustomer.equals("YL_BT_1920") && this.mViewPager != null) {
            int item = this.mViewPager.getCurrentItem();
            switch (item) {
                case 1:
                    App_Bt.mDialPageId = FinalBtCtrl.Page_Contact;
                    JButton history = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_History);
                    JButton contact = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Contact);
                    JButton favorite = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Favorite);
                    if (history != null) {
                        history.setFocus(false);
                    }
                    if (favorite != null) {
                        favorite.setFocus(false);
                    }
                    if (contact != null) {
                        contact.setFocus(true);
                    }
                    break;
                case 2:
                    App_Bt.mDialPageId = FinalBtCtrl.Page_Favorite;
                    JButton history2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_History);
                    JButton contact2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Contact);
                    JButton favorite2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Favorite);
                    if (contact2 != null) {
                        contact2.setFocus(false);
                    }
                    if (history2 != null) {
                        history2.setFocus(false);
                    }
                    if (favorite2 != null) {
                        favorite2.setFocus(true);
                    }
                    break;
                case 3:
                    App_Bt.mDialPageId = FinalBtCtrl.Page_History;
                    JButton history3 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_History);
                    JButton contact3 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Contact);
                    JButton favorite3 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Dial_Favorite);
                    if (contact3 != null) {
                        contact3.setFocus(false);
                    }
                    if (favorite3 != null) {
                        favorite3.setFocus(false);
                    }
                    if (history3 != null) {
                        history3.setFocus(true);
                    }
                    break;
            }
        }
    }
}
