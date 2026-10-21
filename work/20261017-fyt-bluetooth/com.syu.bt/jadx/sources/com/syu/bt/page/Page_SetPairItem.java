package com.syu.bt.page;

import android.app.Dialog;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;

/* JADX INFO: loaded from: classes.dex */
public class Page_SetPairItem extends MyPage {
    Act_Bt actBt;

    public Page_SetPairItem(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JPage pageSet;
        JGridView gridView;
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.SetPairItem_Btn_Link /* 10482 */:
                if (!FuncUtils.isFastDoubleClick() && (pageSet = this.actBt.ui.getPage(FinalBtCtrl.Page_Set)) != null && (gridView = (JGridView) pageSet.getChildViewByid(FinalBtCtrl.SetPair_ListView)) != null) {
                    int position = getPage().getChildTag();
                    SparseArray<String> map = gridView.getList().get(position);
                    String addr = map.get(FinalBtCtrl.SetPairItem_Txt_Addr);
                    Bt_IpcObj.setChoiceAddr(addr);
                    App_Bt.getInstance().mIpcObj.FuncPairLink(this);
                    break;
                }
                break;
        }
    }

    public SparseArray<String> getChoiceName(String mChoiceAddr) {
        if (App_Bt.mBtInfo.mListSetPair != null) {
            for (SparseArray<String> entity : App_Bt.mBtInfo.mListSetPair) {
                if (!TextUtils.isEmpty(entity.get(FinalBtCtrl.SetPairItem_Txt_Addr)) && entity.get(FinalBtCtrl.SetPairItem_Txt_Addr).equals(mChoiceAddr)) {
                    return entity;
                }
            }
        }
        return null;
    }

    public void popPwd() {
        Dialog popDlg = this.actBt.ui.getPopDlg(FinalBtCtrl.Page_PopPinPwd, FinalChip.BSP_PLATFORM_Null, true);
        if (popDlg != null) {
            popDlg.show();
        }
    }
}
