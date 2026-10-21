package android.content;

import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public interface DialogInterface {

    @Deprecated
    public static final int BUTTON1 = -1;

    @Deprecated
    public static final int BUTTON2 = -2;

    @Deprecated
    public static final int BUTTON3 = -3;
    public static final int BUTTON_NEGATIVE = -2;
    public static final int BUTTON_NEUTRAL = -3;
    public static final int BUTTON_POSITIVE = -1;

    public interface OnCancelListener {
        void onCancel(DialogInterface dialogInterface);
    }

    public interface OnClickListener {
        void onClick(DialogInterface dialogInterface, int i2);
    }

    public interface OnDismissListener {
        void onDismiss(DialogInterface dialogInterface);
    }

    public interface OnKeyListener {
        boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent);
    }

    public interface OnMultiChoiceClickListener {
        void onClick(DialogInterface dialogInterface, int i2, boolean z2);
    }

    public interface OnShowListener {
        void onShow(DialogInterface dialogInterface);
    }

    void cancel();

    void dismiss();
}
