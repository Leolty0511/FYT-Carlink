package android.content.pm;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class LabeledIntent extends Intent {
    public static final Parcelable.Creator<LabeledIntent> CREATOR = new Parcelable.Creator<LabeledIntent>() { // from class: android.content.pm.LabeledIntent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LabeledIntent createFromParcel(Parcel parcel) {
            return new LabeledIntent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LabeledIntent[] newArray(int i2) {
            return new LabeledIntent[i2];
        }
    };
    private int mIcon;
    private int mLabelRes;
    private CharSequence mNonLocalizedLabel;
    private String mSourcePackage;

    public LabeledIntent(Intent intent, String str, int i2, int i3) {
        super(intent);
        this.mSourcePackage = str;
        this.mLabelRes = i2;
        this.mNonLocalizedLabel = null;
        this.mIcon = i3;
    }

    public int getIconResource() {
        return this.mIcon;
    }

    public int getLabelResource() {
        return this.mLabelRes;
    }

    public CharSequence getNonLocalizedLabel() {
        return this.mNonLocalizedLabel;
    }

    public String getSourcePackage() {
        return this.mSourcePackage;
    }

    public Drawable loadIcon(PackageManager packageManager) {
        String str;
        Drawable drawable;
        int i2 = this.mIcon;
        if (i2 == 0 || (str = this.mSourcePackage) == null || (drawable = packageManager.getDrawable(str, i2, null)) == null) {
            return null;
        }
        return drawable;
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        String str;
        CharSequence text;
        CharSequence charSequence = this.mNonLocalizedLabel;
        if (charSequence != null) {
            return charSequence;
        }
        int i2 = this.mLabelRes;
        if (i2 == 0 || (str = this.mSourcePackage) == null || (text = packageManager.getText(str, i2, null)) == null) {
            return null;
        }
        return text;
    }

    @Override // android.content.Intent
    public void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.mSourcePackage = parcel.readString();
        this.mLabelRes = parcel.readInt();
        this.mNonLocalizedLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIcon = parcel.readInt();
    }

    @Override // android.content.Intent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.mSourcePackage);
        parcel.writeInt(this.mLabelRes);
        TextUtils.writeToParcel(this.mNonLocalizedLabel, parcel, i2);
        parcel.writeInt(this.mIcon);
    }

    public LabeledIntent(Intent intent, String str, CharSequence charSequence, int i2) {
        super(intent);
        this.mSourcePackage = str;
        this.mLabelRes = 0;
        this.mNonLocalizedLabel = charSequence;
        this.mIcon = i2;
    }

    public LabeledIntent(String str, int i2, int i3) {
        this.mSourcePackage = str;
        this.mLabelRes = i2;
        this.mNonLocalizedLabel = null;
        this.mIcon = i3;
    }

    public LabeledIntent(String str, CharSequence charSequence, int i2) {
        this.mSourcePackage = str;
        this.mLabelRes = 0;
        this.mNonLocalizedLabel = charSequence;
        this.mIcon = i2;
    }

    public LabeledIntent(Parcel parcel) {
        readFromParcel(parcel);
    }
}
