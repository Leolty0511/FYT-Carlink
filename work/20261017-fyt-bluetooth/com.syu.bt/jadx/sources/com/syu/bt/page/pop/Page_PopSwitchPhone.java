package com.syu.bt.page.pop;

import android.util.Log;
import android.view.View;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopSwitchPhone extends MyPage {
    int iPhone_id;
    JButton mBtnAccept;
    JView mIconTitle;
    public Runnable mRunnable_mIconTitle;
    JText mTxtName;
    JText mTxtTitle;

    public Page_PopSwitchPhone(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
        this.iPhone_id = 0;
        this.mRunnable_mIconTitle = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopSwitchPhone.1
            @Override // java.lang.Runnable
            public void run() {
                if (Page_PopSwitchPhone.this.mIconTitle != null) {
                    Page_PopSwitchPhone.this.mIconTitle.setBackground(Page_PopSwitchPhone.this.getPage().getDrawableFromPath(Page_PopSwitchPhone.this.iPhone_id == 0 ? "bt_phone_icon_p1" : "bt_phone_icon_p2", Page_PopSwitchPhone.this.getPage().mDrawables, Page_PopSwitchPhone.this.getPage().mDrawables));
                }
            }
        };
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        super.init();
        this.mTxtTitle = (JText) getPage().getChildViewByid(85);
        this.mIconTitle = (JView) getPage().getChildViewByid(88);
        this.mTxtName = (JText) getPage().getChildViewByid(84);
        this.mBtnAccept = (JButton) getPage().getChildViewByid(86);
    }

    public void updateBtnAccept() {
        String str;
        if (!Ipc_New.isMerger() && this.mBtnAccept != null) {
            MyUiItem item = (MyUiItem) this.mBtnAccept.getTag();
            if (item.getParaStr() != null) {
                if (App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id == 0 ? (char) 1 : (char) 0] == 5) {
                    str = item.getStrDrawable();
                } else {
                    str = item.getParaStr()[0];
                }
                Log.d("sfth", " 1-1 PagePopSwitch  bPhone2_HFP =" + App_Bt.bPhone2_HFP[App_Bt.sPhone_callin_id == 0 ? (char) 1 : (char) 0] + " str" + str);
                if (this.mBtnAccept.getStrDrawable() != str && str != null) {
                    this.mBtnAccept.setStrDrawable(str, true);
                }
            }
        }
    }

    public void updatePhoneName() {
        if (!Ipc_New.isMerger() && this.mTxtName != null) {
            this.iPhone_id = App_Bt.sPhone_callin_id == 0 ? 1 : 0;
            Main.removeRunnable_Ui(this.mRunnable_mIconTitle);
            Main.postRunnable_Ui(false, this.mRunnable_mIconTitle, 500L);
            String strPhone = App_Bt.sPhone2_CALL_NUMBER[this.iPhone_id];
            this.mTxtName.setText(strPhone);
            if (this.mTxtTitle != null) {
                this.mTxtTitle.setText(App_Bt.sPhone2_NAME[this.iPhone_id]);
            }
            Log.d("pop333", " 000 PagePopSwitch  updatePhoneNamestrPhone =" + strPhone + " iPhone_id = " + this.iPhone_id + "  App_Bt.sPhone_callin_id = " + App_Bt.sPhone_callin_id);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        updatePhoneName();
        updateBtnAccept();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        switch (id) {
            case 86:
                this.iPhone_id = App_Bt.sPhone_callin_id == 0 ? 1 : 0;
                Log.d("pop3", " 000 PagePopSwitch  KEY_DIAL bPhone2_HFP" + App_Bt.bPhone2_HFP[0] + " , " + App_Bt.bPhone2_HFP[1]);
                Log.d("pop3", " 000 PagePopSwitch  KEY_DIAL sPhone2_MAC" + App_Bt.sPhone2_MAC[0] + " , " + App_Bt.sPhone2_MAC[1] + " iPhone_id" + this.iPhone_id);
                if (App_Bt.bPhone2_HFP[this.iPhone_id] == 5) {
                    Bt.PROXY.cmd(6, new int[1], (float[]) null, new String[]{App_Bt.sPhone2_MAC[this.iPhone_id]});
                }
                Bt.PROXY.cmd(65);
                Log.d("sfth", " 111 PagePop3  Pop3rdPhone_Btn_Accept ");
                break;
            case 87:
                Log.d("sfth2", " 000 PagePopSwitch  KEY_HANG sPhone2_MAC" + App_Bt.sPhone2_MAC[this.iPhone_id]);
                Bt.PROXY.cmd(6, new int[]{1}, (float[]) null, new String[]{App_Bt.sPhone2_MAC[this.iPhone_id]});
                App_Bt.getInstance().popSwitchPhone(false);
                break;
        }
    }
}
