package com.syu.bt.page;

import android.util.Log;
import android.view.View;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.util.BTUtil;
import com.syu.bt.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class Page_Main extends MyPage {
    Act_Bt actBt;

    public Page_Main(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
        updateMainBk();
    }

    private void updateMainBk() {
        Log.d("night", "updateMainBk");
        if (App_Bt.bUI_NightColour) {
            JPage myPage = this.actBt.ui.getPage(10001);
            if (BTUtil.getInstance().getWindowManeger()[0] != 2000 || !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW")) {
                myPage.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_main_bk" : "main_bk", getPage().mDrawables, getPage().mDrawables));
            } else {
                myPage.setBackground(getPage().getDrawableFromPath(App_Bt.mColorType > 0 ? "night_main2000_bk" : "main2000_bk", getPage().mDrawables, getPage().mDrawables));
            }
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void ResponseClick(View v) {
        if (!BTUtil.getInstance().IsConnectCarplay() && !btnClick(v)) {
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_state_using"));
            } else {
                this.actBt.MainClick(v);
            }
        }
    }

    private boolean btnClick(View v) {
        int id = v.getId();
        switch (id) {
            case FinalBtCtrl.Menu_StandBy /* 10070 */:
                App_Bt.getInstance().mIpcObj.setStandBy();
                return true;
            default:
                return false;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void setPressed(JButton jButton, boolean pressed) {
        int id = jButton.getId();
        Log.d("gdy9", " Page_main setPressed id = " + id);
        updateSelected(id, !pressed);
    }

    public boolean updateSelected(int id, boolean bSelected) {
        int idCur;
        int idPageTo = this.actBt.getFixPageMain(id);
        if (idPageTo == -1) {
            return false;
        }
        if (this.actBt.myActivity.mPageCurrent != null && (idCur = this.actBt.myActivity.mPageCurrent.getId()) != idPageTo) {
            this.actBt.updateMainSelected(idCur, bSelected);
        }
        return true;
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        JButton btn;
        Log.d("half1", " 00 *** Page Main onSizeChanged  ***   w = " + w + " h = " + h + " oldw = " + oldw + " oldh = " + oldh);
        if (App_Bt.bHV_Kill) {
            App_Bt.bHV_Kill_p = w == oldh + 80 && h == oldw + (-80);
        }
        this.actBt.myActivity.handleSizeChanged();
        App_Bt.getInstance();
        if (App_Bt.bEnableHalfScreen) {
            boolean bHalf = this.actBt.isHalf();
            if (bHalf) {
                this.actBt.switch2DialWhenHalfScreen();
            }
            if (this.actBt.myActivity.mPageCurrent != null) {
                int idPage = this.actBt.myActivity.mPageCurrent.getId();
                JPage pageMenu = this.actBt.ui.mPages.get(10002);
                if (pageMenu != null && (btn = (JButton) pageMenu.getChildViewByid(FinalBtCtrl.Menu_Contact)) != null) {
                    if (this.actBt.isHalf()) {
                        btn.setEnabled(false);
                    } else {
                        btn.setEnabled(true);
                    }
                }
                switch (idPage) {
                    case 10003:
                        Page_Dial page_Dial = (Page_Dial) this.actBt.myActivity.mPageCurrent.getNotify();
                        if (page_Dial != null) {
                            page_Dial.switchFull();
                            if (page_Dial.mViewShowGps != null) {
                                if (App_Bt.getInstance().isHalfScreenAble()) {
                                    page_Dial.mViewShowGps.setVisibility(0);
                                } else {
                                    page_Dial.mViewShowGps.setVisibility(8);
                                }
                            }
                        }
                        break;
                    case FinalBtCtrl.Page_Av /* 10010 */:
                        Page_Av page_Av = (Page_Av) this.actBt.myActivity.mPageCurrent.getNotify();
                        if (page_Av != null) {
                            page_Av.switchFull();
                            if (page_Av.mViewShowGps != null) {
                                if (App_Bt.getInstance().isHalfScreenAble()) {
                                    page_Av.mViewShowGps.setVisibility(0);
                                } else {
                                    page_Av.mViewShowGps.setVisibility(8);
                                }
                            }
                        }
                        break;
                    case FinalBtCtrl.Page_Callin /* 10032 */:
                        Page_Callin page_Callin = (Page_Callin) this.actBt.myActivity.mPageCurrent.getNotify();
                        if (page_Callin != null) {
                            page_Callin.switchFull();
                            if (page_Callin.mViewShowGps != null) {
                                if (App_Bt.getInstance().isHalfScreenAble()) {
                                    page_Callin.mViewShowGps.setVisibility(0);
                                } else {
                                    page_Callin.mViewShowGps.setVisibility(8);
                                }
                            }
                        }
                        break;
                }
            }
        }
    }
}
