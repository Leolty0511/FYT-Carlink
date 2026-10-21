package android.app;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteAction implements Parcelable {
    public static final Parcelable.Creator<RemoteAction> CREATOR = new Parcelable.Creator<RemoteAction>() { // from class: android.app.RemoteAction.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteAction createFromParcel(Parcel parcel) {
            return new RemoteAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteAction[] newArray(int i2) {
            return new RemoteAction[i2];
        }
    };
    private static final String TAG = "RemoteAction";
    private final PendingIntent mActionIntent;
    private final CharSequence mContentDescription;
    private boolean mEnabled;
    private final Icon mIcon;
    private final CharSequence mTitle;

    public RemoteAction(Parcel parcel) {
        this.mIcon = Icon.CREATOR.createFromParcel(parcel);
        Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.mTitle = creator.createFromParcel(parcel);
        this.mContentDescription = creator.createFromParcel(parcel);
        this.mActionIntent = PendingIntent.CREATOR.createFromParcel(parcel);
        this.mEnabled = parcel.readBoolean();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("title=" + ((Object) this.mTitle));
        printWriter.print(" enabled=" + this.mEnabled);
        printWriter.print(" contentDescription=" + ((Object) this.mContentDescription));
        printWriter.print(" icon=" + this.mIcon);
        printWriter.print(" action=" + this.mActionIntent.getIntent());
        printWriter.println();
    }

    public PendingIntent getActionIntent() {
        return this.mActionIntent;
    }

    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public Icon getIcon() {
        return this.mIcon;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setEnabled(boolean z2) {
        this.mEnabled = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mIcon.writeToParcel(parcel, 0);
        TextUtils.writeToParcel(this.mTitle, parcel, i2);
        TextUtils.writeToParcel(this.mContentDescription, parcel, i2);
        this.mActionIntent.writeToParcel(parcel, i2);
        parcel.writeBoolean(this.mEnabled);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RemoteAction m14clone() {
        RemoteAction remoteAction = new RemoteAction(this.mIcon, this.mTitle, this.mContentDescription, this.mActionIntent);
        remoteAction.setEnabled(this.mEnabled);
        return remoteAction;
    }

    public RemoteAction(Icon icon, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        if (icon != null && charSequence != null && charSequence2 != null && pendingIntent != null) {
            this.mIcon = icon;
            this.mTitle = charSequence;
            this.mContentDescription = charSequence2;
            this.mActionIntent = pendingIntent;
            this.mEnabled = true;
            return;
        }
        throw new IllegalArgumentException("Expected icon, title, content description and action callback");
    }
}
