package com.syu.bt.page;

import android.app.Dialog;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
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
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_FavoriteItem extends MyPage {
    Act_Bt actBt;
    JView vHead;

    public Page_FavoriteItem(JPage page, final Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
        this.vHead = (JView) getPage().getChildViewByid(FinalBtCtrl.ContactItem_Head);
        if (this.vHead != null) {
            this.vHead.setOnClickListener(new View.OnClickListener() { // from class: com.syu.bt.page.Page_FavoriteItem.1
                @Override // android.view.View.OnClickListener
                public void onClick(View arg0) {
                    JGridView gridView;
                    if (!FuncUtils.isFastDoubleClick()) {
                        JPage pageFavorite = actBt.ui.getPage(FinalBtCtrl.Page_Favorite);
                        if (pageFavorite != null && (gridView = (JGridView) pageFavorite.getChildViewByid(FinalBtCtrl.Favorite_ListView)) != null) {
                            SparseArray<String> map = gridView.getList().get(Page_FavoriteItem.this.getPage().getChildTag());
                            App_Bt.mIcoNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                        }
                        Page_FavoriteItem.this.popBtHead();
                    }
                }
            });
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

    /* JADX WARN: Code duplicated, block: B:56:0x0154  */
    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        JGridView gridView;
        JPage pageFavorite;
        JGridView gridView2;
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.ContactItem_Btn_Dial /* 10279 */:
                    if (!FuncUtils.isFastDoubleClick() && (pageFavorite = this.actBt.ui.getPage(FinalBtCtrl.Page_Favorite)) != null && (gridView2 = (JGridView) pageFavorite.getChildViewByid(FinalBtCtrl.Contact_ListView)) != null) {
                        int position = getPage().getChildTag();
                        Bt_IpcObj.itemDial(gridView2.getList().get(position).get(FinalBtCtrl.ContactItem_Txt_Number));
                        break;
                    }
                    break;
                case FinalBtCtrl.GridItem_Add2Favorite /* 10280 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        boolean saveFlag = true;
                        JPage pageFavorite2 = this.actBt.ui.getPage(FinalBtCtrl.Page_Favorite);
                        if (pageFavorite2 != null && (gridView = (JGridView) pageFavorite2.getChildViewByid(FinalBtCtrl.Favorite_ListView)) != null) {
                            int position2 = getPage().getChildTag();
                            SparseArray<String> map = gridView.getList().get(position2);
                            String isFav = map.get(FinalBtCtrl.ContactItem_Txt_Favorite);
                            if (!TextUtils.isEmpty(isFav)) {
                                if (isFav.equals("collect")) {
                                    map.put(FinalBtCtrl.ContactItem_Txt_Favorite, FinalChip.BSP_PLATFORM_Null);
                                    for (SparseArray<String> value : App_Bt.mBtInfo.mListFavContact) {
                                        if (value != null && value.get(FinalBtCtrl.ContactItem_Txt_Number).equals(map.get(FinalBtCtrl.ContactItem_Txt_Number)) && value.get(FinalBtCtrl.ContactItem_Txt_Name).equals(map.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                                            App_Bt.mBtInfo.mListFavContact.remove(value);
                                        }
                                    }
                                }
                            } else {
                                boolean isExist = false;
                                if (CustomerUtil.isTZYConfig() && App_Bt.mBtInfo.mListFavContact.size() >= 6) {
                                    saveFlag = false;
                                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_save_number"));
                                }
                                if (saveFlag) {
                                    map.put(FinalBtCtrl.ContactItem_Txt_Favorite, "collect");
                                    for (SparseArray<String> value2 : App_Bt.mBtInfo.mListFavContact) {
                                        if (value2 != null && value2.get(FinalBtCtrl.ContactItem_Txt_Number).equals(map.get(FinalBtCtrl.ContactItem_Txt_Number)) && value2.get(FinalBtCtrl.ContactItem_Txt_Name).equals(map.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                                            isExist = true;
                                            if (!isExist) {
                                                App_Bt.mBtInfo.mListFavContact.add(map);
                                            }
                                        }
                                    }
                                    if (!isExist) {
                                        App_Bt.mBtInfo.mListFavContact.add(map);
                                    }
                                }
                            }
                            this.actBt.getPageFavorite().notifyDataSetChanged();
                            if (saveFlag) {
                                if (CustomerUtil.isYFConfig() || CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920") || App_Bt.bFavcontact) {
                                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteFavContactToFile, false, 1);
                                }
                            }
                            break;
                        }
                    }
                    break;
            }
        }
    }
}
