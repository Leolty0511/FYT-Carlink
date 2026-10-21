package com.syu.bt.page.pop;

import android.os.SystemProperties;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Set;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopMSBC extends MyPage {
    Act_Bt actBt;
    JButton btn_msbc0;
    JButton btn_msbc1;
    public int iMsbc;
    private Runnable mRunDismiss;
    private Runnable mRunSetMsbc;

    public Page_PopMSBC(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.iMsbc = 0;
        this.mRunSetMsbc = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopMSBC.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                SystemProperties.set("persist.blinkbt.msbc", new StringBuilder().append(Page_PopMSBC.this.iMsbc).toString());
                Page_Set.updateMsbc();
            }
        };
        this.mRunDismiss = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopMSBC.2
            @Override // java.lang.Runnable
            public void run() {
                Page_PopMSBC.this.getPage().getDialog().dismiss();
            }
        };
        this.actBt = actBt;
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopMSBC);
        this.iMsbc = SystemProperties.getInt("persist.blinkbt.msbc", 0);
        Log.d("pop", " 00 Page_PopMSBC init iMsbc = " + this.iMsbc);
        this.btn_msbc0 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Msbc0);
        if (this.btn_msbc0 != null) {
            this.btn_msbc0.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopMSBC.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopMSBC.this.iMsbc = 0;
                            Page_PopMSBC.this.showMsbcSet();
                            Page_PopMSBC.this.getPage().getDialog().dismiss();
                            break;
                    }
                    return true;
                }
            });
        }
        this.btn_msbc1 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Msbc1);
        if (this.btn_msbc1 != null) {
            this.btn_msbc1.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopMSBC.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopMSBC.this.iMsbc = 1;
                            Page_PopMSBC.this.showMsbcSet();
                            Page_PopMSBC.this.getPage().getDialog().dismiss();
                        case 0:
                        case 2:
                        default:
                            return true;
                    }
                }
            });
        }
        showMsbcSet();
        if (this.btn_msbc0 != null) {
            this.btn_msbc0.postDelayed(this.mRunDismiss, 5000L);
        }
    }

    public void showMsbcSet() {
        Log.d("pop", " 11 showMsbcSet iMsbc = " + this.iMsbc);
        if (this.btn_msbc0 != null) {
            this.btn_msbc0.setFocus(this.iMsbc == 0);
        }
        if (this.btn_msbc1 != null) {
            this.btn_msbc1.setFocus(this.iMsbc == 1);
            Log.d("pop", " 22 showMsbcSet iMsbc = " + this.iMsbc);
        }
        if (this.btn_msbc0 != null) {
            this.btn_msbc0.removeCallbacks(this.mRunSetMsbc);
            this.btn_msbc0.postDelayed(this.mRunSetMsbc, 500L);
        }
    }
}
