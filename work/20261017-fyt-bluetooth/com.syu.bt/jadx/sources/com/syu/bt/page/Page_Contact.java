package com.syu.bt.page;

import android.R;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.SlideBarView;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.db.Bt_Info;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.MyListCoverTask;
import com.syu.bt.util.SpUtil;
import com.syu.bt.util.ToastUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Page_Contact extends MyPage {
    private static long lastDownloadTime;
    public Act_Bt actBt;
    private boolean bRoolKey;
    boolean bTop;
    int[] color_day;
    int[] color_night;
    public int conPhone_id;
    boolean editFocus;
    public int key_id;
    public int key_id_p;
    ContentObserver mContactsObserver;
    public boolean mDownloading;
    public EditText mEditSearch;
    public boolean mGridClickDial;
    public JGridView mGridView;
    public int mInputType;
    private int mPosFocusCpy;
    private int mPosMoveTo;
    Runnable mRunQueryContacts;
    Runnable mRun_NotifyDataSetChanged;
    public Runnable mRunnableQueryContact;
    Runnable mRunnableSearchRunnable;
    Runnable mRunnable_resetList;
    public SlideBarView mSlideBar;
    View mViewKey;
    MyListCoverTask myListTask;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    public Random random;
    int searchColor;
    public String[] str_ContIcon;
    public JText tvContact_Num;
    public TextView tvLetterTitle;
    public JText tvTxtPhone1;
    public JText tvTxtPhone1_p;
    public JText tvTxtPhone2;
    public JText tvTxtPhone2_p;
    public JText tvTxtSum;
    public JText tvTxtSumStr;
    public JButton vContact_Phone;
    public JButton vContact_View_move;
    public JButton vContact_View_move1920;
    View vNoData;
    public static String strSearch = FinalChip.BSP_PLATFORM_Null;
    public static SparseArray<String> mClick = new SparseArray<>();
    public static boolean bDrawListAlbum = true;
    public static final String[] mStrT9 = {HanziToPinyin.Token.SEPARATOR, "aAbBcC", "dDeEfF", "gGhHiI", "jJkKlL", "mMnNoO", "pPqQrRsS", "tTuUvV", "wWxXyYzZ"};

    public Page_Contact(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mDownloading = false;
        this.mGridClickDial = false;
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        this.bRoolKey = false;
        this.editFocus = false;
        this.bTop = false;
        this.key_id = 255;
        this.key_id_p = 255;
        this.searchColor = -16711936;
        this.nightBtn = new int[]{FinalBtCtrl.Contact_Btn_Backspace, FinalBtCtrl.Contact_Btn_Search, FinalBtCtrl.Contact_Btn_Download, FinalBtCtrl.Contact_Btn_Clear, FinalBtCtrl.Contact_Btn_Save, 10240, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set, FinalBtCtrl.Contact_Btn_1, FinalBtCtrl.Contact_Btn_2, FinalBtCtrl.Contact_Btn_3, FinalBtCtrl.Contact_Btn_4, FinalBtCtrl.Contact_Btn_5, FinalBtCtrl.Contact_Btn_6, FinalBtCtrl.Contact_Btn_7, FinalBtCtrl.Contact_Btn_8, FinalBtCtrl.Contact_Btn_9, FinalBtCtrl.Contact_Btn_0, FinalBtCtrl.Contact_Btn_X1, FinalBtCtrl.Contact_Btn_J1};
        this.nightView = new int[]{FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.TZY_View_Change_3, FinalBtCtrl.TZY_View_Change_4, FinalBtCtrl.MenuView_bk, FinalBtCtrl.Iv_Edit_Search};
        this.nightText = new int[]{FinalBtCtrl.Contact_Txt0, FinalBtCtrl.Contact_Txt1, FinalBtCtrl.Contact_Txt2, FinalBtCtrl.Contact_Txt3, FinalBtCtrl.Contact_Num};
        this.mRunnable_resetList = new Runnable() { // from class: com.syu.bt.page.Page_Contact.1
            @Override // java.lang.Runnable
            public void run() {
                Page_Contact.this.actBt.resetList();
            }
        };
        this.mRunnableQueryContact = new Runnable() { // from class: com.syu.bt.page.Page_Contact.2
            @Override // java.lang.Runnable
            public void run() {
                App_Bt.mBtInfo.queryContacts();
                if (!App_Bt.bDownloading) {
                    Page_Contact.this.actBt.disPostLoading(0);
                }
                Main.postRunnable_Ui(true, Page_Contact.this.mRunnable_resetList);
            }
        };
        this.mContactsObserver = new ContentObserver(new Handler()) { // from class: com.syu.bt.page.Page_Contact.3
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
            }
        };
        this.mRunnableSearchRunnable = new Runnable() { // from class: com.syu.bt.page.Page_Contact.4
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < App_Bt.mBtInfo.mPinYin.length; i++) {
                    char pinyin = App_Bt.mBtInfo.mPinYin[i];
                    JButton btn = (JButton) Page_Contact.this.getPage().getChildViewByid(i + FinalBtCtrl.Contact_Btn_Jj);
                    if ((pinyin >= 'A' && pinyin <= 'Z') || pinyin == '#') {
                        if (btn != null) {
                            btn.setEnabled(true);
                        }
                    } else if (btn != null) {
                        btn.setEnabled(false);
                    }
                }
            }
        };
        this.mRunQueryContacts = new Runnable() { // from class: com.syu.bt.page.Page_Contact.5
            @Override // java.lang.Runnable
            public void run() {
                Page_Contact.this.queryContacts(Page_Contact.strSearch);
            }
        };
        this.mRun_NotifyDataSetChanged = new Runnable() { // from class: com.syu.bt.page.Page_Contact.6
            @Override // java.lang.Runnable
            public void run() {
                if (Page_Contact.this.mGridView != null) {
                    Log.d("gdy6666", " ***** mRun_NotifyDataSetChanged   notifyDataSetChanged ");
                    Page_Contact.this.mGridView.notifyDataSetChanged();
                }
            }
        };
        this.conPhone_id = 255;
        this.str_ContIcon = new String[]{"Cont_icon1", "Cont_icon2", "Cont_icon3", "Cont_icon4", "Cont_icon5"};
        this.random = new Random();
        this.color_day = new int[]{ViewCompat.MEASURED_STATE_MASK, Color.rgb(39, 249, 211)};
        this.color_night = new int[]{-1, Color.rgb(39, 249, 211)};
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            App_Bt.bIsFavList = false;
            this.bTop = true;
            App_Bt.getInstance().mIpcObj.recoverAppId();
            if (App_Bt.bLinkTwoPhone) {
                showPhone();
            }
            resetList();
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
            }
            if (!App_Bt.bAutoDownPhoneBook && App_Bt.bDownloading && CustomerUtil.isZhangConfig()) {
                this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
            }
            if (this.tvContact_Num != null) {
                String str_Num = FinalChip.BSP_PLATFORM_Null;
                if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                    str_Num = "  " + App_Bt.mBtInfo.mListContact.size() + "  ";
                }
                this.tvContact_Num.setText(str_Num);
            }
            if (App_Bt.bDownloading) {
                this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
            } else if (!TextUtils.isEmpty(Bt_IpcObj.sPhoneAddrDelete)) {
                this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_deling"));
            }
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
                Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 700L);
            }
        }
    }

    public void resetList(List<SparseArray<String>> list) {
        Log.d("con3", " ** resetList  ");
        if (CustomerUtil.isYFConfig()) {
            resetButtonState(list);
        }
        if (!Bt_IpcObj.isConnect()) {
            MyApplication.resetList(this.mGridView, (List<SparseArray<String>>) null);
        } else {
            MyApplication.resetList(this.mGridView, list);
            if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                this.mGridView.scrollToPosition(0);
            }
        }
        if (list.size() > 0 && Bt_IpcObj.isConnect()) {
            if (this.tvTxtSum != null) {
                this.tvTxtSum.setText(Integer.toString(list.size()));
                this.tvTxtSum.setVisibility(0);
            }
            if (this.tvTxtSumStr != null) {
                this.tvTxtSumStr.setVisibility(0);
            }
        } else {
            if (this.tvTxtSum != null) {
                this.tvTxtSum.setVisibility(8);
            }
            if (this.tvTxtSumStr != null) {
                this.tvTxtSumStr.setVisibility(8);
            }
        }
        if (this.vNoData != null) {
            this.vNoData.setVisibility((list.size() <= 0 || !Bt_IpcObj.isConnect()) ? 0 : 8);
        }
    }

    public void setContactNum(String num) {
        if (this.vNoData != null) {
            this.vNoData.setVisibility(Integer.parseInt(num) > 0 ? 8 : 0);
        }
        if (this.tvTxtSum != null) {
            if (this.tvTxtSum.getVisibility() != 0) {
                this.tvTxtSum.setVisibility(0);
            }
            this.tvTxtSum.setText(num);
        }
        if (this.tvTxtSumStr != null && this.tvTxtSumStr.getVisibility() != 0) {
            this.tvTxtSumStr.setVisibility(0);
        }
    }

    public void scanContact() {
        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDBContact, this.mRunnableQueryContact, true, 1);
        App_Bt.queryCallLog();
    }

    public void resetButtonState(List<SparseArray<String>> list) {
        if (App_Bt.bIsFavList) {
            JButton btn = (JButton) getPage().getChildViewByid(10240);
            if (btn != null) {
                btn.setFocus(true);
            }
            JButton btn2 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_PhoneList);
            if (btn2 != null) {
                btn2.setFocus(false);
            }
        } else {
            JButton btn3 = (JButton) getPage().getChildViewByid(10240);
            if (btn3 != null) {
                btn3.setFocus(false);
            }
            JButton btn4 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_PhoneList);
            if (btn4 != null) {
                btn4.setFocus(true);
            }
        }
        removePinYinSearch();
        String[] abc = new String[27];
        for (int i = 0; i < App_Bt.mBtInfo.mPinYin.length; i++) {
            App_Bt.mBtInfo.mPinYin[i] = ' ';
            abc[i] = Bt_Info.b[i];
        }
        if (Bt_IpcObj.isConnect()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.get(i2).put(FinalBtCtrl.ContactItem_Txt_ABC, FinalChip.BSP_PLATFORM_Null);
                char pinyin = list.get(i2).get(FinalBtCtrl.ContactItem_Txt_NameCompare).charAt(0);
                if (pinyin >= 'A' && pinyin <= 'Z') {
                    App_Bt.mBtInfo.mPinYin[pinyin - '@'] = pinyin;
                    if (!TextUtils.isEmpty(abc[pinyin - '@'])) {
                        list.get(i2).put(FinalBtCtrl.ContactItem_Txt_ABC, abc[pinyin - '@'].toLowerCase());
                        abc[pinyin - '@'] = FinalChip.BSP_PLATFORM_Null;
                    }
                } else {
                    App_Bt.mBtInfo.mPinYin[0] = '#';
                    if (!TextUtils.isEmpty(abc[0])) {
                        list.get(i2).put(FinalBtCtrl.ContactItem_Txt_ABC, "0");
                        abc[0] = FinalChip.BSP_PLATFORM_Null;
                    }
                }
            }
        }
        showPinYinSearch();
    }

    public void removePinYinSearch() {
        Main.removeRunnable_Ui(this.mRunnableSearchRunnable);
    }

    public void showPinYinSearch() {
        Main.postRunnable_Ui(false, this.mRunnableSearchRunnable, 1000L);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        this.bTop = false;
        if (this.mEditSearch != null) {
            EditText editText = this.mEditSearch;
            strSearch = FinalChip.BSP_PLATFORM_Null;
            editText.setText(FinalChip.BSP_PLATFORM_Null);
            this.mEditSearch.clearFocus();
            App_Bt.getInstance().hideInput(this.mEditSearch);
        }
        this.actBt.uiUtil.disLoading();
    }

    public class MyTextWatcher implements TextWatcher {
        private EditText editSearch;

        public MyTextWatcher(EditText editSearch) {
            this.editSearch = editSearch;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            Page_Contact.strSearch = this.editSearch.getText().toString();
            this.editSearch.setSelection(Page_Contact.strSearch.length());
            Main.postRunnable_Ui(true, Page_Contact.this.mRunQueryContacts, 500L);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        LinearLayout lay;
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.mEditSearch = (EditText) getPage().getChildViewByid(FinalBtCtrl.Contact_Edit_Search);
        this.tvContact_Num = (JText) getPage().getChildViewByid(FinalBtCtrl.Contact_Num);
        this.vContact_Phone = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Phone_Switch);
        this.tvTxtPhone1 = (JText) getPage().getChildViewByid(FinalBtCtrl.Tv_Phone_1);
        this.tvTxtPhone1_p = (JText) getPage().getChildViewByid(FinalBtCtrl.Tv_Phone_1_p);
        this.tvTxtPhone2 = (JText) getPage().getChildViewByid(FinalBtCtrl.Tv_Phone_2);
        this.tvTxtPhone2_p = (JText) getPage().getChildViewByid(FinalBtCtrl.Tv_Phone_2_p);
        View viewPhone1 = getPage().getChildViewByid(FinalBtCtrl.view_phone1);
        if (viewPhone1 != null) {
            viewPhone1.setVisibility(App_Bt.bLinkTwoPhone ? 8 : 0);
        }
        View viewPhone2 = getPage().getChildViewByid(FinalBtCtrl.view_phone2);
        if (viewPhone2 != null) {
            viewPhone2.setVisibility(App_Bt.bLinkTwoPhone ? 0 : 8);
        }
        if (App_Bt.bLinkTwoPhone_test) {
            if (viewPhone1 != null) {
                viewPhone1.setVisibility(8);
            }
            if (viewPhone2 != null) {
                viewPhone2.setVisibility(0);
            }
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            if (this.tvContact_Num != null) {
                this.tvContact_Num.setTypeface(Typeface.MONOSPACE);
            }
            if (this.mEditSearch != null) {
                this.mEditSearch.setTypeface(Typeface.MONOSPACE);
            }
        }
        if (this.mEditSearch != null) {
            this.mInputType = this.mEditSearch.getInputType();
            this.mEditSearch.setSingleLine();
            this.mEditSearch.setFocusableInTouchMode(true);
            this.mEditSearch.setFocusable(true);
            this.mEditSearch.setEllipsize(TextUtils.TruncateAt.START);
            this.mEditSearch.setImeOptions(6);
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && MyApplication.mStrFolderAsset.equals("UI5")) {
                this.mEditSearch.setHintTextColor(ViewCompat.MEASURED_STATE_MASK);
            } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_8581")) {
                this.mEditSearch.setHintTextColor(-1);
            }
            this.mEditSearch.setHint(App_Bt.getInstance().uiApp.getString("bt_contact_search"));
            this.mEditSearch.addTextChangedListener(new MyTextWatcher(this.mEditSearch));
            this.mEditSearch.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.syu.bt.page.Page_Contact.7
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View arg0, boolean arg1) {
                    Page_Contact.this.editFocus = arg1;
                }
            });
            this.mEditSearch.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Contact.8
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent arg1) {
                    if (Page_Contact.this.mEditSearch != null) {
                        Page_Contact.this.clearPageFocus();
                        Page_Contact.this.mEditSearch.clearFocus();
                        Page_Contact.this.mEditSearch.requestFocus();
                        App_Bt.getInstance().showInput(Page_Contact.this.mEditSearch);
                        return false;
                    }
                    return false;
                }
            });
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                this.mEditSearch.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
            }
        }
        Log.d("gdy6666", " ***** Page_Cont init    ");
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Contact_ListView);
        if (this.mGridView != null) {
            this.mGridView.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Contact.9
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    Log.d("btttt", "0000 Page_contact mGridView.setOnTouchListener getAction =" + event.getAction());
                    if (App_Bt.bDownloading) {
                        Page_Contact.this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
                        return true;
                    }
                    switch (event.getAction()) {
                        case 0:
                            if (!App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                                Page_Contact.this.mGridView.getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            if (Page_Contact.this.mEditSearch != null) {
                                Page_Contact.this.mEditSearch.clearFocus();
                                App_Bt.getInstance().hideInput(Page_Contact.this.mEditSearch);
                            }
                            break;
                        case 1:
                        case 3:
                            Log.d("btt", "001 Page_contact setOnTouchListener getAction =" + event.getAction());
                            if (!App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                                Page_Contact.this.mGridView.getParent().requestDisallowInterceptTouchEvent(false);
                            }
                            break;
                        case 2:
                            if (!App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
                                Page_Contact.this.mGridView.getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            break;
                    }
                    return false;
                }
            });
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                try {
                    Drawable drawableVerthumb = getPage().getDrawableFromPath("grid_verthumb", getPage().mDrawables, getPage().mDrawables);
                    if (drawableVerthumb != null) {
                        Field f = View.class.getDeclaredField("mScrollCache");
                        f.setAccessible(true);
                        Object scrollabilityCache = f.get(this.mGridView);
                        Field f2 = f.getType().getDeclaredField("scrollBar");
                        f2.setAccessible(true);
                        Object scrollBarDrawable = f2.get(scrollabilityCache);
                        Field f3 = f2.getType().getDeclaredField("mVerticalThumb");
                        f3.setAccessible(true);
                        f3.set(scrollBarDrawable, drawableVerthumb);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (App_Bt.bShowHeadIco) {
            this.mGridView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.syu.bt.page.Page_Contact.10
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView arg0, int arg1) {
                    Page_Contact.bDrawListAlbum = arg1 <= 0;
                    Log.d("gdy6666", "000 Page_contact mGridView.setOnScrollListener arg1 =" + arg1 + " bDrawListAlbum = " + Page_Contact.bDrawListAlbum);
                    if (Page_Contact.bDrawListAlbum) {
                        Page_Contact.this.notifyDataSetChanged();
                    }
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView arg0, int arg1, int arg2, int arg3) {
                }
            });
            this.mGridView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.syu.bt.page.Page_Contact.11
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8) {
                    boolean check = false;
                    for (String path : App_Bt.myPaths) {
                        if (!App_Bt.myAlbum.containsKey(path)) {
                            check = true;
                        }
                    }
                    if (!check) {
                        App_Bt.myPaths.clear();
                        return;
                    }
                    String[] sss = new String[App_Bt.myPaths.size()];
                    for (int i = 0; i < App_Bt.myPaths.size(); i++) {
                        sss[i] = App_Bt.myPaths.get(i);
                    }
                    if (Page_Contact.this.myListTask != null && !Page_Contact.this.myListTask.isCancelled() && Page_Contact.this.myListTask.getStatus() == AsyncTask.Status.RUNNING) {
                        Page_Contact.this.myListTask.cancel(true);
                        Page_Contact.this.myListTask = null;
                    }
                    Page_Contact.this.myListTask = new MyListCoverTask();
                    Page_Contact.this.myListTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, sss);
                }
            });
        }
        this.mSlideBar = (SlideBarView) getPage().getChildViewByid(FinalBtCtrl.Letter_SliderView);
        this.tvLetterTitle = (TextView) getPage().getChildViewByid(FinalBtCtrl.Letter_Txt_Title);
        this.tvTxtSum = (JText) getPage().getChildViewByid(FinalBtCtrl.Contact_Txt_Sum);
        this.tvTxtSumStr = (JText) getPage().getChildViewByid(FinalBtCtrl.Contact_Txt_Sum_Str);
        if (this.mSlideBar != null) {
            this.mSlideBar.setTextView(this.tvLetterTitle);
            this.mSlideBar.setOnTouchLettersChangedListener(new SlideBarView.OnTouchLettersChangedListener() { // from class: com.syu.bt.page.Page_Contact.12
                @Override // com.syu.bt.ctrl.SlideBarView.OnTouchLettersChangedListener
                public void onTouchLettersChanged(String s) {
                    int position = Page_Contact.this.getPositionForSection(s.charAt(0));
                    if (Page_Contact.this.mGridView != null && Page_Contact.this.mGridView.adapter != null) {
                        if ("#".equals(s)) {
                            Page_Contact.this.mGridView.scrollToPosition(0);
                            return;
                        }
                        if (position != -1) {
                            Main.removeRunnable_Ui(Page_Contact.this.mRun_NotifyDataSetChanged);
                            Main.postRunnable_Ui(true, Page_Contact.this.mRun_NotifyDataSetChanged, 500L);
                            if (Page_Contact.this.mGridView.adapter != null) {
                                Page_Contact.this.mGridView.scrollToPosition(position);
                            }
                        }
                    }
                }
            });
        }
        this.vContact_View_move = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_View_move);
        if (this.vContact_View_move != null) {
            this.vContact_View_move.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Contact.13
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    float y = 0.0f;
                    switch (event.getAction()) {
                        case 0:
                            y = event.getY();
                            Log.d("gdy4", " *** vContact_View_move setFocus  key_id = " + Page_Contact.this.key_id);
                            break;
                        case 2:
                            y = event.getY();
                            break;
                    }
                    int iHeight = Page_Contact.this.vContact_View_move.getHeight();
                    if (y > 0.0f && y < iHeight) {
                        Page_Contact.this.key_id = ((((int) y) * 27) / iHeight) + 1;
                        if (Page_Contact.this.key_id > 26) {
                            Page_Contact.this.key_id = 0;
                        }
                        if (Page_Contact.this.key_id != Page_Contact.this.key_id_p && Page_Contact.this.key_id >= 0) {
                            JButton Btn_key = (JButton) Page_Contact.this.getPage().getChildViewByid(Page_Contact.this.key_id + FinalBtCtrl.Contact_Btn_Jj);
                            if (Btn_key != null) {
                                Btn_key.setFocus(true);
                            }
                            JButton Btn_key2 = (JButton) Page_Contact.this.getPage().getChildViewByid(Page_Contact.this.key_id_p + FinalBtCtrl.Contact_Btn_Jj);
                            if (Btn_key2 != null) {
                                Btn_key2.setFocus(false);
                            }
                            Page_Contact.this.key_id_p = Page_Contact.this.key_id;
                            String s = Bt_Info.b[Page_Contact.this.key_id];
                            Log.d("gdy4", " *** 00 vContact_View_move setFocus  s = " + s);
                            int position = Page_Contact.this.getPositionForSection(s.charAt(0));
                            Log.d("gdy4", " *** 22 vContact_View_move setFocus  s = " + s + " position = " + position);
                            if (Page_Contact.this.mGridView != null && Page_Contact.this.mGridView.adapter != null) {
                                if ("#".equals(s)) {
                                    Page_Contact.this.mGridView.scrollToPosition(0);
                                } else if (position != -1) {
                                    Main.removeRunnable_Ui(Page_Contact.this.mRun_NotifyDataSetChanged);
                                    Main.postRunnable_Ui(true, Page_Contact.this.mRun_NotifyDataSetChanged, 500L);
                                    if (Page_Contact.this.mGridView.adapter != null) {
                                        Page_Contact.this.mGridView.scrollToPosition(position);
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
            });
        }
        this.vContact_View_move1920 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_View_move1920);
        if (this.vContact_View_move1920 != null) {
            this.vContact_View_move1920.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_Contact.14
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    float y = 0.0f;
                    float x = 0.0f;
                    switch (event.getAction()) {
                        case 0:
                            x = event.getX();
                            y = event.getY();
                            Log.d("gdy4", " *** ACTION_DOWN setFocus  key_id = " + Page_Contact.this.key_id + " -- x = " + x + " y = " + y);
                            break;
                        case 1:
                            Log.d("gdy4", " *** ACTION_UP setFocus  key_id = " + Page_Contact.this.key_id + " -- x = 0.0 y = 0.0");
                            break;
                        case 2:
                            x = event.getX();
                            y = event.getY();
                            Log.d("gdy4", " *** ACTION_MOVE setFocus  key_id = " + Page_Contact.this.key_id + " -- x = " + x + " y = " + y);
                            break;
                    }
                    int iHeight = Page_Contact.this.vContact_View_move1920.getHeight();
                    if (y > 0.0f && y < iHeight) {
                        if (x < 47.0f) {
                            Page_Contact.this.key_id = (((((int) y) * 14) / iHeight) * 2) + 1;
                        } else {
                            Page_Contact.this.key_id = (((((int) (y - 20.0f)) * 14) / iHeight) + 1) * 2;
                        }
                        if (Page_Contact.this.key_id > 26) {
                            Page_Contact.this.key_id = 0;
                        }
                        if (Page_Contact.this.key_id != Page_Contact.this.key_id_p && Page_Contact.this.key_id >= 0) {
                            JButton Btn_key = (JButton) Page_Contact.this.getPage().getChildViewByid(Page_Contact.this.key_id + FinalBtCtrl.Contact_Btn_Jj);
                            if (Btn_key != null) {
                                Btn_key.setFocus(true);
                            }
                            JButton Btn_key2 = (JButton) Page_Contact.this.getPage().getChildViewByid(Page_Contact.this.key_id_p + FinalBtCtrl.Contact_Btn_Jj);
                            if (Btn_key2 != null) {
                                Btn_key2.setFocus(false);
                            }
                            Page_Contact.this.key_id_p = Page_Contact.this.key_id;
                            String s = Bt_Info.b[Page_Contact.this.key_id];
                            Log.d("gdy4", " *** 00 vContact_View_move setFocus  s = " + s);
                            int position = Page_Contact.this.getPositionForSection(s.charAt(0));
                            Log.d("gdy4", " *** 22 vContact_View_move setFocus  s = " + s + " position = " + position);
                            if (Page_Contact.this.mGridView != null && Page_Contact.this.mGridView.adapter != null) {
                                if ("#".equals(s)) {
                                    Page_Contact.this.mGridView.scrollToPosition(0);
                                } else if (position != -1) {
                                    Main.removeRunnable_Ui(Page_Contact.this.mRun_NotifyDataSetChanged);
                                    Main.postRunnable_Ui(true, Page_Contact.this.mRun_NotifyDataSetChanged, 500L);
                                    if (Page_Contact.this.mGridView.adapter != null) {
                                        Page_Contact.this.mGridView.scrollToPosition(position);
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
            });
        }
        this.vNoData = getPage().getChildViewByid(FinalBtCtrl.List_View_None);
        if (CustomerUtil.isYFConfig() && (lay = (LinearLayout) getPage().getChildViewByid(FinalBtCtrl.Set_Layout)) != null) {
            lay.setFocusable(true);
            lay.setFocusableInTouchMode(true);
        }
        setButtonColor(App_Bt.color);
        setDayOrNight(App_Bt.mColorType);
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) {
            this.searchColor = -23551;
        }
        this.mViewKey = getPage().getChildViewByid(FinalBtCtrl.Contact_View_Key);
    }

    public void notifyDataSetChanged() {
        Log.d("bttt", " Page_contact   notifyDataSetChanged  myAlbum.size" + App_Bt.myAlbum.size());
        if (this.mGridView != null) {
            Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 500L);
        }
        if (this.tvContact_Num != null) {
            String str_Num = FinalChip.BSP_PLATFORM_Null;
            if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                str_Num = "  " + App_Bt.mBtInfo.mListContact.size() + "  ";
            }
            this.tvContact_Num.setText(str_Num);
        }
    }

    public boolean isNumber(String str) {
        Pattern p = Pattern.compile("[0-9]*");
        return p.matcher(str).matches();
    }

    public boolean queryT9(String qry, String pinyin) {
        Log.d("gdy10", " 00 queryT9 qry = " + qry + " pinyin = " + pinyin);
        if (strHaveChar(qry, '0') || strHaveChar(qry, '1')) {
            return false;
        }
        int j = 0;
        String t9 = mStrT9[qry.charAt(0) - '1'];
        if (!strHaveChar(t9, pinyin.charAt(0))) {
            return false;
        }
        for (int i = 0; i < pinyin.length(); i++) {
            if (strHaveChar(t9, pinyin.charAt(i))) {
                j++;
                if (j >= qry.length()) {
                    return true;
                }
                t9 = mStrT9[qry.charAt(j) - '1'];
            }
            Log.d("gdy10", " 01 queryT9 t9 = " + t9 + " charAt = " + pinyin.charAt(i) + " i =" + i + " j =" + j);
        }
        return false;
    }

    public boolean strHaveChar(String Str, char c) {
        for (int i = 0; i < Str.length(); i++) {
            if (Str.charAt(i) == c) {
                return true;
            }
        }
        return false;
    }

    public void queryContacts(String qry) {
        Log.d("con3", " 00 resetList queryContacts qry = " + qry);
        List<SparseArray<String>> listContact_p = new ArrayList<>();
        if (App_Bt.bLinkTwoPhone && App_Bt.sPhone2_id == 1) {
            listContact_p.addAll(App_Bt.mBtInfo.mListContact2);
        } else {
            listContact_p.addAll(App_Bt.mBtInfo.mListContact);
        }
        if (TextUtils.isEmpty(qry)) {
            resetList(listContact_p);
            return;
        }
        List<SparseArray<String>> listContact = new ArrayList<>();
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && isNumber(qry)) {
            for (SparseArray<String> map : listContact_p) {
                String number = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                String pinyin = HanziToPinyin.getHeadPinyin(map.get(FinalBtCtrl.ContactItem_Txt_Name));
                Log.d("gdy10", " 00 query number = " + number + "  pinyin = " + pinyin + "-- qry = " + qry);
                if (number.contains(qry)) {
                    listContact.add(map);
                } else if (queryT9(qry, pinyin)) {
                    listContact.add(map);
                }
            }
            Log.d("con3", " 22 resetList queryContacts listContact = " + listContact.toString());
            resetList(listContact);
            return;
        }
        if (isNumber(qry)) {
            for (SparseArray<String> map2 : listContact_p) {
                String number2 = map2.get(FinalBtCtrl.ContactItem_Txt_Number);
                if (CustomerUtil.isZhangConfig()) {
                    if (number2.contains(qry) || number2.contains(qry.trim())) {
                        listContact.add(map2);
                    }
                } else if (number2.contains(qry)) {
                    listContact.add(map2);
                }
            }
            Log.d("con3", " 33 resetList queryContacts listContact = " + listContact.toString());
            resetList(listContact);
            return;
        }
        for (SparseArray<String> map3 : listContact_p) {
            String name = map3.get(FinalBtCtrl.ContactItem_Txt_Name);
            if (CustomerUtil.isZhangConfig()) {
                String ss = qry.trim();
                if (name.toUpperCase().contains(qry.toUpperCase()) || name.toUpperCase().contains(ss.toUpperCase()) || HanziToPinyin.getHeadPinyin(name).startsWith(qry.toUpperCase()) || HanziToPinyin.getHeadPinyin(name).startsWith(ss.toUpperCase())) {
                    listContact.add(map3);
                }
            } else if (name.toUpperCase().contains(qry.toUpperCase()) || HanziToPinyin.getHeadPinyin(name).startsWith(qry.toUpperCase())) {
                Log.d("con3", " 34 resetList queryContacts toUpperCase = " + qry.toUpperCase() + " toUpperCase = " + name.toUpperCase() + " getHeadPinyin = " + HanziToPinyin.getHeadPinyin(name));
                listContact.add(map3);
            }
        }
        Log.d("con3", " 44 resetList queryContacts listContact = " + listContact.toString());
        resetList(listContact);
    }

    public int getPositionForSection(int sectionIndex) {
        int i = 0;
        if (App_Bt.bIsFavList) {
            for (SparseArray<String> map : App_Bt.mBtInfo.mListFavContact) {
                String pinyin = HanziToPinyin.getHeadPinyin(map.get(FinalBtCtrl.ContactItem_Txt_Name));
                if (!TextUtils.isEmpty(pinyin) && pinyin.toUpperCase().charAt(0) == sectionIndex) {
                    return i;
                }
                i++;
            }
        } else if (App_Bt.bLinkTwoPhone && App_Bt.sPhone2_id == 1) {
            for (SparseArray<String> map2 : App_Bt.mBtInfo.mListContact2) {
                String name = map2.get(FinalBtCtrl.ContactItem_Txt_Name);
                String pinyin2 = HanziToPinyin.getHeadPinyin(name);
                Log.d("gdy4", " *** 001    pinyin = " + pinyin2 + " name = " + name);
                if (!TextUtils.isEmpty(pinyin2) && pinyin2.toUpperCase().charAt(0) == sectionIndex) {
                    Log.d("gdy4", " *** 002 pinyin  charAt = " + pinyin2.toUpperCase().charAt(0));
                    return i;
                }
                i++;
            }
        } else {
            for (SparseArray<String> map3 : App_Bt.mBtInfo.mListContact) {
                String name2 = map3.get(FinalBtCtrl.ContactItem_Txt_Name);
                String pinyin3 = HanziToPinyin.getHeadPinyin(name2);
                Log.d("gdy4", " *** 001    pinyin = " + pinyin3 + " name = " + name2);
                if (!TextUtils.isEmpty(pinyin3) && pinyin3.toUpperCase().charAt(0) == sectionIndex) {
                    Log.d("gdy4", " *** 002 pinyin  charAt = " + pinyin3.toUpperCase().charAt(0));
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public void showPhone() {
        Log.d("con2", " ** showPhone App_Bt.sPhone2_id = " + App_Bt.sPhone2_id + " conPhone_id = " + this.conPhone_id);
        if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] < 3) {
            App_Bt.sPhone2_id = 0;
        }
        if (App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.bPhone2_HFP[0] < 3) {
            App_Bt.sPhone2_id = 1;
        }
        if (this.tvTxtPhone1 != null) {
            this.tvTxtPhone1.setVisibility((App_Bt.bPhone2_HFP[0] < 3 || App_Bt.sPhone2_id != 0) ? 8 : 0);
            this.tvTxtPhone1.setText(App_Bt.sPhone2_NAME[0]);
        }
        if (this.tvTxtPhone1_p != null) {
            this.tvTxtPhone1_p.setVisibility((App_Bt.bPhone2_HFP[0] < 3 || App_Bt.sPhone2_id != 1) ? 8 : 0);
            this.tvTxtPhone1_p.setText(App_Bt.sPhone2_NAME[0]);
        }
        if (this.tvTxtPhone2 != null) {
            this.tvTxtPhone2.setVisibility((App_Bt.bPhone2_HFP[1] < 3 || App_Bt.sPhone2_id != 1) ? 8 : 0);
            this.tvTxtPhone2.setText(App_Bt.sPhone2_NAME[1]);
        }
        if (this.tvTxtPhone2_p != null) {
            this.tvTxtPhone2_p.setVisibility((App_Bt.bPhone2_HFP[1] < 3 || App_Bt.sPhone2_id != 0) ? 8 : 0);
            this.tvTxtPhone2_p.setText(App_Bt.sPhone2_NAME[1]);
        }
        if (this.conPhone_id != App_Bt.sPhone2_id) {
            this.conPhone_id = App_Bt.sPhone2_id;
            if (App_Bt.sPhone2_id == 0) {
                resetList(App_Bt.mBtInfo.mListContact);
            } else {
                resetList(App_Bt.mBtInfo.mListContact2);
            }
            Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 700L);
            Log.d("con3", " ** 22 Contact_Phone_Switch mListContact= " + App_Bt.mBtInfo.mListContact.toString());
            Log.d("con3", " ** 44 Contact_Phone_Switch mListContact2= " + App_Bt.mBtInfo.mListContact2.toString());
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) throws Throwable {
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            if (App_Bt.bDownloading) {
                this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
                return;
            }
            clearPageFocus();
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        App_Bt.getInstance().setFullScreenMode(0);
                    }
                    break;
                case FinalBtCtrl.Contact_Phone_Switch /* 10220 */:
                    Log.d("down", " Contact_Phone_Switch bDownloading" + App_Bt.bDownloading);
                    if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] >= 3) {
                        App_Bt.sPhone2_id = App_Bt.sPhone2_id != 0 ? 0 : 1;
                        showPhone();
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_Clear /* 10234 */:
                    clearContacts();
                    break;
                case FinalBtCtrl.Contact_Btn_Search /* 10235 */:
                case FinalBtCtrl.Contact_Btn_Search2 /* 10236 */:
                    voiceSearchContact();
                    break;
                case FinalBtCtrl.Contact_Btn_Download /* 10237 */:
                    if (isDownloadDelay(2000)) {
                        downloadPhoneBook();
                    } else {
                        return;
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_Save /* 10238 */:
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                        Log.d("gdy14", " 00 Page_contact Contact_Btn_Save  ");
                        if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                            this.actBt.popDeleteContacts(5, App_Bt.getInstance().uiApp.getString("bt_need_save"));
                        } else {
                            App_Bt.mBtInfo.savePhoneBook();
                        }
                    } else {
                        App_Bt.mBtInfo.savePhoneBook();
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_Backspace /* 10239 */:
                    if (this.mEditSearch != null) {
                        strSearch = this.mEditSearch.getText().toString();
                        if (!TextUtils.isEmpty(strSearch)) {
                            strSearch = strSearch.subSequence(0, strSearch.length() - 1).toString();
                            this.mEditSearch.setText(strSearch.length() == 0 ? FinalChip.BSP_PLATFORM_Null : strSearch);
                        }
                    }
                    break;
                case 10240:
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        App_Bt.bJumpFavorite = true;
                        this.actBt.myActivity.goPage(10003);
                    } else {
                        App_Bt.bIsFavList = true;
                        resetList();
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_PhoneList /* 10241 */:
                    App_Bt.bIsFavList = false;
                    resetList();
                    break;
                case FinalBtCtrl.Contact_Btn_0 /* 10242 */:
                case FinalBtCtrl.Contact_Btn_1 /* 10243 */:
                case FinalBtCtrl.Contact_Btn_2 /* 10244 */:
                case FinalBtCtrl.Contact_Btn_3 /* 10245 */:
                case FinalBtCtrl.Contact_Btn_4 /* 10246 */:
                case FinalBtCtrl.Contact_Btn_5 /* 10247 */:
                case FinalBtCtrl.Contact_Btn_6 /* 10248 */:
                case FinalBtCtrl.Contact_Btn_7 /* 10249 */:
                case FinalBtCtrl.Contact_Btn_8 /* 10250 */:
                case FinalBtCtrl.Contact_Btn_9 /* 10251 */:
                case FinalBtCtrl.Contact_Btn_X1 /* 10252 */:
                case FinalBtCtrl.Contact_Btn_J1 /* 10253 */:
                    if (this.mEditSearch != null) {
                        if (id - 10242 == 10) {
                            strSearch = String.valueOf(strSearch) + "*";
                        } else if (id - 10242 == 11) {
                            strSearch = String.valueOf(strSearch) + "#";
                        } else {
                            Log.d("gdy5", " Contact ");
                            strSearch = String.valueOf(strSearch) + Integer.toString(id - 10242);
                        }
                        this.mEditSearch.setText(strSearch);
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_ShowKey /* 10254 */:
                    if (this.mViewKey != null) {
                        this.mViewKey.setVisibility(0);
                    }
                    break;
                case FinalBtCtrl.Contact_Btn_HideKey /* 10255 */:
                    if (this.mViewKey != null) {
                        this.mViewKey.setVisibility(8);
                    }
                    break;
                case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                    this.actBt.Func_Back();
                    break;
                case FinalBtCtrl.Contact_Btn_Jj /* 10590 */:
                case FinalBtCtrl.Contact_Btn_A /* 10591 */:
                case FinalBtCtrl.Contact_Btn_B /* 10592 */:
                case FinalBtCtrl.Contact_Btn_C /* 10593 */:
                case FinalBtCtrl.Contact_Btn_D /* 10594 */:
                case FinalBtCtrl.Contact_Btn_E /* 10595 */:
                case FinalBtCtrl.Contact_Btn_F /* 10596 */:
                case FinalBtCtrl.Contact_Btn_G /* 10597 */:
                case FinalBtCtrl.Contact_Btn_H /* 10598 */:
                case FinalBtCtrl.Contact_Btn_I /* 10599 */:
                case FinalBtCtrl.Contact_Btn_J /* 10600 */:
                case FinalBtCtrl.Contact_Btn_K /* 10601 */:
                case FinalBtCtrl.Contact_Btn_L /* 10602 */:
                case FinalBtCtrl.Contact_Btn_M /* 10603 */:
                case FinalBtCtrl.Contact_Btn_N /* 10604 */:
                case FinalBtCtrl.Contact_Btn_O /* 10605 */:
                case FinalBtCtrl.Contact_Btn_P /* 10606 */:
                case FinalBtCtrl.Contact_Btn_Q /* 10607 */:
                case FinalBtCtrl.Contact_Btn_R /* 10608 */:
                case FinalBtCtrl.Contact_Btn_S /* 10609 */:
                case FinalBtCtrl.Contact_Btn_T /* 10610 */:
                case FinalBtCtrl.Contact_Btn_U /* 10611 */:
                case FinalBtCtrl.Contact_Btn_V /* 10612 */:
                case FinalBtCtrl.Contact_Btn_W /* 10613 */:
                case FinalBtCtrl.Contact_Btn_X /* 10614 */:
                case FinalBtCtrl.Contact_Btn_Y /* 10615 */:
                case FinalBtCtrl.Contact_Btn_Z /* 10616 */:
                    String s = Bt_Info.b[id - 10590];
                    int position = getPositionForSection(s.charAt(0));
                    if (this.mGridView != null && this.mGridView.adapter != null) {
                        if ("#".equals(s)) {
                            this.mGridView.scrollToPosition(0);
                        } else if (position != -1) {
                            Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
                            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 500L);
                            if (this.mGridView.adapter != null) {
                                this.mGridView.scrollToPosition(position);
                            }
                        }
                    }
                    break;
            }
            if (App_Bt.getInstance().mIpcObj.isCalling() && v.getId() != 10052) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
            } else if (this.actBt.MenuClick(v)) {
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        int id = v.getId();
        clearPageFocus();
        switch (id) {
            case FinalBtCtrl.Contact_Btn_Backspace /* 10239 */:
                if (this.mEditSearch != null) {
                    EditText editText = this.mEditSearch;
                    strSearch = FinalChip.BSP_PLATFORM_Null;
                    editText.setText(FinalChip.BSP_PLATFORM_Null);
                }
                break;
        }
        return false;
    }

    public void voiceSearchContact() {
        clearPageFocus();
        if (this.mEditSearch != null) {
            this.mEditSearch.clearFocus();
            this.mEditSearch.requestFocus();
            App_Bt.getInstance().showInput(this.mEditSearch);
        }
        if (CustomerUtil.isZhangConfig()) {
            try {
                this.actBt.myActivity.sendBroadcast(new Intent("speak_click"));
            } catch (Exception e) {
            }
        }
    }

    public boolean isDownloadDelay(int delay) {
        boolean flag = false;
        long curClickTime = System.currentTimeMillis();
        if (curClickTime - lastDownloadTime >= delay) {
            flag = true;
        }
        Log.d("btttt", "0000 isDownloading curClickTime =" + curClickTime + " lastDownloadTime = " + lastDownloadTime);
        lastDownloadTime = curClickTime;
        return flag;
    }

    private void downloadPhoneBook() {
        if (Bt_IpcObj.isDisConnect()) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_disconnected"));
            return;
        }
        if (!Bt_IpcObj.isPairing()) {
            Log.d("down", " --- downloadPhoneBook 00 bDownloading = " + App_Bt.bDownloading);
            if (App_Bt.bDownloading && CustomerUtil.isZhangConfig()) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_downloading"));
                return;
            }
            Log.d("down", " --- downloadPhoneBook 11  ");
            if (App_Bt.bLinkTwoPhone) {
                if (App_Bt.sPhone2_id == 0 && App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                    this.actBt.popDeleteContacts(11, App_Bt.getInstance().uiApp.getString("bt_clear_and_reload"));
                    return;
                }
                if (App_Bt.sPhone2_id == 1 && App_Bt.mBtInfo.mListContact2 != null && App_Bt.mBtInfo.mListContact2.size() > 0) {
                    this.actBt.popDeleteContacts(11, App_Bt.getInstance().uiApp.getString("bt_clear_and_reload"));
                    return;
                }
                if (App_Bt.bAutoDownPhoneBook) {
                    Bt_IpcObj.downloadBook();
                    return;
                }
                App_Bt.bShowLoading = false;
                Bt_IpcObj.downloadBook();
                if (App_Bt.mBtType == 0 && !CustomerUtil.is7862() && !App_Bt.bDownloading && App_Bt.bShowLoading) {
                    Log.d("down", " ---  downloadPhoneBook 22  ");
                    this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
                    return;
                }
                return;
            }
            if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                this.actBt.popDeleteContacts(11, App_Bt.getInstance().uiApp.getString("bt_clear_and_reload"));
                return;
            }
            if (App_Bt.bAutoDownPhoneBook) {
                Bt_IpcObj.downloadBook();
                return;
            }
            App_Bt.bShowLoading = false;
            Bt_IpcObj.downloadBook();
            if (App_Bt.mBtType == 0 && !CustomerUtil.is7862() && !App_Bt.bDownloading && App_Bt.bShowLoading) {
                this.actBt.uiUtil.showLoading(App_Bt.getInstance().uiApp.getString("bt_download"));
            }
        }
    }

    protected void clearContacts() {
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                    this.actBt.popDeleteContacts(1, App_Bt.getInstance().uiApp.getString("bt_is_delete"));
                    return;
                }
                return;
            }
            if (App_Bt.sPhone2_id == 1 && App_Bt.mBtInfo.mListContact2 != null && App_Bt.mBtInfo.mListContact2.size() > 0) {
                this.actBt.popDeleteContacts(1, App_Bt.getInstance().uiApp.getString("bt_is_delete"));
                return;
            }
            return;
        }
        if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
            this.actBt.popDeleteContacts(1, App_Bt.getInstance().uiApp.getString("bt_is_delete"));
        }
    }

    public void endDownload() {
        this.actBt.uiUtil.disLoading();
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            Log.d("save2", " 00 page_Contact.endDownload   notifyDataSetChanged ");
            Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 4000L);
        }
        Log.d("save2", " 11 page_Contact.endDownload  bAutoDownPhoneBook = " + App_Bt.bAutoDownPhoneBook + " bAutoSavePhoneBook = " + App_Bt.bAutoSavePhoneBook);
        if (!App_Bt.bAutoDownPhoneBook && !App_Bt.bAutoSavePhoneBook) {
            if (App_Bt.bLinkTwoPhone) {
                Log.d("save2", " 22 page_Contact.endDownload   notifyDataSetChanged ");
                if ((App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) || (App_Bt.mBtInfo.mListContact2 != null && App_Bt.mBtInfo.mListContact2.size() > 0)) {
                    this.actBt.popDeleteContacts(5, App_Bt.getInstance().uiApp.getString("bt_need_save"));
                    return;
                }
                return;
            }
            if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                this.actBt.popDeleteContacts(5, App_Bt.getInstance().uiApp.getString("bt_need_save"));
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int iStart;
        int iStart2;
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Contact_ListView /* 10257 */:
                int mySize = map.size();
                Log.d("gdy6666", "000 Page_contact InitGridItem strNumber mySize =" + mySize + "- position = " + position);
                View viewContent = page.getChildViewByid(FinalBtCtrl.ContactItem_Content);
                if (viewContent != null) {
                    viewContent.setVisibility(mySize == 0 ? 8 : 0);
                }
                if (page != null && App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    Log.d("key", " 00 InitGridItem set App_Bt.color = " + App_Bt.color);
                    int[] colors = {App_Bt.color, App_Bt.color, App_Bt.color, App_Bt.color};
                    int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_selected}, new int[]{R.attr.state_hovered}, new int[]{R.attr.state_focused}};
                    page.setBackgroundTintList(new ColorStateList(states, colors));
                    page.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
                }
                if (App_Bt.bUI_NightColour) {
                    String str = page.getStrDrawable();
                    Log.d("gdy66", "222 Page_History InitGridItem mColorType = " + App_Bt.mColorType + " str = " + str);
                    if (App_Bt.mColorType > 0) {
                        if (!str.startsWith("night_")) {
                            page.setStrDrawable("night_" + str, true);
                        }
                    } else if (str.startsWith("night_")) {
                        page.setStrDrawable(str.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                    }
                }
                if (mySize > 0) {
                    if (App_Bt.bUI_NightColour) {
                        String str2 = page.getStrDrawable();
                        if (App_Bt.mColorType > 0) {
                            if (!str2.startsWith("night_")) {
                                page.setStrDrawable("night_" + str2, true);
                            }
                        } else if (str2.startsWith("night_")) {
                            page.setStrDrawable(str2.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    }
                    JText textNumber = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Number_Highlight);
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") && textNumber != null) {
                        textNumber.setTypeface(Typeface.MONOSPACE);
                    }
                    JText textName = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Name_Highlight);
                    String strNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    Log.d("gdy6666", "001 Page_contact InitGridItem strNumber strNumber =" + strNumber + "-");
                    if (TextUtils.isEmpty(strNumber)) {
                        strNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    }
                    String strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (App_Bt.bLinkTwoPhone && strName.contains("hfp2")) {
                        strName = strName.replace("hfp2", FinalChip.BSP_PLATFORM_Null);
                    }
                    boolean bHighlightNumber = false;
                    boolean bHighlightName = false;
                    if (!TextUtils.isEmpty(strSearch)) {
                        if (isNumber(strSearch) && !TextUtils.isEmpty(strNumber) && (iStart2 = strNumber.toUpperCase().indexOf(strSearch.toUpperCase())) >= 0) {
                            SpannableStringBuilder style = new SpannableStringBuilder(strNumber);
                            style.setSpan(new ForegroundColorSpan(this.searchColor), iStart2, strSearch.length() + iStart2, 33);
                            textNumber.setText(style);
                            bHighlightNumber = true;
                        }
                        if (!TextUtils.isEmpty(strName) && (iStart = strName.toUpperCase().indexOf(strSearch.toUpperCase())) >= 0) {
                            SpannableStringBuilder style2 = new SpannableStringBuilder(strName);
                            style2.setSpan(new ForegroundColorSpan(this.searchColor), iStart, strSearch.length() + iStart, 33);
                            textName.setText(style2);
                            bHighlightName = true;
                        }
                    }
                    if (!bHighlightNumber) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textNumber.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textNumber.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textNumber.setText(strNumber);
                    }
                    if (!bHighlightName) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textName.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textName.setText(strName);
                    }
                    if (CustomerUtil.isYFConfig() || CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920") || App_Bt.bFavcontact) {
                        JButton btnFavorite = (JButton) page.getChildViewByid(FinalBtCtrl.GridItem_Add2Favorite);
                        if (btnFavorite != null) {
                            String isFav = map.get(FinalBtCtrl.ContactItem_Txt_Favorite);
                            if (!TextUtils.isEmpty(isFav)) {
                                btnFavorite.setFocus(isFav.equals("collect"));
                            } else {
                                btnFavorite.setFocus(false);
                            }
                        }
                        JView view = (JView) page.getChildViewByid(FinalBtCtrl.ContactItem_Icon);
                        if (view != null) {
                            String abc = map.get(FinalBtCtrl.ContactItem_Txt_ABC);
                            if (!TextUtils.isEmpty(abc)) {
                                view.setBackground(getPage().getDrawableFromPath("bt_zimu_" + abc, getPage().mDrawables, getPage().mDrawables));
                            } else {
                                view.setBackground(getPage().getDrawableFromPath("bt_zimu_1", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    }
                    View view1 = page.getChildViewByid(FinalBtCtrl.ContactItem_Icon1);
                    if (view1 != null) {
                        view1.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_contact_icon" : "contact_icon", getPage().mDrawables, getPage().mDrawables));
                    }
                    View view2 = page.getChildViewByid(FinalBtCtrl.ContactItem_Icon2);
                    if (view2 != null) {
                        view2.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_dial_icon" : "dial_icon", getPage().mDrawables, getPage().mDrawables));
                    }
                    JText textContHead = (JText) page.getChildViewByid(FinalBtCtrl.ContItem_head_Icon);
                    if (textContHead != null) {
                        textContHead.setText(new StringBuilder().append(strName.charAt(0)).toString());
                        textContHead.setBackground(getPage().getDrawableFromPath(this.str_ContIcon[this.random.nextInt(5)], getPage().mDrawables, getPage().mDrawables));
                    }
                    View headIco = page.getChildViewByid(FinalBtCtrl.ContactItem_Head);
                    if (App_Bt.bShowHeadIco && !TextUtils.isEmpty(strNumber) && headIco != null) {
                        App_Bt.myPaths.add(strNumber);
                        if (App_Bt.myAlbum.size() > 0) {
                            Bitmap bmp = BTUtil.getInstance().getHeadIco(strNumber);
                            if (bmp != null) {
                                Log.d("gdy6666", "111 Page_contact InitGridItem strNumber =" + strNumber + "-");
                                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                                    headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.outputCircleLittle(bmp, 15)));
                                } else {
                                    headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                                }
                            } else {
                                Log.d("gdy6666", "222 Page_contact ContactItem_Head bmp strNumber =" + strNumber + "-");
                                headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    } else {
                        Log.d("gdy6666", "333 Page_contact ContactItem_Head bmp strNumber =" + strNumber + "-");
                        if (headIco != null) {
                            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                                JText headTxt = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_HeadTxt);
                                String headPic = map.get(FinalBtCtrl.ContactItem_HeadIcon);
                                int picId = -1;
                                String headABC = FinalChip.BSP_PLATFORM_Null;
                                if (!TextUtils.isEmpty(headPic)) {
                                    picId = Integer.parseInt(headPic);
                                }
                                if (picId > 15) {
                                    Bitmap bmp2 = BTUtil.getInstance().getHeadIco(strNumber);
                                    if (bmp2 != null) {
                                        headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp2)));
                                    } else {
                                        headIco.setBackground(getPage().getDrawableFromPath("headbig" + picId, getPage().mDrawables, getPage().mDrawables));
                                    }
                                } else if (picId > 0) {
                                    headIco.setBackground(getPage().getDrawableFromPath("headbig" + picId, getPage().mDrawables, getPage().mDrawables));
                                } else {
                                    boolean isABC = true;
                                    String nameCompare = map.get(FinalBtCtrl.ContactItem_Txt_NameCompare);
                                    if (!TextUtils.isEmpty(nameCompare)) {
                                        headABC = String.valueOf(nameCompare.charAt(0));
                                        if (!TextUtils.isEmpty(headABC.trim())) {
                                            Pattern p = Pattern.compile("[0-9`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]");
                                            if (p.matcher(headABC).matches()) {
                                                isABC = false;
                                            }
                                        } else {
                                            String nameCompare2 = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                                            headABC = String.valueOf(nameCompare2.charAt(0)).toUpperCase();
                                            if (TextUtils.isEmpty(headABC.trim())) {
                                                isABC = false;
                                            }
                                        }
                                    }
                                    if (isABC) {
                                        String pathDrawable = "headbig_null";
                                        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equals("UI7") && App_Bt.mColorType > 0) {
                                            pathDrawable = "headbig_null_night";
                                        }
                                        headIco.setBackground(getPage().getDrawableFromPath(pathDrawable, getPage().mDrawables, getPage().mDrawables));
                                    } else {
                                        headABC = FinalChip.BSP_PLATFORM_Null;
                                        headIco.setBackground(getPage().getDrawableFromPath("headbig16", getPage().mDrawables, getPage().mDrawables));
                                    }
                                }
                                if (!bHighlightName && !TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equals("UI7")) {
                                    headTxt.setTextColor(App_Bt.mColorType > 0 ? Color.rgb(255, 255, 255) : Color.rgb(60, 60, 71));
                                }
                                headTxt.setText(headABC);
                            } else {
                                Log.d("bttt", "333 Page_contact ContactItem_Head bmp strNumber =" + strNumber + "-");
                                headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    }
                    boolean flag = false;
                    if (!TextUtils.isEmpty(strNumber) && !TextUtils.isEmpty(strName)) {
                        if (this.mPosMoveTo >= 0 && this.mPosMoveTo == position) {
                            mClick.put(FinalBtCtrl.ContactItem_Txt_Number, strNumber);
                            mClick.put(FinalBtCtrl.ContactItem_Txt_Name, strName);
                        }
                        if (strNumber.equals(mClick.get(FinalBtCtrl.ContactItem_Txt_Number)) && strName.equals(mClick.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                            flag = true;
                        }
                    }
                    if (CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA") || this.bRoolKey || App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                        page.setFocus(flag);
                        pressGridItem(page, page, flag);
                    }
                }
                break;
        }
    }

    public void invilatePlayList() {
        if (this.mGridView != null) {
            Log.d("gdy6666", " ***** invilatePlayList   notifyDataSetChanged ");
            Main.removeRunnable_Ui(this.mRun_NotifyDataSetChanged);
            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 3500L);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridPressed(JGridView gridView, JPage page, boolean pressed) {
        if (gridView.mPageInfos != null) {
            for (WeakReference<JPage> pageReference : gridView.mPageInfos) {
                JPage pageTmp = pageReference.get();
                if (pageTmp != null) {
                    pressGridItem(pageTmp, page, pressed);
                }
            }
            if (!this.mGridClickDial && App_Bt.mSelectContact < 0) {
                if (page.getChildViewByid(FinalBtCtrl.ContactItem_Btn_Dial) == null) {
                    this.mGridClickDial = true;
                }
                if (MyApplication.mIdCustomer == 63 || CustomerUtil.isZhangConfig() || CustomerUtil.isXCConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) {
                    this.mGridClickDial = true;
                }
            }
        }
    }

    public void pressGridItem(JPage page, JPage pagePressed, boolean pressed) {
        boolean bFocus = pressed && page == pagePressed;
        page.setFocus(bFocus);
        View view = page.getChildViewByid(FinalBtCtrl.ContactItem_Icon);
        if (view != null && (view instanceof JView)) {
            ((JView) view).setFocus(bFocus);
        }
        View view2 = page.getChildViewByid(FinalBtCtrl.ContactItem_Btn_Dial);
        if (view2 != null && (view2 instanceof JButton)) {
            ((JButton) view2).setFocus(bFocus);
        }
        JText txt = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Name_Highlight);
        if (txt != null) {
            txt.setFocus(bFocus);
        }
        JText txt2 = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Number_Highlight);
        if (txt2 != null) {
            txt2.setFocus(bFocus);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Contact_ListView /* 10257 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    int position = gridView.getPosition();
                    Log.d("con3", " 00 GridClick Contact_ListView mSelectContact = " + App_Bt.mSelectContact);
                    if (App_Bt.mSelectContact > 0) {
                        SpUtil.saveContact(SpUtil.CONTACT_SP + App_Bt.mSelectContact, gridView.getList().get(position));
                        App_Bt.mSelectContact = -1;
                        this.actBt.myActivity.goPage(10003);
                        break;
                    } else if (this.mGridClickDial) {
                        SparseArray<String> map = gridView.getList().get(position);
                        String number = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                        String name = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                        if (!TextUtils.isEmpty(number) && !TextUtils.isEmpty(name)) {
                            this.mPosMoveTo = -1;
                            if (number.equals(mClick.get(FinalBtCtrl.ContactItem_Txt_Number)) && name.equals(mClick.get(FinalBtCtrl.ContactItem_Txt_Name))) {
                                Log.d("con3", " 11 GridClick Contact_ListView isStateConnect = " + Bt_IpcObj.isStateConnect());
                                if (Bt_IpcObj.isStateConnect()) {
                                    if (App_Bt.bLinkTwoPhone) {
                                        App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
                                    }
                                    Bt_IpcObj.itemDial(number);
                                    this.actBt.myActivity.goPage(10003);
                                }
                            } else {
                                Log.d("con3", " 22 GridClick Contact_ListView CustomerUtil.isZhangConfig() = " + CustomerUtil.isZhangConfig());
                                mClick.put(FinalBtCtrl.ContactItem_Txt_Number, number);
                                mClick.put(FinalBtCtrl.ContactItem_Txt_Name, name);
                                if (!CustomerUtil.isZhangConfig() && !App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) {
                                    Log.d("con3", " 22 GridClick Contact_ListView isStateConnect = " + Bt_IpcObj.isStateConnect());
                                    if (Bt_IpcObj.isStateConnect()) {
                                        if (App_Bt.bLinkTwoPhone) {
                                            App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
                                        }
                                        Bt_IpcObj.itemDial(number);
                                        this.actBt.myActivity.goPage(10003);
                                    }
                                }
                            }
                            if ((CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) && this.mGridView.adapter != null) {
                                Log.d("gdy6666", " *****003 Page_Con notifyDataSetChanged    ");
                                this.mGridView.adapter.notifyDataSetChanged();
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridLongClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Contact_ListView /* 10257 */:
                mClick.clear();
                int position = gridView.getPosition();
                SparseArray<String> map = gridView.getList().get(position);
                if (map != null && map.size() > 0) {
                    this.actBt.popDeleteContacts(2, App_Bt.getInstance().uiApp.getString("bt_is_delete_one"));
                    break;
                }
                break;
        }
    }

    public void resetList() {
        mClick.clear();
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        if (App_Bt.bLinkTwoPhone) {
            App_Bt.mBtInfo.sortContact();
            if (App_Bt.sPhone2_id == 0) {
                resetList(App_Bt.mBtInfo.mListContact);
            } else {
                resetList(App_Bt.mBtInfo.mListContact2);
            }
        } else if (App_Bt.bIsFavList) {
            App_Bt.mBtInfo.sortContact_Fav();
            resetList(App_Bt.mBtInfo.mListFavContact);
        } else {
            App_Bt.mBtInfo.sortContact();
            resetList(App_Bt.mBtInfo.mListContact);
        }
        if (this.tvContact_Num != null) {
            String str_Num = FinalChip.BSP_PLATFORM_Null;
            if (App_Bt.mBtInfo.mListContact != null && App_Bt.mBtInfo.mListContact.size() > 0) {
                str_Num = "  " + App_Bt.mBtInfo.mListContact.size() + "  ";
            }
            this.tvContact_Num.setText(str_Num);
        }
    }

    public void clearEditFocus() {
        if (this.mEditSearch != null && this.editFocus) {
            this.mEditSearch.clearFocus();
            App_Bt.getInstance().hideInput(this.mEditSearch);
        }
    }

    public void clearPageFocus() {
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        mClick.clear();
        if ((CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) && this.mGridView.adapter != null) {
            Log.d("gdy6666", " *****004 Page_Con notifyDataSetChanged    ");
            this.mGridView.adapter.notifyDataSetChanged();
        }
    }

    public boolean scrollToPrev(boolean bNotCareFocus) {
        if (!this.bTop) {
            return false;
        }
        this.bRoolKey = true;
        clearEditFocus();
        if (!this.actBt.isFocus(this.mGridView) && !bNotCareFocus) {
            return false;
        }
        if (this.mPosFocusCpy != this.mGridView.mIndexFocus) {
            this.mPosFocusCpy = this.mGridView.mIndexFocus;
            this.mPosMoveTo = this.mPosFocusCpy;
        }
        if (this.mPosMoveTo < 0) {
            this.mPosMoveTo = 0;
        } else {
            if (this.mPosMoveTo <= 0) {
                return false;
            }
            this.mPosMoveTo--;
        }
        this.mGridView.scrollToPosition(this.mPosMoveTo);
        return true;
    }

    public boolean scrollToNext(boolean bNotCareFocus) {
        if (!this.bTop) {
            return false;
        }
        clearEditFocus();
        this.bRoolKey = true;
        Log.d("key", " 00 pageContact scrollToNext isFocus = " + this.actBt.isFocus(this.mGridView) + " bNotCareFocus = " + bNotCareFocus);
        if (!this.actBt.isFocus(this.mGridView) && !bNotCareFocus) {
            return false;
        }
        if (this.mPosFocusCpy != this.mGridView.mIndexFocus) {
            this.mPosFocusCpy = this.mGridView.mIndexFocus;
            this.mPosMoveTo = this.mPosFocusCpy;
        }
        Log.d("key", " 00 pageContact scrollToNext mPosMoveTo = " + this.mPosMoveTo + " getList = " + this.mGridView.getList().size());
        if (this.mPosMoveTo < 0) {
            this.mPosMoveTo = 0;
        } else {
            if (this.mPosMoveTo + 1 >= this.mGridView.getList().size()) {
                return false;
            }
            this.mPosMoveTo++;
        }
        this.mGridView.scrollToPosition(this.mPosMoveTo);
        return true;
    }

    public boolean scrollOk(boolean bNotCareFocus) {
        if (this.bTop) {
            this.bRoolKey = true;
            if (this.actBt.isFocus(this.mGridView) || bNotCareFocus) {
                if (!TextUtils.isEmpty(mClick.get(FinalBtCtrl.ContactItem_Txt_Number)) && App_Bt.bLinkTwoPhone) {
                    App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
                }
                Bt_IpcObj.itemDial(mClick.get(FinalBtCtrl.ContactItem_Txt_Number));
                return true;
            }
        }
        return false;
    }

    public boolean dialByKey() {
        if (!this.bTop || !this.actBt.isFocus(this.mGridView)) {
            return false;
        }
        if (!TextUtils.isEmpty(mClick.get(FinalBtCtrl.ContactItem_Txt_Number))) {
            Bt_IpcObj.setNum(mClick.get(FinalBtCtrl.ContactItem_Txt_Number));
        }
        return true;
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            JButton back = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_Backspace);
            if (back != null) {
                back.setBackgroundTintList(new ColorStateList(states, colors));
                back.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton search = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_Search);
            if (search != null) {
                search.setBackgroundTintList(new ColorStateList(states, colors));
                search.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton down = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_Download);
            if (down != null) {
                down.setBackgroundTintList(new ColorStateList(states, colors));
                down.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton save = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_Save);
            if (save != null) {
                save.setBackgroundTintList(new ColorStateList(states, colors));
                save.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton clear = (JButton) getPage().getChildViewByid(FinalBtCtrl.Contact_Btn_Clear);
            if (clear != null) {
                clear.setBackgroundTintList(new ColorStateList(states, colors));
                clear.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
        }
    }

    public void setDayOrNight(int value) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_NEW")) {
            if (value > 0) {
                getPage().setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bt_night", getPage().mDrawables, getPage().mDrawables));
                return;
            } else {
                getPage().setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("bk_day", getPage().mDrawables, getPage().mDrawables));
                return;
            }
        }
        if (App_Bt.bUI_NightColour) {
            String str = value > 0 ? "night_" : FinalChip.BSP_PLATFORM_Null;
            for (int i = 0; i < this.nightBtn.length; i++) {
                JButton button = (JButton) getPage().getChildViewByid(this.nightBtn[i]);
                if (button != null) {
                    String drawableName = button.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName.startsWith("night_")) {
                            button.setStrDrawable(drawableName.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName.startsWith("night_")) {
                        button.setStrDrawable("night_" + drawableName, true);
                    }
                    if (!App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") && (this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061)) {
                        button.setTextColor(value > 0 ? -1 : -16777216);
                    }
                }
            }
            for (int j = 0; j < this.nightView.length; j++) {
                JView view = (JView) getPage().getChildViewByid(this.nightView[j]);
                if (view != null) {
                    String drawableName2 = view.getStrDrawable();
                    if (TextUtils.isEmpty(str)) {
                        if (drawableName2.startsWith("night_")) {
                            view.setStrDrawable(drawableName2.replace("night_", FinalChip.BSP_PLATFORM_Null), true);
                        }
                    } else if (!drawableName2.startsWith("night_")) {
                        view.setStrDrawable("night_" + drawableName2, true);
                    }
                }
            }
            for (int k = 0; k < this.nightText.length; k++) {
                JText text = (JText) getPage().getChildViewByid(this.nightText[k]);
                if (text != null) {
                    text.setTextColor(value > 0 ? -1 : -16777216);
                    if (this.nightText[k] == 10217 || this.nightText[k] == 10218) {
                        text.setColor(value > 0 ? this.color_night : this.color_day);
                    }
                }
            }
            if (!App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") && this.mEditSearch != null) {
                this.mEditSearch.setHintTextColor(value > 0 ? -1 : -16777216);
                this.mEditSearch.setTextColor(value <= 0 ? -16777216 : -1);
            }
            notifyDataSetChanged();
        }
    }
}
