package com.syu.bt.page;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JSeekBar;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.Runnable_AnimDrawable;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.MyMediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class Page_Av extends MyPage {
    public Act_Bt actBt;
    ValueAnimator animMin;
    ValueAnimator animMin2;
    JText currentTime;
    JText currentTime1;
    AnimationDrawable frameAnim;
    int i;
    public int iAvFocusSel;
    private AnimationDrawable mAnimationDrawable;
    public JButton mBtnBtConnectTip;
    public JButton mBtnPlayPause;
    public JButton mBtnSoundAmp;
    public JButton mBtnSoundLoud;
    View mDynamicView1;
    View mDynamicView2;
    public int mFullSwitch;
    public ImageView mImgViewBtavAnim;
    public View mProgBtAv;
    private Runnable_AnimDrawable mRunnable_AnimDrawable;
    JView mViewAPIC;
    View mViewBtAvCtrl;
    View mViewBtAvFullScreen;
    View mViewBtAvHalfScreen;
    View mViewBtConnectTip;
    View mViewShowGps;
    public boolean misAvStop;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    JSeekBar seekBar;
    JView seekBarBk;
    JText totalTime;
    public JText tvTitle;

    public Page_Av(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.misAvStop = false;
        this.mRunnable_AnimDrawable = null;
        this.mFullSwitch = 0;
        this.iAvFocusSel = -1;
        this.nightBtn = new int[]{FinalBtCtrl.Av_Btn_PlayPause2, FinalBtCtrl.Menu_Home, FinalBtCtrl.Av_Btn_Prev, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set, FinalBtCtrl.Av_Btn_Next, FinalBtCtrl.Av_Btn_PlayPause};
        this.nightView = new int[]{FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.Av_DynamicView2, FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.MenuView_bk};
        this.nightText = new int[]{FinalBtCtrl.TZY_Text_Change_1, FinalBtCtrl.Av_Txt_BtName, FinalBtCtrl.Av_Txt_BtPin, FinalBtCtrl.Av_CurrentTime, FinalBtCtrl.Av_TotalTime, FinalBtCtrl.Av_Txt_Title, FinalBtCtrl.Av_Txt_Artist};
        this.i = 0;
        this.actBt = actBt;
    }

    public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
        App_Bt.getInstance().mIpcObj.onNotify(this, updateCode, ints, flts, strs);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            Log.d("gdy1", "  05 Page_Av  resume");
            dispAlmup(FinalChip.BSP_PLATFORM_Null);
            App_Bt.getInstance().mIpcObj.updateNotify_BtAv();
            if (CustomerUtil.isYFConfig() || !Bt_IpcObj.isAppIdBtAv()) {
                App_Bt.getInstance().mIpcObj.requestAppIdRight(FinalBtCtrl.Page_Av);
            }
            App_Bt.getInstance().EnableGainSpec();
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null) {
                pageMenu.setVisibility(8);
            }
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            App_Bt.getInstance();
            if (App_Bt.bEnableHalfScreen) {
                switchFull();
                if (this.mViewShowGps != null) {
                    this.mViewShowGps.setVisibility(App_Bt.getInstance().isHalfScreenAble() ? 0 : 8);
                }
            }
            updateBtConnectTip();
            updateSoundMode();
            handleSeekPos(App_Bt.iBtAv_CurTime);
            updateSeekbar(App_Bt.iBtAv_TotalTime, false);
            MyMediaPlayer.getIntances().audioManager.requestAudioFocus(MyMediaPlayer.afChangeListener, 3, 1);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        App_Bt.getInstance().DisableGainSpec();
        App_Bt.bResumeByDial = false;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.mProgBtAv = getPage().getChildViewByid(FinalBtCtrl.Av_Prog);
        this.mViewBtAvFullScreen = getPage().getChildViewByid(FinalBtCtrl.Btav_FullScreen);
        this.mViewBtAvHalfScreen = getPage().getChildViewByid(FinalBtCtrl.Btav_HalfScreen);
        this.mViewShowGps = getPage().getChildViewByid(FinalBtCtrl.Callin_Btn_ShowGPS);
        this.mBtnPlayPause = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_PlayPause2);
        this.mBtnSoundLoud = (JButton) getPage().getChildViewByid(FinalBtCtrl.Sound_Btn_Loud);
        this.mBtnSoundAmp = (JButton) getPage().getChildViewByid(FinalBtCtrl.Sound_Btn_AMP);
        this.mViewBtAvCtrl = getPage().getChildViewByid(FinalBtCtrl.Av_ShowCtrl);
        this.mViewBtConnectTip = getPage().getChildViewByid(FinalBtCtrl.Av_ShowTip);
        this.mBtnBtConnectTip = (JButton) getPage().getChildViewByid(FinalBtCtrl.Btn_ShowTip);
        this.mImgViewBtavAnim = (ImageView) getPage().getChildViewByid(FinalBtCtrl.BT_BK_Anim);
        if (this.mImgViewBtavAnim != null) {
            AnimationDrawable Anim = null;
            if (0 == 0) {
                Anim = (AnimationDrawable) getPage().getDrawableFromPath("freq_anim_list", null, null);
            }
            this.mImgViewBtavAnim.setBackground(Anim);
            if (this.mImgViewBtavAnim.getBackground() != null) {
                this.frameAnim = (AnimationDrawable) this.mImgViewBtavAnim.getBackground();
            }
        }
        this.mViewAPIC = (JView) getPage().getChildViewByid(FinalBtCtrl.Av_Album_pic);
        this.seekBar = (JSeekBar) getPage().getChildViewByid(FinalBtCtrl.Av_SeekBar);
        this.currentTime = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_CurrentTime);
        this.currentTime1 = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_CurrentTime1);
        this.totalTime = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_TotalTime);
        this.seekBarBk = (JView) getPage().getChildViewByid(FinalBtCtrl.Av_SeekBar_bk);
        this.mDynamicView1 = getPage().getChildViewByid(FinalBtCtrl.Av_DynamicView);
        this.mDynamicView2 = getPage().getChildViewByid(FinalBtCtrl.Av_DynamicView2);
        if (this.mDynamicView2 != null) {
            this.mDynamicView2.setAlpha(1.0f);
        }
        if (this.seekBar != null) {
            this.seekBar.setClickable(false);
            this.seekBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Av.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent arg1) {
                    return true;
                }
            });
        }
        initViewData();
        setButtonColor(App_Bt.color);
        updatePhoneBattery(App_Bt.mPhoneBatterty);
        updatePhoneAptx(App_Bt.mPhoneCoding);
        setDayOrNight(App_Bt.mColorType);
        dispAlmup(FinalChip.BSP_PLATFORM_Null);
    }

    public void initViewData() {
        if (this.mProgBtAv != null) {
            MyUiItem item = (MyUiItem) this.mProgBtAv.getTag();
            String[] str = item.getStrDrawableExtra();
            if (str != null && str.length > 0) {
                this.mAnimationDrawable = (AnimationDrawable) getPage().getDrawableFromPath(str[0], getPage().mDrawables, getPage().mDrawables);
            }
            this.mProgBtAv.setBackground(this.mAnimationDrawable);
        }
    }

    public void startAnim() {
        Log.d("gdy4", " 01 Page_Av startAnim = ");
        if (this.mDynamicView1 != null) {
            if (this.animMin == null) {
                Log.d("gdy4", " 02 Page_Av startAnim animMin==null ");
                this.animMin = ValueAnimator.ofFloat(0.0f, 360.0f);
                this.animMin.setDuration(8000L);
                this.animMin.setRepeatCount(-1);
                this.animMin.setInterpolator(new TimeInterpolator() { // from class: com.syu.bt.page.Page_Av.2
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float arg0) {
                        return arg0;
                    }
                });
                this.animMin.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.syu.bt.page.Page_Av.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        float angle = ((Float) animation.getAnimatedValue()).floatValue();
                        Page_Av.this.mDynamicView1.setRotation(angle);
                    }
                });
            }
            Log.d("gdy4", " 03 Page_Av startAnim isPaused = " + this.animMin.isPaused() + " isRunning = " + this.animMin.isRunning());
            if (this.animMin.isPaused()) {
                this.animMin.resume();
            } else if (!this.animMin.isRunning()) {
                this.animMin.start();
            }
        }
        if (this.mDynamicView2 != null) {
            if (this.animMin2 == null) {
                this.animMin2 = ValueAnimator.ofFloat(1.0f, 0.0f);
                this.animMin2.setDuration(4000L);
                this.animMin2.setRepeatMode(2);
                this.animMin2.setRepeatCount(-1);
                this.animMin2.setInterpolator(new TimeInterpolator() { // from class: com.syu.bt.page.Page_Av.4
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float arg0) {
                        return arg0;
                    }
                });
                this.animMin2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.syu.bt.page.Page_Av.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator animation) {
                        float alpha = ((Float) animation.getAnimatedValue()).floatValue();
                        Page_Av.this.mDynamicView2.setAlpha(alpha);
                    }
                });
            }
            if (this.animMin2.isPaused()) {
                this.animMin2.resume();
            } else if (!this.animMin2.isRunning()) {
                this.animMin2.start();
            }
        }
        if (this.mDynamicView2 == null && this.mDynamicView1 == null) {
            Log.d("gdy4", " 04 stopAnim ");
            stopAnim();
            if (this.mProgBtAv != null) {
                this.mRunnable_AnimDrawable = new Runnable_AnimDrawable(this.mProgBtAv, this.mAnimationDrawable, 300);
                Main.postRunnable_Ui(false, this.mRunnable_AnimDrawable);
            }
        }
    }

    public void stopAnim() {
        if (this.animMin != null && this.animMin.isRunning()) {
            this.animMin.pause();
        }
        if (this.animMin2 != null && this.animMin2.isRunning()) {
            this.animMin2.pause();
        }
        if (this.mRunnable_AnimDrawable != null) {
            Main.removeRunnable_Ui(this.mRunnable_AnimDrawable);
            this.mRunnable_AnimDrawable.stopRun();
            this.mRunnable_AnimDrawable = null;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        App_Bt.getInstance().setFullScreenMode(0);
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Prev /* 10308 */:
                case FinalBtCtrl.Av_Btn_Prev1 /* 10309 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avPrev();
                        this.misAvStop = false;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_PlayPause /* 10310 */:
                case FinalBtCtrl.Av_Btn_PlayPause2 /* 10311 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avPlayPause();
                        this.misAvStop = false;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Play /* 10312 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avPlay();
                        this.misAvStop = false;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Pause /* 10313 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avPause();
                        this.misAvStop = false;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Stop /* 10314 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avStop();
                        this.misAvStop = true;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Next /* 10315 */:
                case FinalBtCtrl.Av_Btn_Next1 /* 10316 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avNext();
                        this.misAvStop = false;
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Link /* 10317 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avLink();
                    }
                    break;
                case FinalBtCtrl.Av_Btn_Cut /* 10318 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Bt_IpcObj.avCut();
                    }
                    break;
                case FinalBtCtrl.Btn_ShowTip /* 10332 */:
                    Log.d("gdy3", " 01 ResponseClick Av_ShowTip id = " + id);
                    if (!FuncUtils.isFastDoubleClick() && App_Bt.mStrCustomer.equals("YL_3") && Bt.DATA[9] == 0) {
                        this.actBt.myActivity.goPage(FinalBtCtrl.Page_Pair);
                    }
                    break;
                case FinalBtCtrl.Set_Btn_BtAvMicSet /* 10418 */:
                    App_Bt.getInstance().popBtAvMicSet(true);
                    break;
                case FinalBtCtrl.Player_Btn_Media /* 10419 */:
                    if (!FuncUtils.isFastDoubleClick() && App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                        Intent intent1 = new Intent("android.intent.action.MAIN");
                        intent1.setFlags(270532608);
                        intent1.setComponent(new ComponentName("com.syu.music", "com.syu.music.MAct"));
                        this.actBt.myActivity.startActivity(intent1);
                    }
                    break;
                case FinalBtCtrl.Player_Btn_BtAv /* 10420 */:
                    if (FuncUtils.isFastDoubleClick()) {
                    }
                    break;
                case FinalBtCtrl.Player_Btn_Radio /* 10421 */:
                    if (!FuncUtils.isFastDoubleClick() && App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                        MyApplication.myApp.startAct("com.syu.radio");
                    }
                    break;
                case FinalBtCtrl.Player_Btn_Online /* 10422 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        Intent intentm = new Intent("android.intent.action.MAIN");
                        intentm.setFlags(270532608);
                        intentm.setComponent(new ComponentName("com.syu.onlineradio", "com.syu.onlineradio.MainActivity"));
                        try {
                            this.actBt.myActivity.startActivity(intentm);
                        } catch (ActivityNotFoundException e) {
                            Toast.makeText(App_Bt.getInstance().uiApp.mContext, "应用未安装", 0).show();
                        }
                    }
                    break;
                case FinalBtCtrl.Player_Btn_More /* 10423 */:
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                        Intent intentn = new Intent("android.intent.action.MAIN");
                        intentn.setFlags(270532608);
                        intentn.setComponent(new ComponentName("com.spotify.music", "com.spotify.music.MainActivity"));
                        this.actBt.myActivity.startActivity(intentn);
                    }
                    break;
                case FinalBtCtrl.Sound_Btn_Loud /* 10548 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        if (App_Bt.bSoundLoud == 0) {
                            App_Bt.getInstance().mIpcObj.sendCmdLoud(1);
                        } else {
                            App_Bt.getInstance().mIpcObj.sendCmdLoud(0);
                        }
                    }
                    break;
                case FinalBtCtrl.Sound_Btn_AMP /* 10549 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        if (App_Bt.bSoundAMP == 0) {
                            App_Bt.getInstance().mIpcObj.sendCmdAmp(1);
                        } else {
                            App_Bt.getInstance().mIpcObj.sendCmdAmp(0);
                        }
                    }
                    break;
                case FinalBtCtrl.Sound_Btn_EQ /* 10550 */:
                    Intent intent = new Intent();
                    intent.setAction("com.syu.eq");
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.setFlags(268435456);
                    this.actBt.myActivity.startActivity(intent);
                    break;
                case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                    this.actBt.Func_Back();
                    break;
            }
            if (this.actBt.MenuClick(v)) {
            }
        }
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
            if (Page_Av.this.actBt.myActivity.mPageCurrent == Page_Av.this.getPage()) {
                if (Page_Av.this.actBt.isHalf()) {
                    if (Page_Av.this.mViewBtAvFullScreen != null) {
                        Page_Av.this.mViewBtAvFullScreen.setVisibility(8);
                    }
                    if (Page_Av.this.mViewBtAvHalfScreen != null) {
                        Page_Av.this.mViewBtAvHalfScreen.setVisibility(0);
                        return;
                    }
                    return;
                }
                if (Page_Av.this.mViewBtAvHalfScreen != null) {
                    Page_Av.this.mViewBtAvHalfScreen.setVisibility(8);
                }
                if (Page_Av.this.mViewBtAvFullScreen != null) {
                    Page_Av.this.mViewBtAvFullScreen.setVisibility(0);
                }
            }
        }
    }

    public void updateAvSelected(int idFocusItem, boolean bSelected) {
        if (bSelected && this.iAvFocusSel != idFocusItem) {
            updateAvSelected(this.iAvFocusSel, false);
            this.iAvFocusSel = idFocusItem;
        }
        JButton btn = (JButton) getPage().getChildViewByid(idFocusItem);
        if (btn != null) {
            btn.setFocus(bSelected);
        }
    }

    public void updateSelected(int id, boolean bSelected) {
        int iAvFocusBtn = -1;
        switch (id) {
            case FinalBtCtrl.Av_Btn_Prev /* 10308 */:
            case FinalBtCtrl.Av_Btn_Prev1 /* 10309 */:
            case FinalBtCtrl.Av_Btn_PlayPause /* 10310 */:
            case FinalBtCtrl.Av_Btn_Stop /* 10314 */:
            case FinalBtCtrl.Av_Btn_Next /* 10315 */:
            case FinalBtCtrl.Av_Btn_Next1 /* 10316 */:
                iAvFocusBtn = id;
                break;
        }
        if (iAvFocusBtn != -1 && this.iAvFocusSel != iAvFocusBtn && this.iAvFocusSel > 0) {
            updateAvSelected(this.iAvFocusSel, bSelected);
        }
    }

    public void updateBtnPlayPause() {
        if (this.mBtnPlayPause != null) {
            MyUiItem item = (MyUiItem) this.mBtnPlayPause.getTag();
            if (item.getParaStr() != null) {
                String str = null;
                if (App_Bt.bBtAvPlayState) {
                    str = item.getStrDrawable();
                } else if (item.getParaStr() != null) {
                    str = item.getParaStr()[0];
                }
                if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3")) {
                    str = String.valueOf(App_Bt.mColorType > 0 ? "night_" : FinalChip.BSP_PLATFORM_Null) + str;
                }
                if (this.mBtnPlayPause.getStrDrawable() != str && str != null) {
                    this.mBtnPlayPause.setStrDrawable(str, true);
                }
            }
        }
        if (this.mImgViewBtavAnim != null && this.frameAnim != null) {
            if (App_Bt.bBtAvPlayState) {
                this.frameAnim.start();
            } else {
                this.frameAnim.stop();
            }
        }
    }

    public void updateBtConnectTip() {
        if (CustomerUtil.is7731() && App_Bt.mStrCustomer.equals("TZY_UI5")) {
            if (Bt_IpcObj.isDisConnect()) {
                getPage().setBackground(getPage().getDrawableFromPath("btav_bk_disconnect2", getPage().mDrawables, getPage().mDrawables));
            } else {
                getPage().setBackground(getPage().getDrawableFromPath("btav_bk_connect2", getPage().mDrawables, getPage().mDrawables));
            }
        }
        if (this.mViewBtAvCtrl != null) {
            this.mViewBtAvCtrl.setVisibility(Bt_IpcObj.isDisConnect() ? 8 : 0);
        }
        if (this.mViewBtConnectTip != null) {
            this.mViewBtConnectTip.setVisibility(Bt_IpcObj.isDisConnect() ? 0 : 8);
        }
        if (this.mBtnBtConnectTip != null) {
            this.mBtnBtConnectTip.setVisibility(Bt_IpcObj.isDisConnect() ? 0 : 8);
        }
        updateBtNameAndPinTip();
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

    public void updatePhoneBattery(int level) {
        JView vBattery;
        String strDrawable;
        View vShowBattery = getPage().getChildViewByid(FinalBtCtrl.Av_ShowPhoneBattery);
        if (vShowBattery != null) {
            vShowBattery.setVisibility(level > 0 ? 0 : 8);
        }
        if (level > 0 && (vBattery = (JView) getPage().getChildViewByid(FinalBtCtrl.Battery_View)) != null) {
            MyUiItem item = (MyUiItem) vBattery.getTag();
            if (item.getParaStr() != null && vBattery.getStrDrawable() != (strDrawable = item.getParaStr()[level - 1]) && strDrawable != null) {
                vBattery.setStrDrawable(strDrawable, true);
            }
        }
    }

    public void updatePhoneAptx(int type) {
        String strDrawable;
        JView view = (JView) getPage().getChildViewByid(FinalBtCtrl.Av_View);
        if (view != null) {
            boolean flag = true;
            if (type <= 0 || type > 9) {
                flag = false;
            }
            view.setVisibility(flag ? 0 : 8);
            if (flag) {
                MyUiItem item = (MyUiItem) view.getTag();
                if (item.getParaStr() != null && view.getStrDrawable() != (strDrawable = item.getParaStr()[type - 1]) && strDrawable != null) {
                    view.setStrDrawable(strDrawable, true);
                }
            }
        }
    }

    public void handleSeekPos(int pos) {
        int pos2 = pos / 1000;
        if (this.seekBar != null) {
            this.seekBar.setProgress(pos2);
        }
        if (this.currentTime != null) {
            this.currentTime.setText(String.format("%02d:%02d:%02d", Integer.valueOf(pos2 / 3600), Integer.valueOf((pos2 / 60) % 60), Integer.valueOf(pos2 % 60)));
        }
    }

    public void updateSeekbar(int total, boolean flag) {
        int total2 = total / 1000;
        if (this.seekBar != null) {
            this.seekBar.setProgressMax(total2);
        }
        if (this.totalTime != null) {
            this.totalTime.setText(String.format("%02d:%02d:%02d", Integer.valueOf(total2 / 3600), Integer.valueOf((total2 / 60) % 60), Integer.valueOf(total2 % 60)));
        }
        if (this.seekBar != null) {
            if (!flag || this.seekBar.getVisibility() != 0) {
                this.seekBar.setVisibility(total2 <= 0 ? 8 : 0);
            } else {
                return;
            }
        }
        if (this.currentTime != null) {
            this.currentTime.setVisibility(total2 <= 0 ? 8 : 0);
        }
        if (this.currentTime1 != null) {
            this.currentTime1.setVisibility(total2 <= 0 ? 8 : 0);
        }
        if (this.totalTime != null) {
            this.totalTime.setVisibility(total2 <= 0 ? 8 : 0);
        }
        if (this.seekBarBk != null) {
            this.seekBarBk.setVisibility(total2 > 0 ? 0 : 8);
        }
    }

    public void updateSoundLoud() {
        if (this.mBtnSoundLoud != null) {
            this.mBtnSoundLoud.setFocus(App_Bt.bSoundLoud == 1);
        }
    }

    public void updateSoundMode() {
        JText soundModeJText = (JText) getPage().getChildViewByid(FinalBtCtrl.Av_Txt_SoundMode);
        if (soundModeJText != null) {
            switch (App_Bt.bSoundMode) {
                case 1:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("standard"));
                    break;
                case 2:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("rock"));
                    break;
                case 3:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("soft"));
                    break;
                case 4:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("classic"));
                    break;
                case 5:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("pop"));
                    break;
                case 6:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("hall"));
                    break;
                case 7:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("jazz"));
                    break;
                case 8:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("cinema"));
                    break;
                default:
                    soundModeJText.setText(App_Bt.getInstance().uiApp.getString("user"));
                    break;
            }
        }
    }

    public void updateSoundAmp() {
        if (this.mBtnSoundAmp != null) {
            this.mBtnSoundAmp.setFocus(App_Bt.bSoundAMP == 1);
        }
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            ImageView bk = (ImageView) getPage().getChildViewByid(FinalBtCtrl.Main_View);
            if (bk != null) {
                bk.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
                bk.setImageDrawable(getPage().getDrawableFromPath("bk0", getPage().mDrawables, getPage().mDrawables));
            }
            ImageView view = (ImageView) getPage().getChildViewByid(FinalBtCtrl.Av_ColorView);
            if (view != null) {
                view.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
                view.setImageDrawable(getPage().getDrawableFromPath("btav_icopinpu", getPage().mDrawables, getPage().mDrawables));
            }
            JButton prev = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_Prev);
            if (prev != null) {
                prev.setBackgroundTintList(new ColorStateList(states, colors));
                prev.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton prev1 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_Prev1);
            if (prev1 != null) {
                prev1.setBackgroundTintList(new ColorStateList(states, colors));
                prev1.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton playpause = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_PlayPause);
            if (playpause != null) {
                playpause.setBackgroundTintList(new ColorStateList(states, colors));
                playpause.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton stop = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_Stop);
            if (stop != null) {
                stop.setBackgroundTintList(new ColorStateList(states, colors));
                stop.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton next = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_Next);
            if (next != null) {
                next.setBackgroundTintList(new ColorStateList(states, colors));
                next.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton next1 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Av_Btn_Next1);
            if (next1 != null) {
                next1.setBackgroundTintList(new ColorStateList(states, colors));
                next1.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    public void setDayOrNight(int value) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW")) {
            if (value > 0) {
                getPage().setBackground(getPage().getDrawableFromPath("bt_night", getPage().mDrawables, getPage().mDrawables));
                return;
            } else {
                getPage().setBackground(getPage().getDrawableFromPath("bk_day", getPage().mDrawables, getPage().mDrawables));
                return;
            }
        }
        if (App_Bt.bUI_NightColour) {
            String str = value > 0 ? "night_" : FinalChip.BSP_PLATFORM_Null;
            for (int j = 0; j < this.nightView.length; j++) {
                JView view = (JView) getPage().getChildViewByid(this.nightView[j]);
                if (view != null) {
                    String drawableName = view.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName.startsWith("night_")) {
                            view.setStrDrawable(drawableName.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName.startsWith("night_")) {
                        view.setStrDrawable("night_" + drawableName, true);
                    }
                }
            }
            for (int k = 0; k < this.nightText.length; k++) {
                JText text = (JText) getPage().getChildViewByid(this.nightText[k]);
                if (text != null) {
                    text.setTextColor(value > 0 ? -1 : -16777216);
                }
            }
            for (int i = 0; i < this.nightBtn.length; i++) {
                JButton button = (JButton) getPage().getChildViewByid(this.nightBtn[i]);
                if (button != null) {
                    String drawableName2 = button.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName2.startsWith("night_")) {
                            button.setStrDrawable(drawableName2.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName2.startsWith("night_")) {
                        button.setStrDrawable("night_" + drawableName2, true);
                    }
                    if (this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061) {
                        button.setTextColor(value > 0 ? -1 : -16777216);
                    }
                }
            }
            updateBtnPlayPause();
        }
    }

    public void dispAlmup(String path) {
        if (this.mViewAPIC != null) {
            Bitmap bmp = null;
            if (!TextUtils.isEmpty(path)) {
                bmp = BitmapFactory.decodeFile(path);
            }
            if (bmp != null) {
                this.mViewAPIC.setBackground(new BitmapDrawable(MyUi.mResources, bmp));
            } else {
                this.mViewAPIC.setBackground(null);
            }
        }
    }
}
