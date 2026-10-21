package com.syu.bt.util;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.data.FinalBtCtrl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SpUtil {
    public static final String BT_SP = "bt_data";
    public static final String CONTACT_SP = "contact_save";
    private static SharedPreferences mSp = null;

    public static void putString(String key, String value) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        mSp.edit().putString(key, value).commit();
    }

    public static void clear() {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        mSp.edit().clear().commit();
    }

    public static String getString(String key) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        return mSp.getString(key, FinalChip.BSP_PLATFORM_Null);
    }

    public static boolean saveArray(String key, List<SparseArray<String>> list) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        SharedPreferences.Editor mEdit1 = mSp.edit();
        int sizeSave = mSp.getInt(String.valueOf(key) + "size", 0);
        for (int i = 0; i < sizeSave; i++) {
            mEdit1.remove(String.valueOf(key) + "addr" + i);
            mEdit1.remove(String.valueOf(key) + "name" + i);
            mEdit1.remove(String.valueOf(key) + "index" + i);
        }
        int size = list.size();
        mEdit1.putInt(String.valueOf(key) + "size", size);
        for (int i2 = 0; i2 < size; i2++) {
            mEdit1.putString(String.valueOf(key) + "addr" + i2, list.get(i2).get(FinalBtCtrl.PairItem_Txt_Addr));
            mEdit1.putString(String.valueOf(key) + "name" + i2, list.get(i2).get(FinalBtCtrl.PairItem_Txt_Name));
            mEdit1.putString(String.valueOf(key) + "index" + i2, list.get(i2).get(FinalBtCtrl.PairItem_Index));
        }
        return mEdit1.commit();
    }

    public static List<SparseArray<String>> loadArray(String key) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        List<SparseArray<String>> list = new ArrayList<>();
        int size = mSp.getInt(String.valueOf(key) + "size", 0);
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                SparseArray<String> dev = new SparseArray<>();
                dev.put(FinalBtCtrl.PairItem_Txt_Addr, mSp.getString(String.valueOf(key) + "addr" + i, FinalChip.BSP_PLATFORM_Null));
                dev.put(FinalBtCtrl.PairItem_Txt_Name, mSp.getString(String.valueOf(key) + "name" + i, FinalChip.BSP_PLATFORM_Null));
                dev.put(FinalBtCtrl.PairItem_Index, mSp.getString(String.valueOf(key) + "index" + i, Integer.toString(100)));
                list.add(dev);
            }
        }
        return list;
    }

    public static boolean saveContact(String key, SparseArray<String> map) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        SharedPreferences.Editor mEdit1 = mSp.edit();
        mEdit1.putString(String.valueOf(key) + "name", map.get(FinalBtCtrl.ContactItem_Txt_Name));
        mEdit1.putString(String.valueOf(key) + SpeechUtil.KEY_NUMBER, map.get(FinalBtCtrl.ContactItem_Txt_Number));
        return mEdit1.commit();
    }

    public static SparseArray<String> getContact(String key) {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        SparseArray<String> map = new SparseArray<>();
        map.put(FinalBtCtrl.ContactItem_Txt_Name, mSp.getString(String.valueOf(key) + "name", FinalChip.BSP_PLATFORM_Null));
        map.put(FinalBtCtrl.ContactItem_Txt_Number, mSp.getString(String.valueOf(key) + SpeechUtil.KEY_NUMBER, FinalChip.BSP_PLATFORM_Null));
        return map;
    }

    public static boolean clearSaveContact() {
        if (mSp == null) {
            mSp = MyApplication.myApp.getSharedPreferences(BT_SP, 0);
        }
        SharedPreferences.Editor mEdit1 = mSp.edit();
        for (int i = 1; i < 6; i++) {
            mEdit1.putString(CONTACT_SP + i + "name", FinalChip.BSP_PLATFORM_Null);
            mEdit1.putString(CONTACT_SP + i + SpeechUtil.KEY_NUMBER, FinalChip.BSP_PLATFORM_Null);
        }
        return mEdit1.commit();
    }
}
