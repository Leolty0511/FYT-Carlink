package com.lsec.core.frame.app;

import android.view.View;
import com.lsec.core.frame.ctrl.JPage;

/* JADX INFO: loaded from: classes.dex */
public interface InterfaceUi {
    void InitMapPage(MyUi myUi);

    void InitPage(JPage jPage);

    View createUiItemOtherWay(JPage jPage, MyUiItem myUiItem);

    void setProperty(View view);
}
