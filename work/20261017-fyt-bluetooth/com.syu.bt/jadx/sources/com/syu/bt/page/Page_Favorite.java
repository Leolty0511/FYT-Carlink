package com.syu.bt.page;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JGridView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.ctrl.JView;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.ctrl.SlideBarView;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.CustomerUtil;
import com.syu.bt.util.MyListCoverTask;
import com.syu.bt.util.SpUtil;
import com.syu.bt.util.ToastUtil;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Page_Favorite extends MyPage {
    public static String strSearch;
    public Act_Bt actBt;
    private boolean bRoolKey;
    boolean bTop;
    boolean editFocus;
    public boolean mDownloading;
    public EditText mEditSearch;
    public boolean mGridClickDial;
    public JGridView mGridView;
    public int mInputType;
    private int mPosFocusCpy;
    private int mPosMoveTo;
    public SlideBarView mSlideBar;
    MyListCoverTask myListTask;
    public TextView tvLetterTitle;
    public JText tvTxtSum;
    public JText tvTxtSumStr;
    public static SparseArray<String> mClick = new SparseArray<>();
    public static boolean bDrawListAlbum = true;

    public Page_Favorite(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.mDownloading = false;
        this.mGridClickDial = false;
        this.mPosMoveTo = -1;
        this.mPosFocusCpy = -1;
        this.bRoolKey = false;
        this.editFocus = false;
        this.bTop = false;
        this.actBt = actBt;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        if (this.actBt.myActivity.bTop) {
            this.bTop = true;
            resetList();
        }
    }

    public void resetList(List<SparseArray<String>> list) {
        if (!Bt_IpcObj.isConnect()) {
            MyApplication.resetList(this.mGridView, (List<SparseArray<String>>) null);
        } else {
            MyApplication.resetList(this.mGridView, list);
        }
        if (list.size() > 0 && Bt_IpcObj.isConnect()) {
            View tip = getPage().getChildViewByid(FinalBtCtrl.Contace_Txt_Save_None);
            if (tip != null) {
                tip.setVisibility(8);
            }
            if (this.tvTxtSum != null) {
                this.tvTxtSum.setText(Integer.toString(list.size()));
                this.tvTxtSum.setVisibility(0);
            }
            if (this.tvTxtSumStr != null) {
                this.tvTxtSumStr.setVisibility(0);
                return;
            }
            return;
        }
        if (this.tvTxtSum != null) {
            this.tvTxtSum.setVisibility(8);
        }
        if (this.tvTxtSumStr != null) {
            this.tvTxtSumStr.setVisibility(8);
        }
        View tip2 = getPage().getChildViewByid(FinalBtCtrl.Contace_Txt_Save_None);
        if (tip2 != null) {
            tip2.setVisibility(0);
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        this.bTop = false;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.mGridView = (JGridView) getPage().getChildViewByid(FinalBtCtrl.Favorite_ListView);
    }

    public void notifyDataSetChanged() {
        if (this.mGridView != null) {
            this.mGridView.notifyDataSetChanged();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay()) {
            if (App_Bt.getInstance().mIpcObj.isCalling() && v.getId() != 10052) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
            } else {
                if (this.actBt.MenuClick(v)) {
                }
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public boolean ResponseLongClick(View v) {
        return false;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void InitGridItem(JGridView gridView, JPage page, SparseArray<String> map, int position) {
        int id = gridView.getId();
        switch (id) {
            case FinalBtCtrl.Favorite_ListView /* 10304 */:
                int mySize = map.size();
                View viewContent = page.getChildViewByid(FinalBtCtrl.ContactItem_Content);
                if (viewContent != null) {
                    viewContent.setVisibility(mySize == 0 ? 8 : 0);
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
                    JText textNumber = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Number_Highlight);
                    JText textName = (JText) page.getChildViewByid(FinalBtCtrl.ContactItem_Txt_Name_Highlight);
                    String strNumber = map.get(FinalBtCtrl.ContactItem_Txt_Number);
                    String strName = map.get(FinalBtCtrl.ContactItem_Txt_Name);
                    if (0 == 0) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textNumber.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                        }
                        textNumber.setText(strNumber);
                    }
                    if (0 == 0) {
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                            textName.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            if (MyApplication.mStrFolderAsset.equals("UI7")) {
                                textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                            }
                        }
                        if (App_Bt.mStrCustomer.equalsIgnoreCase("YL_3") || App_Bt.mStrCustomer.equalsIgnoreCase("SYU-XN")) {
                            textName.setTypeface(BTUtil.getTypeFace_Regular(this.actBt.myActivity));
                            textName.setTextColor(App_Bt.mColorType > 0 ? -1 : ViewCompat.MEASURED_STATE_MASK);
                        }
                        textName.setText(strName);
                    }
                    if (CustomerUtil.isTZYConfig() || App_Bt.mStrCustomer.equals("YL_BT_1920") || App_Bt.bFavcontact) {
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
                    View headIco = page.getChildViewByid(FinalBtCtrl.ContactItem_Head);
                    if (bDrawListAlbum && App_Bt.bShowHeadIco && !TextUtils.isEmpty(strNumber) && headIco != null) {
                        App_Bt.myPaths.add(strNumber);
                        if (App_Bt.myAlbum.size() > 0) {
                            Bitmap bmp = App_Bt.myAlbum.get(strNumber);
                            if (bmp != null) {
                                headIco.setBackground(new BitmapDrawable(MyUi.mResources, BTUtil.getCircleBitmap(bmp)));
                            } else {
                                headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
                            }
                        }
                    } else if (headIco != null) {
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
                            if (0 == 0 && !TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equals("UI7")) {
                                headTxt.setTextColor(App_Bt.mColorType > 0 ? Color.rgb(255, 255, 255) : Color.rgb(60, 60, 71));
                            }
                            headTxt.setText(headABC);
                        } else {
                            headIco.setBackground(getPage().getDrawableFromPath("bt_icocontact", getPage().mDrawables, getPage().mDrawables));
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
                    if (CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA") || this.bRoolKey) {
                        page.setFocus(flag);
                        pressGridItem(page, page, flag);
                    }
                }
                break;
        }
    }

    public void invilatePlayList() {
        if (this.mGridView != null) {
            this.mGridView.notifyDataSetChanged();
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
            case FinalBtCtrl.Favorite_ListView /* 10304 */:
                if (!FuncUtils.isFastDoubleClick()) {
                    int position = gridView.getPosition();
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
                                if (Bt_IpcObj.isStateConnect()) {
                                    Bt_IpcObj.itemDial(number);
                                    this.actBt.myActivity.goPage(10003);
                                }
                            } else {
                                mClick.put(FinalBtCtrl.ContactItem_Txt_Number, number);
                                mClick.put(FinalBtCtrl.ContactItem_Txt_Name, name);
                                if (!CustomerUtil.isZhangConfig() && !App_Bt.mStrCustomer.equalsIgnoreCase("HAODA") && Bt_IpcObj.isStateConnect()) {
                                    Bt_IpcObj.itemDial(number);
                                    this.actBt.myActivity.goPage(10003);
                                }
                            }
                            if ((CustomerUtil.isZhangConfig() || App_Bt.mStrCustomer.equalsIgnoreCase("HAODA")) && this.mGridView.adapter != null) {
                                this.mGridView.adapter.notifyDataSetChanged();
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }

    public void resetList() {
        App_Bt.mBtInfo.sortContact_Fav();
        resetList(App_Bt.mBtInfo.mListFavContact);
    }
}
