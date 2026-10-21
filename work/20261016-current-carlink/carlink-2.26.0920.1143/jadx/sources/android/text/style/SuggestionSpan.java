package android.text.style;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.ParcelableSpan;
import android.text.TextPaint;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class SuggestionSpan extends CharacterStyle implements ParcelableSpan {
    public static final String ACTION_SUGGESTION_PICKED = "android.text.style.SUGGESTION_PICKED";
    public static final Parcelable.Creator<SuggestionSpan> CREATOR = new Parcelable.Creator<SuggestionSpan>() { // from class: android.text.style.SuggestionSpan.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SuggestionSpan createFromParcel(Parcel parcel) {
            return new SuggestionSpan(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SuggestionSpan[] newArray(int i2) {
            return new SuggestionSpan[i2];
        }
    };
    public static final int FLAG_AUTO_CORRECTION = 4;
    public static final int FLAG_EASY_CORRECT = 1;
    public static final int FLAG_MISSPELLED = 2;
    public static final int SUGGESTIONS_MAX_SIZE = 5;
    public static final String SUGGESTION_SPAN_PICKED_AFTER = "after";
    public static final String SUGGESTION_SPAN_PICKED_BEFORE = "before";
    public static final String SUGGESTION_SPAN_PICKED_HASHCODE = "hashcode";
    private static final String TAG = "SuggestionSpan";
    private int mAutoCorrectionUnderlineColor;
    private float mAutoCorrectionUnderlineThickness;
    private int mEasyCorrectUnderlineColor;
    private float mEasyCorrectUnderlineThickness;
    private int mFlags;
    private final int mHashCode;
    private final String mLanguageTag;
    private final String mLocaleStringForCompatibility;
    private int mMisspelledUnderlineColor;
    private float mMisspelledUnderlineThickness;
    private final String mNotificationTargetClassName;
    private final String mNotificationTargetPackageName;
    private final String[] mSuggestions;

    public SuggestionSpan(Context context, String[] strArr, int i2) {
        this(context, null, strArr, i2, null);
    }

    private static int hashCodeInternal(String[] strArr, String str, String str2, String str3) {
        return Arrays.hashCode(new Object[]{Long.valueOf(SystemClock.uptimeMillis()), strArr, str, str2, str3});
    }

    private void initStyle(Context context) {
        if (context == null) {
            this.mMisspelledUnderlineThickness = 0.0f;
            this.mEasyCorrectUnderlineThickness = 0.0f;
            this.mAutoCorrectionUnderlineThickness = 0.0f;
            this.mMisspelledUnderlineColor = -16777216;
            this.mEasyCorrectUnderlineColor = -16777216;
            this.mAutoCorrectionUnderlineColor = -16777216;
            return;
        }
        int[] iArr = R.styleable.SuggestionSpan;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, R.attr.textAppearanceMisspelledSuggestion, 0);
        this.mMisspelledUnderlineThickness = typedArrayObtainStyledAttributes.getDimension(1, 0.0f);
        this.mMisspelledUnderlineColor = typedArrayObtainStyledAttributes.getColor(0, -16777216);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(null, iArr, R.attr.textAppearanceEasyCorrectSuggestion, 0);
        this.mEasyCorrectUnderlineThickness = typedArrayObtainStyledAttributes2.getDimension(1, 0.0f);
        this.mEasyCorrectUnderlineColor = typedArrayObtainStyledAttributes2.getColor(0, -16777216);
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(null, iArr, R.attr.textAppearanceAutoCorrectionSuggestion, 0);
        this.mAutoCorrectionUnderlineThickness = typedArrayObtainStyledAttributes3.getDimension(1, 0.0f);
        this.mAutoCorrectionUnderlineColor = typedArrayObtainStyledAttributes3.getColor(0, -16777216);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof SuggestionSpan) && ((SuggestionSpan) obj).hashCode() == this.mHashCode;
    }

    public int getFlags() {
        return this.mFlags;
    }

    @Deprecated
    public String getLocale() {
        return this.mLocaleStringForCompatibility;
    }

    public Locale getLocaleObject() {
        if (this.mLanguageTag.isEmpty()) {
            return null;
        }
        return Locale.forLanguageTag(this.mLanguageTag);
    }

    public String getNotificationTargetClassName() {
        return this.mNotificationTargetClassName;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return getSpanTypeIdInternal();
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeIdInternal() {
        return 19;
    }

    public String[] getSuggestions() {
        return this.mSuggestions;
    }

    public int getUnderlineColor() {
        int i2 = this.mFlags;
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 1) != 0;
        boolean z4 = (i2 & 4) != 0;
        if (z3) {
            return !z2 ? this.mEasyCorrectUnderlineColor : this.mMisspelledUnderlineColor;
        }
        if (z4) {
            return this.mAutoCorrectionUnderlineColor;
        }
        return 0;
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public void notifySelection(Context context, String str, int i2) {
        String str2;
        Intent intent = new Intent();
        if (context == null || (str2 = this.mNotificationTargetClassName) == null) {
            return;
        }
        String[] strArr = this.mSuggestions;
        if (strArr == null || i2 < 0 || i2 >= strArr.length) {
            c.A(c.s("Unable to notify the suggestion as the index is out of range index=", i2, " length="), this.mSuggestions.length, TAG);
            return;
        }
        String str3 = this.mNotificationTargetPackageName;
        if (str3 == null) {
            InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
            if (inputMethodManagerPeekInstance != null) {
                inputMethodManagerPeekInstance.notifySuggestionPicked(this, str, i2);
                return;
            }
            return;
        }
        intent.setClassName(str3, str2);
        intent.setAction(ACTION_SUGGESTION_PICKED);
        intent.putExtra(SUGGESTION_SPAN_PICKED_BEFORE, str);
        intent.putExtra(SUGGESTION_SPAN_PICKED_AFTER, this.mSuggestions[i2]);
        intent.putExtra(SUGGESTION_SPAN_PICKED_HASHCODE, hashCode());
        context.sendBroadcast(intent);
    }

    public void setFlags(int i2) {
        this.mFlags = i2;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        int i2 = this.mFlags;
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 1) != 0;
        boolean z4 = (i2 & 4) != 0;
        if (!z3) {
            if (z4) {
                textPaint.setUnderlineText(this.mAutoCorrectionUnderlineColor, this.mAutoCorrectionUnderlineThickness);
            }
        } else if (!z2) {
            textPaint.setUnderlineText(this.mEasyCorrectUnderlineColor, this.mEasyCorrectUnderlineThickness);
        } else if (textPaint.underlineColor == 0) {
            textPaint.setUnderlineText(this.mMisspelledUnderlineColor, this.mMisspelledUnderlineThickness);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        writeToParcelInternal(parcel, i2);
    }

    @Override // android.text.ParcelableSpan
    public void writeToParcelInternal(Parcel parcel, int i2) {
        parcel.writeStringArray(this.mSuggestions);
        parcel.writeInt(this.mFlags);
        parcel.writeString(this.mLocaleStringForCompatibility);
        parcel.writeString(this.mLanguageTag);
        parcel.writeString(this.mNotificationTargetClassName);
        parcel.writeString(this.mNotificationTargetPackageName);
        parcel.writeInt(this.mHashCode);
        parcel.writeInt(this.mEasyCorrectUnderlineColor);
        parcel.writeFloat(this.mEasyCorrectUnderlineThickness);
        parcel.writeInt(this.mMisspelledUnderlineColor);
        parcel.writeFloat(this.mMisspelledUnderlineThickness);
        parcel.writeInt(this.mAutoCorrectionUnderlineColor);
        parcel.writeFloat(this.mAutoCorrectionUnderlineThickness);
    }

    public SuggestionSpan(Locale locale, String[] strArr, int i2) {
        this(null, locale, strArr, i2, null);
    }

    public SuggestionSpan(Context context, Locale locale, String[] strArr, int i2, Class<?> cls) {
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, Math.min(5, strArr.length));
        this.mSuggestions = strArr2;
        this.mFlags = i2;
        if (locale == null) {
            if (context != null) {
                locale = context.getResources().getConfiguration().locale;
            } else {
                Log.e(TAG, "No locale or context specified in SuggestionSpan constructor");
                locale = null;
            }
        }
        String string = locale == null ? "" : locale.toString();
        this.mLocaleStringForCompatibility = string;
        String languageTag = locale == null ? "" : locale.toLanguageTag();
        this.mLanguageTag = languageTag;
        if (context != null) {
            this.mNotificationTargetPackageName = context.getPackageName();
        } else {
            this.mNotificationTargetPackageName = null;
        }
        if (cls != null) {
            this.mNotificationTargetClassName = cls.getCanonicalName();
        } else {
            this.mNotificationTargetClassName = "";
        }
        this.mHashCode = hashCodeInternal(strArr2, languageTag, string, this.mNotificationTargetClassName);
        initStyle(context);
    }

    public SuggestionSpan(Parcel parcel) {
        this.mSuggestions = parcel.readStringArray();
        this.mFlags = parcel.readInt();
        this.mLocaleStringForCompatibility = parcel.readString();
        this.mLanguageTag = parcel.readString();
        this.mNotificationTargetClassName = parcel.readString();
        this.mNotificationTargetPackageName = parcel.readString();
        this.mHashCode = parcel.readInt();
        this.mEasyCorrectUnderlineColor = parcel.readInt();
        this.mEasyCorrectUnderlineThickness = parcel.readFloat();
        this.mMisspelledUnderlineColor = parcel.readInt();
        this.mMisspelledUnderlineThickness = parcel.readFloat();
        this.mAutoCorrectionUnderlineColor = parcel.readInt();
        this.mAutoCorrectionUnderlineThickness = parcel.readFloat();
    }
}
