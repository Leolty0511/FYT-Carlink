package com.syu.bt.page.pop;

import android.text.TextUtils;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopPwd extends MyPage {
    Act_Bt actBt;

    public Page_PopPwd(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    void append(String c) {
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.PopPwd_Txt_Pwd);
        if (text != null) {
            String str = ((Object) text.getText()) + c;
            if (str.length() <= 4) {
                text.setText(str);
            }
        }
    }

    void backspace() {
        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.PopPwd_Txt_Pwd);
        if (text != null) {
            String str = text.getText().toString();
            if (!TextUtils.isEmpty(str)) {
                text.setText(str.substring(0, str.length() - 1));
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        Page_Pair IPagePair = null;
        JPage pagePair = this.actBt.ui.getPage(FinalBtCtrl.Page_Pair);
        if (pagePair != null) {
            IPagePair = (Page_Pair) pagePair.getNotify();
        }
        if (IPagePair != null) {
            switch (id) {
                case FinalBtCtrl.PopPwd_Backspace /* 10489 */:
                    backspace();
                    break;
                case FinalBtCtrl.PopPwd_0 /* 10490 */:
                case FinalBtCtrl.PopPwd_1 /* 10491 */:
                case FinalBtCtrl.PopPwd_2 /* 10492 */:
                case FinalBtCtrl.PopPwd_3 /* 10493 */:
                case FinalBtCtrl.PopPwd_4 /* 10494 */:
                case FinalBtCtrl.PopPwd_5 /* 10495 */:
                case FinalBtCtrl.PopPwd_6 /* 10496 */:
                case FinalBtCtrl.PopPwd_7 /* 10497 */:
                case FinalBtCtrl.PopPwd_8 /* 10498 */:
                case FinalBtCtrl.PopPwd_9 /* 10499 */:
                    append(String.format(Locale.US, "%d", Integer.valueOf(id - 10490)));
                    break;
                case FinalBtCtrl.PopPwd_Ok /* 10500 */:
                    if (!TextUtils.isEmpty(Bt_IpcObj.getChoiceAddr())) {
                        getPage().getDialog().dismiss();
                        JText text = (JText) getPage().getChildViewByid(FinalBtCtrl.PopPwd_Txt_Pwd);
                        if (text != null) {
                            if (Main.mConf_PlatForm == 5 || CustomerUtil.is7731()) {
                                BTUtil.getInstance().connect7731OBD(text.getText().toString().getBytes());
                            } else if (CustomerUtil.is7862BuiltInBT()) {
                                BTUtil.getInstance().connect7731OBD(text.getText().toString().getBytes());
                            } else {
                                Bt_IpcObj.connectOBD(String.valueOf(Bt_IpcObj.getChoiceAddr()) + ((Object) text.getText()));
                            }
                        }
                    }
                    break;
            }
        }
    }
}
