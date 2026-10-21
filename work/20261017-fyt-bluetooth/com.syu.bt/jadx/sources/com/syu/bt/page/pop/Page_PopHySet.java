package com.syu.bt.page.pop;

import android.os.SystemProperties;
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
public class Page_PopHySet extends MyPage {
    Act_Bt actBt;
    JButton btn_minus;
    JButton btn_plus;
    public int iHySet;
    boolean isPlus;
    private Runnable mRunBtnTouch;
    private Runnable mRunSetHy;
    JText tvHySet;

    public Page_PopHySet(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.iHySet = 0;
        this.isPlus = true;
        this.mRunBtnTouch = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopHySet.1
            @Override // java.lang.Runnable
            public void run() {
                if (Page_PopHySet.this.isPlus) {
                    Page_PopHySet.this.iHySet += 10;
                    if (Page_PopHySet.this.iHySet > 2000) {
                        Page_PopHySet.this.iHySet = 2000;
                    }
                } else {
                    Page_PopHySet.this.iHySet -= 10;
                    if (Page_PopHySet.this.iHySet < 0) {
                        Page_PopHySet.this.iHySet = 0;
                    }
                }
                if (Page_PopHySet.this.tvHySet != null) {
                    Page_PopHySet.this.tvHySet.setText(new StringBuilder().append(Page_PopHySet.this.iHySet).toString());
                }
                Page_PopHySet.this.tvHySet.postDelayed(Page_PopHySet.this.mRunBtnTouch, 200L);
            }
        };
        this.mRunSetHy = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopHySet.2
            @Override // java.lang.Runnable
            public void run() {
                SystemProperties.set("persist.btaec.delay", new StringBuilder().append(Page_PopHySet.this.iHySet).toString());
                SyuJniNative.getInstance().syu_jni_command(253, null, null);
                Bt_IpcObj.dial("#*" + Page_PopHySet.this.iHySet);
            }
        };
        this.actBt = actBt;
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopHySet);
        this.tvHySet = (JText) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset_Txt);
        this.iHySet = SystemProperties.getInt("persist.btaec.delay", 0);
        showHySet();
        Log.d("hy", " 00 Page_PopHySet init ");
        this.btn_minus = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset_Btn_minus);
        if (this.btn_minus != null) {
            this.btn_minus.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopHySet.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopHySet.this.isPlus = false;
                            Log.d("touch", " 11  Pophyset_Btn_minus ACTION_DOWN  isPlus = " + Page_PopHySet.this.isPlus);
                            Page_PopHySet.this.btn_minus.removeCallbacks(Page_PopHySet.this.mRunBtnTouch);
                            Page_PopHySet.this.btn_minus.postDelayed(Page_PopHySet.this.mRunBtnTouch, 5L);
                            break;
                        case 1:
                            Log.d("touch", " 11  Pophyset_Btn_minus ACTION_UP  isPlus = " + Page_PopHySet.this.isPlus);
                            Page_PopHySet.this.showHySet();
                            Page_PopHySet.this.btn_minus.removeCallbacks(Page_PopHySet.this.mRunBtnTouch);
                            break;
                    }
                    return true;
                }
            });
        }
        this.btn_plus = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pophyset_Btn_plus);
        if (this.btn_plus != null) {
            this.btn_plus.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopHySet.4
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                            Page_PopHySet.this.isPlus = true;
                            Log.d("hy", " 11  Pophyset_Btn_minus ACTION_DOWN  isPlus = " + Page_PopHySet.this.isPlus);
                            Page_PopHySet.this.tvHySet.removeCallbacks(Page_PopHySet.this.mRunBtnTouch);
                            Page_PopHySet.this.tvHySet.postDelayed(Page_PopHySet.this.mRunBtnTouch, 5L);
                            return true;
                        case 1:
                            Log.d("hy", " 11  Pophyset_Btn_minus ACTION_UP  isPlus = " + Page_PopHySet.this.isPlus);
                            Page_PopHySet.this.tvHySet.removeCallbacks(Page_PopHySet.this.mRunBtnTouch);
                            Page_PopHySet.this.showHySet();
                            return true;
                        case 2:
                        default:
                            return true;
                    }
                }
            });
        }
    }

    public void showHySet() {
        if (this.tvHySet != null) {
            this.tvHySet.setText(new StringBuilder().append(this.iHySet).toString());
        }
        if (this.tvHySet != null) {
            this.tvHySet.removeCallbacks(this.mRunSetHy);
            this.tvHySet.postDelayed(this.mRunSetHy, 500L);
        }
    }
}
