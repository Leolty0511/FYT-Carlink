package com.syu.bt.runnable;

import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.page.Page_Contact;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_DownOver1st implements Runnable {
    Page_Contact page_Contact;

    public Runnable_DownOver1st(Page_Contact page_Contact) {
        this.page_Contact = page_Contact;
    }

    @Override // java.lang.Runnable
    public void run() {
        Main.postRunnable_Ui(false, new Runnable_DownOver(this.page_Contact));
    }
}
