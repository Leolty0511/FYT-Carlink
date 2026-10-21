package com.lsec.core.frame.page;

import com.lsec.core.frame.app.MyActivity;
import com.lsec.core.frame.ctrl.JPage;

/* JADX INFO: loaded from: classes.dex */
public class Page_ContentView extends MyPage {
    MyActivity myActivity;

    public Page_ContentView(JPage page, MyActivity myActivity) {
        super(page, null);
        this.myActivity = myActivity;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.myActivity.handleSizeChanged();
    }
}
