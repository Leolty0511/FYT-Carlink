package com.syu.bt.runnable;

import android.util.SparseArray;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_ContactDown implements Runnable {
    SparseArray<String> map;

    public Runnable_ContactDown(SparseArray<String> map) {
        this.map = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                App_Bt.mBtInfo.mListContactDownload.add(this.map);
                return;
            } else {
                App_Bt.mBtInfo.mListContactDownload2.add(this.map);
                return;
            }
        }
        App_Bt.mBtInfo.mListContactDownload.add(this.map);
    }
}
