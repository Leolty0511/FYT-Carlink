package com.syu.bt.runnable;

import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JGridView;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Contact;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_ContactNew implements Runnable {
    SparseArray<String> map;
    Page_Contact page_Contact;

    public Runnable_ContactNew(SparseArray<String> map, Page_Contact page_Contact) {
        this.map = map;
        this.page_Contact = page_Contact;
    }

    @Override // java.lang.Runnable
    public void run() {
        App_Bt.iDownloadCnt++;
        Log.d("save", " 111 RunnableContNew  mListContact.add map = " + this.map.toString() + "  sPhone2_id = " + App_Bt.sPhone2_id + " iDownloadCnt = " + App_Bt.iDownloadCnt);
        if (!App_Bt.bLinkTwoPhone || App_Bt.sPhone2_id == 0) {
            App_Bt.mBtInfo.mListContact.add(this.map);
        } else {
            this.map.get(FinalBtCtrl.ContactItem_Txt_Name);
            App_Bt.mBtInfo.mListContact2.add(this.map);
        }
        if (this.page_Contact != null) {
            MyApplication.add((JGridView) this.page_Contact.getPage().getChildViewByid(FinalBtCtrl.Contact_ListView), this.map);
            this.page_Contact.setContactNum(Integer.toString(App_Bt.iDownloadCnt));
        }
    }
}
