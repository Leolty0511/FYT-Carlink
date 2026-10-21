package com.syu.bt.page.pop;

import android.util.Log;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.App_Bt;
import com.syu.bt.util.HanziToPinyin;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopMsg extends MyPage {
    public JText Txt_BtnOk;
    public JText Txt_Content;
    public JText Txt_Content1;

    public Page_PopMsg(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.Txt_Content = (JText) getPage().getChildViewByid(96);
        this.Txt_Content1 = (JText) getPage().getChildViewByid(97);
        this.Txt_BtnOk = (JText) getPage().getChildViewByid(98);
        Log.d("jarr", "  JAVA 33 Page_PopMsg  init ");
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        Log.d("pin", "  JAVA 44 Page_PopMsg  resume pinStatus = " + App_Bt.pinStatus);
        if (this.Txt_Content1 != null) {
            this.Txt_Content1.setVisibility(App_Bt.pinStatus ? 0 : 8);
        }
        if (App_Bt.pinStatus) {
            if (this.Txt_Content != null) {
                this.Txt_Content.setText(String.valueOf(App_Bt.pinPhoneName) + HanziToPinyin.Token.SEPARATOR + App_Bt.getInstance().uiApp.getString("pin_msg"));
            }
            if (this.Txt_Content1 != null) {
                this.Txt_Content1.setText(App_Bt.pinCode);
            }
            if (this.Txt_BtnOk != null) {
                this.Txt_BtnOk.setText(App_Bt.getInstance().uiApp.getString("bt_paring1"));
                return;
            }
            return;
        }
        if (this.Txt_BtnOk != null) {
            this.Txt_BtnOk.setText(App_Bt.getInstance().uiApp.getString("yes"));
        }
        if (this.Txt_Content != null) {
            this.Txt_Content.setText(App_Bt.getInstance().uiApp.getString("bt_ai8"));
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        Log.d("jarr", "  JAVA 44 Page_PopMsg  ResponseClick id = " + id);
        switch (id) {
            case 99:
                Log.d("pin", " *** PopMsg_Btn_Ok  App_Bt.pinStatus = " + App_Bt.pinStatus);
                if (App_Bt.pinStatus) {
                    App_Bt.pinStatus = false;
                    Bt.PROXY.cmd(69, new int[]{1}, (float[]) null, (String[]) null);
                } else {
                    Main.PROXY.cmd(19, new int[]{1}, (float[]) null, (String[]) null);
                }
                App_Bt.getInstance().popMsgSet(false);
                break;
            case 100:
                Log.d("pin", " *** PopMsg_Btn_Cancel  App_Bt.pinStatus = " + App_Bt.pinStatus);
                if (App_Bt.pinStatus) {
                    App_Bt.pinStatus = false;
                    Bt.PROXY.cmd(69, new int[1], (float[]) null, (String[]) null);
                } else {
                    App_Bt.bNotRestart = true;
                }
                App_Bt.getInstance().popMsgSet(false);
                break;
        }
    }
}
