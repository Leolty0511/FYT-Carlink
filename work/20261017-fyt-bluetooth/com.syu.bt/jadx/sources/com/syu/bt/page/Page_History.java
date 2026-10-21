package com.syu.bt.page;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Page_History extends MyPage {
    public Act_Bt actBt;
    private boolean bRoolKey;
    boolean bTop;
    private String checkPhoneNumber2;
    public int hisPhone_id;
    public String hisPhone_mac;
    public int iTypeHistorySelect;
    public boolean mGridClickDial;
    JGridView mGridView;
    JGridView mGridViewSearch;
    public JButton mHisRefresh;
    private int mPosFocusCpy1;
    private int mPosFocusCpy2;
    private int mPosMoveTo1;
    private int mPosMoveTo2;
    Runnable mRun_NotifyDataSetChanged;
    SparseArray<String> mapSelect;
    private int[] nightBtn;
    private int[] nightText;
    private int[] nightView;
    public Random random;
    public String[] str_ContIcon;
    public JText tvHisPhone11;
    public JText tvHisPhone11_p;
    public JText tvHisPhone12;
    public JText tvHisPhone12_p;
    public JText tvTxtNumber;
    public JButton vHistory_Phone;
    View vNoData;

    public Page_History(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.iTypeHistorySelect = -1;
        this.mGridClickDial = false;
        this.mPosMoveTo1 = -1;
        this.mPosFocusCpy1 = -1;
        this.bRoolKey = false;
        this.mPosMoveTo2 = -1;
        this.mPosFocusCpy2 = -1;
        this.mapSelect = new SparseArray<>();
        this.bTop = false;
        this.nightBtn = new int[]{FinalBtCtrl.History_Btn_In, FinalBtCtrl.History_Btn_Out, FinalBtCtrl.History_Btn_Miss, FinalBtCtrl.History_Btn_Del, FinalBtCtrl.Menu_Dial, FinalBtCtrl.Menu_Contact, FinalBtCtrl.Menu_Pair, FinalBtCtrl.Menu_History, FinalBtCtrl.Menu_Av, FinalBtCtrl.Menu_Set};
        this.nightView = new int[]{FinalBtCtrl.TZY_View_Change_1, FinalBtCtrl.TZY_View_Change_2, FinalBtCtrl.TZY_View_Change_3, FinalBtCtrl.MenuView_bk};
        this.nightText = new int[]{FinalBtCtrl.Contact_Txt0, FinalBtCtrl.Contact_Txt1, FinalBtCtrl.Contact_Txt2, FinalBtCtrl.Contact_Txt3};
        this.hisPhone_id = 255;
        this.hisPhone_mac = FinalChip.BSP_PLATFORM_Null;
        this.mRun_NotifyDataSetChanged = new Runnable() { // from class: com.syu.bt.page.Page_History.1
            @Override // java.lang.Runnable
            public void run() {
                if (Page_History.this.mGridView != null) {
                    Log.d("gdy6666", " ***** Page_History mRun_NotifyDataSetChanged   notifyDataSetChanged ");
                    Page_History.this.mGridView.notifyDataSetChanged();
                }
            }
        };
        this.str_ContIcon = new String[]{"Cont_icon1", "Cont_icon2", "Cont_icon3", "Cont_icon4", "Cont_icon5"};
        this.random = new Random();
        this.actBt = actBt;
    }

    public void resetList(JGridView gridView, List<SparseArray<String>> list) {
        Log.d("his6", " 000 PageHistory resetList ");
        this.mPosMoveTo1 = -1;
        this.mPosFocusCpy1 = -1;
        if (!Bt_IpcObj.isConnect()) {
            MyApplication.resetList(gridView, (List<SparseArray<String>>) null);
        } else {
            MyApplication.resetList(gridView, list);
        }
        Log.d("his6", "Page_His resetList list = " + list.size());
        if (this.vNoData != null) {
            this.vNoData.setVisibility((list.size() <= 0 || !Bt_IpcObj.isConnect()) ? 0 : 8);
        }
    }

    public void showSearchList(boolean flag) {
        if (this.mGridView != null) {
            this.mGridView.setVisibility(flag ? 8 : 0);
        }
        if (this.mGridViewSearch != null) {
            this.mGridViewSearch.setVisibility(flag ? 0 : 8);
        }
    }

    public void updateList() {
        if (this.mGridView != null) {
            this.mGridView.notifyDataSetChanged();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        JPage pageMenu;
        if (this.actBt.myActivity.bTop) {
            Log.d("his6", " ** PageHis resume  mListHistoryOut = " + App_Bt.mBtInfo.mListHistoryOut.toString() + " mListHistoryOut2 = " + App_Bt.mBtInfo.mListHistoryOut2.toString());
            this.bTop = true;
            this.mapSelect.clear();
            App_Bt.getInstance().mIpcObj.recoverAppId();
            updateHistorySelected(App_Bt.sCallsType, true);
            App_Bt.queryCallLog();
            resetList();
            if (App_Bt.bLinkTwoPhone) {
                showPhone();
            }
            if (App_Bt.getInstance().bPopBtRingSet) {
                App_Bt.getInstance().popBtRingSet(false);
            }
            if (App_Bt.bDelMenuFromBtAv && (pageMenu = this.actBt.ui.mPages.get(10002)) != null && pageMenu.getVisibility() != 0) {
                pageMenu.setVisibility(0);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        View view_40 = getPage().getChildViewByid(FinalBtCtrl.view_40);
        if (view_40 != null) {
            view_40.setVisibility(App_Bt.iDensity >= 240 ? 0 : 8);
        }
        this.tvTxtNumber = (JText) getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num3);
        if (this.tvTxtNumber != null) {
            this.tvTxtNumber.addTextChangedListener(new MyTextWatcher(this.tvTxtNumber));
        }
        this.mGridViewSearch = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Dial_SearchListView);
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.History_ListView);
        this.mHisRefresh = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Refresh);
        this.vHistory_Phone = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Phone_Switch);
        this.tvHisPhone11 = (JText) getPage().getChildViewByid(FinalBtCtrl.His_Phone_1);
        this.tvHisPhone11_p = (JText) getPage().getChildViewByid(FinalBtCtrl.His_Phone_1_p);
        this.tvHisPhone12 = (JText) getPage().getChildViewByid(FinalBtCtrl.His_Phone_2);
        this.tvHisPhone12_p = (JText) getPage().getChildViewByid(FinalBtCtrl.His_Phone_2_p);
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
        if (this.mGridView != null) {
            this.mGridView.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.Page_History.2
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View arg0, MotionEvent event) {
                    switch (event.getAction()) {
                        case 0:
                        case 2:
                            Page_History.this.mGridView.getParent().requestDisallowInterceptTouchEvent(true);
                            return false;
                        case 1:
                        case 3:
                            Page_History.this.mGridView.getParent().requestDisallowInterceptTouchEvent(false);
                            return false;
                        default:
                            return false;
                    }
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
        this.vNoData = getPage().getChildViewByid(FinalBtCtrl.List_View_None);
        setButtonColor(App_Bt.color);
        setDayOrNight(App_Bt.mColorType);
    }

    public class MyTextWatcher implements TextWatcher {
        private JText jTxtNumber;

        public MyTextWatcher(JText jTxtNumber) {
            this.jTxtNumber = jTxtNumber;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            Page_History.this.queryContacts(this.jTxtNumber.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        this.bTop = false;
        this.mapSelect.clear();
    }

    public void showPhone() {
        Log.d("hfp1", " ** History_Phone_Switch App_Bt.sPhone2_id = " + App_Bt.sPhone2_id);
        if (App_Bt.bPhone2_HFP[0] >= 3 && App_Bt.bPhone2_HFP[1] < 3) {
            App_Bt.sPhone2_id = 0;
        }
        if (App_Bt.bPhone2_HFP[1] >= 3 && App_Bt.bPhone2_HFP[0] < 3) {
            App_Bt.sPhone2_id = 1;
        }
        if (this.tvHisPhone11 != null) {
            this.tvHisPhone11.setVisibility((App_Bt.bPhone2_HFP[0] < 3 || App_Bt.sPhone2_id != 0) ? 8 : 0);
            this.tvHisPhone11.setText(App_Bt.sPhone2_NAME[0]);
        }
        if (this.tvHisPhone11_p != null) {
            this.tvHisPhone11_p.setVisibility((App_Bt.bPhone2_HFP[0] < 3 || App_Bt.sPhone2_id != 1) ? 8 : 0);
            this.tvHisPhone11_p.setText(App_Bt.sPhone2_NAME[0]);
        }
        if (this.tvHisPhone12 != null) {
            this.tvHisPhone12.setVisibility((App_Bt.bPhone2_HFP[1] < 3 || App_Bt.sPhone2_id != 1) ? 8 : 0);
            this.tvHisPhone12.setText(App_Bt.sPhone2_NAME[1]);
        }
        if (this.tvHisPhone12_p != null) {
            this.tvHisPhone12_p.setVisibility((App_Bt.bPhone2_HFP[1] < 3 || App_Bt.sPhone2_id != 0) ? 8 : 0);
            this.tvHisPhone12_p.setText(App_Bt.sPhone2_NAME[1]);
        }
        if (this.hisPhone_id != App_Bt.sPhone2_id || this.hisPhone_mac.equals(App_Bt.sPhone2_MAC[App_Bt.sPhone2_id])) {
            this.hisPhone_id = App_Bt.sPhone2_id;
            this.hisPhone_mac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
            resetList();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            int id = v.getId();
            int iQueryType = App_Bt.sCallsType;
            switch (id) {
                case FinalBtCtrl.History_Phone_Switch /* 10225 */:
                    App_Bt.sPhone2_id = App_Bt.sPhone2_id == 0 ? 1 : 0;
                    showPhone();
                    break;
                case FinalBtCtrl.History_Btn_In /* 10282 */:
                    iQueryType = 1;
                    break;
                case FinalBtCtrl.History_Btn_Out /* 10283 */:
                    iQueryType = 2;
                    break;
                case FinalBtCtrl.History_Btn_Miss /* 10284 */:
                    iQueryType = 3;
                    break;
                case FinalBtCtrl.History_Btn_Refresh /* 10288 */:
                    Log.d("his16", " 00 History_Btn_Refresh sCallsType = " + App_Bt.sCallsType);
                    Log.d("his16", " 01 History_Btn_Refresh bDownloadingRecord = " + App_Bt.bDownloadingRecord);
                    if (!FuncUtils.isFastDoubleClick() && !App_Bt.bDownloadingRecord) {
                        Log.d("his16", " 22 History_Btn_Refresh mStrCustomer = " + App_Bt.mStrCustomer);
                        if (CustomerUtil.isYFConfig()) {
                            if (App_Bt.mBtInfo.mListHistoryAll != null && App_Bt.mBtInfo.mListHistoryAll.size() <= 0) {
                                Bt.PROXY.cmd(35);
                            }
                            iQueryType = 0;
                        } else {
                            Log.d("his6", " 33 History_Btn_Refresh sCallsType = " + App_Bt.sCallsType);
                            if (App_Bt.bLinkTwoPhone) {
                                if (App_Bt.sCallsType == 3) {
                                    Bt.PROXY.cmd(37, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
                                } else if (App_Bt.sCallsType == 2) {
                                    Bt.PROXY.cmd(35, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
                                } else if (App_Bt.sCallsType == 1) {
                                    Bt.PROXY.cmd(36, (int[]) null, (float[]) null, new String[]{App_Bt.sPhone2_MAC[App_Bt.sPhone2_id]});
                                }
                            } else if (App_Bt.sCallsType == 3) {
                                Bt.PROXY.cmd(37);
                            } else if (App_Bt.sCallsType == 2) {
                                Bt.PROXY.cmd(35);
                            } else if (App_Bt.sCallsType == 1) {
                                Bt.PROXY.cmd(36);
                            }
                        }
                    } else {
                        return;
                    }
                    break;
            }
            if (iQueryType != App_Bt.sCallsType) {
                this.mapSelect.clear();
                App_Bt.sCallsType = iQueryType;
                resetList();
                updateHistorySelected(iQueryType, true);
                return;
            }
            switch (id) {
                case FinalBtCtrl.Callin_Btn_ShowGPS /* 10127 */:
                    if (App_Bt.getInstance().isHalfScreenAble()) {
                        App_Bt.getInstance().setFullScreenMode(0);
                    }
                    break;
                case FinalBtCtrl.Dial_Btn_Dial /* 10131 */:
                    if (!FuncUtils.isFastDoubleClick()) {
                        App_Bt.getInstance().mIpcObj.FuncDial();
                    } else {
                        return;
                    }
                    break;
                case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
                case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
                case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
                case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
                case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
                case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
                case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
                case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
                case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
                case FinalBtCtrl.Dial_Btn_X /* 10156 */:
                case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                    App_Bt.getInstance().mIpcObj.cmdNum(id - 10146);
                    break;
                case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                    if (CustomerUtil.filterDemand_DZSJ()) {
                        Bt_IpcObj.clearKey(false);
                    }
                    break;
                case FinalBtCtrl.History_Btn_Del /* 10285 */:
                    List<SparseArray<String>> listHistory = null;
                    if (App_Bt.bHistoryLogAllFlag) {
                        listHistory = App_Bt.mBtInfo.mListHistoryAll;
                    } else if (App_Bt.bLinkTwoPhone && App_Bt.sPhone2_id == 1) {
                        switch (App_Bt.sCallsType) {
                            case 1:
                                listHistory = App_Bt.mBtInfo.mListHistoryIn2;
                                break;
                            case 2:
                                listHistory = App_Bt.mBtInfo.mListHistoryOut2;
                                break;
                            case 3:
                                listHistory = App_Bt.mBtInfo.mListHistoryMiss2;
                                break;
                        }
                        resetList();
                    } else {
                        switch (App_Bt.sCallsType) {
                            case 1:
                                listHistory = App_Bt.mBtInfo.mListHistoryIn;
                                break;
                            case 2:
                                listHistory = App_Bt.mBtInfo.mListHistoryOut;
                                break;
                            case 3:
                                listHistory = App_Bt.mBtInfo.mListHistoryMiss;
                                break;
                        }
                    }
                    if (listHistory != null && listHistory.size() > 0) {
                        this.actBt.popDeleteContacts(3, App_Bt.getInstance().uiApp.getString("bt_is_delete_allrecords"));
                    }
                    break;
                case FinalBtCtrl.History_Btn_DelOne /* 10286 */:
                    List<SparseArray<String>> listHistory2 = null;
                    if (App_Bt.bHistoryLogAllFlag) {
                        listHistory2 = App_Bt.mBtInfo.mListHistoryAll;
                    } else {
                        switch (App_Bt.sCallsType) {
                            case 1:
                                listHistory2 = App_Bt.mBtInfo.mListHistoryIn;
                                break;
                            case 2:
                                listHistory2 = App_Bt.mBtInfo.mListHistoryOut;
                                break;
                            case 3:
                                listHistory2 = App_Bt.mBtInfo.mListHistoryMiss;
                                break;
                        }
                    }
                    if (listHistory2 != null && listHistory2.size() > 0) {
                        this.actBt.popDeleteContacts(4, App_Bt.getInstance().uiApp.getString("bt_is_delete_onerecord"));
                    }
                    break;
                case FinalBtCtrl.History_Btn_Dial /* 10287 */:
                    if (this.mapSelect != null && !TextUtils.isEmpty(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num)) && Bt_IpcObj.isStateConnect()) {
                        Bt_IpcObj.itemDial(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num));
                        this.actBt.myActivity.goPage(10003);
                    }
                    break;
                case FinalBtCtrl.Func_Btn_Back /* 10551 */:
                    this.actBt.Func_Back();
                    break;
            }
            if (this.actBt.MenuClick(v)) {
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                Bt_IpcObj.LongClick0();
                break;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (CustomerUtil.filterDemand_DZSJ()) {
                    Bt_IpcObj.clearKey(true);
                }
                break;
        }
        return false;
    }

    public void updateHistorySelected(int iType, boolean bSelected) {
        if (!App_Bt.bHistoryLogAllFlag || CustomerUtil.isYFConfig()) {
            if (bSelected && this.iTypeHistorySelect != iType) {
                updateHistorySelected(this.iTypeHistorySelect, false);
                this.iTypeHistorySelect = iType;
            }
            JButton btnType = null;
            switch (iType) {
                case 0:
                    btnType = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Refresh);
                    break;
                case 1:
                    btnType = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_In);
                    break;
                case 2:
                    btnType = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Out);
                    break;
                case 3:
                    btnType = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Miss);
                    break;
            }
            if (btnType != null) {
                btnType.setFocus(bSelected);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    btnType.setSelected(bSelected);
                }
            }
        }
    }

    public void updateSelected(int id, boolean bSelected) {
        int iHistoryTypeTo = -1;
        String str_call = "bt_history_callin";
        String str_view_Sel = "bt_bigin";
        switch (id) {
            case FinalBtCtrl.History_Btn_In /* 10282 */:
                iHistoryTypeTo = 1;
                str_call = "bt_history_callin";
                str_view_Sel = "bt_bigin";
                break;
            case FinalBtCtrl.History_Btn_Out /* 10283 */:
                iHistoryTypeTo = 2;
                str_call = "bt_history_callout";
                str_view_Sel = "bt_bigout";
                break;
            case FinalBtCtrl.History_Btn_Miss /* 10284 */:
                iHistoryTypeTo = 3;
                str_call = "bt_history_missed";
                str_view_Sel = "bt_bigmiss";
                break;
        }
        if (iHistoryTypeTo != -1) {
            TextView txt_Sel = (TextView) getPage().getChildViewByid(FinalBtCtrl.History_Text_Sel);
            if (txt_Sel != null) {
                txt_Sel.setText(App_Bt.getInstance().uiApp.getString(str_call));
            }
            View view_Sel = getPage().getChildViewByid(FinalBtCtrl.History_Image_Sel);
            if (view_Sel != null) {
                view_Sel.setBackground(getPage().getDrawableFromPath(str_view_Sel, getPage().mDrawables, getPage().mDrawables));
            }
            if (this.iTypeHistorySelect != iHistoryTypeTo && this.iTypeHistorySelect > 0) {
                updateHistorySelected(this.iTypeHistorySelect, bSelected);
            }
            Main.postRunnable_Ui(true, this.mRun_NotifyDataSetChanged, 1000L);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void setPressed(JButton jButton, boolean pressed) {
        int id = jButton.getId();
        updateSelected(id, !pressed);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int type;
        String tvName;
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Dial_SearchListView /* 10208 */:
                View viewContent = page.getChildViewByid(FinalBtCtrl.DialItem_Content);
                if (viewContent != null) {
                    if (map.size() == 0) {
                        viewContent.setVisibility(8);
                    } else {
                        viewContent.setVisibility(0);
                    }
                }
                if (map.size() > 0) {
                    JText textNumber = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Number);
                    JText textName = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Name);
                    String strNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    String strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (textNumber != null) {
                        textNumber.setText(strNumber);
                    }
                    if (textName != null) {
                        textName.setText(strName);
                    }
                    if (!TextUtils.isEmpty(strNumber) && this.mPosMoveTo2 >= 0 && this.mPosMoveTo2 == position) {
                        this.checkPhoneNumber2 = strNumber;
                        pressGridItem2(page, page, true);
                        break;
                    }
                }
                break;
            case FinalBtCtrl.History_ListView /* 10289 */:
                Log.d("gdy66", "000 Page_History InitGridItem strNumber - position = " + position);
                if (page != null && App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
                    Log.d("key", " 00 InitGridItem set App_Bt.color = " + App_Bt.color);
                    int[] colors = {App_Bt.color, App_Bt.color, App_Bt.color, App_Bt.color};
                    int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_selected}, new int[]{R.attr.state_hovered}, new int[]{R.attr.state_focused}};
                    page.setBackgroundTintList(new ColorStateList(states, colors));
                    page.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
                }
                Log.d("gdy66", "111 Page_History InitGridItem App_Bt.bUI_NightColour = " + App_Bt.bUI_NightColour);
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
                View viewContent2 = page.getChildViewByid(FinalBtCtrl.HistoryItem_Content);
                if (viewContent2 != null) {
                    if (map.size() == 0) {
                        viewContent2.setVisibility(8);
                    } else {
                        viewContent2.setVisibility(0);
                    }
                }
                String num = map.get(FinalBtCtrl.HistoryItem_Txt_Num);
                String name = map.get(FinalBtCtrl.HistoryItem_Txt_Name);
                String data = map.get(FinalBtCtrl.HistoryItem_Txt_Date);
                Log.d("his2", "  ** 00 textData.setText num = " + num + " data = " + data + " name = " + name);
                JText textName2 = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Name);
                JText textNum = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Num);
                JText textNumSmall = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_NumSmall);
                JText textData = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Date);
                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                    if (textNum != null) {
                        textNum.setTypeface(Typeface.MONOSPACE);
                    }
                    if (textNumSmall != null) {
                        textNumSmall.setTypeface(Typeface.MONOSPACE);
                    }
                    if (textData != null) {
                        textData.setTypeface(Typeface.MONOSPACE);
                    }
                }
                boolean bEmptyName = false;
                if (TextUtils.isEmpty(name)) {
                    bEmptyName = true;
                }
                if (bEmptyName) {
                    if (textName2 != null) {
                        if (CustomerUtil.isYFConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("SONING")) {
                            textName2.setVisibility(0);
                        } else {
                            textName2.setVisibility(8);
                        }
                    }
                    if (textNumSmall != null) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                            textNumSmall.setVisibility(0);
                            textNumSmall.setText("unknow");
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("YL_ZZ_1920")) {
                            textNumSmall.setVisibility(0);
                            textNumSmall.setText(num);
                        } else {
                            textNumSmall.setVisibility(8);
                        }
                    }
                    if (textNum != null) {
                        textNum.setVisibility(0);
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textNum.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textNum.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textNum.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textNum.setText(num);
                    }
                    if (textData != null) {
                        textData.setVisibility(0);
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textData.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textData.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textData.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        Log.d("his2", "  ** 11 textData.setText num = " + num);
                        if (App_Bt.bLinkTwoPhone) {
                            textData.setText(data);
                        } else {
                            textData.setText(num);
                        }
                    }
                } else {
                    Log.d("his22", "  ** 11 textName.setText name = " + name);
                    if (textName2 != null) {
                        textName2.setText(name);
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textName2.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textName2.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textName2.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textName2.setVisibility(0);
                    }
                    if (textNumSmall != null) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                            textNumSmall.setText(name);
                        } else {
                            textNumSmall.setText(num);
                        }
                        textNumSmall.setVisibility(0);
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textNumSmall.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                            textNumSmall.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textNumSmall.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                    }
                    if (textNum != null) {
                        Log.d("his22", "  ** 11 textNum != null mStrCustomer = " + App_Bt.mStrCustomer);
                        if (CustomerUtil.isYFConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("SONING")) {
                            textNum.setVisibility(0);
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                            textNum.setText(num);
                            textNum.setVisibility(0);
                        } else {
                            textNum.setVisibility(8);
                        }
                    }
                    if (textData != null) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textData.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                            textData.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mUi_Name.equalsIgnoreCase("yl_dn1") || App_Bt.mStrCustomer.equalsIgnoreCase("BT_XYQ_HB") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textData.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textData.setVisibility(0);
                        Log.d("his2", "  ** 22 textData.setText num = " + num);
                        textData.setText(num);
                    }
                }
                Log.d("gdy17", "00 Page_History num = " + num + "  name = " + name);
                JText textHistoryHead = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_head_Icon);
                if (textHistoryHead != null) {
                    if (bEmptyName) {
                        tvName = new StringBuilder().append(num.charAt(0)).toString();
                    } else {
                        tvName = new StringBuilder().append(name.charAt(0)).toString();
                    }
                    String bgName = this.str_ContIcon[this.random.nextInt(5)];
                    Log.d("gdy17", "11 Page_History tvName = " + tvName + "  bgName = " + bgName);
                    textHistoryHead.setText(tvName);
                    textHistoryHead.setBackground(getPage().getDrawableFromPath(bgName, getPage().mDrawables, getPage().mDrawables));
                }
                View view3 = page.getChildViewByid(FinalBtCtrl.HistoryItem_Icon1);
                if (view3 != null) {
                    view3.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_dial_icon" : "dial_icon", getPage().mDrawables, getPage().mDrawables));
                }
                View view = page.getChildViewByid(FinalBtCtrl.HistoryItem_Icon);
                if (view != null) {
                    MyUiItem item = (MyUiItem) view.getTag();
                    if (item.getParaStr() != null) {
                        if (view instanceof JView) {
                            JView viewIco = (JView) view;
                            String str2 = null;
                            String[] strs = item.getParaStr();
                            switch (App_Bt.sCallsType) {
                                case 1:
                                    str2 = strs[0];
                                    break;
                                case 2:
                                    str2 = strs[1];
                                    break;
                                case 3:
                                    str2 = strs[2];
                                    break;
                            }
                            if (str2 == null) {
                                str2 = item.getStrDrawable();
                            }
                            if (viewIco.getStrDrawable() != str2 && str2 != null) {
                                viewIco.setStrDrawable(str2, true);
                            }
                        }
                    } else {
                        if (App_Bt.bHistoryLogAllFlag) {
                            type = Integer.parseInt(map.get(FinalBtCtrl.HistoryItem_Type));
                        } else {
                            type = App_Bt.sCallsType;
                        }
                        String picStr = "bt_";
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                            picStr = "bt2000_";
                        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3")) {
                            picStr = App_Bt.mColorType > 0 ? "night_bt_" : "bt_";
                        } else if (view3 != null) {
                            picStr = App_Bt.mColorType > 0 ? "night_bt_" : "bt_";
                        }
                        switch (type) {
                            case 1:
                                view.setBackground(getPage().getDrawableFromPath(String.valueOf(picStr) + "icoincall", getPage().mDrawables, getPage().mDrawables));
                                break;
                            case 2:
                                view.setBackground(getPage().getDrawableFromPath(String.valueOf(picStr) + "icooutcall", getPage().mDrawables, getPage().mDrawables));
                                break;
                            case 3:
                                view.setBackground(getPage().getDrawableFromPath(String.valueOf(picStr) + "icomisscall", getPage().mDrawables, getPage().mDrawables));
                                break;
                        }
                    }
                }
                View headIco = page.getChildViewByid(FinalBtCtrl.ContactItem_Head);
                if (headIco != null) {
                    if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                        String headPic = map.get(FinalBtCtrl.ContactItem_HeadIcon);
                        int picId = -1;
                        if (!TextUtils.isEmpty(headPic)) {
                            picId = Integer.parseInt(headPic);
                        }
                        if (picId > 15) {
                            Bitmap bmp = BTUtil.getInstance().getHeadIco(num);
                            if (bmp != null) {
                                headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                            } else {
                                headIco.setBackground(getPage().getDrawableFromPath("headbig" + picId, getPage().mDrawables, getPage().mDrawables));
                            }
                        } else if (picId > 0) {
                            headIco.setBackground(getPage().getDrawableFromPath("headbig" + picId, getPage().mDrawables, getPage().mDrawables));
                        } else {
                            headIco.setBackground(getPage().getDrawableFromPath("headbig16", getPage().mDrawables, getPage().mDrawables));
                        }
                    } else if (App_Bt.bShowHeadIco && !TextUtils.isEmpty(num) && headIco != null) {
                        App_Bt.myPaths.add(num);
                        if (App_Bt.myAlbum.size() > 0) {
                            Bitmap bmp2 = BTUtil.getInstance().getHeadIco(num);
                            if (bmp2 != null) {
                                if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                                    headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.outputCircleLittle(bmp2, 15)));
                                } else {
                                    headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp2)));
                                }
                            } else {
                                headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    } else {
                        headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
                    }
                }
                boolean flag = false;
                if (!TextUtils.isEmpty(data) && !TextUtils.isEmpty(num)) {
                    if (this.mPosMoveTo1 >= 0 && this.mPosMoveTo1 == position) {
                        this.mapSelect.put(FinalBtCtrl.HistoryItem_Txt_Num, num);
                        this.mapSelect.put(FinalBtCtrl.HistoryItem_Date, data);
                    }
                    if (num.equals(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num)) && data.equals(this.mapSelect.get(FinalBtCtrl.HistoryItem_Date))) {
                        flag = true;
                    }
                }
                if (CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA") || this.bRoolKey) {
                    page.setFocus(flag);
                    pressGridItem1(page, page, flag);
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridPressed(JGridView gridView, JPage page, boolean pressed) {
        if (gridView.mPageInfos != null) {
            int id = gridView.getId();
            switch (id) {
                case FinalBtCtrl.Dial_SearchListView /* 10208 */:
                    for (WeakReference<JPage> pageReference : gridView.mPageInfos) {
                        JPage pageTmp = pageReference.get();
                        if (pageTmp != null) {
                            pressGridItem2(pageTmp, page, pressed);
                        }
                    }
                    break;
                case FinalBtCtrl.History_ListView /* 10289 */:
                    for (WeakReference<JPage> pageReference2 : gridView.mPageInfos) {
                        JPage pageTmp2 = pageReference2.get();
                        if (pageTmp2 != null) {
                            pressGridItem1(pageTmp2, page, pressed);
                        }
                    }
                    if (!this.mGridClickDial) {
                        if (page.getChildViewByid(FinalBtCtrl.HistoryItem_Btn_Dial) == null) {
                            this.mGridClickDial = true;
                        }
                        if (MyApplication.mIdCustomer == 63 || CustomerUtil.isXCConfig()) {
                            this.mGridClickDial = true;
                        }
                    }
                    break;
            }
        }
    }

    public void pressGridItem1(JPage page, JPage pagePressed, boolean pressed) {
        boolean bFocus = pressed && page == pagePressed;
        View view = page.getChildViewByid(FinalBtCtrl.HistoryItem_Icon);
        if (view != null && (view instanceof JView)) {
            ((JView) view).setFocus(bFocus);
        }
        View view2 = page.getChildViewByid(FinalBtCtrl.HistoryItem_Btn_Dial);
        if (view2 != null && (view2 instanceof JButton)) {
            ((JButton) view2).setFocus(bFocus);
        }
        JText txt = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Name);
        if (txt != null) {
            txt.setFocus(bFocus);
        }
        JText txt2 = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_NumSmall);
        if (txt2 != null) {
            txt2.setFocus(bFocus);
        }
        JText txt3 = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Num);
        if (txt3 != null) {
            txt3.setFocus(bFocus);
        }
        JText txt4 = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Date);
        if (txt4 != null) {
            txt4.setFocus(bFocus);
        }
        JText txt5 = (JText) page.getChildViewByid(FinalBtCtrl.HistoryItem_Txt_Time);
        if (txt5 != null) {
            txt5.setFocus(bFocus);
        }
    }

    public void pressGridItem2(JPage page, JPage pagePressed, boolean pressed) {
        boolean bFocus = pressed && page == pagePressed;
        JText txt = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Number);
        if (txt != null) {
            txt.setFocus(bFocus);
        }
        JText txt2 = (JText) page.getChildViewByid(FinalBtCtrl.DialItem_Txt_Name);
        if (txt2 != null) {
            txt2.setFocus(bFocus);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Dial_SearchListView /* 10208 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    int position = gridView.getPosition();
                    SparseArray<String> map = gridView.getList().get(position);
                    if (!TextUtils.isEmpty(map.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                        Bt_IpcObj.itemDial(map.get(FinalBtCtrl.ContactItem_Txt_Number));
                    }
                }
                break;
            case FinalBtCtrl.History_ListView /* 10289 */:
                if (this.mGridClickDial && !FuncUtils.isFastDoubleClick()) {
                    if (App_Bt.hideBtnWhenDisconnect) {
                        if (this.mGridView.adapter != null) {
                            this.mGridView.adapter.notifyDataSetChanged();
                        }
                    } else {
                        int position2 = gridView.getPosition();
                        SparseArray<String> map2 = gridView.getList().get(position2);
                        String num = map2.get(FinalBtCtrl.HistoryItem_Txt_Num);
                        String date = map2.get(FinalBtCtrl.HistoryItem_Date);
                        this.mPosMoveTo1 = -1;
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) {
                            if (!TextUtils.isEmpty(num) && !TextUtils.isEmpty(date)) {
                                if (num.equals(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num)) && date.equals(this.mapSelect.get(FinalBtCtrl.HistoryItem_Date))) {
                                    Bt_IpcObj.itemDial(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num));
                                }
                                this.mapSelect.put(FinalBtCtrl.HistoryItem_Txt_Num, num);
                                this.mapSelect.put(FinalBtCtrl.HistoryItem_Date, date);
                            }
                            if (this.mGridView.adapter != null) {
                                this.mGridView.adapter.notifyDataSetChanged();
                            }
                        } else {
                            Log.d("sfth", " 00 Page_His dial num = " + num + " date= " + date);
                            this.mapSelect.put(FinalBtCtrl.HistoryItem_Txt_Num, num);
                            this.mapSelect.put(FinalBtCtrl.HistoryItem_Date, date);
                            if (!TextUtils.isEmpty(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num))) {
                                Log.d("sfth", " 11 Page_His dial num = " + this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num) + " sPhone2_id = " + App_Bt.sPhone2_id);
                                if (App_Bt.bLinkTwoPhone) {
                                    App_Bt.sPhone_callin_mac = App_Bt.sPhone2_MAC[App_Bt.sPhone2_id];
                                }
                                Bt_IpcObj.itemDial(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num));
                            }
                        }
                    }
                    break;
                }
                break;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void GridLongClick(JGridView gridView) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.History_ListView /* 10289 */:
                if (!App_Bt.hideBtnWhenDisconnect) {
                    int position = gridView.getPosition();
                    SparseArray<String> map = gridView.getList().get(position);
                    if (map != null && map.size() > 0) {
                        this.actBt.popDeleteContacts(4, App_Bt.getInstance().uiApp.getString("bt_is_delete_onerecord"));
                        break;
                    }
                }
                break;
        }
    }

    public List<SparseArray<String>> reverseList(List<SparseArray<String>> list) {
        List<SparseArray<String>> list_p = new ArrayList<>();
        list_p.addAll(list);
        Collections.reverse(list_p);
        return list_p;
    }

    public void resetList() {
        boolean flag = true;
        if (CustomerUtil.isYFConfig() && App_Bt.sCallsType > 0) {
            flag = false;
        }
        Log.d("his6", " 00 Page_history resetList  App_Bt.sPhone2_id = " + App_Bt.sPhone2_id);
        if (App_Bt.bHistoryLogAllFlag && flag) {
            resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryAll);
        }
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.sPhone2_id == 0) {
                switch (App_Bt.sCallsType) {
                    case 1:
                        Log.d("his6", " 11 resetList  mListHistoryIn = " + App_Bt.mBtInfo.mListHistoryIn.toString());
                        resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryIn);
                        break;
                    case 2:
                        Log.d("his2", " ** 111 Page_His resetList() mListHistoryOut.toString:" + App_Bt.mBtInfo.mListHistoryOut2.toString());
                        resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryOut);
                        break;
                    case 3:
                        resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryMiss);
                        break;
                }
            }
            switch (App_Bt.sCallsType) {
                case 1:
                    Log.d("his6", " 00 resetList  mListHistoryIn2 = " + App_Bt.mBtInfo.mListHistoryIn2.toString());
                    resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryIn2);
                    break;
                case 2:
                    Log.d("his2", " ** 222 Page_His resetList() mListHistoryOut2.toString:" + App_Bt.mBtInfo.mListHistoryOut2.toString());
                    resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryOut2);
                    break;
                case 3:
                    resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryMiss2);
                    break;
            }
        }
        Log.d("his", " 11 resetList sCallsType = " + App_Bt.sCallsType);
        switch (App_Bt.sCallsType) {
            case 1:
                resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryIn);
                break;
            case 2:
                Log.d("his", " ** Page_His resetList() mListHistoryOut.size:" + App_Bt.mBtInfo.mListHistoryOut.size());
                resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryOut);
                break;
            case 3:
                resetList(this.mGridView, App_Bt.mBtInfo.mListHistoryMiss);
                break;
        }
    }

    public boolean isNumber(String str) {
        Pattern p = Pattern.compile("[0-9]*");
        return p.matcher(str).matches();
    }

    public void queryContacts(String qry) {
        List<SparseArray<String>> listContact = new ArrayList<>();
        if (TextUtils.isEmpty(qry)) {
            showSearchList(false);
            return;
        }
        if (isNumber(qry)) {
            for (SparseArray<String> map : App_Bt.mBtInfo.mListContact) {
                String number = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                if (number.contains(qry)) {
                    listContact.add(map);
                }
            }
            showSearchList(true);
            resetList(this.mGridViewSearch, listContact);
        }
    }

    public boolean scrollToPrev() {
        if (!this.bTop) {
            return false;
        }
        this.bRoolKey = true;
        if (this.actBt.isFocus(this.mGridView)) {
            if (this.mPosFocusCpy1 != this.mGridView.mIndexFocus) {
                this.mPosFocusCpy1 = this.mGridView.mIndexFocus;
                this.mPosMoveTo1 = this.mPosFocusCpy1;
            }
            if (this.mPosMoveTo1 < 0) {
                this.mPosMoveTo1 = 0;
            } else {
                if (this.mPosMoveTo1 <= 0) {
                    return false;
                }
                this.mPosMoveTo1--;
            }
            this.mGridView.scrollToPosition(this.mPosMoveTo1);
            return true;
        }
        if (!this.actBt.isFocus(this.mGridViewSearch)) {
            return false;
        }
        if (this.mPosFocusCpy2 != this.mGridViewSearch.mIndexFocus) {
            this.mPosFocusCpy2 = this.mGridViewSearch.mIndexFocus;
            this.mPosMoveTo2 = this.mPosFocusCpy2;
        }
        if (this.mPosMoveTo2 < 0) {
            this.mPosMoveTo2 = 0;
        } else {
            if (this.mPosMoveTo2 <= 0) {
                return false;
            }
            this.mPosMoveTo2--;
        }
        this.mGridViewSearch.scrollToPosition(this.mPosMoveTo2);
        return true;
    }

    public boolean scrollToNext() {
        Log.d("key", " 00 pageHis scrollToNext bTop = " + this.bTop);
        if (!this.bTop) {
            return false;
        }
        this.bRoolKey = true;
        if (this.actBt.isFocus(this.mGridView)) {
            Log.d("key", " 11 pageHis scrollToNext mGridView ");
            if (this.mPosFocusCpy1 != this.mGridView.mIndexFocus) {
                this.mPosFocusCpy1 = this.mGridView.mIndexFocus;
                this.mPosMoveTo1 = this.mPosFocusCpy1;
            }
            Log.d("key", " 22 pageHis scrollToNext mPosMoveTo1 = " + this.mPosMoveTo1 + " getList = " + this.mGridView.getList().size());
            if (this.mPosMoveTo1 < 0) {
                this.mPosMoveTo1 = 0;
            } else {
                if (this.mPosMoveTo1 + 1 >= this.mGridView.getList().size()) {
                    return false;
                }
                this.mPosMoveTo1++;
            }
            Log.d("key", " 33 pageHis scrollToNext  ");
            this.mGridView.scrollToPosition(this.mPosMoveTo1);
            return true;
        }
        if (!this.actBt.isFocus(this.mGridViewSearch)) {
            return false;
        }
        Log.d("key", " 44 pageHis scrollToNext mGridViewSearch ");
        if (this.mPosFocusCpy2 != this.mGridViewSearch.mIndexFocus) {
            this.mPosFocusCpy2 = this.mGridViewSearch.mIndexFocus;
            this.mPosMoveTo2 = this.mPosFocusCpy2;
        }
        if (this.mPosMoveTo2 < 0) {
            this.mPosMoveTo2 = 0;
        } else {
            if (this.mPosMoveTo2 + 1 >= this.mGridViewSearch.getList().size()) {
                return false;
            }
            this.mPosMoveTo2++;
        }
        this.mGridViewSearch.scrollToPosition(this.mPosMoveTo2);
        return true;
    }

    public boolean scrollOk() {
        if (this.bTop) {
            this.bRoolKey = true;
            if (this.actBt.isFocus(this.mGridView)) {
                if (!TextUtils.isEmpty(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num))) {
                    Bt_IpcObj.itemDial(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num));
                }
                return true;
            }
            if (this.actBt.isFocus(this.mGridViewSearch)) {
                if (!TextUtils.isEmpty(this.checkPhoneNumber2)) {
                    Bt_IpcObj.itemDial(this.checkPhoneNumber2);
                }
                return true;
            }
        }
        return false;
    }

    public boolean dialByKey() {
        if (this.bTop) {
            if (this.actBt.isFocus(this.mGridView)) {
                if (!TextUtils.isEmpty(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num))) {
                    Bt_IpcObj.setNum(this.mapSelect.get(FinalBtCtrl.HistoryItem_Txt_Num));
                }
                return true;
            }
            if (this.actBt.isFocus(this.mGridViewSearch)) {
                if (!TextUtils.isEmpty(this.checkPhoneNumber2)) {
                    Bt_IpcObj.setNum(this.checkPhoneNumber2);
                }
                return true;
            }
        }
        return false;
    }

    public void setButtonColor(int color) {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            int[] colors = {color, color};
            int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}};
            JButton in = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_In);
            if (in != null) {
                in.setBackgroundTintList(new ColorStateList(states, colors));
                in.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton out = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Out);
            if (out != null) {
                out.setBackgroundTintList(new ColorStateList(states, colors));
                out.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton miss = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Miss);
            if (miss != null) {
                miss.setBackgroundTintList(new ColorStateList(states, colors));
                miss.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
            }
            JButton del = (JButton) getPage().getChildViewByid(FinalBtCtrl.History_Btn_Del);
            if (del != null) {
                del.setBackgroundTintList(new ColorStateList(states, colors));
                del.setBackgroundTintMode(PorterDuff.Mode.SRC_ATOP);
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
                    if (this.nightBtn[i] == 10052 || this.nightBtn[i] == 10054 || this.nightBtn[i] == 10053 || this.nightBtn[i] == 10062 || this.nightBtn[i] == 10061) {
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
                }
            }
            JText text2 = (JText) getPage().getChildViewByid(FinalBtCtrl.History_Text_Sel);
            if (text2 != null) {
                text2.setTextColor(value <= 0 ? -16777216 : -1);
            }
            if (this.mGridView != null) {
                this.mGridView.notifyDataSetChanged();
            }
        }
    }
}
