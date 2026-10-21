package com.syu.bt.db;

import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.github.promeg.pinyinhelper.Pinyin;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.pop.Page_PopBt_Book;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.SpeechUtil;
import com.syu.bt.util.ToastUtil;
import java.text.Collator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Bt_Info {
    public RefreshColllogListener refresh;
    public static String[] b = {"#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
    public static boolean bIsTR = false;
    static Collator collator_TR = Collator.getInstance(new Locale("tr", "TR"));
    static Comparator<SparseArray<String>> comparator_Contact = new Comparator<SparseArray<String>>() { // from class: com.syu.bt.db.Bt_Info.3
        @Override // java.util.Comparator
        public int compare(SparseArray<String> lhs, SparseArray<String> rhs) {
            String lName = lhs.get(FinalBtCtrl.ContactItem_Txt_NameCompare);
            String rName = rhs.get(FinalBtCtrl.ContactItem_Txt_NameCompare);
            if (lName == null) {
                return rName != null ? -1 : 0;
            }
            if (rName == null) {
                return 1;
            }
            if (Bt_Info.bIsTR) {
                if (lName.charAt(0) < 'A' && rName.charAt(0) >= 'A') {
                    return 1;
                }
                if (lName.charAt(0) < 'A' || rName.charAt(0) >= 'A') {
                    return Bt_Info.collator_TR.compare(lName, rName);
                }
                return -1;
            }
            return lName.compareTo(rName);
        }
    };
    static Comparator<SparseArray<String>> comparator2_Contact = new Comparator<SparseArray<String>>() { // from class: com.syu.bt.db.Bt_Info.4
        @Override // java.util.Comparator
        public int compare(SparseArray<String> lhs, SparseArray<String> rhs) {
            String lName = lhs.get(FinalBtCtrl.ContactItem_Txt_Name);
            String rName = rhs.get(FinalBtCtrl.ContactItem_Txt_Name);
            if (lName == null) {
                return rName != null ? -1 : 0;
            }
            if (rName == null) {
                return 1;
            }
            if (Bt_Info.bIsTR) {
                if (lName.charAt(0) < 'A' && rName.charAt(0) >= 'A') {
                    return 1;
                }
                if (lName.charAt(0) < 'A' || rName.charAt(0) >= 'A') {
                    return Bt_Info.collator_TR.compare(lName, rName);
                }
                return -1;
            }
            return lName.compareTo(rName);
        }
    };
    public static String[] startNum = {"+20", "0020", "+27", "0027", "+30", "0030", "+31", "0031", "+32", "0032", "+33", "0033", "+351", "00351", "+353", "00353", "+355", "00355", "+356", "00356", "+357", "00357", "+358", "00358", "+359", "00359", "+36", "0036", "+353", "00353", "+382", "00382", "+385", "00385", "+39", "0039", "+40", "0040", "+421", "00421", "+43", "0043", "+44", "0044", "+45", "0045", "+46", "0046", "+47", "0047", "+48", "0048", "+49", "0049", "+52", "0052", "+54", "0054", "+55", "0055", "+60", "0060", "+61", "0061", "+62", "0062", "+63", "0063", "+64", "0064", "+65", "0065", "+66", "0066", "+81", "0081", "+82", "0082", "+84", "0084", "+86", "0086", "+90", "0090", "+91", "0091", "+98", "0098", "+966", "00966", "+1", "001", "+6", "006", "+7", "007"};
    public static Comparator<SparseArray<String>> comparator_History = new Comparator<SparseArray<String>>() { // from class: com.syu.bt.db.Bt_Info.5
        @Override // java.util.Comparator
        public int compare(SparseArray<String> lhs, SparseArray<String> rhs) {
            String lName = lhs.get(FinalBtCtrl.HistoryItem_Date);
            String rName = rhs.get(FinalBtCtrl.HistoryItem_Date);
            if (TextUtils.isEmpty(lName)) {
                if (!TextUtils.isEmpty(rName)) {
                    return 1;
                }
                return 0;
            }
            if (TextUtils.isEmpty(rName)) {
                return -1;
            }
            return rName.compareTo(lName);
        }
    };
    public List<SparseArray<String>> mListHistoryIn = new ArrayList();
    public List<SparseArray<String>> mListHistoryOut = new ArrayList();
    public List<SparseArray<String>> mListHistoryMiss = new ArrayList();
    public List<SparseArray<String>> mListHistoryAll = new ArrayList();
    public List<SparseArray<String>> mListHistoryIn2 = new ArrayList();
    public List<SparseArray<String>> mListHistoryOut2 = new ArrayList();
    public List<SparseArray<String>> mListHistoryMiss2 = new ArrayList();
    public List<SparseArray<String>> mListHistoryAll2 = new ArrayList();
    public List<SparseArray<String>> mListFavContact = new ArrayList();
    public List<SparseArray<String>> mListContact = new ArrayList();
    public List<SparseArray<String>> mListContact2 = new ArrayList();
    public List<SparseArray<String>> mListContactDownload = new ArrayList();
    public List<SparseArray<String>> mListContactDownload2 = new ArrayList();
    public List<SparseArray<String>> mListContactHeadId = new ArrayList();
    public List<SparseArray<String>> mListPair = new ArrayList();
    public List<SparseArray<String>> mListSetPair = new ArrayList();
    public List<SparseArray<String>> mListHasPaired = new ArrayList();
    public char[] mPinYin = new char[27];
    public boolean bClearing_Log = false;
    public int PAIR_INDEX = 100;
    public Runnable mRunnable_ClearAllLog = new Runnable() { // from class: com.syu.bt.db.Bt_Info.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    Log.d("save11", " 22 mContentResolver.delete:");
                    Bt_Info.this.bClearing_Log = true;
                    MyApplication.mContentResolver.delete(CallLog.Calls.CONTENT_URI, null, null);
                    Bt_Info.this.bClearing_Log = false;
                } catch (Exception e) {
                    e.printStackTrace();
                    Bt_Info.this.bClearing_Log = false;
                }
                App_Bt.queryCallLog();
            } catch (Throwable th) {
                Bt_Info.this.bClearing_Log = false;
                throw th;
            }
        }
    };
    public Runnable mRunnableClearAllContact = new Runnable() { // from class: com.syu.bt.db.Bt_Info.2
        @Override // java.lang.Runnable
        public void run() {
            Cursor cursor = null;
            try {
                try {
                    Cursor cursor2 = Bt_Info.this.clearContacts();
                    if (cursor2 != null) {
                        try {
                            cursor2.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    if (0 != 0) {
                        try {
                            cursor.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.disPostLoading(0);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        cursor.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
    };
    GetListContact mGetListContact = null;
    GetListHistory mGetListHistory = null;
    GetListHistoryAll mGetListHistoryAll = null;

    public interface RefreshColllogListener {
        void refreshCollLogList();
    }

    public class RunnableInsertCallLog implements Runnable {
        private boolean bQueryCallLog;
        private ContentValues values;

        public RunnableInsertCallLog(ContentValues values, boolean bQueryCallLog) {
            this.values = values;
            this.bQueryCallLog = bQueryCallLog;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x00ac A[Catch: all -> 0x00ca, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0012, B:7:0x0036, B:8:0x0061, B:10:0x0070, B:11:0x00a8, B:13:0x00ac, B:17:0x00b2), top: B:22:0x0001, inners: #1 }] */
        @Override // java.lang.Runnable
        public synchronized void run() {
            Log.d("his5", " 00 RunnableInsertCallLog ");
            if (this.values.getAsInteger("type") != null) {
                try {
                    Log.d("his5", " 22 RunnableInsertCallLog values : " + this.values.toString());
                    if (this.values.get(SpeechUtil.KEY_NUMBER) != null) {
                        Log.d("his5", " 33 RunnableInsertCallLog App_Bt.sPhone_callin_id_p = " + App_Bt.sPhone_callin_id_p + " App_Bt.bLinkTwoPhone = " + App_Bt.bLinkTwoPhone);
                        MyApplication.mContentResolver.insert(CallLog.Calls.CONTENT_URI, this.values);
                    }
                    this.values.clear();
                    if (Bt.values3rd.getAsInteger("type") != null) {
                        Bt.values.put("type", (Integer) Bt.values3rd.get("type"));
                        Bt.values.put("date", (Long) Bt.values3rd.get("date"));
                        Bt.values.put(SpeechUtil.KEY_NUMBER, (String) Bt.values3rd.get(SpeechUtil.KEY_NUMBER));
                        Bt.values3rd.clear();
                        if (this.bQueryCallLog) {
                            App_Bt.queryCallLog();
                        }
                    } else if (this.bQueryCallLog) {
                        App_Bt.queryCallLog();
                    }
                } catch (Exception e) {
                    Log.d("his5", " 88 RunnableInsertCallLog Exception e = " + e);
                    e.printStackTrace();
                }
            }
        }
    }

    public void insertCallLog(ContentValues values, boolean bQueryCallLog) {
        Log.d("his6", " 000 Bt_Info insertCallLog   values.toString = " + values.toString() + " NUMBER = " + values.getAsInteger(SpeechUtil.KEY_NUMBER));
        try {
            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, new RunnableInsertCallLog(values, bQueryCallLog), false, 1);
        } catch (Exception e) {
            Log.d("his6", " 111 insertCallLog Exception e = " + e);
            e.printStackTrace();
        }
    }

    public class RunnableDelCallLog implements Runnable {
        private String number;
        private long time;

        public RunnableDelCallLog(String number, long time) {
            this.number = number;
            this.time = time;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                Log.d("save11", " 00 mContentResolver.delete:");
                MyApplication.mContentResolver.delete(CallLog.Calls.CONTENT_URI, "number = ? and date = ? ", new String[]{this.number, String.valueOf(this.time)});
            } catch (Exception e) {
                e.printStackTrace();
            }
            App_Bt.queryCallLog();
        }
    }

    public void delCallLog(String number, long time) {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, new RunnableDelCallLog(number, time), false, 1);
    }

    public class RunnableClearCallLog implements Runnable {
        private int type;

        public RunnableClearCallLog(int type) {
            Log.d("his3", "00 RunnableClearCallLog type = " + type + " App_Bt.sPhone2_id = " + App_Bt.sPhone2_id);
            this.type = type;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    Log.d("save11", " 11 mContentResolver.delete:");
                    Log.d("his3", "11 RunnableClearCallLog type = " + this.type + " App_Bt.sPhone2_id = " + App_Bt.sPhone2_id);
                    MyApplication.mContentResolver.delete(CallLog.Calls.CONTENT_URI, "type = ? ", new String[]{String.valueOf(this.type)});
                    if (!App_Bt.bHistoryLogAllFlag) {
                        for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                            interfaceBt.disPostLoading(0);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (!App_Bt.bHistoryLogAllFlag) {
                        for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                            interfaceBt2.disPostLoading(0);
                        }
                    }
                }
                App_Bt.queryCallLog();
            } catch (Throwable th) {
                if (!App_Bt.bHistoryLogAllFlag) {
                    for (InterfaceBt interfaceBt3 : App_Bt.mInterfaceBt) {
                        interfaceBt3.disPostLoading(0);
                    }
                }
                throw th;
            }
        }
    }

    public void clearCallLog(int type) {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, new RunnableClearCallLog(type), false, 1);
    }

    public void clearAllCallLog() {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, this.mRunnable_ClearAllLog, true, 1);
    }

    public List<SparseArray<String>> queryCallLogAll() {
        List<SparseArray<String>> listHistory = new ArrayList<>();
        Cursor cursor = null;
        try {
            try {
                cursor = MyApplication.mContentResolver.query(CallLog.Calls.CONTENT_URI, new String[]{"type", SpeechUtil.KEY_NUMBER, "date"}, null, null, "date DESC");
                if (cursor != null && cursor.getCount() > 0) {
                    int indexType = cursor.getColumnIndex("type");
                    int indexDate = cursor.getColumnIndex("date");
                    int indexNumber = cursor.getColumnIndex(SpeechUtil.KEY_NUMBER);
                    while (cursor.moveToNext()) {
                        int iType = cursor.getInt(indexType);
                        long lData = cursor.getLong(indexDate);
                        String strNumber = cursor.getString(indexNumber);
                        SparseArray<String> map = new SparseArray<>();
                        if (strNumber == null) {
                            strNumber = FinalChip.BSP_PLATFORM_Null;
                        }
                        map.put(FinalBtCtrl.HistoryItem_Txt_Num, strNumber);
                        map.put(FinalBtCtrl.HistoryItem_Type, Integer.toString(iType));
                        map.put(FinalBtCtrl.HistoryItem_Date, Long.toString(lData));
                        if (App_Bt.hideBtnWhenDisconnect) {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Date, BTUtil.getTimeFromMillisecond(Long.valueOf(lData)));
                            map.put(FinalBtCtrl.HistoryItem_Txt_Time, BTUtil.getDateTimeFromMillisecond(Long.valueOf(lData)));
                        } else {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Date, FuncUtils.formatHistoryTimeString(MyApplication.myApp, lData));
                        }
                        listHistory.add(map);
                    }
                }
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        return listHistory;
    }

    public void queryHistory(List<SparseArray<String>> listContactInQuery) {
        Log.d("his", " 000  queryHistory Bt_Info queryHistory CallLog.Calls.NUMBER = number");
        List<SparseArray<String>> listHistoryIn = new ArrayList<>();
        List<SparseArray<String>> listHistoryOut = new ArrayList<>();
        List<SparseArray<String>> listHistoryMiss = new ArrayList<>();
        List<SparseArray<String>> listHistoryAll = new ArrayList<>();
        Bt_IpcObj.sPhoneAddrReadHistory = Bt.sPhoneAddr;
        boolean bEmpty = false;
        if (TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrReadHistory)) {
            bEmpty = true;
        }
        Cursor cursor = null;
        try {
            try {
                cursor = MyApplication.mContentResolver.query(CallLog.Calls.CONTENT_URI, new String[]{"type", SpeechUtil.KEY_NUMBER, "date"}, null, null, "date DESC");
                if (cursor != null && cursor.getCount() > 0) {
                    int indexType = cursor.getColumnIndex("type");
                    int indexDate = cursor.getColumnIndex("date");
                    int indexNumber = cursor.getColumnIndex(SpeechUtil.KEY_NUMBER);
                    while (cursor.moveToNext() && ((bEmpty || Bt_IpcObj.sPhoneAddrReadHistory.equalsIgnoreCase(Bt.sPhoneAddr)) && !bEmpty)) {
                        int iType = cursor.getInt(indexType);
                        long lData = cursor.getLong(indexDate);
                        String strNumber = cursor.getString(indexNumber);
                        Log.d("his3", " 22 Bt_Info queryHistory strNumber = " + strNumber + " iType = " + iType);
                        SparseArray<String> map = new SparseArray<>();
                        if (strNumber == null) {
                            strNumber = FinalChip.BSP_PLATFORM_Null;
                        }
                        map.put(FinalBtCtrl.HistoryItem_Txt_Num, strNumber);
                        map.put(FinalBtCtrl.HistoryItem_Type, Integer.toString(iType));
                        map.put(FinalBtCtrl.HistoryItem_Date, Long.toString(lData));
                        if (App_Bt.hideBtnWhenDisconnect) {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Date, BTUtil.getTimeFromMillisecond(Long.valueOf(lData)));
                            map.put(FinalBtCtrl.HistoryItem_Txt_Time, BTUtil.getDateTimeFromMillisecond(Long.valueOf(lData)));
                        } else if (App_Bt.bSyncHistory) {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Date, BTUtil.getInstance().getFormatTime(lData));
                        } else {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Date, FuncUtils.formatHistoryTimeString(MyApplication.myApp, lData));
                        }
                        if (App_Bt.bHistoryLogAllFlag) {
                            listHistoryAll.add(map);
                            if (CustomerUtil.isYFConfig()) {
                                switch (iType) {
                                    case 1:
                                        listHistoryIn.add(map);
                                        break;
                                    case 2:
                                        listHistoryOut.add(map);
                                        break;
                                    case 3:
                                        listHistoryMiss.add(map);
                                        break;
                                }
                            }
                        } else {
                            switch (iType) {
                                case 1:
                                case 5:
                                    listHistoryIn.add(map);
                                    break;
                                case 2:
                                case 6:
                                    listHistoryOut.add(map);
                                    break;
                                case 3:
                                case 7:
                                    listHistoryMiss.add(map);
                                    break;
                            }
                        }
                    }
                }
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
            if (!bEmpty && Bt_IpcObj.sPhoneAddrReadHistory.equalsIgnoreCase(Bt.sPhoneAddr)) {
                if (App_Bt.bHistoryLogAllFlag && !CustomerUtil.isYFConfig()) {
                    if (this.mGetListHistoryAll != null) {
                        Main.removeRunnable_Ui(this.mGetListHistoryAll);
                        this.mGetListHistoryAll.stopRun();
                        this.mGetListHistoryAll = null;
                    }
                    this.mGetListHistoryAll = new GetListHistoryAll(listContactInQuery, listHistoryAll);
                    if (App_Bt.bBtAcc_On) {
                        App_Bt.bBtAcc_On = false;
                        Main.postRunnable_Ui(false, this.mGetListHistoryAll, 3000L);
                    } else {
                        Main.postRunnable_Ui(false, this.mGetListHistoryAll);
                    }
                } else {
                    this.mGetListHistory = new GetListHistory(listContactInQuery, listHistoryIn, listHistoryOut, listHistoryMiss, listHistoryAll);
                    if (App_Bt.bBtAcc_On) {
                        App_Bt.bBtAcc_On = false;
                        Main.postRunnable_Ui(false, this.mGetListHistory, 3000L);
                    } else {
                        Main.postRunnable_Ui(false, this.mGetListHistory);
                    }
                }
            }
            Log.d("BOOK", "queryHistory");
            Bt_IpcObj.sPhoneAddrReadHistory = FinalChip.BSP_PLATFORM_Null;
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void opsAdd(List<SparseArray<String>> contacts, ArrayList<ContentProviderOperation> ops, int i) {
        SparseArray<String> map = contacts.get(i);
        int rawContactInsertIndex = ops.size();
        ops.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
        ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", rawContactInsertIndex).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", map.get(FinalBtCtrl.ContactItem_Txt_Name)).build());
        ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", rawContactInsertIndex).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", map.get(FinalBtCtrl.ContactItem_Txt_Number)).withValue("data2", 2).build());
    }

    public class RunnableDelContact implements Runnable {
        private String name;
        private String number;

        public RunnableDelContact(String name, String number) {
            this.name = name;
            this.number = number;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (App_Bt.bSaveContactsToUrl) {
                Cursor cursor = null;
                try {
                    cursor = MyApplication.mContentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "display_name = ? and data1 = ?", new String[]{this.name, this.number}, null);
                    ArrayList<ContentProviderOperation> ops = new ArrayList<>();
                    if (cursor != null && cursor.getCount() > 0) {
                        while (cursor.moveToNext()) {
                            long id = cursor.getLong(cursor.getColumnIndex("raw_contact_id"));
                            ops.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, id)).build());
                        }
                        MyApplication.mContentResolver.applyBatch("com.android.contacts", ops);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public void delContact(String name, String number) {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableDelContact(name, number), true, 1);
    }

    public void setOnRefreshListener(RefreshColllogListener listener) {
        this.refresh = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Cursor clearContacts() {
        if (!App_Bt.bSaveContactsToUrl) {
            Bt_IpcObj.sPhoneAddrDelete = FinalChip.BSP_PLATFORM_Null;
            return null;
        }
        Log.d("BOOK", "------------------clear Contacts-----------------------");
        Cursor cursor = MyApplication.mContentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, null, null, null);
        ArrayList<ContentProviderOperation> ops = new ArrayList<>();
        try {
            if (cursor.moveToFirst()) {
                int cnt = cursor.getCount();
                int i = 0;
                do {
                    long Id = cursor.getLong(cursor.getColumnIndex("raw_contact_id"));
                    ops.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, Id)).build());
                    if (i == cnt - 1 || i % 80 == 0) {
                        MyApplication.mContentResolver.applyBatch("com.android.contacts", ops);
                        ops.clear();
                    }
                    i++;
                } while (cursor.moveToNext());
            }
            Log.d("BOOK", "------------------clearContacts end-----------------------");
        } catch (Exception e) {
        }
        Bt_IpcObj.sPhoneAddrDelete = FinalChip.BSP_PLATFORM_Null;
        return cursor;
    }

    public void clearAllContacts(String phoneAddr) {
        if (!TextUtils.isEmpty(phoneAddr)) {
            Bt_IpcObj.sPhoneAddrDelete = phoneAddr;
            Bt_IpcObj.sPhoneAddrRead = FinalChip.BSP_PLATFORM_Null;
            Bt_IpcObj.sPhoneAddrRead1 = FinalChip.BSP_PLATFORM_Null;
            Bt_IpcObj.sPhoneAddrWrite = FinalChip.BSP_PLATFORM_Null;
            Bt_IpcObj.sPhoneAddrReadHistory = FinalChip.BSP_PLATFORM_Null;
            Bt_IpcObj.sPhoneAddrReadHistory2 = FinalChip.BSP_PLATFORM_Null;
            Log.d("BOOK", "clearAllContacts");
        } else {
            Bt_IpcObj.sPhoneAddrDelete = FinalChip.BSP_PLATFORM_Null;
        }
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, this.mRunnableClearAllContact, true, 1);
    }

    public class GetListContact implements Runnable {
        public boolean bRun = true;
        List<SparseArray<String>> listContact = new ArrayList();

        public GetListContact(List<SparseArray<String>> listContact) {
            this.listContact.addAll(listContact);
        }

        public void stopRun() {
            this.bRun = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            JPage page;
            Page_PopBt_Book page_PopBt_Book;
            if (this.bRun) {
                Log.d("save11", " 00  GetListContact listContact = " + this.listContact.toString());
                if (App_Bt.bLinkTwoPhone) {
                    Bt_Info.this.mListContact.clear();
                    Log.d("save11", " 11 GetListContact mListContact2.clear ");
                    Bt_Info.this.mListContact2.clear();
                    for (SparseArray<String> map : this.listContact) {
                        String name = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                        if (name.contains("hfp2")) {
                            Bt_Info.this.mListContact2.add(map);
                        } else {
                            Bt_Info.this.mListContact.add(map);
                        }
                    }
                    Log.d("save11", " 22  GetListContact mListContact2 = " + Bt_Info.this.mListContact2.toString());
                } else {
                    Bt_Info.this.mListContact.clear();
                    Bt_Info.this.mListContact.addAll(this.listContact);
                }
                Bt_Info.this.sortContact();
                if (App_Bt.getInstance().bPopBtBook && (page = App_Bt.getInstance().uiApp.getPage(5)) != null && (page_PopBt_Book = (Page_PopBt_Book) page.getNotify()) != null) {
                    page_PopBt_Book.queryContacts(Bt.sPhoneNumber);
                }
                App_Bt.getInstance().updatePhoneName();
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.resetList();
                }
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_setContactHead, false, 1);
                }
            }
        }
    }

    public class GetListHistory implements Runnable {
        public boolean bRun = true;
        List<SparseArray<String>> listHistoryIn = new ArrayList();
        List<SparseArray<String>> listHistoryOut = new ArrayList();
        List<SparseArray<String>> listHistoryMiss = new ArrayList();
        List<SparseArray<String>> listHistoryAll = new ArrayList();
        List<SparseArray<String>> listHistoryIn2 = new ArrayList();
        List<SparseArray<String>> listHistoryOut2 = new ArrayList();
        List<SparseArray<String>> listHistoryMiss2 = new ArrayList();

        public GetListHistory(List<SparseArray<String>> listContactInQuery, List<SparseArray<String>> listHistoryIn, List<SparseArray<String>> listHistoryOut, List<SparseArray<String>> listHistoryMiss, List<SparseArray<String>> listHistoryAll) {
            if (App_Bt.bLinkTwoPhone) {
                if (listHistoryIn.size() > 0) {
                    for (int i = 0; i < listHistoryIn.size(); i++) {
                        SparseArray<String> map = listHistoryIn.get(i);
                        if (Integer.parseInt(map.get(FinalBtCtrl.HistoryItem_Type)) > 3) {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map.get(FinalBtCtrl.HistoryItem_Txt_Num), Bt_Info.this.mListContact2));
                            map.put(FinalBtCtrl.HistoryItem_Type, Integer.toString(1));
                            this.listHistoryIn2.add(map);
                        } else {
                            map.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                            this.listHistoryIn.add(map);
                        }
                    }
                }
                if (listHistoryOut.size() > 0) {
                    Log.d("his7", " 11 GetListHistory  listHistoryOut = " + listHistoryOut.toString());
                    for (int i2 = 0; i2 < listHistoryOut.size(); i2++) {
                        SparseArray<String> map2 = listHistoryOut.get(i2);
                        if (Integer.parseInt(map2.get(FinalBtCtrl.HistoryItem_Type)) > 3) {
                            map2.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map2.get(FinalBtCtrl.HistoryItem_Txt_Num), Bt_Info.this.mListContact2));
                            map2.put(FinalBtCtrl.HistoryItem_Type, Integer.toString(2));
                            this.listHistoryOut2.add(map2);
                        } else {
                            map2.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map2.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                            this.listHistoryOut.add(map2);
                        }
                    }
                }
                Log.d("his7", " 00 GetListHistory  listHistoryOut2 = " + this.listHistoryOut2.toString());
                Log.d("his7", " 11 GetListHistory  listHistoryOut = " + this.listHistoryOut.toString());
                if (listHistoryMiss.size() > 0) {
                    for (int i3 = 0; i3 < listHistoryMiss.size(); i3++) {
                        SparseArray<String> map3 = listHistoryMiss.get(i3);
                        if (Integer.parseInt(map3.get(FinalBtCtrl.HistoryItem_Type)) > 3) {
                            map3.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map3.get(FinalBtCtrl.HistoryItem_Txt_Num), Bt_Info.this.mListContact2));
                            map3.put(FinalBtCtrl.HistoryItem_Type, Integer.toString(3));
                            this.listHistoryMiss2.add(map3);
                        } else {
                            map3.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map3.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                            this.listHistoryMiss.add(map3);
                        }
                    }
                }
            } else {
                for (SparseArray<String> map4 : listHistoryIn) {
                    if (CustomerUtil.isYFConfig()) {
                        String name = Bt_Info.this.getNameByNumber(map4.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery);
                        if (TextUtils.isEmpty(name)) {
                            map4.put(FinalBtCtrl.HistoryItem_Txt_Name, map4.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        } else {
                            map4.put(FinalBtCtrl.HistoryItem_Txt_Name, name);
                        }
                    } else {
                        map4.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map4.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                    }
                }
                for (SparseArray<String> map5 : listHistoryOut) {
                    if (CustomerUtil.isYFConfig()) {
                        String name2 = Bt_Info.this.getNameByNumber(map5.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery);
                        if (TextUtils.isEmpty(name2)) {
                            map5.put(FinalBtCtrl.HistoryItem_Txt_Name, map5.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        } else {
                            map5.put(FinalBtCtrl.HistoryItem_Txt_Name, name2);
                        }
                    } else {
                        map5.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map5.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                    }
                }
                for (SparseArray<String> map6 : listHistoryMiss) {
                    if (CustomerUtil.isYFConfig()) {
                        String name3 = Bt_Info.this.getNameByNumber(map6.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery);
                        if (TextUtils.isEmpty(name3)) {
                            map6.put(FinalBtCtrl.HistoryItem_Txt_Name, map6.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        } else {
                            map6.put(FinalBtCtrl.HistoryItem_Txt_Name, name3);
                        }
                    } else {
                        map6.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map6.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                    }
                }
                this.listHistoryIn.addAll(listHistoryIn);
                this.listHistoryOut.addAll(listHistoryOut);
                this.listHistoryMiss.addAll(listHistoryMiss);
            }
            if (CustomerUtil.isYFConfig()) {
                for (SparseArray<String> map7 : listHistoryAll) {
                    if (CustomerUtil.isYFConfig()) {
                        String name4 = Bt_Info.this.getNameByNumber(map7.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery);
                        if (TextUtils.isEmpty(name4)) {
                            map7.put(FinalBtCtrl.HistoryItem_Txt_Name, map7.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        } else {
                            map7.put(FinalBtCtrl.HistoryItem_Txt_Name, name4);
                        }
                    } else {
                        map7.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map7.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                    }
                }
                this.listHistoryAll.addAll(listHistoryAll);
            }
        }

        public void stopRun() {
            this.bRun = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("his6", " 11 GetListHistory run ");
            if (this.bRun) {
                Log.d("his3", " 22 mListHistoryOut.clear  ");
                Bt_Info.this.mListHistoryIn.clear();
                Bt_Info.this.mListHistoryOut.clear();
                Bt_Info.this.mListHistoryMiss.clear();
                Bt_Info.this.mListHistoryIn2.clear();
                Bt_Info.this.mListHistoryOut2.clear();
                Bt_Info.this.mListHistoryMiss2.clear();
                Bt_Info.this.mListHistoryIn.addAll(this.listHistoryIn);
                Bt_Info.this.mListHistoryOut.addAll(this.listHistoryOut);
                Bt_Info.this.mListHistoryMiss.addAll(this.listHistoryMiss);
                if (App_Bt.bLinkTwoPhone) {
                    Bt_Info.this.mListHistoryIn2.addAll(this.listHistoryIn2);
                    Bt_Info.this.mListHistoryOut2.addAll(this.listHistoryOut2);
                    Bt_Info.this.mListHistoryMiss2.addAll(this.listHistoryMiss2);
                }
                Log.d("his6", " 00 GetListHistory  mListHistoryIn2 = " + Bt_Info.this.mListHistoryIn2.toString());
                Log.d("his6", " 11 GetListHistory  mListHistoryIn = " + Bt_Info.this.mListHistoryIn.toString());
                if (CustomerUtil.isYFConfig()) {
                    Bt_Info.this.mListHistoryAll.clear();
                    Bt_Info.this.mListHistoryAll.addAll(this.listHistoryAll);
                }
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.resetList();
                }
                App_Bt.mBtInfo.SendHistoryToServer(false);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable() { // from class: com.syu.bt.db.Bt_Info.GetListHistory.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Bt_Info.this.mListHistoryIn.size() > 0 && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                                for (SparseArray<String> map : App_Bt.mBtInfo.mListContactHeadId) {
                                    String headNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                                    for (SparseArray<String> contact : Bt_Info.this.mListHistoryIn) {
                                        if (contact != null && contact.get(FinalBtCtrl.HistoryItem_Txt_Num).trim().equals(headNumber)) {
                                            contact.put(FinalBtCtrl.ContactItem_HeadIcon, map.get(FinalBtCtrl.ContactItem_HeadIcon));
                                        }
                                    }
                                }
                            }
                            if (Bt_Info.this.mListHistoryOut.size() > 0 && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                                for (SparseArray<String> map2 : App_Bt.mBtInfo.mListContactHeadId) {
                                    String headNumber2 = map2.get(FinalBtCtrl.ContactItem_Txt_Number);
                                    for (SparseArray<String> contact2 : Bt_Info.this.mListHistoryOut) {
                                        if (contact2 != null && contact2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim().equals(headNumber2)) {
                                            contact2.put(FinalBtCtrl.ContactItem_HeadIcon, map2.get(FinalBtCtrl.ContactItem_HeadIcon));
                                        }
                                    }
                                }
                            }
                            if (Bt_Info.this.mListHistoryMiss.size() > 0 && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                                for (SparseArray<String> map3 : App_Bt.mBtInfo.mListContactHeadId) {
                                    String headNumber3 = map3.get(FinalBtCtrl.ContactItem_Txt_Number);
                                    for (SparseArray<String> contact3 : Bt_Info.this.mListHistoryMiss) {
                                        if (contact3 != null && contact3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim().equals(headNumber3)) {
                                            contact3.put(FinalBtCtrl.ContactItem_HeadIcon, map3.get(FinalBtCtrl.ContactItem_HeadIcon));
                                        }
                                    }
                                }
                            }
                        }
                    }, false, 1);
                }
            }
        }
    }

    public class GetListHistoryAll implements Runnable {
        public boolean bRun = true;
        List<SparseArray<String>> listHistoryAll = new ArrayList();

        public GetListHistoryAll(List<SparseArray<String>> listContactInQuery, List<SparseArray<String>> listHistoryAll) {
            for (SparseArray<String> map : listHistoryAll) {
                if (CustomerUtil.isYFConfig()) {
                    String name = Bt_Info.this.getNameByNumber(map.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery);
                    if (TextUtils.isEmpty(name)) {
                        map.put(FinalBtCtrl.HistoryItem_Txt_Name, map.get(FinalBtCtrl.HistoryItem_Txt_Num));
                    } else {
                        map.put(FinalBtCtrl.HistoryItem_Txt_Name, name);
                    }
                } else {
                    map.put(FinalBtCtrl.HistoryItem_Txt_Name, Bt_Info.this.getNameByNumber(map.get(FinalBtCtrl.HistoryItem_Txt_Num), listContactInQuery));
                }
            }
            Log.d("his6", " 00 GetListHistoryAll  listHistoryAll = " + listHistoryAll.toString());
            this.listHistoryAll.addAll(listHistoryAll);
        }

        public void stopRun() {
            this.bRun = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.bRun) {
                Bt_Info.this.mListHistoryAll.clear();
                Bt_Info.this.mListHistoryAll.addAll(this.listHistoryAll);
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.resetList();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00bc A[EDGE_INSN: B:111:0x00bc->B:22:0x00bc BREAK  A[LOOP:0: B:20:0x00b6->B:116:0x00b6], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0217 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x0219 A[Catch: Exception -> 0x023a, all -> 0x0259, TryCatch #1 {Exception -> 0x023a, blocks: (B:15:0x004c, B:17:0x0086, B:19:0x008c, B:20:0x00b6, B:60:0x01fa, B:63:0x0200, B:65:0x020a, B:68:0x0219, B:70:0x0227, B:72:0x022d, B:82:0x024d), top: B:103:0x004c, outer: #2 }] */
    public void queryContacts() {
        List<SparseArray<String>> data;
        String name;
        Log.d("BOOK", "------------------queryContacts-----------------------");
        Bt_IpcObj.sPhoneAddrRead = Bt.sPhoneAddr;
        Bt_IpcObj.sPhoneAddrRead1 = App_Bt.sPhone2_MAC[1];
        boolean needSaveContacts = false;
        List<SparseArray<String>> listContact = new ArrayList<>();
        boolean doSave = true;
        if (!App_Bt.bSaveContactsToUrl) {
            doSave = false;
        }
        boolean bNotEmpty = true;
        if (App_Bt.bLinkTwoPhone) {
            if (TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrRead) && TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrRead1)) {
                bNotEmpty = false;
            }
        } else if (TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrRead)) {
            bNotEmpty = false;
        }
        Log.d("save11", " 00 queryContacts doSave:" + doSave);
        if (doSave) {
            Cursor cursor = null;
            try {
                try {
                    Log.d("save11", "-------------auto downloadBook------------- NUMBER data1 DISPLAY_NAME = display_name");
                    String[] mContactsProjection = {"data1", "display_name"};
                    cursor = MyApplication.mContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, mContactsProjection, null, null, "display_name COLLATE LOCALIZED ASC");
                    Log.d("save11", "-------------auto downloadBook------------- ContactsContract.Contacts.DISPLAY_NAME display_name  cursor.getCount() = " + cursor.getCount());
                    if (cursor != null && cursor.getCount() > 0) {
                        int iName = cursor.getColumnIndex("display_name");
                        int iNumber = cursor.getColumnIndex("data1");
                        Log.d("save11", " 11  queryContacts iName:" + iName + "iNumber:" + iNumber);
                        while (cursor.moveToNext()) {
                            if (App_Bt.bLinkTwoPhone) {
                                if (bNotEmpty && !Bt_IpcObj.sPhoneAddrRead.equalsIgnoreCase(Bt.sPhoneAddr) && !Bt_IpcObj.sPhoneAddrRead1.equalsIgnoreCase(App_Bt.sPhone2_MAC[1])) {
                                    break;
                                }
                                if (bNotEmpty) {
                                    break;
                                }
                                name = cursor.getString(iName);
                                String number = cursor.getString(iNumber);
                                if (TextUtils.isEmpty(name) && !TextUtils.isEmpty(number)) {
                                    SparseArray<String> map = App_Bt.getNewMapContact(name, number);
                                    listContact.add(map);
                                }
                            } else {
                                if (bNotEmpty && !Bt_IpcObj.sPhoneAddrRead.equalsIgnoreCase(Bt.sPhoneAddr)) {
                                    break;
                                }
                                if (bNotEmpty) {
                                    break;
                                    break;
                                } else {
                                    name = cursor.getString(iName);
                                    String number2 = cursor.getString(iNumber);
                                    if (TextUtils.isEmpty(name)) {
                                    }
                                }
                            }
                        }
                    }
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
        Log.d("BOOK", "------------------Read Contacts From Url-----------------------" + listContact.size());
        Log.d("BOOK", "bNotEmpty:" + bNotEmpty + "LLL:" + TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrDelete));
        Log.d("save11", "sPhoneAddr:" + Bt.sPhoneAddr + "sPhoneAddrRead:" + Bt_IpcObj.sPhoneAddrRead);
        boolean bAddrRead = Bt_IpcObj.sPhoneAddrRead.equalsIgnoreCase(Bt.sPhoneAddr);
        if (App_Bt.bLinkTwoPhone) {
            bAddrRead = Bt_IpcObj.sPhoneAddrRead.equalsIgnoreCase(Bt.sPhoneAddr) || Bt_IpcObj.sPhoneAddrRead1.equalsIgnoreCase(App_Bt.sPhone2_MAC[1]);
        }
        if (bNotEmpty && bAddrRead && TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrDelete)) {
            Log.d("BOOK1", "-------------auto downloadBook------------- listContact.size " + listContact.size());
            if (listContact.size() <= 0) {
                if (!App_Bt.bSaveContactsToUrl) {
                    List<SparseArray<String>> data2 = BTUtil.getInstance().readFile(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
                    if (data2 != null && data2.size() > 0) {
                        listContact.addAll(data2);
                    }
                } else if (App_Bt.bAutoSavePhoneBook && (data = BTUtil.getInstance().readFile(Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null))) != null && data.size() > 0) {
                    needSaveContacts = true;
                    listContact.addAll(data);
                }
                if (App_Bt.bAutoDownPhoneBook && listContact.size() <= 0) {
                    Log.d("BOOK", "-------------auto downloadBook-------------");
                    Bt_IpcObj.downloadBook();
                }
            }
            if (this.mGetListContact != null) {
                Main.removeRunnable_Ui(this.mGetListContact);
                this.mGetListContact.stopRun();
                this.mGetListContact = null;
            }
            this.mGetListContact = new GetListContact(listContact);
            Main.postRunnable_Ui(false, this.mGetListContact);
            if (needSaveContacts) {
                MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableSaveDownloadContacts(listContact), true, 1);
            }
        }
        Bt_IpcObj.sPhoneAddrRead = FinalChip.BSP_PLATFORM_Null;
        Bt_IpcObj.sPhoneAddrRead1 = FinalChip.BSP_PLATFORM_Null;
    }

    public void sortContact_Fav() {
        if (this.mListFavContact.size() > 0) {
            String language = Locale.getDefault().getLanguage();
            bIsTR = language.equalsIgnoreCase("tr");
            if (!App_Bt.mLocale.contains("zh") && !App_Bt.mLocale.contains("en")) {
                Collections.sort(this.mListFavContact, comparator2_Contact);
            } else {
                Collections.sort(this.mListFavContact, comparator_Contact);
            }
        }
    }

    public void sortContact() {
        if (this.mListContact.size() > 0) {
            String language = Locale.getDefault().getLanguage();
            bIsTR = language.equalsIgnoreCase("tr");
            if (!App_Bt.mLocale.contains("zh") && !App_Bt.mLocale.contains("en")) {
                Collections.sort(this.mListContact, comparator2_Contact);
            } else {
                Collections.sort(this.mListContact, comparator_Contact);
            }
        }
        if (App_Bt.bLinkTwoPhone && this.mListContact2.size() > 0) {
            String language2 = Locale.getDefault().getLanguage();
            bIsTR = language2.equalsIgnoreCase("tr");
            if (!App_Bt.mLocale.contains("zh") && !App_Bt.mLocale.contains("en")) {
                Collections.sort(this.mListContact2, comparator2_Contact);
            } else {
                Collections.sort(this.mListContact2, comparator_Contact);
            }
        }
    }

    public String queryNumberByName(String strName) {
        String number = FinalChip.BSP_PLATFORM_Null;
        if (TextUtils.isEmpty(strName)) {
            return FinalChip.BSP_PLATFORM_Null;
        }
        Cursor cursor = null;
        Cursor cursorNumber = null;
        try {
            try {
                cursor = MyApplication.mContentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
                if (cursor != null && cursor.getCount() > 0) {
                    while (cursor.moveToNext()) {
                        String contactName = cursor.getString(cursor.getColumnIndex("display_name"));
                        if (contactName.contains(strName) || strName.contains(contactName)) {
                            String[] mContactsProjection = {"data1"};
                            cursorNumber = MyApplication.mContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, mContactsProjection, "display_name = ? ", new String[]{contactName}, "display_name COLLATE LOCALIZED ASC");
                            if (cursorNumber == null || cursorNumber.getCount() <= 0) {
                                break;
                                break;
                            }
                            int iNumber = cursorNumber.getColumnIndex("data1");
                            if (!cursorNumber.moveToNext()) {
                                break;
                            }
                            number = cursorNumber.getString(iNumber);
                            break;
                        }
                    }
                }
                if (cursorNumber != null) {
                    try {
                        cursorNumber.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                if (cursorNumber != null) {
                    try {
                        cursorNumber.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            }
            if (TextUtils.isEmpty(number)) {
                for (SparseArray<String> map : App_Bt.mBtInfo.mListContact) {
                    String nameTmp = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (nameTmp.contains(strName) || strName.contains(nameTmp)) {
                        return map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    }
                }
                return number;
            }
            return number;
        } catch (Throwable th) {
            if (cursorNumber != null) {
                try {
                    cursorNumber.close();
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            throw th;
        }
    }

    public String queryNumberByPinYin(String str) {
        String pinYin;
        String simplePinyin;
        String string = FinalChip.BSP_PLATFORM_Null;
        int i = -1;
        String simplePinyin2 = HanziToPinyin.getSimplePinyin(str);
        if (!TextUtils.isEmpty(simplePinyin2)) {
            Cursor cursorQuery = null;
            Cursor cursorQuery2 = null;
            try {
                try {
                    cursorQuery = MyApplication.mContentResolver.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        while (cursorQuery.moveToNext()) {
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("display_name"));
                            if (CustomerUtil.isYFConfig()) {
                                simplePinyin = HanziToPinyin.getSimplePinyin(Pinyin.toPinyin(string2, FinalChip.BSP_PLATFORM_Null));
                            } else {
                                simplePinyin = HanziToPinyin.getSimplePinyin(HanziToPinyin.getPinYin(string2, false, false));
                            }
                            if (simplePinyin.contains(simplePinyin2) || simplePinyin2.contains(simplePinyin)) {
                                int iAbs = Math.abs(simplePinyin.length() - simplePinyin2.length());
                                if (iAbs < i || i == -1) {
                                    i = iAbs;
                                    cursorQuery2 = MyApplication.mContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data1"}, "display_name = ? ", new String[]{string2}, "display_name COLLATE LOCALIZED ASC");
                                    if (cursorQuery2 != null && cursorQuery2.getCount() > 0) {
                                        int columnIndex = cursorQuery2.getColumnIndex("data1");
                                        if (cursorQuery2.moveToNext()) {
                                            string = cursorQuery2.getString(columnIndex);
                                        }
                                    }
                                    if (i == 0) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (cursorQuery2 != null) {
                        try {
                            cursorQuery2.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    if (cursorQuery2 != null) {
                        try {
                            cursorQuery2.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
                if (cursorQuery2 != null) {
                    try {
                        cursorQuery2.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            }
            if (TextUtils.isEmpty(string)) {
                for (SparseArray<String> sparseArray : App_Bt.mBtInfo.mListContact) {
                    if (CustomerUtil.isYFConfig()) {
                        pinYin = Pinyin.toPinyin(sparseArray.get(FinalBtCtrl.ContactItem_Txt_Name), FinalChip.BSP_PLATFORM_Null);
                    } else {
                        pinYin = HanziToPinyin.getPinYin(sparseArray.get(FinalBtCtrl.ContactItem_Txt_Name), false, false);
                    }
                    if (pinYin.contains(simplePinyin2) || simplePinyin2.contains(pinYin)) {
                        int iAbs2 = Math.abs(pinYin.length() - simplePinyin2.length());
                        if (iAbs2 < i || i == -1) {
                            i = iAbs2;
                            string = sparseArray.get(FinalBtCtrl.ContactItem_Txt_Number);
                            if (i == 0) {
                                break;
                            }
                        }
                    }
                }
            }
        }
        return string;
    }

    public class RunnableSaveDownloadContacts implements Runnable {
        private boolean isException = false;
        private List<SparseArray<String>> listSave;

        public RunnableSaveDownloadContacts(List<SparseArray<String>> listSave) {
            this.listSave = listSave;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            boolean z;
            boolean z2;
            Log.d("BOOK", "------------------RunnableSaveDownloadContacts-----------------------");
            Log.d("gdy14", " 00 Bt_Info  RunnableSaveDownloadContacts bSaveContactsToUrl = " + App_Bt.bSaveContactsToUrl);
            if (App_Bt.bSaveContactsToUrl) {
                Log.d("gdy14", " 00 Bt_Info  RunnableSaveDownloadContacts bSaveContactsToUrl= " + App_Bt.bSaveContactsToUrl);
                Bt_IpcObj.sPhoneAddrWrite = Bt.sPhoneAddr;
                boolean bNotEmpty = TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrWrite) ? false : true;
                if (!App_Bt.bAutoDownPhoneBook && !App_Bt.bAutoSavePhoneBook) {
                    for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                        interfaceBt.showPostLoading(App_Bt.getInstance().uiApp.getString("bt_saving"));
                    }
                }
                try {
                    try {
                        Cursor cursor = MyApplication.mContentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, null, null, null);
                        ArrayList<ContentProviderOperation> ops = new ArrayList<>();
                        try {
                            if (cursor.moveToFirst()) {
                                int cnt = cursor.getCount();
                                int i = 0;
                                do {
                                    Log.d("gdy14", " 00 RunnableSaveDownloadContacts Bt.sPhoneAddr = " + Bt.sPhoneAddr + " Bt_IpcObj.sPhoneAddrWrite = " + Bt_IpcObj.sPhoneAddrWrite);
                                    if (bNotEmpty && !Bt_IpcObj.sPhoneAddrWrite.equalsIgnoreCase(Bt.sPhoneAddr)) {
                                        break;
                                    }
                                    Log.d("gdy14", " 11 RunnableSaveDownloadContacts bNotEmpty = " + bNotEmpty);
                                    if (!bNotEmpty) {
                                        break;
                                    }
                                    long Id = cursor.getLong(cursor.getColumnIndex("raw_contact_id"));
                                    Log.d("gdy14", " 22 RunnableSaveDownloadContacts Id = " + Id + " i = " + i);
                                    ops.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, Id)).build());
                                    if (i == cnt - 1 || i % 80 == 0) {
                                        MyApplication.mContentResolver.applyBatch("com.android.contacts", ops);
                                        ops.clear();
                                    }
                                    i++;
                                } while (cursor.moveToNext());
                            }
                        } catch (Exception e) {
                        }
                        ops.clear();
                        int size = this.listSave.size();
                        if (bNotEmpty && Bt_IpcObj.sPhoneAddrWrite.equalsIgnoreCase(Bt.sPhoneAddr)) {
                            for (int i2 = 0; i2 < size; i2++) {
                                Bt_Info.this.opsAdd(this.listSave, ops, i2);
                                if (i2 % 40 == 0 || i2 == size - 1) {
                                    MyApplication.mContentResolver.applyBatch("com.android.contacts", ops);
                                    ops.clear();
                                }
                            }
                        }
                        if (z) {
                            return;
                        }
                        if (z2) {
                            return;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        this.isException = true;
                        if (z) {
                            return;
                        }
                        if (z2) {
                            return;
                        }
                    }
                } finally {
                    Log.d("BOOK", "------------------Save Contacts In Url-----------------------");
                    for (InterfaceBt interfaceBt2 : App_Bt.mInterfaceBt) {
                        interfaceBt2.disPostLoading(0);
                    }
                    if (!App_Bt.bAutoDownPhoneBook && !App_Bt.bAutoSavePhoneBook && this.isException) {
                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_save_failed"));
                    }
                }
            }
        }
    }

    public class RunnableSaveDownloadContactsIntoFile implements Runnable {
        private List<SparseArray<String>> listSave;

        public RunnableSaveDownloadContactsIntoFile(List<SparseArray<String>> listSave) {
            this.listSave = listSave;
        }

        @Override // java.lang.Runnable
        public void run() {
            BTUtil.getInstance().writeFile(this.listSave, Bt.sPhoneAddr.replace(":", FinalChip.BSP_PLATFORM_Null));
        }
    }

    public void saveCallLog(List<SparseArray<String>> mList, List<SparseArray<String>> mList2) {
        Log.d("his7", " 000 Ipc_New saveCallLog listType mList = " + mList.toString());
        Log.d("his7", " 111 Ipc_New saveCallLog listType mList2 = " + mList2.toString());
        for (SparseArray<String> map : mList) {
            ContentValues values = new ContentValues();
            values.put("type", map.get(FinalBtCtrl.HistoryItem_Type));
            values.put("date", map.get(FinalBtCtrl.HistoryItem_Date));
            values.put(SpeechUtil.KEY_NUMBER, map.get(FinalBtCtrl.HistoryItem_Txt_Num));
            if (values != null) {
                Log.d("his3", " 222 Ipc_New saveCallLog listType " + values.toString());
                App_Bt.mBtInfo.insertCallLog(values, false);
            }
        }
        for (SparseArray<String> map2 : mList2) {
            ContentValues values2 = new ContentValues();
            values2.put("type", Integer.valueOf(Integer.parseInt(map2.get(FinalBtCtrl.HistoryItem_Type)) + App_Bt.iPhone2HisStep));
            values2.put("date", map2.get(FinalBtCtrl.HistoryItem_Date));
            values2.put(SpeechUtil.KEY_NUMBER, map2.get(FinalBtCtrl.HistoryItem_Txt_Num));
            if (values2 != null) {
                Log.d("his3", " 111 Ipc_New saveCallLog listType " + values2.toString());
                App_Bt.mBtInfo.insertCallLog(values2, false);
            }
        }
    }

    public void saveDownloadContacts(List<SparseArray<String>> list1, List<SparseArray<String>> list2) {
        List<SparseArray<String>> listSave = new ArrayList<>();
        App_Bt.getInstance().mySharePreference2.saveStringValue("phone1_mac", App_Bt.sPhone2_MAC[0]);
        App_Bt.getInstance().mySharePreference2.saveStringValue("phone2_mac", App_Bt.sPhone2_MAC[1]);
        App_Bt.getInstance().mySharePreference2.saveStringValue("phone1_name", App_Bt.sPhone2_NAME[0]);
        App_Bt.getInstance().mySharePreference2.saveStringValue("phone2_name", App_Bt.sPhone2_NAME[1]);
        Log.d("save11", " 00 Bt_Info  saveDownloadContacts list2 = " + list2.toString());
        listSave.clear();
        listSave.addAll(list2);
        if (listSave != null && listSave.size() > 0) {
            for (SparseArray<String> map : listSave) {
                String name = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                if (!name.contains("hfp2")) {
                    name = String.valueOf(name) + "hfp2";
                }
                map.put(FinalBtCtrl.ContactItem_Txt_Name, name);
            }
        }
        listSave.addAll(list1);
        Log.d("save11", " 11 Bt_Info  saveDownloadContacts listSave = " + listSave.toString());
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableSaveDownloadContacts(listSave), true, 1);
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableSaveDownloadContactsIntoFile(listSave), true, 1);
        list1.clear();
        list2.clear();
    }

    public void saveDownloadContacts() throws Throwable {
        Log.d("save11", " 000 Bt_Info  saveDownloadContacts  bLinkTwoPhone = " + App_Bt.bLinkTwoPhone);
        if (App_Bt.bLinkTwoPhone) {
            Bt.sPhoneAddr = App_Bt.sPhone2_MAC[0];
            if (this.mListContact == null && this.mListContact2 == null) {
                return;
            }
        } else if (this.mListContact == null || this.mListContact.size() <= 0) {
            return;
        }
        Log.d("con4", " 111 Bt_Info  saveDownloadContacts mListContact = " + this.mListContact.toString());
        Log.d("con4", " 222 Bt_Info  saveDownloadContacts mListContact2 = " + this.mListContact2.toString());
        List<SparseArray<String>> listSave = new ArrayList<>();
        if (App_Bt.bLinkTwoPhone) {
            App_Bt.getInstance().mySharePreference2.saveStringValue("phone1_mac", App_Bt.sPhone2_MAC[0]);
            App_Bt.getInstance().mySharePreference2.saveStringValue("phone2_mac", App_Bt.sPhone2_MAC[1]);
            App_Bt.getInstance().mySharePreference2.saveStringValue("phone1_name", App_Bt.sPhone2_NAME[0]);
            App_Bt.getInstance().mySharePreference2.saveStringValue("phone2_name", App_Bt.sPhone2_NAME[1]);
            Bt.sPhoneAddr = App_Bt.sPhone2_MAC[0];
            Log.d("save11", " 22 Bt_Info  saveDownloadContacts mListContact2 = " + this.mListContact2.toString());
            listSave.clear();
            listSave.addAll(this.mListContact2);
            if (listSave != null && listSave.size() > 0) {
                for (SparseArray<String> map : listSave) {
                    String name = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (!name.contains("hfp2")) {
                        name = String.valueOf(name) + "hfp2";
                    }
                    map.put(FinalBtCtrl.ContactItem_Txt_Name, name);
                }
            }
        }
        listSave.addAll(this.mListContact);
        Log.d("save11", " 33 Bt_Info saveDownloadContacts sPhoneAddr" + Bt.sPhoneAddr + " - listSave = " + listSave.toString());
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableSaveDownloadContacts(listSave), true, 1);
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, new RunnableSaveDownloadContactsIntoFile(listSave), true, 1);
    }

    public void savePhoneBook() throws Throwable {
        Log.d("save11", " 111 Bt_Info  savePhoneBook  ");
        if (App_Bt.bLinkTwoPhone) {
            if ((this.mListContact != null && this.mListContact.size() > 0) || (this.mListContact2 != null && this.mListContact2.size() > 0)) {
                saveDownloadContacts();
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_saving"));
                return;
            } else {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_no_download_data"));
                return;
            }
        }
        if (!TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrWrite) && Bt_IpcObj.sPhoneAddrWrite.equalsIgnoreCase(Bt.sPhoneAddr)) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_contacts_saved"));
        } else if (this.mListContact != null && this.mListContact.size() > 0) {
            saveDownloadContacts();
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_saving"));
        } else {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_no_download_data"));
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:25:0x001f */
    public String simplifyNumber(String number) {
        String strRet = number;
        if (!TextUtils.isEmpty(number)) {
            int pos = number.indexOf("+");
            int pos1 = number.indexOf("00");
            if (pos == 0 || pos1 == 0) {
                for (int i = 0; i < startNum.length; i++) {
                    try {
                        if (number.startsWith(startNum[i])) {
                            int len = startNum[i].length();
                            if (startNum[i].contains("33")) {
                                strRet = number.replace(startNum[i], "0");
                                break;
                            }
                            if (number.length() > len) {
                                strRet = number.substring(len);
                                break;
                            }
                            strRet = number.replace(startNum[i], FinalChip.BSP_PLATFORM_Null);
                            break;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return strRet.replaceAll("\\D", FinalChip.BSP_PLATFORM_Null);
    }

    public String getNameByNumber(String number) {
        if (App_Bt.bLinkTwoPhone) {
            Log.d("talk", " 22 sendBtPhoneState  number = " + number + "  sPhone_callin_id = " + App_Bt.sPhone_callin_id + "  sPhone2_id = " + App_Bt.sPhone2_id);
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                return getNameByNumber(number, App_Bt.sPhone_callin_id == 0 ? this.mListContact : this.mListContact2);
            }
            return getNameByNumber(number, App_Bt.sPhone2_id == 0 ? this.mListContact : this.mListContact2);
        }
        return getNameByNumber(number, this.mListContact);
    }

    public String getNameByNumber(String number, List<SparseArray<String>> list) {
        String strName = FinalChip.BSP_PLATFORM_Null;
        if (!TextUtils.isEmpty(number)) {
            if (list != null && list.size() > 0) {
                try {
                    String number2 = simplifyNumber(number);
                    for (SparseArray<String> map : list) {
                        String strTempNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                        App_Bt.iTalkHead = -1;
                        if (match(strTempNumber, number2)) {
                            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                                String headIco = map.get(FinalBtCtrl.ContactItem_HeadIcon);
                                if (!TextUtils.isEmpty(headIco)) {
                                    App_Bt.iTalkHead = Integer.parseInt(headIco);
                                }
                            }
                            strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) && App_Bt.mBtInfo.mListContactHeadId != null && App_Bt.mBtInfo.mListContactHeadId.size() > 0) {
                String number3 = simplifyNumber(number);
                for (SparseArray<String> map2 : App_Bt.mBtInfo.mListContactHeadId) {
                    String strTempNumber2 = map2.get(FinalBtCtrl.ContactItem_Txt_Number);
                    App_Bt.iTalkHead = -1;
                    if (match(strTempNumber2, number3)) {
                        String headIco2 = map2.get(FinalBtCtrl.ContactItem_HeadIcon);
                        if (!TextUtils.isEmpty(headIco2)) {
                            App_Bt.iTalkHead = Integer.parseInt(headIco2);
                        }
                        strName = map2.get(FinalBtCtrl.ContactItem_Txt_Name);
                    }
                }
            }
        }
        Log.d("save11", " getNameByNumber strName = " + strName);
        if (App_Bt.bLinkTwoPhone && strName.contains("hfp2")) {
            return strName.replace("hfp2", FinalChip.BSP_PLATFORM_Null);
        }
        return strName;
    }

    private boolean match(String localNumber, String number) {
        int pos;
        String tempNumber = number;
        if (CustomerUtil.isYFConfig() && !TextUtils.isEmpty(App_Bt.sDialInput) && (pos = number.lastIndexOf(App_Bt.sDialInput)) > 0) {
            tempNumber = number.substring(0, pos);
        }
        if (TextUtils.isEmpty(localNumber) || TextUtils.isEmpty(number)) {
            return false;
        }
        if (simplifyNumber(localNumber).equals(tempNumber)) {
            return true;
        }
        if (localNumber.startsWith("+972")) {
            tempNumber = tempNumber.substring(1);
        }
        if (!localNumber.endsWith(tempNumber) || localNumber.length() - tempNumber.length() > 6 || tempNumber.length() < 7) {
            return CustomerUtil.isXCConfig() && localNumber.contains(tempNumber);
        }
        return true;
    }

    public SparseArray<String> getMapContact(String name, String number) {
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                return getMapContact(name, number, this.mListContact);
            }
            return getMapContact(name, number, this.mListContact2);
        }
        return getMapContact(name, number, this.mListContact);
    }

    public SparseArray<String> getMapContactDownload(String name, String number) {
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                return getMapContact(name, number, this.mListContactDownload);
            }
            return getMapContact(name, number, this.mListContactDownload2);
        }
        return getMapContact(name, number, this.mListContactDownload);
    }

    public SparseArray<String> getMapContact(String name, String number, List<SparseArray<String>> listContact) {
        if (!TextUtils.isEmpty(number) && listContact != null) {
            for (SparseArray<String> map : listContact) {
                if (map.get(FinalBtCtrl.ContactItem_Txt_Number).equals(number) && map.get(FinalBtCtrl.ContactItem_Txt_Name).equals(name)) {
                    return map;
                }
            }
        }
        return null;
    }

    public void handlerPairedBt(String addr, String name) {
        if (CustomerUtil.isDZSJMIB4Config() && !TextUtils.isEmpty(addr) && !TextUtils.isEmpty(name) && App_Bt.mBtInfo.mListPair != null && App_Bt.mBtInfo.mListPair.size() < 1) {
            SparseArray<String> dev = new SparseArray<>();
            dev.put(FinalBtCtrl.PairItem_Txt_Addr, addr);
            dev.put(FinalBtCtrl.PairItem_Txt_Name, name);
            dev.put(FinalBtCtrl.PairItem_Index, Integer.toString(2));
            Log.d("gdy6", " 00 mListPair.add name = " + name);
            App_Bt.mBtInfo.mListPair.add(dev);
        }
    }

    public void SendHistoryToServer(boolean clear) {
        if (App_Bt.bSyncInfo) {
            List<SparseArray<String>> myList = new ArrayList<>();
            if (App_Bt.bHistoryLogAllFlag) {
                myList.addAll(App_Bt.mBtInfo.mListHistoryAll);
            } else {
                myList.addAll(App_Bt.mBtInfo.mListHistoryIn);
                myList.addAll(App_Bt.mBtInfo.mListHistoryOut);
                myList.addAll(App_Bt.mBtInfo.mListHistoryMiss);
            }
            Collections.sort(myList, comparator_History);
            int size = myList.size();
            String[] item = new String[5];
            if (!clear) {
                for (int i = 0; i < 5; i++) {
                    if (size > i) {
                        String name = myList.get(i).get(FinalBtCtrl.HistoryItem_Txt_Name);
                        String num = myList.get(i).get(FinalBtCtrl.HistoryItem_Txt_Num);
                        String type = myList.get(i).get(FinalBtCtrl.HistoryItem_Type);
                        String type2 = type;
                        String date = myList.get(i).get(FinalBtCtrl.HistoryItem_Date);
                        if (!TextUtils.isEmpty(date)) {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            date = simpleDateFormat.format(new Date(Long.parseLong(date)));
                        }
                        item[i] = String.valueOf(type2) + "*-*" + num + "*-*" + (TextUtils.isEmpty(name) ? num : name) + "*-*" + date;
                    }
                }
            }
            Bt_IpcObj.sendHistory(item[0], item[1], item[2], item[3], item[4]);
        }
    }
}
