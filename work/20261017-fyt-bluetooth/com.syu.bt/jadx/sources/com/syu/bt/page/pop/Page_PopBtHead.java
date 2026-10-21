package com.syu.bt.page.pop;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopBtHead extends MyPage {
    Act_Bt actBt;
    boolean bExist;

    public Page_PopBtHead(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.bExist = false;
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        App_Bt.iFavHeadSelect = -1;
        updateSelect();
    }

    private void updateSelect() {
        JButton button;
        if (App_Bt.iIcoType > 0) {
            App_Bt.mIcoNumber = App_Bt.mBtInfo.mListFavContact.get(App_Bt.iIcoType - 1).get(FinalBtCtrl.ContactItem_Txt_Number);
        }
        if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
            for (int i = 0; i < App_Bt.mBtInfo.mListContactHeadId.size(); i++) {
                SparseArray<String> map = App_Bt.mBtInfo.mListContactHeadId.get(i);
                if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                    if (!TextUtils.isEmpty(map.get(FinalBtCtrl.ContactItem_HeadIcon))) {
                        App_Bt.iFavHeadSelect = Integer.parseInt(map.get(FinalBtCtrl.ContactItem_HeadIcon));
                        break;
                    }
                    break;
                }
            }
            JView personHead = (JView) getPage().getChildViewByid(FinalBtCtrl.Person_Head);
            JButton head16 = (JButton) getPage().getChildViewByid(FinalBtCtrl.Chang_Head16);
            if (personHead != null) {
                Bitmap bmp = BTUtil.getInstance().getHeadIco(App_Bt.mIcoNumber);
                if (bmp != null) {
                    personHead.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                    if (head16 != null) {
                        head16.setStrDrawable("headnull", true);
                    }
                } else if (head16 != null) {
                    head16.setStrDrawable("head16", true);
                }
            }
            App_Bt.iFavHeadSelectCopy = App_Bt.iFavHeadSelect;
            if (App_Bt.iFavHeadSelect > 0 && (button = (JButton) getPage().getChildViewByid((App_Bt.iFavHeadSelect + FinalBtCtrl.Chang_Head1) - 1)) != null) {
                button.setEnabled(false);
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onDismiss() {
        super.onDismiss();
        if (App_Bt.iFavHeadSelectCopy != App_Bt.iFavHeadSelect) {
            App_Bt.iFavHeadSelectCopy = App_Bt.iFavHeadSelect;
            if (!this.bExist) {
                SparseArray<String> map = new SparseArray<>();
                map.put(FinalBtCtrl.ContactItem_Txt_Number, App_Bt.mIcoNumber);
                map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                App_Bt.mBtInfo.mListContactHeadId.add(map);
            }
            MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, App_Bt.getInstance().mRunnable_WriteContactHeadToFile, false, 1);
        }
        App_Bt.iIcoType = -1;
        App_Bt.mIcoNumber = FinalChip.BSP_PLATFORM_Null;
        App_Bt.iFavHeadSelect = -1;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ff A[LOOP:1: B:30:0x006d->B:56:0x00ff, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x0103  */
    /* JADX WARN: Code duplicated, block: B:60:0x0124 A[LOOP:2: B:33:0x0078->B:60:0x0124, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x0128  */
    /* JADX WARN: Code duplicated, block: B:63:0x0144  */
    /* JADX WARN: Code duplicated, block: B:65:0x0151  */
    /* JADX WARN: Code duplicated, block: B:67:0x016d  */
    /* JADX WARN: Code duplicated, block: B:69:0x017a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0196  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:78:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:81:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x014d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x019f A[SYNTHETIC] */
    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        SparseArray<String> map;
        SparseArray<String> map2;
        SparseArray<String> map3;
        SparseArray<String> map4;
        SparseArray<String> map5;
        if (!BTUtil.getInstance().IsConnectCarplay() && !App_Bt.bPop3rdPhone && !App_Bt.bPop3rdPhone_YF) {
            int id = v.getId();
            switch (id) {
                case FinalBtCtrl.Close_Head /* 10510 */:
                    this.actBt.DismissPopHead();
                    break;
                case FinalBtCtrl.Chang_Head1 /* 10511 */:
                case FinalBtCtrl.Chang_Head2 /* 10512 */:
                case FinalBtCtrl.Chang_Head3 /* 10513 */:
                case FinalBtCtrl.Chang_Head4 /* 10514 */:
                case FinalBtCtrl.Chang_Head5 /* 10515 */:
                case FinalBtCtrl.Chang_Head6 /* 10516 */:
                case FinalBtCtrl.Chang_Head7 /* 10517 */:
                case FinalBtCtrl.Chang_Head8 /* 10518 */:
                case FinalBtCtrl.Chang_Head9 /* 10519 */:
                case FinalBtCtrl.Chang_Head10 /* 10520 */:
                case FinalBtCtrl.Chang_Head11 /* 10521 */:
                case FinalBtCtrl.Chang_Head12 /* 10522 */:
                case FinalBtCtrl.Chang_Head13 /* 10523 */:
                case FinalBtCtrl.Chang_Head14 /* 10524 */:
                case FinalBtCtrl.Chang_Head15 /* 10525 */:
                case FinalBtCtrl.Chang_Head16 /* 10526 */:
                    int select = (id - 10511) + 1;
                    if (select != App_Bt.iFavHeadSelect) {
                        if (App_Bt.iFavHeadSelect >= 1 && App_Bt.iFavHeadSelect <= 16) {
                            JButton button = (JButton) getPage().getChildViewByid((App_Bt.iFavHeadSelect + FinalBtCtrl.Chang_Head1) - 1);
                            if (button != null) {
                                button.setEnabled(true);
                            }
                            JButton button2 = (JButton) getPage().getChildViewByid(id);
                            if (button2 != null) {
                                button2.setEnabled(false);
                            }
                        }
                        App_Bt.iFavHeadSelect = select;
                    }
                    for (int i6 = 0; i6 < App_Bt.mBtInfo.mListFavContact.size(); i6++) {
                        SparseArray<String> map6 = App_Bt.mBtInfo.mListFavContact.get(i6);
                        if (App_Bt.mIcoNumber.equals(map6.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                            map6.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                            for (i = 0; i < App_Bt.mBtInfo.mListContactHeadId.size(); i++) {
                                map5 = App_Bt.mBtInfo.mListContactHeadId.get(i);
                                if (App_Bt.mIcoNumber.equals(map5.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                                    this.bExist = true;
                                    map5.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                    for (i2 = 0; i2 < App_Bt.mBtInfo.mListContact.size(); i2++) {
                                        map4 = App_Bt.mBtInfo.mListContact.get(i2);
                                        if (App_Bt.mIcoNumber.equals(map4.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                                            map4.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                            for (i3 = 0; i3 < App_Bt.mBtInfo.mListHistoryIn.size(); i3++) {
                                                map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                                if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                                    map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                                }
                                            }
                                            for (i4 = 0; i4 < App_Bt.mBtInfo.mListHistoryOut.size(); i4++) {
                                                map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                                if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                                    map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                                }
                                            }
                                            for (i5 = 0; i5 < App_Bt.mBtInfo.mListHistoryMiss.size(); i5++) {
                                                map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                                if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                                    map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                                }
                                            }
                                            if (App_Bt.iIcoType < 1 && App_Bt.iIcoType <= 6) {
                                                this.actBt.getPageDial().updateHead(App_Bt.iIcoType, select);
                                            } else if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                                if (MyApplication.sPage_Current == 10008) {
                                                    this.actBt.getPageHistory().updateList();
                                                } else if (MyApplication.sPage_Current == 10016) {
                                                    this.actBt.getPageFavorite().invilatePlayList();
                                                } else {
                                                    this.actBt.getPageContact().invilatePlayList();
                                                }
                                            }
                                        }
                                        break;
                                    }
                                    while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                        map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                        if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                        map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                        if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                        map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                        if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    if (App_Bt.iIcoType < 1) {
                                    }
                                    if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                        if (MyApplication.sPage_Current == 10008) {
                                            this.actBt.getPageHistory().updateList();
                                        } else if (MyApplication.sPage_Current == 10016) {
                                            this.actBt.getPageFavorite().invilatePlayList();
                                        } else {
                                            this.actBt.getPageContact().invilatePlayList();
                                        }
                                    }
                                }
                                break;
                            }
                            while (i2 < App_Bt.mBtInfo.mListContact.size()) {
                                map4 = App_Bt.mBtInfo.mListContact.get(i2);
                                if (App_Bt.mIcoNumber.equals(map4.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                                    map4.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                    while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                        map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                        if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                        map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                        if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                        map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                        if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    if (App_Bt.iIcoType < 1) {
                                    }
                                    if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                        if (MyApplication.sPage_Current == 10008) {
                                            this.actBt.getPageHistory().updateList();
                                        } else if (MyApplication.sPage_Current == 10016) {
                                            this.actBt.getPageFavorite().invilatePlayList();
                                        } else {
                                            this.actBt.getPageContact().invilatePlayList();
                                        }
                                    }
                                }
                                break;
                            }
                            while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            if (App_Bt.iIcoType < 1) {
                            }
                            if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                if (MyApplication.sPage_Current == 10008) {
                                    this.actBt.getPageHistory().updateList();
                                } else if (MyApplication.sPage_Current == 10016) {
                                    this.actBt.getPageFavorite().invilatePlayList();
                                } else {
                                    this.actBt.getPageContact().invilatePlayList();
                                }
                            }
                        }
                        break;
                    }
                    while (i < App_Bt.mBtInfo.mListContactHeadId.size()) {
                        map5 = App_Bt.mBtInfo.mListContactHeadId.get(i);
                        if (App_Bt.mIcoNumber.equals(map5.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                            this.bExist = true;
                            map5.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                            while (i2 < App_Bt.mBtInfo.mListContact.size()) {
                                map4 = App_Bt.mBtInfo.mListContact.get(i2);
                                if (App_Bt.mIcoNumber.equals(map4.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                                    map4.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                    while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                        map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                        if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                        map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                        if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                        map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                        if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                            map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                        }
                                    }
                                    if (App_Bt.iIcoType < 1) {
                                    }
                                    if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                        if (MyApplication.sPage_Current == 10008) {
                                            this.actBt.getPageHistory().updateList();
                                        } else if (MyApplication.sPage_Current == 10016) {
                                            this.actBt.getPageFavorite().invilatePlayList();
                                        } else {
                                            this.actBt.getPageContact().invilatePlayList();
                                        }
                                    }
                                }
                                break;
                            }
                            while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            if (App_Bt.iIcoType < 1) {
                            }
                            if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                if (MyApplication.sPage_Current == 10008) {
                                    this.actBt.getPageHistory().updateList();
                                } else if (MyApplication.sPage_Current == 10016) {
                                    this.actBt.getPageFavorite().invilatePlayList();
                                } else {
                                    this.actBt.getPageContact().invilatePlayList();
                                }
                            }
                        }
                        break;
                    }
                    while (i2 < App_Bt.mBtInfo.mListContact.size()) {
                        map4 = App_Bt.mBtInfo.mListContact.get(i2);
                        if (App_Bt.mIcoNumber.equals(map4.get(FinalBtCtrl.ContactItem_Txt_Number))) {
                            map4.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                            while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                                map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                                if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                                map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                                if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                                map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                                if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                                    map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                                }
                            }
                            if (App_Bt.iIcoType < 1) {
                            }
                            if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                                if (MyApplication.sPage_Current == 10008) {
                                    this.actBt.getPageHistory().updateList();
                                } else if (MyApplication.sPage_Current == 10016) {
                                    this.actBt.getPageFavorite().invilatePlayList();
                                } else {
                                    this.actBt.getPageContact().invilatePlayList();
                                }
                            }
                        }
                        break;
                    }
                    while (i3 < App_Bt.mBtInfo.mListHistoryIn.size()) {
                        map3 = App_Bt.mBtInfo.mListHistoryIn.get(i3);
                        if (App_Bt.mIcoNumber.equals(map3.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                            map3.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                        }
                    }
                    while (i4 < App_Bt.mBtInfo.mListHistoryOut.size()) {
                        map2 = App_Bt.mBtInfo.mListHistoryOut.get(i4);
                        if (App_Bt.mIcoNumber.equals(map2.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                            map2.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                        }
                    }
                    while (i5 < App_Bt.mBtInfo.mListHistoryMiss.size()) {
                        map = App_Bt.mBtInfo.mListHistoryMiss.get(i5);
                        if (App_Bt.mIcoNumber.equals(map.get(FinalBtCtrl.HistoryItem_Txt_Num).trim())) {
                            map.put(FinalBtCtrl.ContactItem_HeadIcon, String.valueOf(App_Bt.iFavHeadSelect));
                        }
                    }
                    if (App_Bt.iIcoType < 1) {
                    }
                    if (!TextUtils.isEmpty(App_Bt.mIcoNumber)) {
                        if (MyApplication.sPage_Current == 10008) {
                            this.actBt.getPageHistory().updateList();
                        } else if (MyApplication.sPage_Current == 10016) {
                            this.actBt.getPageFavorite().invilatePlayList();
                        } else {
                            this.actBt.getPageContact().invilatePlayList();
                        }
                    }
                    break;
            }
        }
    }
}
