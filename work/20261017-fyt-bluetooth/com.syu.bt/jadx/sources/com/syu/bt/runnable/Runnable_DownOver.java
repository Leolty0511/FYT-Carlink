package com.syu.bt.runnable;

import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.ipc.module.main.Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Contact;
import com.syu.bt.page.pop.Page_PopBt_Book;
import com.syu.bt.util.CustomerUtil;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_DownOver implements Runnable {
    Page_Contact page_Contact;

    public Runnable_DownOver(Page_Contact page_Contact) {
        this.page_Contact = page_Contact;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        JPage page;
        Page_PopBt_Book page_PopBt_Book;
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                if (App_Bt.mBtInfo.mListContactDownload.size() <= 0) {
                    if (this.page_Contact != null) {
                        this.page_Contact.endDownload();
                        return;
                    }
                    return;
                } else {
                    App_Bt.mBtInfo.mListContact.clear();
                    Log.d("con3", " 22 RunnableDownOver  mListContact ");
                    App_Bt.mBtInfo.mListContact.addAll(App_Bt.mBtInfo.mListContactDownload);
                    App_Bt.mBtInfo.mListContactDownload.clear();
                }
            } else if (App_Bt.mBtInfo.mListContactDownload2.size() <= 0) {
                if (this.page_Contact != null) {
                    this.page_Contact.endDownload();
                    return;
                }
                return;
            } else {
                Log.d("save11", " 22  mListContact2.clear ");
                App_Bt.mBtInfo.mListContact2.clear();
                App_Bt.mBtInfo.mListContact2.addAll(App_Bt.mBtInfo.mListContactDownload2);
                App_Bt.mBtInfo.mListContactDownload2.clear();
            }
        } else if (App_Bt.mBtInfo.mListContactDownload.size() <= 0) {
            if (this.page_Contact != null) {
                this.page_Contact.endDownload();
                return;
            }
            return;
        } else {
            App_Bt.mBtInfo.mListContact.clear();
            Log.d("con3", " 22 RunnableDownOver  mListContact.addAll ");
            App_Bt.mBtInfo.mListContact.addAll(App_Bt.mBtInfo.mListContactDownload);
            App_Bt.mBtInfo.mListContactDownload.clear();
        }
        App_Bt.mBtInfo.sortContact();
        App_Bt.queryCallLog();
        Log.d("save2", " ** RunDownOver   ");
        if (this.page_Contact != null) {
            this.page_Contact.endDownload();
        }
        if (App_Bt.bAutoDownPhoneBook || App_Bt.bAutoSavePhoneBook) {
            App_Bt.mBtInfo.savePhoneBook();
        }
        if (App_Bt.getInstance().bPopBtBook && (page = App_Bt.getInstance().uiApp.mPages.get(5)) != null && (page_PopBt_Book = (Page_PopBt_Book) page.getNotify()) != null) {
            page_PopBt_Book.queryContacts(Bt.sPhoneNumber);
        }
        if (CustomerUtil.isTZYConfig()) {
            Iterator<SparseArray<String>> it = App_Bt.mBtInfo.mListFavContact.iterator();
            while (it.hasNext()) {
                SparseArray<String> value = it.next();
                if (value != null && TextUtils.isEmpty(value.get(FinalBtCtrl.ContactItem_Txt_Favorite_old))) {
                    it.remove();
                }
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_setContactHead2, false, 1);
            } else {
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteFavContactToFile, false, 1);
            }
        }
        App_Bt.getInstance().updatePhoneName();
    }
}
