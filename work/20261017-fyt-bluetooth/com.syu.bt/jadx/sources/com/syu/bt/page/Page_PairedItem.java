package com.syu.bt.page;

import android.text.TextUtils;
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
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_PairedItem extends MyPage {
    Act_Bt actGrid;

    public Page_PairedItem(JPage page, Act_Bt actGrid) {
        super(page, App_Bt.getInstance().uiApp);
        this.actGrid = actGrid;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JGridView gridView;
        SparseArray<String> map;
        JPage page_Pair1;
        JGridView gridView2;
        SparseArray<String> map2;
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.PairedItem_Delete /* 10473 */:
            case FinalBtCtrl.PairedItem_Delete1 /* 10474 */:
                Log.d("gdy1", " 22 PairedItem_Delete1 = " + App_Bt.mColorType);
                JPage page_Pair = this.actGrid.ui.getPage(FinalBtCtrl.Page_Pair);
                if (page_Pair != null && (gridView = (JGridView) page_Pair.getChildViewByid(FinalBtCtrl.Paired_ListView)) != null && (map = gridView.getList().get(getPage().getChildTag())) != null) {
                    String addr = map.get(FinalBtCtrl.PairedItem_Txt_Addr);
                    if (!TextUtils.isEmpty(addr)) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                            this.actGrid.popDeleteContacts2(map.get(FinalBtCtrl.PairedItem_Txt_Name), addr, getPage().getChildTag());
                        } else {
                            Bt_IpcObj.deleteConnectedDevice(addr);
                            App_Bt.mBtInfo.mListHasPaired.remove(map);
                            Bt_IpcObj.setChoiceAddr(FinalChip.BSP_PLATFORM_Null);
                            if (Bt_IpcObj.isConnect() && addr.equals(Bt.sPhoneAddr)) {
                                Bt_IpcObj.cut();
                            }
                            Page_Pair page = this.actGrid.getPagePair();
                            if (page != null) {
                                page.refreshPairedList();
                            }
                        }
                    }
                    break;
                }
                break;
            case FinalBtCtrl.PairedItem_Btav /* 10475 */:
                if (App_Bt.bLinkTwoPhone && (page_Pair1 = this.actGrid.ui.getPage(FinalBtCtrl.Page_Pair)) != null && (gridView2 = (JGridView) page_Pair1.getChildViewByid(FinalBtCtrl.Paired_ListView)) != null && (map2 = gridView2.getList().get(getPage().getChildTag())) != null) {
                    String addr2 = map2.get(FinalBtCtrl.PairedItem_Txt_Addr);
                    if (!TextUtils.isEmpty(addr2)) {
                        Log.d("a2dp", " 111 PairedItem_Btav addr = " + addr2);
                        Bt.PROXY.cmd(62, (int[]) null, (float[]) null, new String[]{addr2});
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("btav_phone"));
                    }
                    break;
                }
                break;
        }
    }
}
