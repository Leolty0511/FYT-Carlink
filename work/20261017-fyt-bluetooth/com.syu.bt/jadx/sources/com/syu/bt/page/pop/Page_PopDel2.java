package com.syu.bt.page.pop;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Pair;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopDel2 extends MyPage {
    Act_Bt actGrid;

    public Page_PopDel2(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actGrid = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JGridView gridView;
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.PopDel_Btn_Ok /* 10485 */:
                try {
                    JPage page_Pair = this.actGrid.ui.getPage(FinalBtCtrl.Page_Pair);
                    if (page_Pair != null && (gridView = (JGridView) page_Pair.getChildViewByid(FinalBtCtrl.Paired_ListView)) != null) {
                        Log.d("gdy6", " 05 PopDel_Btn_Ok actBt.Sel_Id = " + Act_Bt.Sel_Id + "  mListHasPaired.size = " + App_Bt.mBtInfo.mListHasPaired.size());
                        SparseArray<String> map = gridView.getList().get(Act_Bt.Sel_Id);
                        String addr = map.get(FinalBtCtrl.PairedItem_Txt_Addr);
                        Bt_IpcObj.deleteConnectedDevice(addr);
                        App_Bt.mBtInfo.mListHasPaired.remove(map);
                        Log.d("gdy6", " 06 PopDel_Btn_Ok actBt.str_addr = " + addr + "  mListHasPaired.size = " + App_Bt.mBtInfo.mListHasPaired.size());
                        Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
                        App_Bt.getInstance().mIpcObj.queryPairList();
                        if (Bt_IpcObj.isConnect() && addr.equals(Bt.sPhoneAddr)) {
                            Bt_IpcObj.cut();
                        }
                        Page_Pair page = this.actGrid.getPagePair();
                        if (page != null) {
                            page.refreshPairedList();
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                getPage().getDialog().dismiss();
                break;
            case FinalBtCtrl.PopDel_Btn_Cancel /* 10486 */:
                getPage().getDialog().dismiss();
                break;
        }
    }
}
