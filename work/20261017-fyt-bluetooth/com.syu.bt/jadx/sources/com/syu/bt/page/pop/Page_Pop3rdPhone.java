package com.syu.bt.page.pop;

import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUiItem;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Bt;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.app.ipc.Ipc_New;
import com.syu.bt.App_Bt;
import com.syu.bt.runnable.Runnable_getNameByNumberPopBtBook;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Page_Pop3rdPhone extends MyPage {
    JButton mBtnAccept;
    JText mTxtMergerName1;
    JText mTxtMergerName2;
    JText mTxtMergerTime;
    JText mTxtName;
    JText mTxtState;
    View mViewMerger;
    View mViewThirdphone;

    public Page_Pop3rdPhone(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
        this.mViewThirdphone = null;
        this.mViewMerger = null;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        super.init();
        this.mBtnAccept = (JButton) getPage().getChildViewByid(80);
        this.mTxtName = (JText) getPage().getChildViewByid(78);
        this.mTxtState = (JText) getPage().getChildViewByid(79);
        this.mTxtMergerName1 = (JText) getPage().getChildViewByid(89);
        this.mTxtMergerName2 = (JText) getPage().getChildViewByid(90);
        this.mTxtMergerTime = (JText) getPage().getChildViewByid(91);
        this.mViewThirdphone = getPage().getChildViewByid(76);
        this.mViewMerger = getPage().getChildViewByid(77);
    }

    public void updateThirdPhoneView() {
        if (this.mViewThirdphone != null) {
            this.mViewThirdphone.setVisibility(Ipc_New.isMerger() ? 8 : 0);
        }
        if (this.mViewMerger != null) {
            this.mViewMerger.setVisibility(Ipc_New.isMerger() ? 0 : 8);
        }
    }

    public void updateBtnAccept() {
        if (!Ipc_New.isMerger()) {
            if (this.mBtnAccept != null) {
                MyUiItem item = (MyUiItem) this.mBtnAccept.getTag();
                if (item.getParaStr() != null) {
                    String str = null;
                    if (Ipc_New.isRing()) {
                        str = item.getStrDrawable();
                    } else if (item.getParaStr() != null) {
                        str = item.getParaStr()[0];
                    }
                    if (this.mBtnAccept.getStrDrawable() != str && str != null) {
                        this.mBtnAccept.setStrDrawable(str, true);
                    }
                }
            }
            if (this.mTxtState != null) {
                if (Ipc_New.isRing()) {
                    this.mTxtState.setText(App_Bt.getInstance().uiApp.getString("bt_ring"));
                } else {
                    this.mTxtState.setText(App_Bt.getInstance().uiApp.getString("bt_waiting"));
                }
            }
        }
    }

    public void updatePhoneName() {
        if (!Ipc_New.isMerger() && this.mTxtName != null) {
            if (App_Bt.bLinkTwoPhone && (App_Bt.sPhone_callin_id == 0 || App_Bt.sPhone_callin_id == 1)) {
                Bt.sPhoneNumberHoldOn = App_Bt.sPhone2_WAITING_NUMBER[App_Bt.sPhone_callin_id];
            }
            String strPhone = Bt.sPhoneNumberHoldOn;
            List<SparseArray<String>> list = new ArrayList<>();
            if (App_Bt.bLinkTwoPhone) {
                list.addAll(App_Bt.sPhone_callin_id == 0 ? App_Bt.mBtInfo.mListContact : App_Bt.mBtInfo.mListContact2);
            } else {
                list.addAll(App_Bt.mBtInfo.mListContact);
            }
            String strName = App_Bt.mBtInfo.getNameByNumber(strPhone, list);
            if (TextUtils.isEmpty(strName)) {
                strName = strPhone;
            }
            Log.d("popname", " 111 PagePop3 updatePhoneName strPhone= " + strPhone);
            this.mTxtName.setText(strName);
        }
    }

    public void updateMergerPhoneName() {
        if (Ipc_New.isMerger() && this.mTxtMergerName1 != null && this.mTxtMergerName2 != null) {
            String strPhone = Bt.sPhoneNumber;
            List<SparseArray<String>> list = new ArrayList<>();
            list.addAll(App_Bt.mBtInfo.mListContact);
            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumberPopBtBook(list, this.mTxtMergerName1, strPhone, strPhone, true), false, 5);
            String strPhone2 = Bt.sPhoneNumberHoldOn;
            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumberPopBtBook(list, this.mTxtMergerName2, strPhone2, strPhone2, true), false, 5);
        }
    }

    public void updateMergerTime(int value) {
        if (Ipc_New.isMerger() && this.mTxtMergerTime != null) {
            this.mTxtMergerTime.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(value / 60), Integer.valueOf(value % 60)));
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        updateThirdPhoneView();
        updateMergerPhoneName();
        updatePhoneName();
        updateBtnAccept();
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int id = v.getId();
        switch (id) {
            case 80:
                Ipc_New.switch3rdPhone();
                if (App_Bt.bLinkTwoPhone) {
                    App_Bt.getInstance().pop3rdPhone(false);
                }
                Log.d("sfth", " 111 PagePop3  Pop3rdPhone_Btn_Accept ");
                break;
            case 81:
                if (App_Bt.bLinkTwoPhone) {
                    Ipc_New.hang3rdPhoneHold();
                    App_Bt.getInstance().pop3rdPhone(false);
                } else {
                    Ipc_New.hang3rdPhoneHold();
                }
                Log.d("sfth", " 000 PagePop3  Pop3rdPhone_Btn_Hang ");
                break;
            case 83:
                Ipc_New.merge3rdPhone();
                Log.d("sfth", " 222 PagePop3  Pop3rdPhone_Btn_merge ");
                break;
            case 92:
                if (Ipc_New.isMerger()) {
                    Bt_IpcObj.hang();
                }
                Log.d("sfth", " 333 PagePop3  PopMergerPhone_Btn_Hang ");
                break;
        }
    }
}
