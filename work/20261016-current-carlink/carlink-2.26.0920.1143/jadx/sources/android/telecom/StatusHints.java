package android.telecom;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class StatusHints implements Parcelable {
    public static final Parcelable.Creator<StatusHints> CREATOR = new Parcelable.Creator<StatusHints>() { // from class: android.telecom.StatusHints.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatusHints createFromParcel(Parcel parcel) {
            return new StatusHints(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatusHints[] newArray(int i2) {
            return new StatusHints[i2];
        }
    };
    private final Bundle mExtras;
    private final Icon mIcon;
    private final CharSequence mLabel;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof StatusHints)) {
            return false;
        }
        StatusHints statusHints = (StatusHints) obj;
        return Objects.equals(statusHints.getLabel(), getLabel()) && Objects.equals(statusHints.getIcon(), getIcon()) && Objects.equals(statusHints.getExtras(), getExtras());
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    @Deprecated
    public Drawable getIcon(Context context) {
        return this.mIcon.loadDrawable(context);
    }

    @Deprecated
    public int getIconResId() {
        return 0;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    @Deprecated
    public ComponentName getPackageName() {
        return new ComponentName("", "");
    }

    public int hashCode() {
        return Objects.hashCode(this.mExtras) + Objects.hashCode(this.mIcon) + Objects.hashCode(this.mLabel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mLabel);
        parcel.writeParcelable(this.mIcon, 0);
        parcel.writeParcelable(this.mExtras, 0);
    }

    @Deprecated
    public StatusHints(ComponentName componentName, CharSequence charSequence, int i2, Bundle bundle) {
        this(charSequence, i2 == 0 ? null : Icon.createWithResource(componentName.getPackageName(), i2), bundle);
    }

    public Icon getIcon() {
        return this.mIcon;
    }

    public StatusHints(CharSequence charSequence, Icon icon, Bundle bundle) {
        this.mLabel = charSequence;
        this.mIcon = icon;
        this.mExtras = bundle;
    }

    private StatusHints(Parcel parcel) {
        this.mLabel = parcel.readCharSequence();
        this.mIcon = (Icon) parcel.readParcelable(StatusHints.class.getClassLoader());
        this.mExtras = (Bundle) parcel.readParcelable(StatusHints.class.getClassLoader());
    }
}
