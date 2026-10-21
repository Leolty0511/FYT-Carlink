package com.syu.bt.runnable;

import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_getNameByNumber implements Runnable {
    boolean bForceDefault;
    int id_run;
    List<SparseArray<String>> mList;
    JText mTxt;
    JText mTxt2;
    JText mTxt3;
    JText mTxt4;
    JText mTxt5;
    JText mTxt6;
    JView mView;
    JView mView2;
    String strDefault;

    public Runnable_getNameByNumber(List<SparseArray<String>> list, JText txt, String str, boolean bDefault) {
        this.strDefault = FinalChip.BSP_PLATFORM_Null;
        this.id_run = 255;
        this.mList = list;
        this.mTxt = txt;
        this.strDefault = str;
        this.bForceDefault = bDefault;
        this.id_run = 0;
    }

    public Runnable_getNameByNumber(List<SparseArray<String>> list, JText txt, JText txt2, JText txt3, String str, boolean bDefault) {
        this.strDefault = FinalChip.BSP_PLATFORM_Null;
        this.id_run = 255;
        this.mList = list;
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.strDefault = str;
        this.bForceDefault = bDefault;
        this.id_run = 1;
    }

    public Runnable_getNameByNumber(List<SparseArray<String>> list, JText txt, JText txt2, JText txt3, JText txt4, JText txt5, JText txt6, String str, boolean bDefault) {
        this.strDefault = FinalChip.BSP_PLATFORM_Null;
        this.id_run = 255;
        this.mList = list;
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.mTxt4 = txt4;
        this.mTxt5 = txt5;
        this.mTxt6 = txt6;
        this.strDefault = str;
        this.bForceDefault = bDefault;
        this.id_run = 2;
    }

    public Runnable_getNameByNumber(List<SparseArray<String>> list, JText txt, JText txt2, JText txt3, JView view, JView view2, String str, boolean bDefault) {
        this.strDefault = FinalChip.BSP_PLATFORM_Null;
        this.id_run = 255;
        this.mList = list;
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mTxt3 = txt3;
        this.mView = view;
        this.mView2 = view2;
        this.strDefault = str;
        this.bForceDefault = bDefault;
        this.id_run = 3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mTxt != null || this.mTxt2 != null || this.mTxt3 != null) {
            String strName = App_Bt.mBtInfo.getNameByNumber(Bt.sPhoneNumber, this.mList);
            Log.d("pop333", " 03 Runnable_getNameByNumber strName = " + strName + " id_run = " + this.id_run);
            if (this.mView != null || this.mView2 != null) {
                Main.postRunnable_Ui(false, new Runnable_UpdateText(this.mTxt, this.mTxt2, this.mTxt3, this.mView, this.mView2, strName, this.strDefault, this.bForceDefault));
            } else if (this.mTxt4 != null && this.mTxt5 != null && this.mTxt6 != null) {
                Main.postRunnable_Ui(false, new Runnable_UpdateText(this.mTxt, this.mTxt2, this.mTxt3, this.mTxt4, this.mTxt5, this.mTxt6, strName, this.strDefault, this.bForceDefault));
            } else {
                Main.postRunnable_Ui(false, new Runnable_UpdateText(this.mTxt, this.mTxt2, this.mTxt3, strName, this.strDefault, this.bForceDefault));
            }
        }
    }
}
