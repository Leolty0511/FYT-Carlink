package com.syu.bt.page.pop;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.App_Bt;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopSms extends MyPage {
    JText vInfo;
    JText vNext;
    JText vNumber;
    JText vTime;
    ValueAnimator value;

    public Page_PopSms(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.vTime = (JText) getPage().getChildViewByid(105);
        this.vNumber = (JText) getPage().getChildViewByid(104);
        this.vInfo = (JText) getPage().getChildViewByid(106);
        this.vNext = (JText) getPage().getChildViewByid(108);
        if (this.vTime != null && App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
            this.vTime.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
        }
        if (this.vNumber != null && App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
            this.vNumber.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
        }
        if (this.vInfo != null && App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
            this.vInfo.setTypeface(BTUtil.getTypeFace_Regular(App_Bt.getInstance().uiApp.mContext));
        }
        JText close = (JText) getPage().getChildViewByid(107);
        if (close != null) {
            if (CustomerUtil.isTZYConfig()) {
                close.setText(App_Bt.getInstance().uiApp.getString("bt_always"));
            } else {
                close.setText(App_Bt.getInstance().uiApp.getString("bt_closed"));
            }
        }
    }

    public void updateSms(String number, String info) {
        if (this.vTime != null) {
            if (this.value == null) {
                this.value = ValueAnimator.ofInt(1000, 0);
                this.value.setInterpolator(new TimeInterpolator() { // from class: com.syu.bt.page.pop.Page_PopSms.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float arg0) {
                        return arg0;
                    }
                });
                this.value.setDuration(20000L);
                this.value.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.syu.bt.page.pop.Page_PopSms.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator arg0) {
                        int cur = ((Integer) arg0.getAnimatedValue()).intValue() + 99;
                        if (cur <= 119) {
                            Page_PopSms.this.vTime.setText(String.valueOf(cur / 120) + "s");
                        } else {
                            Page_PopSms.this.vTime.setText(String.valueOf(cur / 100) + "s");
                        }
                        if (cur <= 100) {
                            if (App_Bt.myHandle.size() > 0) {
                                Page_PopSms.this.value.cancel();
                                App_Bt.handleSMS = App_Bt.myHandle.get(App_Bt.myHandle.size() - 1);
                                App_Bt.myHandle.remove(App_Bt.handleSMS);
                                App_Bt.getInstance().mIpcObj.requestSMS(App_Bt.handleSMS);
                                return;
                            }
                            App_Bt.getInstance().popPhoneSMS(false);
                        }
                    }
                });
            }
            this.value.cancel();
            this.value.start();
        }
        if (this.vNumber != null) {
            this.vNumber.setText(number);
        }
        if (this.vInfo != null) {
            this.vInfo.setLineSpacing(0.0f, 1.2f);
            this.vInfo.setText(info);
        }
        updateSmsNum();
    }

    public void updateSmsNum() {
        if (this.vNext != null) {
            this.vNext.setText(String.format(App_Bt.getInstance().uiApp.getString("bt_next"), Integer.valueOf(App_Bt.myHandle.size())));
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) throws Throwable {
        int id = v.getId();
        switch (id) {
            case 109:
                if (App_Bt.myHandle.size() > 0) {
                    if (this.value != null) {
                        this.value.cancel();
                    }
                    App_Bt.handleSMS = App_Bt.myHandle.get(App_Bt.myHandle.size() - 1);
                    App_Bt.myHandle.remove(App_Bt.handleSMS);
                    App_Bt.getInstance().mIpcObj.requestSMS(App_Bt.handleSMS);
                }
                break;
            case 110:
                if (this.value != null) {
                    this.value.cancel();
                }
                App_Bt.myHandle.clear();
                App_Bt.getInstance().popPhoneSMS(false);
                App_Bt.bSms_Ctrl = false;
                App_Bt.getInstance().mySharePreference2.saveBooleanValue("sms_function", App_Bt.bSms_Ctrl);
                break;
            case 111:
                if (this.value != null) {
                    this.value.cancel();
                }
                App_Bt.myHandle.clear();
                App_Bt.getInstance().popPhoneSMS(false);
                break;
        }
    }
}
