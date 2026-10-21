package com.syu.bt.page.pop;

import android.animation.ObjectAnimator;
import android.os.SystemProperties;
import android.support.v4.internal.view.SupportMenu;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.jni.SyuJniNative;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopHySetAI extends MyPage {
    Act_Bt actBt;
    JButton btn_minus;
    JButton btn_plus;
    public int iHySet;
    public int iHySet_p;
    public int iMoveStar;
    public int iMoveTxtWidth;
    public int iMoveWidth;
    boolean isPlus;
    private Runnable mRunBtnTouch;
    private Runnable mRunSetHy;
    JButton moveView;
    View setView;
    JButton set_0;
    JButton set_1;
    JButton set_2;
    JText tvHySet;

    public Page_PopHySetAI(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.iMoveWidth = 0;
        this.iMoveTxtWidth = 0;
        this.iMoveStar = 0;
        this.iHySet = 0;
        this.iHySet_p = 200;
        this.isPlus = true;
        this.mRunBtnTouch = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.1
            @Override // java.lang.Runnable
            public void run() {
                if (Page_PopHySetAI.this.isPlus) {
                    Page_PopHySetAI.this.iHySet++;
                    if (Page_PopHySetAI.this.iHySet >= 2000) {
                        Page_PopHySetAI.this.iHySet = 1999;
                    }
                } else {
                    Page_PopHySetAI.this.iHySet--;
                    if (Page_PopHySetAI.this.iHySet <= 0) {
                        Page_PopHySetAI.this.iHySet = 1;
                    }
                }
                Page_PopHySetAI.this.textMove(SupportMenu.USER_MASK);
                Page_PopHySetAI.this.tvHySet.postDelayed(Page_PopHySetAI.this.mRunBtnTouch, 300L);
            }
        };
        this.mRunSetHy = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.2
            @Override // java.lang.Runnable
            public void run() {
                SystemProperties.set("persist.btaec.delay", new StringBuilder().append(Page_PopHySetAI.this.iHySet).toString());
                SystemProperties.set("persist.btaec.delay_p", new StringBuilder().append(Page_PopHySetAI.this.iHySet_p).toString());
                SyuJniNative.getInstance().syu_jni_command(253, null, null);
                Bt_IpcObj.dial("#*" + Page_PopHySetAI.this.iHySet);
            }
        };
        this.actBt = actBt;
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopHySetAI);
        this.moveView = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_line);
        this.setView = pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_view);
        this.tvHySet = (JText) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_txt);
        if (this.tvHySet != null) {
            this.iMoveTxtWidth = this.tvHySet.getWidth();
        }
        this.iHySet = SystemProperties.getInt("persist.btaec.delay", 0);
        this.iHySet_p = SystemProperties.getInt("persist.btaec.delay_p", 200);
        Log.d("hy", " 00 Page_PopHySetAI init ");
        this.set_0 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_set0);
        if (this.set_0 != null) {
            this.set_0.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.3
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    if (Page_PopHySetAI.this.iHySet != 0 && Page_PopHySetAI.this.iHySet != 2000) {
                        Page_PopHySetAI.this.iHySet_p = Page_PopHySetAI.this.iHySet;
                    }
                    Page_PopHySetAI.this.iHySet = 0;
                    Page_PopHySetAI.this.showHySet();
                }
            });
        }
        this.set_1 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_set1);
        if (this.set_1 != null) {
            this.set_1.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.4
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    Page_PopHySetAI.this.iHySet = Page_PopHySetAI.this.iHySet_p;
                    Page_PopHySetAI.this.showHySet();
                }
            });
        }
        this.set_2 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_set2);
        if (this.set_2 != null) {
            this.set_2.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.5
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    if (Page_PopHySetAI.this.iHySet != 0 && Page_PopHySetAI.this.iHySet != 2000) {
                        Page_PopHySetAI.this.iHySet_p = Page_PopHySetAI.this.iHySet;
                    }
                    Page_PopHySetAI.this.iHySet = 2000;
                    Page_PopHySetAI.this.showHySet();
                }
            });
        }
        if (this.set_0 != null) {
            this.set_0.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.6
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    Page_PopHySetAI.this.iHySet = 0;
                    Page_PopHySetAI.this.showHySet();
                }
            });
        }
        this.btn_minus = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_minus);
        if (this.btn_minus != null) {
            this.btn_minus.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.7
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopHySetAI.this.isPlus = false;
                            Log.d("touch", " 11  Pophyset_Btn_minus ACTION_DOWN  isPlus = " + Page_PopHySetAI.this.isPlus);
                            Page_PopHySetAI.this.btn_minus.removeCallbacks(Page_PopHySetAI.this.mRunBtnTouch);
                            Page_PopHySetAI.this.btn_minus.postDelayed(Page_PopHySetAI.this.mRunBtnTouch, 5L);
                            break;
                        case 1:
                            Log.d("touch", " 11  Pophyset_Btn_minus ACTION_UP  isPlus = " + Page_PopHySetAI.this.isPlus);
                            Page_PopHySetAI.this.showHySet();
                            Page_PopHySetAI.this.btn_minus.removeCallbacks(Page_PopHySetAI.this.mRunBtnTouch);
                            break;
                    }
                    return true;
                }
            });
        }
        this.btn_plus = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset2_plus);
        if (this.btn_plus != null) {
            this.btn_plus.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.8
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopHySetAI.this.isPlus = true;
                            Log.d("hy", " 11  Pophyset_Btn_minus ACTION_DOWN  isPlus = " + Page_PopHySetAI.this.isPlus);
                            Page_PopHySetAI.this.tvHySet.removeCallbacks(Page_PopHySetAI.this.mRunBtnTouch);
                            Page_PopHySetAI.this.tvHySet.postDelayed(Page_PopHySetAI.this.mRunBtnTouch, 5L);
                            return true;
                        case 1:
                            Log.d("hy", " 11  Pophyset_Btn_minus ACTION_UP  isPlus = " + Page_PopHySetAI.this.isPlus);
                            Page_PopHySetAI.this.tvHySet.removeCallbacks(Page_PopHySetAI.this.mRunBtnTouch);
                            Page_PopHySetAI.this.showHySet();
                            return true;
                        case 2:
                        default:
                            return true;
                    }
                }
            });
        }
        if (this.moveView != null) {
            this.iMoveWidth = this.moveView.getWidth();
            this.moveView.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.9
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            float x = event.getX();
                            Page_PopHySetAI.this.textMove((int) x);
                            Log.d("move", " *** moveView ACTION_DOWN  x = " + x + " iMoveWidth = " + Page_PopHySetAI.this.iMoveWidth);
                            break;
                        case 1:
                            Page_PopHySetAI.this.showHySet();
                            Log.d("move", " *** moveView ACTION_UP  x = 0.0 iMoveWidth = " + Page_PopHySetAI.this.iMoveWidth);
                            break;
                        case 2:
                            float x2 = event.getX();
                            Page_PopHySetAI.this.textMove((int) x2);
                            Log.d("move", " *** moveView ACTION_MOVE  x = " + x2);
                            break;
                    }
                    return false;
                }
            });
        }
        showHySet();
    }

    public void showHySet() {
        if (this.set_0 != null) {
            this.set_0.setFocus(this.iHySet == 0);
        }
        if (this.set_1 != null) {
            this.set_1.setFocus((this.iHySet == 0 || this.iHySet == 2000) ? false : true);
        }
        if (this.set_2 != null) {
            this.set_2.setFocus(this.iHySet == 2000);
        }
        if (this.setView != null) {
            this.setView.setVisibility((this.iHySet == 0 || this.iHySet == 2000) ? 8 : 0);
        }
        if (this.tvHySet != null) {
            this.tvHySet.setText(new StringBuilder().append(this.iHySet).toString());
            textMove(SupportMenu.USER_MASK);
            this.tvHySet.removeCallbacks(this.mRunSetHy);
            this.tvHySet.postDelayed(this.mRunSetHy, 500L);
        }
    }

    public void textMove(int iMove) {
        if (this.tvHySet != null) {
            if (this.iMoveWidth == 0 && this.moveView != null) {
                this.iMoveWidth = this.moveView.getWidth();
            }
            if (this.iMoveTxtWidth == 0 && this.tvHySet != null) {
                this.iMoveTxtWidth = this.tvHySet.getWidth();
            }
            Log.d("move1", " 00 ActBt showMenuSel  imove = " + iMove + " iMoveWidth = " + this.iMoveWidth);
            if (this.iMoveWidth == 0 || this.iMoveTxtWidth == 0) {
                this.tvHySet.postDelayed(new Runnable() { // from class: com.syu.bt.page.pop.Page_PopHySetAI.10
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d("move1", " ActBt showMenuSel   iMoveWidth = " + Page_PopHySetAI.this.iMoveWidth);
                        Page_PopHySetAI.this.textMove(SupportMenu.USER_MASK);
                    }
                }, 500L);
                return;
            }
            int moveWidth = this.iMoveWidth - this.iMoveTxtWidth;
            if (iMove == 65535) {
                this.tvHySet.setText(new StringBuilder().append(this.iHySet).toString());
                iMove = (this.iHySet * moveWidth) / 1999;
            } else {
                if (iMove <= 0) {
                    iMove = 0;
                } else if (iMove >= moveWidth) {
                    iMove = moveWidth;
                }
                this.iHySet = (iMove * 1999) / moveWidth;
                if (this.iHySet == 0) {
                    this.iHySet = 1;
                }
                this.tvHySet.setText(new StringBuilder().append(this.iHySet).toString());
            }
            Log.d("move1", " 11 ActBt showMenuSel  imove = " + iMove + " iMoveWidth = " + this.iMoveWidth);
            ObjectAnimator animator = ObjectAnimator.ofFloat(this.tvHySet, "translationX", iMove);
            animator.setDuration(0L);
            animator.start();
        }
    }
}
