package android.telephony;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.material.timepicker.TimeModel;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SubscriptionInfo implements Parcelable {
    public static final Parcelable.Creator<SubscriptionInfo> CREATOR = new Parcelable.Creator<SubscriptionInfo>() { // from class: android.telephony.SubscriptionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscriptionInfo createFromParcel(Parcel parcel) {
            return new SubscriptionInfo(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readCharSequence(), parcel.readCharSequence(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), Bitmap.CREATOR.createFromParcel(parcel), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readBoolean(), (UiccAccessRule[]) parcel.createTypedArray(UiccAccessRule.CREATOR));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubscriptionInfo[] newArray(int i2) {
            return new SubscriptionInfo[i2];
        }
    };
    private static final int TEXT_SIZE = 16;
    private UiccAccessRule[] mAccessRules;
    private CharSequence mCarrierName;
    private String mCountryIso;
    private int mDataRoaming;
    private CharSequence mDisplayName;
    private String mIccId;
    private Bitmap mIconBitmap;
    private int mIconTint;
    private int mId;
    private boolean mIsEmbedded;
    private int mMcc;
    private int mMnc;
    private int mNameSource;
    private String mNumber;
    private int mSimSlotIndex;

    public SubscriptionInfo(int i2, String str, int i3, CharSequence charSequence, CharSequence charSequence2, int i4, int i5, String str2, int i6, Bitmap bitmap, int i7, int i8, String str3) {
        this(i2, str, i3, charSequence, charSequence2, i4, i5, str2, i6, bitmap, i7, i8, str3, false, null);
    }

    public static String givePrintableIccid(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() <= 9 || Build.IS_DEBUGGABLE) {
            return str;
        }
        return str.substring(0, 9) + Rlog.pii(false, (Object) str.substring(9));
    }

    public boolean canManageSubscription(Context context) {
        return canManageSubscription(context, context.getPackageName());
    }

    public Bitmap createIconBitmap(Context context) {
        int width = this.mIconBitmap.getWidth();
        int height = this.mIconBitmap.getHeight();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayMetrics, width, height, this.mIconBitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(this.mIconTint, PorterDuff.Mode.SRC_ATOP));
        canvas.drawBitmap(this.mIconBitmap, 0.0f, 0.0f, paint);
        paint.setColorFilter(null);
        paint.setAntiAlias(true);
        paint.setTypeface(Typeface.create("sans-serif", 0));
        paint.setColor(-1);
        paint.setTextSize(displayMetrics.density * 16.0f);
        String str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.mSimSlotIndex + 1));
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, 1, rect);
        canvas.drawText(str, (width / 2.0f) - rect.centerX(), (height / 2.0f) - rect.centerY(), paint);
        return bitmapCreateBitmap;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UiccAccessRule[] getAccessRules() {
        if (isEmbedded()) {
            return this.mAccessRules;
        }
        throw new UnsupportedOperationException("Not an embedded subscription");
    }

    public CharSequence getCarrierName() {
        return this.mCarrierName;
    }

    public String getCountryIso() {
        return this.mCountryIso;
    }

    public int getDataRoaming() {
        return this.mDataRoaming;
    }

    public CharSequence getDisplayName() {
        return this.mDisplayName;
    }

    public String getIccId() {
        return this.mIccId;
    }

    public int getIconTint() {
        return this.mIconTint;
    }

    public int getMcc() {
        return this.mMcc;
    }

    public int getMnc() {
        return this.mMnc;
    }

    public int getNameSource() {
        return this.mNameSource;
    }

    public String getNumber() {
        return this.mNumber;
    }

    public int getSimSlotIndex() {
        return this.mSimSlotIndex;
    }

    public int getSubscriptionId() {
        return this.mId;
    }

    public boolean isEmbedded() {
        return this.mIsEmbedded;
    }

    public void setCarrierName(CharSequence charSequence) {
        this.mCarrierName = charSequence;
    }

    public void setDisplayName(CharSequence charSequence) {
        this.mDisplayName = charSequence;
    }

    public void setIconTint(int i2) {
        this.mIconTint = i2;
    }

    public void setNumber(String str) {
        this.mNumber = str;
    }

    public String toString() {
        String strGivePrintableIccid = givePrintableIccid(this.mIccId);
        StringBuilder sb = new StringBuilder("{id=");
        sb.append(this.mId);
        sb.append(", iccId=");
        sb.append(strGivePrintableIccid);
        sb.append(" simSlotIndex=");
        sb.append(this.mSimSlotIndex);
        sb.append(" displayName=");
        sb.append((Object) this.mDisplayName);
        sb.append(" carrierName=");
        sb.append((Object) this.mCarrierName);
        sb.append(" nameSource=");
        sb.append(this.mNameSource);
        sb.append(" iconTint=");
        sb.append(this.mIconTint);
        sb.append(" dataRoaming=");
        sb.append(this.mDataRoaming);
        sb.append(" iconBitmap=");
        sb.append(this.mIconBitmap);
        sb.append(" mcc ");
        sb.append(this.mMcc);
        sb.append(" mnc ");
        sb.append(this.mMnc);
        sb.append(" isEmbedded ");
        sb.append(this.mIsEmbedded);
        sb.append(" accessRules ");
        return c.n(sb, Arrays.toString(this.mAccessRules), "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeString(this.mIccId);
        parcel.writeInt(this.mSimSlotIndex);
        parcel.writeCharSequence(this.mDisplayName);
        parcel.writeCharSequence(this.mCarrierName);
        parcel.writeInt(this.mNameSource);
        parcel.writeInt(this.mIconTint);
        parcel.writeString(this.mNumber);
        parcel.writeInt(this.mDataRoaming);
        parcel.writeInt(this.mMcc);
        parcel.writeInt(this.mMnc);
        parcel.writeString(this.mCountryIso);
        this.mIconBitmap.writeToParcel(parcel, i2);
        parcel.writeBoolean(this.mIsEmbedded);
        parcel.writeTypedArray(this.mAccessRules, i2);
    }

    public SubscriptionInfo(int i2, String str, int i3, CharSequence charSequence, CharSequence charSequence2, int i4, int i5, String str2, int i6, Bitmap bitmap, int i7, int i8, String str3, boolean z2, UiccAccessRule[] uiccAccessRuleArr) {
        this.mId = i2;
        this.mIccId = str;
        this.mSimSlotIndex = i3;
        this.mDisplayName = charSequence;
        this.mCarrierName = charSequence2;
        this.mNameSource = i4;
        this.mIconTint = i5;
        this.mNumber = str2;
        this.mDataRoaming = i6;
        this.mIconBitmap = bitmap;
        this.mMcc = i7;
        this.mMnc = i8;
        this.mCountryIso = str3;
        this.mIsEmbedded = z2;
        this.mAccessRules = uiccAccessRuleArr;
    }

    public boolean canManageSubscription(Context context, String str) {
        if (!isEmbedded()) {
            throw new UnsupportedOperationException("Not an embedded subscription");
        }
        if (this.mAccessRules == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            for (UiccAccessRule uiccAccessRule : this.mAccessRules) {
                if (uiccAccessRule.getCarrierPrivilegeStatus(packageInfo) == 1) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(c.j("Unknown package: ", str), e2);
        }
    }
}
