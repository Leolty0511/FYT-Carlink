package com.syu.bt.page.pop;

import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Set;
import com.syu.bt.util.FileHandler;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBtRing extends MyPage {
    Act_Bt actBt;
    public List<SparseArray<String>> listFile;
    JGridView mGridView;
    JText mTip;

    public Page_PopBtRing(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.listFile = new ArrayList();
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mTip = (JText) getPage().getChildViewByid(FinalBtCtrl.PopBtRing_Txt_State);
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.PopBtRing_ListView);
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadFactoryTest, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBtRing.1
            @Override // java.lang.Runnable
            public void run() {
                FileHandler.getInstance().scanFile("/mnt/sdcard/btring/", Page_PopBtRing.this.listFile);
                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBtRing.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Page_PopBtRing.this.listFile.size() > 0) {
                            MyApplication.resetList(Page_PopBtRing.this.mGridView, Page_PopBtRing.this.listFile);
                        } else if (Page_PopBtRing.this.mTip != null) {
                            Page_PopBtRing.this.mTip.setVisibility(0);
                        }
                    }
                });
            }
        }, false, 1);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onDismiss() {
        super.onDismiss();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.PopBtRing_ListView /* 10504 */:
                View viewContent = page.getChildViewByid(FinalBtCtrl.PopBtRingItem_Content);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        page.setFocus(false);
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        int position = gridView.getPosition();
        switch (id) {
            case FinalBtCtrl.PopBtRing_ListView /* 10504 */:
                if (this.listFile.size() > position) {
                    final String file = this.listFile.get(position).get(FinalBtCtrl.PopBtRingItem_Txt_PathName);
                    final String fileName = this.listFile.get(position).get(FinalBtCtrl.PopBtRingItem_Txt_Name);
                    if (!TextUtils.isEmpty(file)) {
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadFactoryTest, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBtRing.2
                            @Override // java.lang.Runnable
                            public void run() throws Throwable {
                                FileHandler.getInstance().copy(file, "/mnt/sdcard/.btring/ring.mp3", false, false);
                                if (fileName.contains("/mnt/sdcard/.btring/")) {
                                    ToastUtil.getInstance().showMessage(String.valueOf(fileName.replace("/mnt/sdcard/.btring/", FinalChip.BSP_PLATFORM_Null)) + App_Bt.getInstance().uiApp.getString("bt_add_successed"));
                                } else {
                                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_add_successed"));
                                }
                                App_Bt.getInstance().mySharePreference2.saveStringValue("name_ring", fileName);
                                final String str = fileName;
                                Main.postRunnable_Ui(false, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBtRing.2.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Page_Set pageSet = Page_PopBtRing.this.actBt.getPageSet();
                                        if (pageSet != null) {
                                            pageSet.updateRingName(str);
                                        }
                                    }
                                });
                            }
                        }, false, 1);
                    }
                }
                break;
        }
    }
}
