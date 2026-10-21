package com.syu.bt.page;

import android.R;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JScrollView;
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

/* JADX INFO: loaded from: classes.dex */
public class Page_Menu extends MyPage {
    Act_Bt actBt;
    boolean bHideScroll;
    public JButton bShowScroll;
    int[] color_day;
    int[] color_night;
    Animation endAni;
    public Runnable mRunnable_HideMenuButton;
    public JScrollView mScroll;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    Animation startAni;
    public JText tvTxtName;
    public JText tvTxtNumber;
    public JView vLine_one;
    public JView vLine_three;
    public JView vLine_two;

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        int i;
        int i2;
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.mScroll = (JScrollView) getPage().getChildViewByid(FinalBtCtrl.Menu_Scroll);
        this.bShowScroll = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Btn_ShowScroll);
        this.vLine_one = (JView) getPage().getChildViewByid(FinalBtCtrl.Line_one);
        this.vLine_two = (JView) getPage().getChildViewByid(FinalBtCtrl.Line_two);
        this.vLine_three = (JView) getPage().getChildViewByid(FinalBtCtrl.Line_three);
        if (this.vLine_two != null) {
            this.vLine_two.setVisibility(8);
        }
        if (this.mScroll != null) {
            this.mScroll.setVisibility(0);
            this.bShowScroll.setVisibility(8);
        }
        if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
            View view_av = getPage().getChildViewByid(FinalBtCtrl.View_Av);
            if (view_av != null && MyApplication.mIdPlatForm == 62) {
                view_av.setVisibility(8);
            }
            setDayOrNight(App_Bt.mColorType);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
            setDayOrNight(App_Bt.mColorType);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            Log.d("gdy3", "Page_Menu init  U_PHONE_STATE = " + Bt.DATA[9] + " mIdPlatForm = " + MyApplication.mIdPlatForm);
            JButton history = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_History);
            JButton contact = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Contact);
            JButton dial = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Dial);
            JButton btav = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Av);
            JText history_Txt = (JText) getPage().getChildViewByid(FinalBtCtrl.Menu_History_Txt);
            JText contact_Txt = (JText) getPage().getChildViewByid(FinalBtCtrl.Menu_Contact_Txt);
            JText dial_Txt = (JText) getPage().getChildViewByid(FinalBtCtrl.Menu_Dial_Txt);
            Boolean isConnect = Boolean.valueOf((Bt.DATA[9] == 1 || Bt.DATA[9] == 0 || Bt.DATA[9] == 6) ? false : true);
            Log.d("gdy16", " 00 Page_Menu isConnect = " + isConnect + "  ** U_PHONE_STATE = " + Bt.DATA[9]);
            if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1")) {
                int color = App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK;
                if (history != null) {
                    history.setEnabled(isConnect.booleanValue());
                    history.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (contact != null) {
                    contact.setEnabled(isConnect.booleanValue());
                    contact.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (dial != null) {
                    dial.setEnabled(isConnect.booleanValue());
                    dial.setTextColor(isConnect.booleanValue() ? color : -7829368);
                }
                if (btav != null) {
                    btav.setEnabled(isConnect.booleanValue());
                    if (!isConnect.booleanValue()) {
                        color = -7829368;
                    }
                    btav.setTextColor(color);
                }
            } else {
                int color2 = -1;
                if (history_Txt != null) {
                    if (isConnect.booleanValue()) {
                        i2 = -1;
                    } else {
                        i2 = -7829368;
                    }
                    history_Txt.setTextColor(i2);
                }
                if (contact_Txt != null) {
                    if (isConnect.booleanValue()) {
                        i = -1;
                    } else {
                        i = -7829368;
                    }
                    contact_Txt.setTextColor(i);
                }
                if (dial_Txt != null) {
                    if (!isConnect.booleanValue()) {
                        color2 = -7829368;
                    }
                    dial_Txt.setTextColor(color2);
                }
                if (history != null) {
                    history.setEnabled(isConnect.booleanValue());
                }
                if (contact != null) {
                    contact.setEnabled(isConnect.booleanValue());
                }
                if (dial != null) {
                    dial.setEnabled(isConnect.booleanValue());
                }
            }
        }
        View viewMenuAv = getPage().getChildViewByid(FinalBtCtrl.Menu_Av);
        if (viewMenuAv == null) {
            App_Bt.bDelMenuFromBtAv = true;
        }
        setAnimation();
        setButtonColor(App_Bt.color);
        initTypeface();
    }

    public Page_Menu(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.nightBtn = new int[]{FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_Set, FinalBtCtrl.Menu_Av};
        this.nightText = new int[]{FinalBtCtrl.Menu_Dial_Txt, FinalBtCtrl.Menu_History_Txt, FinalBtCtrl.Menu_Contact_Txt, FinalBtCtrl.Menu_Pair_Txt, FinalBtCtrl.Menu_Set_Txt};
        this.nightView = new int[]{FinalBtCtrl.MenuView_bk, FinalBtCtrl.MenuView_line1, FinalBtCtrl.MenuView_line2, FinalBtCtrl.MenuView_line3, FinalBtCtrl.MenuView_line4, FinalBtCtrl.MenuView_line5, FinalBtCtrl.MenuView_line6};
        this.mRunnable_HideMenuButton = new Runnable() { // from class: com.syu.bt.page.Page_Menu.1
            @Override // java.lang.Runnable
            public void run() {
                if (Page_Menu.this.mScroll != null && Page_Menu.this.mScroll.getVisibility() == 0) {
                    Page_Menu.this.mScroll.setVisibility(8);
                    if (Page_Menu.this.vLine_one != null) {
                        Page_Menu.this.vLine_one.setVisibility(8);
                    }
                    Page_Menu.this.mScroll.startAnimation(Page_Menu.this.endAni);
                    if (Page_Menu.this.vLine_one != null) {
                        Page_Menu.this.vLine_one.startAnimation(Page_Menu.this.endAni);
                    }
                }
            }
        };
        this.color_day = new int[]{ViewCompat.MEASURED_STATE_MASK, Color.rgb(39, 249, 211)};
        this.color_night = new int[]{-1, Color.rgb(39, 249, 211)};
        this.actBt = actBt;
    }

    public boolean updateSelected(int id, boolean bSelected) {
        int idPageTo;
        int idCur;
        Log.d("gdy9", " Page_Menu id = " + id + " bSelected = " + bSelected);
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") || (idPageTo = this.actBt.getFixPage(id)) == -1) {
            return false;
        }
        if (this.actBt.myActivity.mPageCurrent != null && (idCur = this.actBt.myActivity.mPageCurrent.getId()) != idPageTo) {
            if (bSelected) {
                this.actBt.updateMenuSelected(10002, idCur, 0, bSelected);
            } else {
                this.actBt.updateMenuSelected_New(10002, idCur, idPageTo, 0, bSelected);
            }
        }
        return true;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (CustomerUtil.isZHTDConfig()) {
            Main.removeRunnable_Ui(this.mRunnable_HideMenuButton);
            Main.postRunnable_Ui(false, this.mRunnable_HideMenuButton, 10000L);
        }
        if (!BTUtil.getInstance().IsConnectCarplay() && !btnClick(v)) {
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
            } else {
                this.actBt.MenuClick(v);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (CustomerUtil.filterDemand_DZSJ()) {
                    Bt_IpcObj.clearKey(true);
                }
                break;
        }
        return false;
    }

    private boolean btnClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Menu_Home /* 10064 */:
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                this.actBt.myActivity.startActivity(intent);
                return true;
            case FinalBtCtrl.Menu_XY_LC /* 10065 */:
                if (App_Bt.getInstance().mIpcObj.isCalling()) {
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
                    return true;
                }
                Intent intent2 = new Intent();
                intent2.setAction("com.syu.music.btav");
                intent2.setPackage("com.syu.music");
                this.actBt.myActivity.startActivity(intent2);
                return true;
            case FinalBtCtrl.Menu_Back /* 10066 */:
                this.actBt.myActivity.dispatchKeyEvent(new KeyEvent(0, 4));
                return true;
            case FinalBtCtrl.Menu_StandBy /* 10070 */:
                App_Bt.getInstance().mIpcObj.setStandBy();
                return true;
            case FinalBtCtrl.Menu_Btn_ShowScroll /* 10073 */:
                ShowMenuButton();
                return true;
            case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
                if (FuncUtils.isFastDoubleClick()) {
                    return true;
                }
                App_Bt.getInstance().mIpcObj.FuncDial();
                return true;
            case FinalBtCtrl.Dial_Btn_Hang /* 10132 */:
                if (FuncUtils.isFastDoubleClick() || !Bt_IpcObj.isInCall()) {
                    return true;
                }
                Bt_IpcObj.hang();
                return true;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (!CustomerUtil.filterDemand_DZSJ()) {
                    return true;
                }
                Bt_IpcObj.clearKey(false);
                return true;
            default:
                return false;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void setPressed(JButton jButton, boolean pressed) {
        int id = jButton.getId();
        updateSelected(id, !pressed);
    }

    public void setAnimation() {
        if (CustomerUtil.isZHTDConfig()) {
            this.startAni = new TranslateAnimation(1, -0.64f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
            this.startAni.setDuration(500L);
            this.endAni = new TranslateAnimation(1, 0.0f, 1, -0.64f, 1, 0.0f, 1, 0.0f);
            this.endAni.setDuration(500L);
            this.endAni.setAnimationListener(new Animation.AnimationListener() { // from class: com.syu.bt.page.Page_Menu.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (Page_Menu.this.mScroll != null) {
                        Page_Menu.this.mScroll.setVisibility(8);
                    }
                    if (Page_Menu.this.vLine_one != null) {
                        Page_Menu.this.vLine_one.setVisibility(8);
                    }
                    if (Page_Menu.this.bShowScroll != null) {
                        Page_Menu.this.bShowScroll.setVisibility(0);
                    }
                    if (Page_Menu.this.vLine_three != null) {
                        Page_Menu.this.vLine_three.setVisibility(8);
                    }
                    if (Page_Menu.this.vLine_two != null) {
                        Page_Menu.this.vLine_two.setVisibility(0);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
            if (CustomerUtil.isZHTDConfig()) {
                Main.removeRunnable_Ui(this.mRunnable_HideMenuButton);
                Main.postRunnable_Ui(false, this.mRunnable_HideMenuButton, 10000L);
            }
        }
    }

    public void resetMenuButton() {
        if (CustomerUtil.isZHTDConfig()) {
            ShowMenuButton();
            Main.removeRunnable_Ui(this.mRunnable_HideMenuButton);
            Main.postRunnable_Ui(false, this.mRunnable_HideMenuButton, 10000L);
        }
    }

    public void ShowMenuButton() {
        if (this.bShowScroll != null) {
            this.bShowScroll.setVisibility(8);
        }
        if (this.vLine_three != null) {
            this.vLine_three.setVisibility(0);
        }
        if (this.vLine_two != null) {
            this.vLine_two.setVisibility(8);
        }
        if (this.mScroll.getVisibility() == 8) {
            this.mScroll.setVisibility(0);
            if (this.vLine_one != null) {
                this.vLine_one.setVisibility(0);
            }
            this.mScroll.startAnimation(this.startAni);
            if (this.vLine_one != null) {
                this.vLine_one.startAnimation(this.startAni);
            }
        }
    }

    public void initTypeface() {
    }

    public void setDayOrNight(int value) {
        if (App_Bt.bUI_NightColour) {
            Boolean isConnect = Boolean.valueOf((Bt.DATA[9] == 1 || Bt.DATA[9] == 0 || Bt.DATA[9] == 6) ? false : true);
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
                    if (this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061 || this.nightBtn[i] == 10060) {
                        button.setTextColor(value > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        button.setColor(value > 0 ? this.color_night : this.color_day);
                        if (App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") && ((this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10060) && !isConnect.booleanValue())) {
                            button.setTextColor(-7829368);
                        }
                    }
                }
            }
            JButton button2 = (JButton) getPage().getChildViewByid(getBtnId());
            if (button2 != null) {
                button2.setTextColor(Color.rgb(39, 249, 211));
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
        }
    }

    public int getBtnId() {
        Log.d("gdyy", " getBtnId sPage_Current = " + MyApplication.sPage_Current);
        switch (MyApplication.sPage_Current) {
            case 10003:
                return FinalBtCtrl.Menu_Dial;
            case FinalBtCtrl.Page_DialItem /* 10004 */:
            case FinalBtCtrl.Page_ContactItem /* 10006 */:
            case FinalBtCtrl.Page_LetterItem /* 10007 */:
            case FinalBtCtrl.Page_HistoryItem /* 10009 */:
            default:
                return 10003;
            case FinalBtCtrl.Page_Contact /* 10005 */:
                return FinalBtCtrl.Menu_Contact;
            case FinalBtCtrl.Page_History /* 10008 */:
                return FinalBtCtrl.Menu_History;
            case FinalBtCtrl.Page_Av /* 10010 */:
                return FinalBtCtrl.Menu_Av;
            case FinalBtCtrl.Page_Set /* 10011 */:
                return FinalBtCtrl.Menu_Set;
            case FinalBtCtrl.Page_Pair /* 10012 */:
                return FinalBtCtrl.Menu_Pair;
        }
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            JButton dial = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Dial);
            if (dial != null) {
                dial.setBackgroundTintList(new ColorStateList(states, colors));
                dial.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton history = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_History);
            if (history != null) {
                history.setBackgroundTintList(new ColorStateList(states, colors));
                history.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton contact = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Contact);
            if (contact != null) {
                contact.setBackgroundTintList(new ColorStateList(states, colors));
                contact.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton av = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Av);
            if (av != null) {
                av.setBackgroundTintList(new ColorStateList(states, colors));
                av.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton pair = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Pair);
            if (pair != null) {
                pair.setBackgroundTintList(new ColorStateList(states, colors));
                pair.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton set = (JButton) getPage().getChildViewByid(FinalBtCtrl.Menu_Set);
            if (set != null) {
                set.setBackgroundTintList(new ColorStateList(states, colors));
                set.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            ImageView view = (ImageView) getPage().getChildViewByid(FinalBtCtrl.Menu_View);
            if (view != null) {
                view.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
                view.setImageDrawable(getPage().getDrawableFromPath("bt_menu_bk", getPage().mDrawables, getPage().mDrawables));
            }
        }
    }
}
