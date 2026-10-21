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
public class Page_PopCODEC extends MyPage {
    Act_Bt actBt;
    JButton btn_codec0;
    JButton btn_codec1;
    JButton btn_codec2;
    JButton btn_codec3;
    public int iCodec;
    private Runnable mRunDismiss;
    private Runnable mRunSetCodec;

    public Page_PopCODEC(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.iCodec = 0;
        this.mRunSetCodec = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopCODEC.1
            @Override // java.lang.Runnable
            public void run() {
                SystemProperties.set("persist.blinkbt.a2dp.codec", new StringBuilder().append(Page_PopCODEC.this.iCodec).toString());
                Page_Set.updateCodec();
            }
        };
        this.mRunDismiss = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopCODEC.2
            @Override // java.lang.Runnable
            public void run() {
                Page_PopCODEC.this.getPage().getDialog().dismiss();
            }
        };
        this.actBt = actBt;
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopCODEC);
        this.iCodec = SystemProperties.getInt("persist.blinkbt.a2dp.codec", 0);
        Log.d("hy", " 00 Page_PopHySet init iCodec = " + this.iCodec);
        this.btn_codec0 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Codec0);
        if (this.btn_codec0 != null) {
            this.btn_codec0.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopCODEC.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopCODEC.this.iCodec = 0;
                            Page_PopCODEC.this.showCodec();
                            Page_PopCODEC.this.getPage().getDialog().dismiss();
                            break;
                    }
                    return true;
                }
            });
        }
        this.btn_codec1 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Codec1);
        if (this.btn_codec1 != null) {
            this.btn_codec1.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopCODEC.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopCODEC.this.iCodec = 1;
                            Page_PopCODEC.this.showCodec();
                            Page_PopCODEC.this.getPage().getDialog().dismiss();
                        case 0:
                        case 2:
                        default:
                            return true;
                    }
                }
            });
        }
        this.btn_codec2 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Codec2);
        if (this.btn_codec2 != null) {
            this.btn_codec2.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopCODEC.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopCODEC.this.iCodec = 2;
                            Page_PopCODEC.this.showCodec();
                            Page_PopCODEC.this.getPage().getDialog().dismiss();
                            break;
                    }
                    return true;
                }
            });
        }
        this.btn_codec3 = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_Codec3);
        if (this.btn_codec3 != null) {
            this.btn_codec3.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopCODEC.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 1:
                            Page_PopCODEC.this.iCodec = 3;
                            Page_PopCODEC.this.showCodec();
                            Page_PopCODEC.this.getPage().getDialog().dismiss();
                            break;
                    }
                    return true;
                }
            });
        }
        showCodec();
        if (this.btn_codec0 != null) {
            this.btn_codec0.postDelayed(this.mRunDismiss, 5000L);
        }
    }

    public void showCodec() {
        Log.d("pop", " 11 showCodec iCodec = " + this.iCodec);
        if (this.btn_codec0 != null) {
            this.btn_codec0.setFocus(this.iCodec == 0);
        }
        if (this.btn_codec1 != null) {
            this.btn_codec1.setFocus(this.iCodec == 1);
        }
        if (this.btn_codec2 != null) {
            this.btn_codec2.setFocus(this.iCodec == 2);
        }
        if (this.btn_codec3 != null) {
            this.btn_codec3.setFocus(this.iCodec == 3);
        }
        if (this.btn_codec0 != null) {
            this.btn_codec0.removeCallbacks(this.mRunSetCodec);
            this.btn_codec0.postDelayed(this.mRunSetCodec, 500L);
        }
    }
}
