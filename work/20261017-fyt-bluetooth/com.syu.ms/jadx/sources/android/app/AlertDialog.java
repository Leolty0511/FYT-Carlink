package android.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.internal.app.AlertController;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialog extends Dialog {
    public static final int THEME_DEVICE_DEFAULT_DARK = 4;
    public static final int THEME_DEVICE_DEFAULT_LIGHT = 5;
    public static final int THEME_HOLO_DARK = 2;
    public static final int THEME_HOLO_LIGHT = 3;
    public static final int THEME_TRADITIONAL = 1;
    private AlertController mAlert;

    public static class Builder {
        private final AlertController.b P;
        private int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.P.f780a, this.mTheme, false);
            this.P.a(alertDialog.mAlert);
            alertDialog.setCancelable(this.P.f794o);
            if (this.P.f794o) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.P.f795p);
            alertDialog.setOnDismissListener(this.P.f796q);
            DialogInterface.OnKeyListener onKeyListener = this.P.f797r;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        public Context getContext() {
            return this.P.f780a;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f799t = listAdapter;
            bVar.f800u = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z2) {
            this.P.f794o = z2;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.b bVar = this.P;
            bVar.G = cursor;
            bVar.H = str;
            bVar.f800u = onClickListener;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.P.f786g = view;
            return this;
        }

        public Builder setIcon(int i2) {
            this.P.f782c = i2;
            return this;
        }

        public Builder setIconAttribute(int i2) {
            TypedValue typedValue = new TypedValue();
            this.P.f780a.getTheme().resolveAttribute(i2, typedValue, true);
            this.P.f782c = typedValue.resourceId;
            return this;
        }

        public Builder setInverseBackgroundForced(boolean z2) {
            this.P.J = z2;
            return this;
        }

        public Builder setItems(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = bVar.f780a.getResources().getTextArray(i2);
            this.P.f800u = onClickListener;
            return this;
        }

        public Builder setMessage(int i2) {
            AlertController.b bVar = this.P;
            bVar.f787h = bVar.f780a.getText(i2);
            return this;
        }

        public Builder setMultiChoiceItems(int i2, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = bVar.f780a.getResources().getTextArray(i2);
            AlertController.b bVar2 = this.P;
            bVar2.F = onMultiChoiceClickListener;
            bVar2.B = zArr;
            bVar2.C = true;
            return this;
        }

        public Builder setNegativeButton(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f790k = bVar.f780a.getText(i2);
            this.P.f791l = onClickListener;
            return this;
        }

        public Builder setNeutralButton(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f792m = bVar.f780a.getText(i2);
            this.P.f793n = onClickListener;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.P.f795p = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.P.f796q = onDismissListener;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.P.K = onItemSelectedListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.P.f797r = onKeyListener;
            return this;
        }

        public Builder setPositiveButton(int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f788i = bVar.f780a.getText(i2);
            this.P.f789j = onClickListener;
            return this;
        }

        public Builder setRecycleOnMeasureEnabled(boolean z2) {
            this.P.M = z2;
            return this;
        }

        public Builder setSingleChoiceItems(int i2, int i3, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = bVar.f780a.getResources().getTextArray(i2);
            AlertController.b bVar2 = this.P;
            bVar2.f800u = onClickListener;
            bVar2.E = i3;
            bVar2.D = true;
            return this;
        }

        public Builder setTitle(int i2) {
            AlertController.b bVar = this.P;
            bVar.f785f = bVar.f780a.getText(i2);
            return this;
        }

        public Builder setView(View view) {
            AlertController.b bVar = this.P;
            bVar.f801v = view;
            bVar.A = false;
            return this;
        }

        public AlertDialog show() {
            AlertDialog alertDialogCreate = create();
            alertDialogCreate.show();
            return alertDialogCreate;
        }

        public Builder(Context context, int i2) {
            this.P = new AlertController.b(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i2)));
            this.mTheme = i2;
        }

        public Builder setIcon(Drawable drawable) {
            this.P.f783d = drawable;
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.P.f787h = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.P.f785f = charSequence;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = charSequenceArr;
            bVar.f800u = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f790k = charSequence;
            bVar.f791l = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f792m = charSequence;
            bVar.f793n = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f788i = charSequence;
            bVar.f789j = onClickListener;
            return this;
        }

        public Builder setView(View view, int i2, int i3, int i4, int i5) {
            AlertController.b bVar = this.P;
            bVar.f801v = view;
            bVar.A = true;
            bVar.f802w = i2;
            bVar.f803x = i3;
            bVar.f804y = i4;
            bVar.f805z = i5;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = charSequenceArr;
            bVar.F = onMultiChoiceClickListener;
            bVar.B = zArr;
            bVar.C = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i2, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.G = cursor;
            bVar.f800u = onClickListener;
            bVar.E = i2;
            bVar.H = str;
            bVar.D = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.P;
            bVar.G = cursor;
            bVar.F = onMultiChoiceClickListener;
            bVar.I = str;
            bVar.H = str2;
            bVar.C = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f798s = charSequenceArr;
            bVar.f800u = onClickListener;
            bVar.E = i2;
            bVar.D = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.P;
            bVar.f799t = listAdapter;
            bVar.f800u = onClickListener;
            bVar.E = i2;
            bVar.D = true;
            return this;
        }
    }

    public AlertDialog(Context context) {
        this(context, resolveDialogTheme(context, 0), true);
    }

    public static int resolveDialogTheme(Context context, int i2) {
        if (i2 == 1) {
            return 16974592;
        }
        if (i2 == 2) {
            return 16974608;
        }
        if (i2 == 3) {
            return 16974612;
        }
        if (i2 == 4) {
            return 16974620;
        }
        if (i2 == 5) {
            return 16974621;
        }
        if (i2 >= 16777216) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i2) {
        return this.mAlert.r(i2);
    }

    public ListView getListView() {
        return this.mAlert.t();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.u();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.mAlert.v(i2, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.mAlert.w(i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void setButton(int i2, CharSequence charSequence, Message message) {
        this.mAlert.y(i2, charSequence, null, message);
    }

    @Deprecated
    public void setButton2(CharSequence charSequence, Message message) {
        setButton(-2, charSequence, message);
    }

    @Deprecated
    public void setButton3(CharSequence charSequence, Message message) {
        setButton(-3, charSequence, message);
    }

    public void setCustomTitle(View view) {
        this.mAlert.z(view);
    }

    public void setIcon(int i2) {
        this.mAlert.A(i2);
    }

    public void setIconAttribute(int i2) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(i2, typedValue, true);
        this.mAlert.A(typedValue.resourceId);
    }

    public void setInverseBackgroundForced(boolean z2) {
        this.mAlert.C(z2);
    }

    public void setMessage(CharSequence charSequence) {
        this.mAlert.D(charSequence);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.E(charSequence);
    }

    public void setView(View view) {
        this.mAlert.F(view);
    }

    public AlertDialog(Context context, int i2) {
        this(context, i2, true);
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.y(i2, charSequence, onClickListener, null);
    }

    @Deprecated
    public void setButton2(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        setButton(-2, charSequence, onClickListener);
    }

    @Deprecated
    public void setButton3(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        setButton(-3, charSequence, onClickListener);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.B(drawable);
    }

    public void setView(View view, int i2, int i3, int i4, int i5) {
        this.mAlert.G(view, i2, i3, i4, i5);
    }

    public AlertDialog(Context context, int i2, boolean z2) {
        super(context, resolveDialogTheme(context, i2), z2);
        this.mWindow.alwaysReadCloseOnTouchAttr();
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    @Deprecated
    public void setButton(CharSequence charSequence, Message message) {
        setButton(-1, charSequence, message);
    }

    @Deprecated
    public void setButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        setButton(-1, charSequence, onClickListener);
    }

    public AlertDialog(Context context, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        super(context, resolveDialogTheme(context, 0));
        this.mWindow.alwaysReadCloseOnTouchAttr();
        setCancelable(z2);
        setOnCancelListener(onCancelListener);
        this.mAlert = new AlertController(context, this, getWindow());
    }
}
