package com.syu.bt.page.pop;

import android.graphics.Color;
import android.support.v4.os.EnvironmentCompat;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.SparseArray;
import android.view.View;
import com.github.promeg.pinyinhelper.Pinyin;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.runnable.Runnable_getNameByNumberPopBtBook;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBt_Book extends MyPage {
    static Comparator<SparseArray<String>> comparator_Contact = new Comparator<SparseArray<String>>() { // from class: com.syu.bt.page.pop.Page_PopBt_Book.3
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
            int len1 = lName.length();
            int len2 = rName.length();
            if (len1 < len2) {
                return -1;
            }
            if (len1 > len2) {
                return 1;
            }
            return lName.compareTo(rName);
        }
    };
    boolean bShowAllListBook;
    JGridView mGridBook;
    JGridView mGridHistory;
    List<SparseArray<String>> mList;
    List<SparseArray<String>> mListHistory;
    public Runnable mRunnableQueryHistory;
    public Runnable mRunnableResetListHistory;

    public Page_PopBt_Book(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
        this.bShowAllListBook = false;
        this.mListHistory = null;
        this.mList = new ArrayList();
        this.mRunnableResetListHistory = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBt_Book.1
            @Override // java.lang.Runnable
            public void run() {
                Page_PopBt_Book.this.resetList_History();
            }
        };
        this.mRunnableQueryHistory = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopBt_Book.2
            @Override // java.lang.Runnable
            public void run() {
                Page_PopBt_Book.this.mListHistory = App_Bt.mBtInfo.queryCallLogAll();
                Main.postRunnable_Ui(true, Page_PopBt_Book.this.mRunnableResetListHistory);
            }
        };
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mGridBook = (JGridView) getPage().getChildViewByid(96);
        this.mGridHistory = (JGridView) getPage().getChildViewByid(97);
        showGridBook();
    }

    public void showGridBook() {
        if (this.mGridBook != null) {
            this.mGridBook.setVisibility(0);
        }
        if (this.mGridHistory != null) {
            this.mGridHistory.setVisibility(8);
        }
    }

    public void showGridHistory() {
        if (this.mGridBook != null) {
            this.mGridBook.setVisibility(8);
        }
        if (this.mGridHistory != null) {
            this.mGridHistory.setVisibility(0);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        App_Bt.mBtInfo.sortContact();
        this.mList.clear();
        this.mList.addAll(App_Bt.mBtInfo.mListContact);
        showGridBook();
        updateListBook();
    }

    public void updateListBook() {
        resetList_Book(this.mList);
    }

    public void resetList_Book(List<SparseArray<String>> list) {
        this.bShowAllListBook = list == this.mList;
        if (!Bt_IpcObj.isConnect()) {
            MyApplication.resetList(this.mGridBook, (List<SparseArray<String>>) null);
        } else {
            MyApplication.resetList(this.mGridBook, list);
        }
    }

    public void resetList_History() {
        if (!Bt_IpcObj.isConnect()) {
            MyApplication.resetList(this.mGridHistory, (List<SparseArray<String>>) null);
        } else {
            MyApplication.resetList(this.mGridHistory, this.mListHistory);
        }
    }

    public boolean isNumber(String str) {
        Pattern p = Pattern.compile("[0-9]*");
        return p.matcher(str).matches();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int id = gridView.getId();
        switch (id) {
            case 96:
                View viewContent = page.getChildViewByid(98);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                if (map.size() > 0) {
                    JText textNumber = (JText) page.getChildViewByid(100);
                    JText textName = (JText) page.getChildViewByid(101);
                    String strNumer = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    String strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    boolean bHighlightNumber = false;
                    boolean bHighlightName = false;
                    if (!this.bShowAllListBook && !TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        int iStart = strNumer.indexOf(Bt.sPhoneNumber);
                        if (iStart >= 0) {
                            SpannableStringBuilder style = new SpannableStringBuilder(strNumer);
                            style.setSpan(new ForegroundColorSpan(Color.rgb(0, 230, 0)), iStart, Bt.sPhoneNumber.length() + iStart, 33);
                            textNumber.setText(style);
                            bHighlightNumber = true;
                        } else {
                            String strIndex1 = map.get(FinalBtCtrl.ContactItem_Index1);
                            String strIndex2 = map.get(FinalBtCtrl.ContactItem_Index2);
                            if (strIndex1 != null && strIndex2 != null) {
                                try {
                                    int index1 = Integer.parseInt(strIndex1);
                                    int index2 = Integer.parseInt(strIndex2);
                                    if (index1 >= 0) {
                                        SpannableStringBuilder style2 = new SpannableStringBuilder(strName);
                                        style2.setSpan(new ForegroundColorSpan(Color.rgb(0, 230, 0)), index1, index2, 33);
                                        textName.setText(style2);
                                        bHighlightName = true;
                                    }
                                } catch (Exception e) {
                                }
                            }
                        }
                    }
                    if (!bHighlightNumber) {
                        textNumber.setText(strNumer);
                    }
                    if (!bHighlightName) {
                        textName.setText(strName);
                    }
                }
                break;
            case 97:
                String num = map.get(FinalBtCtrl.HistoryItem_Txt_Num);
                String date = map.get(FinalBtCtrl.HistoryItem_Txt_Date);
                View viewContent2 = page.getChildViewByid(98);
                if (viewContent2 != null) {
                    if (map.size() == 0) {
                        viewContent2.setVisibility(8);
                    } else {
                        viewContent2.setVisibility(0);
                    }
                }
                JText textName2 = (JText) page.getChildViewByid(101);
                JText textNum = (JText) page.getChildViewByid(100);
                JText textDate = (JText) page.getChildViewByid(102);
                if (textNum != null) {
                    textNum.setText(num);
                }
                if (textName2 != null) {
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumberPopBtBook, new Runnable_getNameByNumberPopBtBook(this.mList, textName2, num, App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN), true), false, 5);
                }
                if (textDate != null) {
                    textDate.setText(date);
                }
                int iType = Integer.parseInt(map.get(FinalBtCtrl.HistoryItem_Type));
                View view = page.getChildViewByid(103);
                if (view != null) {
                    MyUiItem item = (MyUiItem) view.getTag();
                    if (item.getParaStr() != null) {
                        if (view instanceof JView) {
                            JView viewIco = (JView) view;
                            String str = null;
                            String[] strs = item.getParaStr();
                            switch (iType) {
                                case 1:
                                    str = strs[0];
                                    break;
                                case 2:
                                    str = strs[1];
                                    break;
                                case 3:
                                    str = strs[2];
                                    break;
                            }
                            if (str == null) {
                                str = item.getStrDrawable();
                            }
                            if (viewIco.getStrDrawable() != str && str != null) {
                                viewIco.setStrDrawable(str, true);
                                break;
                            }
                        }
                    } else {
                        switch (iType) {
                            case 1:
                                view.setBackground(getPage().getDrawableFromPath("bt_icoincall", getPage().mDrawables, getPage().mDrawables));
                                break;
                            case 2:
                                view.setBackground(getPage().getDrawableFromPath("bt_icooutcall", getPage().mDrawables, getPage().mDrawables));
                                break;
                            case 3:
                                view.setBackground(getPage().getDrawableFromPath("bt_icomisscall", getPage().mDrawables, getPage().mDrawables));
                                break;
                        }
                    }
                }
                break;
        }
    }

    public StringBuffer ConvPinyin2Num(String strPinyin) {
        StringBuffer strBuffer = new StringBuffer();
        String strLower = strPinyin.toUpperCase();
        int len = strLower.length();
        for (int i = 0; i < len; i++) {
            char c = strLower.charAt(i);
            switch (c) {
                case 'A':
                case 'B':
                case 'C':
                    strBuffer.append('2');
                    break;
                case 'D':
                case 'E':
                case 'F':
                    strBuffer.append('3');
                    break;
                case 'G':
                case 'H':
                case 'I':
                    strBuffer.append('4');
                    break;
                case 'J':
                case 'K':
                case 'L':
                    strBuffer.append('5');
                    break;
                case 'M':
                case 'N':
                case 'O':
                    strBuffer.append('6');
                    break;
                case 'P':
                case 'Q':
                case 'R':
                case 'S':
                    strBuffer.append('7');
                    break;
                case 'T':
                case 'U':
                case 'V':
                    strBuffer.append('8');
                    break;
                case 'W':
                case 'X':
                case 'Y':
                case 'Z':
                    strBuffer.append('9');
                    break;
            }
        }
        if (strBuffer.length() == 0) {
            strBuffer.append(strPinyin);
        }
        return strBuffer;
    }

    public void queryCalls() {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBHistory, this.mRunnableQueryHistory, true, 10);
    }

    public boolean query(String[] pyNums, String qry, SparseArray<String> map) {
        if (pyNums == null) {
            return false;
        }
        int lenPys = pyNums.length;
        int lenQry = qry.length();
        for (int j = 0; j < lenPys; j++) {
            boolean bFix = true;
            int index1 = j;
            int index2 = 0;
            int i = 0;
            while (i < lenQry) {
                char c = qry.charAt(i);
                if (index1 >= lenPys) {
                    bFix = false;
                    break;
                }
                if (pyNums[index1].length() == 0) {
                    bFix = false;
                    break;
                }
                if (pyNums[index1].charAt(index2) == c) {
                    index2++;
                    if (index2 >= pyNums[index1].length()) {
                        index1++;
                        index2 = 0;
                    }
                } else {
                    if (index2 == 0) {
                        bFix = false;
                        break;
                    }
                    index1++;
                    index2 = 0;
                    i--;
                }
                i++;
            }
            if (bFix) {
                int index_Fix1 = j;
                int index_Fix2 = (index1 - j) + 1;
                if (index_Fix2 > lenPys) {
                    index_Fix2 = lenPys;
                }
                map.put(FinalBtCtrl.ContactItem_Index1, Integer.toString(index_Fix1));
                map.put(FinalBtCtrl.ContactItem_Index2, Integer.toString(index_Fix2));
                return true;
            }
        }
        return false;
    }

    public void queryContacts(String qry) {
        String strPinYin;
        if (qry.equals("*")) {
            showGridHistory();
            queryCalls();
            return;
        }
        showGridBook();
        if (TextUtils.isEmpty(qry)) {
            resetList_Book(this.mList);
            return;
        }
        List<SparseArray<String>> listContact = new ArrayList<>();
        if (isNumber(qry)) {
            if (!qry.contains("1")) {
                List<SparseArray<String>> listContact1 = new ArrayList<>();
                for (SparseArray<String> map : this.mList) {
                    String number = ConvPinyin2Num(HanziToPinyin.getHeadPinyin(map.get(FinalBtCtrl.ContactItem_Txt_Name))).toString();
                    if (number.contains(qry)) {
                        int iStart = number.indexOf(qry);
                        int iEnd = iStart + qry.length();
                        map.put(FinalBtCtrl.ContactItem_Index1, Integer.toString(iStart));
                        map.put(FinalBtCtrl.ContactItem_Index2, Integer.toString(iEnd));
                        listContact1.add(map);
                    }
                }
                Collections.sort(listContact1, comparator_Contact);
                listContact.addAll(listContact1);
                List<SparseArray<String>> listContact2 = new ArrayList<>();
                for (SparseArray<String> map2 : this.mList) {
                    if (!listContact.contains(map2)) {
                        String name = map2.get(FinalBtCtrl.ContactItem_Txt_Name);
                        if (CustomerUtil.isYFConfig()) {
                            strPinYin = Pinyin.toPinyin(name, FinalChip.BSP_PLATFORM_Null);
                        } else {
                            strPinYin = HanziToPinyin.getPinYin(name, false, false);
                        }
                        String[] pys = strPinYin.split(HanziToPinyin.Token.SEPARATOR);
                        int len = pys.length;
                        String[] pyNums = new String[len];
                        for (int i = 0; i < len; i++) {
                            pyNums[i] = ConvPinyin2Num(pys[i]).toString();
                        }
                        boolean bFix = query(pyNums, qry, map2);
                        if (bFix) {
                            listContact2.add(map2);
                        }
                    }
                }
                Collections.sort(listContact2, comparator_Contact);
                listContact.addAll(listContact2);
            }
            for (SparseArray<String> map3 : this.mList) {
                if (!listContact.contains(map3) && map3.get(FinalBtCtrl.ContactItem_Txt_Number).contains(qry)) {
                    listContact.add(map3);
                }
            }
            resetList_Book(listContact);
            return;
        }
        for (SparseArray<String> map4 : this.mList) {
            String name2 = map4.get(FinalBtCtrl.ContactItem_Txt_Name);
            if (name2.contains(qry) || HanziToPinyin.getHeadPinyin(name2).startsWith(qry.toUpperCase())) {
                listContact.add(map4);
            }
        }
        resetList_Book(listContact);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        ResponseClick(id);
    }

    public void ResponseClick(int id) {
        switch (id) {
            case 43:
                Bt_IpcObj.downloadBook();
                break;
        }
    }
}
