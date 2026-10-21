package com.syu.app.ipc;

import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.EditText;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JSwitchButton;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.IpcUtil;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.JPinBar;
import com.syu.bt.ctrl.JRotView;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Av;
import com.syu.bt.page.Page_Contact;
import com.syu.bt.page.Page_Dial;
import com.syu.bt.page.Page_Pair;
import com.syu.bt.page.Page_Set;
import com.syu.bt.runnable.Runnable_DownOver1st;
import com.syu.bt.runnable.Runnable_UBook;
import com.syu.bt.runnable.Runnable_getNameByNumber;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.HanziToPinyin;
import com.syu.bt.util.ToastUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Ipc_786NotifyPage {
    List<SparseArray<String>> listContactDownload = new ArrayList();
    List<SparseArray<String>> listContact = new ArrayList();

    public void phoneState(Page_Dial page_Dial) {
        int value = Bt.DATA[1];
        JText text = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_State);
        if (text != null) {
            int iState = -1;
            switch (value) {
                case 0:
                    iState = 0;
                    break;
                case 1:
                    iState = 2;
                    break;
                case 2:
                    iState = 6;
                    break;
                case 3:
                    iState = 1;
                    break;
                case 4:
                    iState = 4;
                    break;
                case 5:
                    iState = 5;
                    break;
                case 6:
                    iState = 3;
                    break;
            }
            if (iState >= 0) {
                text.setText(App_Bt.getInstance().uiApp.getString(App_Bt.mStrStates[iState]));
            }
        }
        JText text2 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
        if (text2 != null) {
            if (value == 5 || (value == 4 && Bt.DATA[11] > 0)) {
                text2.setVisibility(0);
            } else {
                text2.setVisibility(4);
            }
        }
        JText text3 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
        if (text3 != null) {
            if (value == 1) {
                text3.setVisibility(0);
            } else if (value == 0) {
                text3.setVisibility(8);
            }
        }
    }

    public void onNotify(Page_Dial page_Dial, int updateCode, int[] ints, float[] flts, String[] strs) {
        JText text;
        switch (updateCode) {
            case 1:
                phoneState(page_Dial);
                break;
            case 5:
                JText text2 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Num);
                if (text2 != null) {
                    text2.setText(Bt.sPhoneNumber);
                }
                JText text3 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_Name);
                if (text3 != null) {
                    if (TextUtils.isEmpty(Bt.sPhoneNumber)) {
                        text3.setText(FinalChip.BSP_PLATFORM_Null);
                    } else {
                        List<SparseArray<String>> list = new ArrayList<>();
                        list.addAll(App_Bt.mBtInfo.mListContact);
                        String strUnKnown = App_Bt.getInstance().uiApp.getString(EnvironmentCompat.MEDIA_UNKNOWN);
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadGetNameByNumber, new Runnable_getNameByNumber(list, text3, strUnKnown, false), false, 5);
                    }
                }
                break;
            case 9:
                JText text4 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime);
                if (text4 != null) {
                    int value = (Bt.DATA[updateCode] + 100) / 1000;
                    text4.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(value / 60), Integer.valueOf(value % 60)));
                }
                break;
            case 12:
                if ((Bt.DATA[12] > 0 || Bt.DATA[1] != 4) && Bt.DATA[12] > 0 && Bt.DATA[1] == 4 && (text = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_TalkTime)) != null) {
                    int value2 = (Bt.DATA[12] + 200) / 1000;
                    if (value2 > 0) {
                        text.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_auto_suspend")) + HanziToPinyin.Token.SEPARATOR + value2);
                    } else {
                        text.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
                break;
            case 14:
                JText text5 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_LinkName);
                if (text5 != null) {
                    text5.setText(Bt.sPhoneName);
                }
                break;
            case 15:
                JText text6 = (JText) page_Dial.getPage().getChildViewByid(FinalBtCtrl.Dial_Txt_DevAddr);
                if (text6 != null) {
                    String value3 = Bt.sDevAddr;
                    if (!TextUtils.isEmpty(Bt.sDevAddr)) {
                        if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                            text6.setText(String.valueOf(value3.substring(0, 2)) + ":" + value3.substring(2, 4) + ":" + value3.substring(4, 6) + ":" + value3.substring(6, 8) + ":" + value3.substring(8, 10) + ":" + value3.substring(10, 12));
                        } else {
                            text6.setText(value3);
                        }
                    }
                    if (Bt.DATA[1] == 1) {
                        text6.setVisibility(4);
                    } else if (Bt.DATA[1] == 0) {
                        text6.setVisibility(0);
                    }
                    if (MyApplication.mIdCustomer == 139) {
                        text6.setVisibility(4);
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Av page_Av, int updateCode, int[] ints, float[] flts, String[] strs) {
        switch (updateCode) {
            case 1:
                if (Bt_IpcObj.isDisConnect()) {
                    JText text = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title);
                    if (text != null) {
                        text.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                    JText text2 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist);
                    if (text2 != null) {
                        text2.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                    View viewId3Info = page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Id3Info);
                    if (viewId3Info != null) {
                        viewId3Info.setVisibility(8);
                    }
                    page_Av.misAvStop = false;
                }
                break;
            case 4:
                int value = Bt.DATA[updateCode];
                boolean bRun = false;
                if (!Bt_IpcObj.isDisConnect() && value == 1) {
                    bRun = true;
                }
                JRotView rotCd = (JRotView) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_RotCd);
                JPinBar pinBar = (JPinBar) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_PinBar);
                if (rotCd != null) {
                    rotCd.setRun(bRun);
                }
                if (pinBar != null) {
                    pinBar.setRun(bRun);
                }
                boolean bId3InfoGone = false;
                if (value == 0 && page_Av.misAvStop) {
                    bId3InfoGone = true;
                }
                View viewId3Info2 = page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Id3Info);
                if (viewId3Info2 != null) {
                    if (bId3InfoGone) {
                        viewId3Info2.setVisibility(8);
                    } else {
                        viewId3Info2.setVisibility(0);
                    }
                }
                break;
            case 18:
                String title = Bt.sId3Title;
                JText text3 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Title);
                if (text3 != null) {
                    text3.setText(title);
                }
                Log.d("id3", " 00  Ipc786_FinalBt.U_ID3_NAME");
                break;
            case 19:
                String artist = Bt.sId3Artist;
                JText text4 = (JText) page_Av.getPage().getChildViewByid(FinalBtCtrl.Av_Txt_Artist);
                if (text4 != null) {
                    text4.setText(artist);
                }
                break;
        }
    }

    public void onNotify(Page_Contact page_Contact, int updateCode, int[] ints, float[] flts, String[] strs) throws Throwable {
        switch (updateCode) {
            case 1:
                if (Bt.DATA[updateCode] == 8) {
                    if (!App_Bt.bDownloading) {
                        this.listContactDownload.clear();
                        this.listContactDownload.addAll(App_Bt.mBtInfo.mListContactDownload);
                        this.listContact.clear();
                        this.listContact.addAll(App_Bt.mBtInfo.mListContact);
                    }
                    App_Bt.bDownloading = true;
                    if (!App_Bt.bAutoDownPhoneBook && page_Contact != null) {
                        String strDownload = App_Bt.getInstance().uiApp.getString("bt_download");
                        page_Contact.actBt.uiUtil.showLoading(strDownload);
                        break;
                    }
                } else {
                    if (App_Bt.bDownloading) {
                        App_Bt.bDownloading = false;
                        if (CustomerUtil.isYFConfig()) {
                            Main.removeRunnable_Ui(App_Bt.getInstance().mIpcObj.mRunnable_scanDB);
                            Main.postRunnable_Ui(true, App_Bt.getInstance().mIpcObj.mRunnable_scanDB, 200L);
                        }
                        MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_DownOver1st(page_Contact), false, 10);
                    }
                    break;
                }
                break;
            case 13:
                if (Bt_IpcObj.isConnect() && IpcUtil.strsOk(strs, 2) && App_Bt.bDownloading) {
                    App_Bt.bHasDownBook = true;
                    String name = strs[0];
                    String number = strs[1];
                    boolean bRepaceOk = false;
                    int pos = number.indexOf("+");
                    if (pos == 0) {
                        bRepaceOk = true;
                        number = String.valueOf(number.substring(0, 1)) + number.substring(1, number.length()).replaceAll("\\D", FinalChip.BSP_PLATFORM_Null);
                    }
                    if (!bRepaceOk) {
                        number = number.replaceAll("[\\D]", FinalChip.BSP_PLATFORM_Null);
                    }
                    if (name.endsWith("/H") || name.endsWith("/M")) {
                        name = name.substring(0, name.indexOf("/"));
                    }
                    if (TextUtils.isEmpty(name)) {
                        name = number;
                    }
                    MyApplication.startThread(MyApplication.mStrZipTag, App_Bt.StrThreadDownContact, new Runnable_UBook(name, number, this.listContact, this.listContactDownload, page_Contact), false, 10);
                    break;
                }
                break;
        }
    }

    public void onNotify(Page_Pair page_Pair, int updateCode, int[] ints, float[] flts, String[] strs) {
        String strIndex;
        switch (updateCode) {
            case 1:
                JGridView gridView = (JGridView) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_ListView);
                if (gridView != null) {
                    Log.d("gdy6666", " *****000 Ipc_786 notifyDataSetChanged    ");
                    gridView.notifyDataSetChanged();
                }
                break;
            case 15:
                JText text = (JText) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevAddr);
                if (text != null) {
                    String value = Bt.sDevAddr;
                    if (!TextUtils.isEmpty(Bt.sDevAddr)) {
                        if (!Bt.sDevAddr.contains(":") && Bt.sDevAddr.length() == 12) {
                            text.setText(String.valueOf(value.substring(0, 2)) + ":" + value.substring(2, 4) + ":" + value.substring(4, 6) + ":" + value.substring(6, 8) + ":" + value.substring(8, 10) + ":" + value.substring(10, 12));
                        } else {
                            text.setText(value);
                        }
                    }
                }
                JText text_Err = (JText) page_Pair.getPage().getChildViewByid(FinalBtCtrl.Pair_Txt_DevErr);
                if (text_Err != null) {
                    if (Bt.sDevAddr.length() > 20) {
                        text_Err.setText(Bt.sDevAddr);
                    } else {
                        text_Err.setText(FinalChip.BSP_PLATFORM_Null);
                    }
                }
                break;
            case 21:
                if (strs == null) {
                    page_Pair.showDiscover(false, FinalChip.BSP_PLATFORM_Null);
                    break;
                } else if (strs.length >= 3) {
                    boolean isExists = false;
                    try {
                        Iterator<SparseArray<String>> it = App_Bt.mBtInfo.mListPair.iterator();
                        while (it.hasNext()) {
                            if (it.next().get(FinalBtCtrl.PairItem_Txt_Addr).equalsIgnoreCase(strs[1])) {
                                isExists = true;
                            }
                        }
                        Log.d("gdy6", " 11 mListPair.add name = " + strs[2] + " isExists = " + isExists);
                        if (!isExists && !TextUtils.isEmpty(strs[2])) {
                            SparseArray<String> dev = new SparseArray<>();
                            dev.put(FinalBtCtrl.PairItem_Txt_Addr, strs[1]);
                            dev.put(FinalBtCtrl.PairItem_Txt_Name, strs[2]);
                            dev.put(FinalBtCtrl.PairItem_Index, strs[0]);
                            App_Bt.mBtInfo.mListPair.add(dev);
                            page_Pair.refreshList();
                            break;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                break;
            case 23:
                SparseArray<String> entity = page_Pair.getChoiceName(Bt.sChoiceAddr);
                if (entity != null && (strIndex = entity.get(FinalBtCtrl.PairItem_Index)) != null) {
                    int iIndex = FuncUtils.myParseInt(strIndex);
                    if (page_Pair.isSelfLink && iIndex != 2) {
                        page_Pair.isSelfLink = false;
                        if (Bt.DATA[updateCode] == 1) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_connected"));
                        } else if (Bt.DATA[updateCode] == 0) {
                            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_obd_disconnected"));
                        }
                        break;
                    }
                }
                break;
        }
    }

    public void onNotify(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
        String str;
        switch (updateCode) {
            case 6:
                EditText editDevName = (EditText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Edit_DevName);
                if (editDevName != null) {
                    editDevName.setText(Bt.sDevName);
                }
                break;
            case 8:
                EditText editPin = (EditText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Edit_Pin);
                if (editPin != null) {
                    editPin.setText(Bt.sDevPin);
                }
                break;
            case 11:
                boolean bAutoPick = false;
                if (Bt.DATA[updateCode] > 0) {
                    bAutoPick = true;
                    str = App_Bt.getInstance().uiApp.getString("bt_opened");
                } else {
                    str = App_Bt.getInstance().uiApp.getString("bt_closed");
                }
                JText text = (JText) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Txt_AutoAnswer);
                if (text != null) {
                    text.setText(str);
                }
                JSwitchButton check = (JSwitchButton) page_Set.getPage().getChildViewByid(FinalBtCtrl.Set_Switch_AutoAnswer);
                if (check != null) {
                    check.setChecked(bAutoPick);
                }
                page_Set.updateAutoSelected(FinalBtCtrl.Set_Btn_AutoAnswerOn, bAutoPick);
                page_Set.updateAutoSelected(FinalBtCtrl.Set_Btn_AutoAnswerOff, bAutoPick ? false : true);
                break;
            case 22:
                if (page_Set.isClickReSet) {
                    Page_Set.actBt.uiUtil.disLoading();
                    ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_reset_success"));
                    if (!TextUtils.isEmpty(App_Bt.strDefaultName) && !App_Bt.strDefaultName.equals(Bt.sDevName)) {
                        Bt_IpcObj.setDevName(App_Bt.strDefaultName);
                    }
                    if (!TextUtils.isEmpty(App_Bt.strDefaultPin) && !App_Bt.strDefaultPin.equals(Bt.sDevPin)) {
                        Bt_IpcObj.setDevPin(App_Bt.strDefaultPin);
                    }
                }
                page_Set.isClickReSet = false;
                break;
        }
    }

    public void onNotify_Sound(Page_Set page_Set, int updateCode, int[] ints, float[] flts, String[] strs) {
    }
}
