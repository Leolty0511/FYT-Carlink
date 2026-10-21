package com.android.internal.app;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class MicroAlertController extends AlertController {
    public MicroAlertController(Context context, DialogInterface dialogInterface, Window window) {
        super(context, dialogInterface, window);
    }

    @Override // com.android.internal.app.AlertController
    public void setupButtons(ViewGroup viewGroup) {
        super.setupButtons(viewGroup);
        if (viewGroup.getVisibility() == 8) {
            viewGroup.setVisibility(4);
        }
    }

    @Override // com.android.internal.app.AlertController
    public void setupContent(ViewGroup viewGroup) {
        this.mScrollView = (ScrollView) this.mWindow.findViewById(R.id.scrollView);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.mMessageView = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.mMessage;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        viewGroup.removeView(this.mMessageView);
        if (this.mListView == null) {
            viewGroup.setVisibility(8);
            return;
        }
        View viewFindViewById = this.mScrollView.findViewById(R.id.topPanel);
        ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(viewFindViewById.getLayoutParams());
        layoutParams.gravity = 48;
        viewFindViewById.setLayoutParams(layoutParams);
        View viewFindViewById2 = this.mScrollView.findViewById(R.id.buttonPanel);
        ((ViewGroup) viewFindViewById2.getParent()).removeView(viewFindViewById2);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(viewFindViewById2.getLayoutParams());
        layoutParams2.gravity = 80;
        viewFindViewById2.setLayoutParams(layoutParams2);
        ViewGroup viewGroup2 = (ViewGroup) this.mScrollView.getParent();
        viewGroup2.removeViewAt(viewGroup2.indexOfChild(this.mScrollView));
        viewGroup2.addView(this.mListView, new ViewGroup.LayoutParams(-1, -1));
        viewGroup2.addView(viewFindViewById);
        viewGroup2.addView(viewFindViewById2);
    }

    @Override // com.android.internal.app.AlertController
    public void setupTitle(ViewGroup viewGroup) throws Throwable {
        super.setupTitle(viewGroup);
        if (viewGroup.getVisibility() == 8) {
            viewGroup.setVisibility(4);
        }
    }
}
