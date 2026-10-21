package com.syu.bt.page;

import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.FuncUtils;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_DialItem extends MyPage {
    Act_Bt actBt;

    public Page_DialItem(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JPage pageDial;
        JGridView gridView;
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Dial_Btn_Search /* 10167 */:
                    if (!FuncUtils.isFastDoubleClick() && (pageDial = this.actBt.ui.getPage(10003)) != null && (gridView = (JGridView) pageDial.getChildViewByid(FinalBtCtrl.Dial_SearchListView)) != null) {
                        int position = getPage().getChildTag();
                        SparseArray<String> map = gridView.getList().get(position);
                        String number = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                        Bt_IpcObj.setNum(number);
                        Bt_IpcObj.itemDial(number);
                        break;
                    }
                    break;
            }
        }
    }
}
