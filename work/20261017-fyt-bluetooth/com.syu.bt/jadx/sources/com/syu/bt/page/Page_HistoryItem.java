package com.syu.bt.page;

import android.app.Dialog;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_HistoryItem extends MyPage {
    Act_Bt actBt;
    JView vHead;

    public Page_HistoryItem(JPage page, final Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
        this.vHead = (JView) getPage().getChildViewByid(FinalBtCtrl.ContactItem_Head);
        if (this.vHead != null) {
            this.vHead.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.Page_HistoryItem.1
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    JGridView gridView;
                    if (!FuncUtils.isFastDoubleClick()) {
                        JPage pageContact = actBt.ui.getPage(FinalBtCtrl.Page_History);
                        if (pageContact != null && (gridView = (JGridView) pageContact.getChildViewByid(FinalBtCtrl.History_ListView)) != null) {
                            SparseArray<String> map = gridView.getList().get(Page_HistoryItem.this.getPage().getChildTag());
                            App_Bt.mIcoNumber = map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim();
                        }
                        Page_HistoryItem.this.popBtHead();
                    }
                }
            });
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JPage pageHistory;
        JGridView gridView;
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.HistoryItem_Btn_Dial /* 10302 */:
                    if (!FuncUtils.isFastDoubleClick() && (pageHistory = this.actBt.ui.getPage(FinalBtCtrl.Page_History)) != null && (gridView = (JGridView) pageHistory.getChildViewByid(FinalBtCtrl.History_ListView)) != null) {
                        int position = getPage().getChildTag();
                        SparseArray<String> map = gridView.getList().get(position);
                        Bt_IpcObj.itemDial(map.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        break;
                    }
                    break;
            }
        }
    }

    public void popBtHead() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtHead, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && !popDlg.isShowing()) {
            popDlg.show();
        }
    }

    public void dismissPopBtHead() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopBtHead, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null && popDlg.isShowing()) {
            popDlg.dismiss();
        }
    }
}
