package com.syu.bt.runnable;

import android.util.SparseArray;
import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.App_Bt;
import com.syu.bt.page.Page_Contact;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_UBook implements Runnable {
    List<SparseArray<String>> listContact;
    List<SparseArray<String>> listContactDownload;
    String name;
    String number;
    Page_Contact page_Contact;

    public Runnable_UBook(String name, String number, List<SparseArray<String>> listContact, List<SparseArray<String>> listContactDownload, Page_Contact page_Contact) {
        this.name = name;
        this.number = number;
        this.listContact = listContact;
        this.listContactDownload = listContactDownload;
        this.page_Contact = page_Contact;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (App_Bt.mBtInfo.getMapContact(this.name, this.number, this.listContactDownload) == null) {
            SparseArray<String> map = App_Bt.getNewMapContact(this.name, this.number);
            Main.postRunnable_Ui(false, new Runnable_ContactDown(map));
            if (App_Bt.mBtInfo.getMapContact(this.name, this.number, this.listContact) == null) {
                Main.postRunnable_Ui(false, new Runnable_ContactNew(map, this.page_Contact));
            }
        }
    }
}
