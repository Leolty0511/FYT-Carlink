package com.syu.bt.page.pop;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopPhoneVoice extends MyPage {
    public JText Txt;
    AnimationDrawable animDrawable;
    public ImageView vAni;

    public Page_PopPhoneVoice(JPage page) {
        super(page, App_Bt.getInstance().uiApp);
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void init() {
        this.vAni = (ImageView) getPage().getChildViewByid(93);
        this.Txt = (JText) getPage().getChildViewByid(94);
        if (this.vAni != null) {
            this.vAni.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("voice_anim", null, null));
            this.animDrawable = (AnimationDrawable) this.vAni.getBackground();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        if (this.animDrawable != null) {
            this.animDrawable.start();
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        super.pause();
        if (this.animDrawable != null) {
            this.animDrawable.stop();
        }
    }
}
