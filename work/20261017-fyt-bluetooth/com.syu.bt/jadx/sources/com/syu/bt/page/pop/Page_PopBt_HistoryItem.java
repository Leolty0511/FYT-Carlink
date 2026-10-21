package com.syu.bt.page.pop;

import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.FuncUtils;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBt_HistoryItem extends MyPage {
    public Page_PopBt_HistoryItem(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JPage pagePopBook;
        Page_PopBt_Book page_PopBt_Book;
        int id = v.getId();
        switch (id) {
            case 99:
                if (!FuncUtils.isFastDoubleClick() && (pagePopBook = this.uiApp.mPages.get(5)) != null && (page_PopBt_Book = (Page_PopBt_Book) pagePopBook.getNotify()) != null && page_PopBt_Book.mGridHistory != null) {
                    int position = getPage().getChildTag();
                    SparseArray<String> map = page_PopBt_Book.mGridHistory.getList().get(position);
                    Bt_IpcObj.itemDial(map.get(FinalBtCtrl.HistoryItem_Txt_Num));
                    break;
                }
                break;
        }
    }
}
