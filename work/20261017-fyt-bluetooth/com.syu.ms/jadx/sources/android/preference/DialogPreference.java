package android.preference;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class DialogPreference extends Preference implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, PreferenceManager.OnActivityDestroyListener {
    private AlertDialog.Builder mBuilder;
    private Dialog mDialog;
    private Drawable mDialogIcon;
    private int mDialogLayoutResId;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;
    private int mWhichButtonClicked;

    public DialogPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.DialogPreference, i2, 0);
        String string = typedArrayObtainStyledAttributes.getString(0);
        this.mDialogTitle = string;
        if (string == null) {
            this.mDialogTitle = getTitle();
        }
        this.mDialogMessage = typedArrayObtainStyledAttributes.getString(1);
        this.mDialogIcon = typedArrayObtainStyledAttributes.getDrawable(2);
        this.mPositiveButtonText = typedArrayObtainStyledAttributes.getString(3);
        this.mNegativeButtonText = typedArrayObtainStyledAttributes.getString(4);
        this.mDialogLayoutResId = typedArrayObtainStyledAttributes.getResourceId(5, this.mDialogLayoutResId);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void requestInputMethod(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public Drawable getDialogIcon() {
        return this.mDialogIcon;
    }

    public int getDialogLayoutResource() {
        return this.mDialogLayoutResId;
    }

    public CharSequence getDialogMessage() {
        return this.mDialogMessage;
    }

    public CharSequence getDialogTitle() {
        return this.mDialogTitle;
    }

    public CharSequence getNegativeButtonText() {
        return this.mNegativeButtonText;
    }

    public CharSequence getPositiveButtonText() {
        return this.mPositiveButtonText;
    }

    public boolean needInputMethod() {
        return false;
    }

    @Override // android.preference.PreferenceManager.OnActivityDestroyListener
    public void onActivityDestroy() {
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    public void onBindDialogView(View view) {
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence dialogMessage = getDialogMessage();
            int i2 = 8;
            if (!TextUtils.isEmpty(dialogMessage)) {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(dialogMessage);
                }
                i2 = 0;
            }
            if (viewFindViewById.getVisibility() != i2) {
                viewFindViewById.setVisibility(i2);
            }
        }
    }

    @Override // android.preference.Preference
    public void onClick() {
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            showDialog(null);
        }
    }

    public View onCreateDialogView() {
        if (this.mDialogLayoutResId == 0) {
            return null;
        }
        return LayoutInflater.from(this.mBuilder.getContext()).inflate(this.mDialogLayoutResId, (ViewGroup) null);
    }

    public void onDialogClosed(boolean z2) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        getPreferenceManager().unregisterOnActivityDestroyListener(this);
        this.mDialog = null;
        onDialogClosed(this.mWhichButtonClicked == -1);
    }

    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
    }

    @Override // android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isDialogShowing) {
            showDialog(savedState.dialogBundle);
        }
    }

    @Override // android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.isDialogShowing = true;
        savedState.dialogBundle = this.mDialog.onSaveInstanceState();
        return savedState;
    }

    public void setDialogIcon(Drawable drawable) {
        this.mDialogIcon = drawable;
    }

    public void setDialogLayoutResource(int i2) {
        this.mDialogLayoutResId = i2;
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.mDialogMessage = charSequence;
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.mDialogTitle = charSequence;
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.mNegativeButtonText = charSequence;
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.mPositiveButtonText = charSequence;
    }

    public void showDialog(Bundle bundle) {
        Context context = getContext();
        this.mWhichButtonClicked = -2;
        this.mBuilder = new AlertDialog.Builder(context).setTitle(this.mDialogTitle).setIcon(this.mDialogIcon).setPositiveButton(this.mPositiveButtonText, this).setNegativeButton(this.mNegativeButtonText, this);
        View viewOnCreateDialogView = onCreateDialogView();
        if (viewOnCreateDialogView != null) {
            onBindDialogView(viewOnCreateDialogView);
            this.mBuilder.setView(viewOnCreateDialogView);
        } else {
            this.mBuilder.setMessage(this.mDialogMessage);
        }
        onPrepareDialogBuilder(this.mBuilder);
        getPreferenceManager().registerOnActivityDestroyListener(this);
        AlertDialog alertDialogCreate = this.mBuilder.create();
        this.mDialog = alertDialogCreate;
        if (bundle != null) {
            alertDialogCreate.onRestoreInstanceState(bundle);
        }
        if (needInputMethod()) {
            requestInputMethod(alertDialogCreate);
        }
        alertDialogCreate.setOnDismissListener(this);
        alertDialogCreate.show();
    }

    public void setDialogIcon(int i2) {
        this.mDialogIcon = getContext().getResources().getDrawable(i2);
    }

    public void setDialogMessage(int i2) {
        setDialogMessage(getContext().getString(i2));
    }

    public void setDialogTitle(int i2) {
        setDialogTitle(getContext().getString(i2));
    }

    public void setNegativeButtonText(int i2) {
        setNegativeButtonText(getContext().getString(i2));
    }

    public void setPositiveButtonText(int i2) {
        setPositiveButtonText(getContext().getString(i2));
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.DialogPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public Bundle dialogBundle;
        public boolean isDialogShowing;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.isDialogShowing = parcel.readInt() == 1;
            this.dialogBundle = parcel.readBundle();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.isDialogShowing ? 1 : 0);
            parcel.writeBundle(this.dialogBundle);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        this.mWhichButtonClicked = i2;
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }
}
