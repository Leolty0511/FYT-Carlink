package android.service.notification;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.security.keystore.KeyProperties;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class Condition implements Parcelable {
    public static final Parcelable.Creator<Condition> CREATOR = new Parcelable.Creator<Condition>() { // from class: android.service.notification.Condition.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Condition createFromParcel(Parcel parcel) {
            return new Condition(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Condition[] newArray(int i2) {
            return new Condition[i2];
        }
    };
    public static final int FLAG_RELEVANT_ALWAYS = 2;
    public static final int FLAG_RELEVANT_NOW = 1;
    public static final String SCHEME = "condition";
    public static final int STATE_ERROR = 3;
    public static final int STATE_FALSE = 0;
    public static final int STATE_TRUE = 1;
    public static final int STATE_UNKNOWN = 2;
    public final int flags;
    public final int icon;
    public final Uri id;
    public final String line1;
    public final String line2;
    public final int state;
    public final String summary;

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public Condition(Uri uri, String str, int i2) {
        this(uri, str, "", "", -1, i2, 2);
    }

    public static boolean isValidId(Uri uri, String str) {
        return uri != null && SCHEME.equals(uri.getScheme()) && str.equals(uri.getAuthority());
    }

    private static boolean isValidState(int i2) {
        return i2 >= 0 && i2 <= 3;
    }

    public static Uri.Builder newId(Context context) {
        return new Uri.Builder().scheme(SCHEME).authority(context.getPackageName());
    }

    public static String relevanceToString(int i2) {
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = (i2 & 2) != 0;
        if (!z2 && !z3) {
            return KeyProperties.DIGEST_NONE;
        }
        if (z2 && z3) {
            return "NOW, ALWAYS";
        }
        return z2 ? "NOW" : "ALWAYS";
    }

    public static String stateToString(int i2) {
        if (i2 == 0) {
            return "STATE_FALSE";
        }
        if (i2 == 1) {
            return "STATE_TRUE";
        }
        if (i2 == 2) {
            return "STATE_UNKNOWN";
        }
        if (i2 == 3) {
            return "STATE_ERROR";
        }
        throw new IllegalArgumentException(c.d("state is invalid: ", i2));
    }

    public Condition copy() {
        Parcel parcelObtain = Parcel.obtain();
        try {
            writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            return new Condition(parcelObtain);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Condition)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        Condition condition = (Condition) obj;
        return Objects.equals(condition.id, this.id) && Objects.equals(condition.summary, this.summary) && Objects.equals(condition.line1, this.line1) && Objects.equals(condition.line2, this.line2) && condition.icon == this.icon && condition.state == this.state && condition.flags == this.flags;
    }

    public int hashCode() {
        return Objects.hash(this.id, this.summary, this.line1, this.line2, Integer.valueOf(this.icon), Integer.valueOf(this.state), Integer.valueOf(this.flags));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Condition[id=");
        sb.append(this.id);
        sb.append(",summary=");
        sb.append(this.summary);
        sb.append(",line1=");
        sb.append(this.line1);
        sb.append(",line2=");
        sb.append(this.line2);
        sb.append(",icon=");
        sb.append(this.icon);
        sb.append(",state=");
        sb.append(stateToString(this.state));
        sb.append(",flags=");
        return m.j(sb, this.flags, ']');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.id, 0);
        parcel.writeString(this.summary);
        parcel.writeString(this.line1);
        parcel.writeString(this.line2);
        parcel.writeInt(this.icon);
        parcel.writeInt(this.state);
        parcel.writeInt(this.flags);
    }

    public Condition(Uri uri, String str, String str2, String str3, int i2, int i3, int i4) {
        if (uri == null) {
            throw new IllegalArgumentException("id is required");
        }
        if (str == null) {
            throw new IllegalArgumentException("summary is required");
        }
        if (!isValidState(i3)) {
            throw new IllegalArgumentException(c.d("state is invalid: ", i3));
        }
        this.id = uri;
        this.summary = str;
        this.line1 = str2;
        this.line2 = str3;
        this.icon = i2;
        this.state = i3;
        this.flags = i4;
    }

    public Condition(Parcel parcel) {
        this((Uri) parcel.readParcelable(Condition.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
