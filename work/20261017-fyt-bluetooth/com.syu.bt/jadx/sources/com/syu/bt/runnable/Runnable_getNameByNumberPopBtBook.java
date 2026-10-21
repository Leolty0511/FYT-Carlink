package com.syu.bt.runnable;

import android.util.Log;
import android.util.SparseArray;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Runnable_getNameByNumberPopBtBook implements Runnable {
    boolean bForceDefault;
    List<SparseArray<String>> mList;
    String mStrNameDefault;
    String mStrNumber;
    JText mTxt;
    JText mTxt2;

    public Runnable_getNameByNumberPopBtBook(List<SparseArray<String>> list, JText txt, String strNumber, String strNameDefault, boolean bDefault) {
        this.mStrNameDefault = FinalChip.BSP_PLATFORM_Null;
        this.mStrNumber = FinalChip.BSP_PLATFORM_Null;
        this.mList = list;
        this.mTxt = txt;
        this.mStrNumber = strNumber;
        this.mStrNameDefault = strNameDefault;
        this.bForceDefault = bDefault;
    }

    public Runnable_getNameByNumberPopBtBook(List<SparseArray<String>> list, JText txt, JText txt2, String strNumber, String strNameDefault, boolean bDefault) {
        this.mStrNameDefault = FinalChip.BSP_PLATFORM_Null;
        this.mStrNumber = FinalChip.BSP_PLATFORM_Null;
        this.mList = list;
        this.mTxt = txt;
        this.mTxt2 = txt2;
        this.mStrNumber = strNumber;
        this.mStrNameDefault = strNameDefault;
        this.bForceDefault = bDefault;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mTxt != null) {
            String strName = App_Bt.mBtInfo.getNameByNumber(this.mStrNumber, this.mList);
            Log.d("pop333", " 03 Runnable_getNameByNumberPopBtBook strName = " + strName);
            if (this.mTxt2 != null) {
                Main.postRunnable_Ui(false, new Runnable_UpdateText(this.mTxt, this.mTxt2, null, strName, this.mStrNameDefault, this.bForceDefault));
            } else {
                Main.postRunnable_Ui(false, new Runnable_UpdateText(this.mTxt, strName, this.mStrNameDefault, this.bForceDefault));
            }
        }
    }
}
