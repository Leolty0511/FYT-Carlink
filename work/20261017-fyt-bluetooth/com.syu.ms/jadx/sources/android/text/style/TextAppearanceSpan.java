package android.text.style;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Parcel;
import android.text.ParcelableSpan;
import android.text.TextPaint;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class TextAppearanceSpan extends MetricAffectingSpan implements ParcelableSpan {
    private final int mStyle;
    private final ColorStateList mTextColor;
    private final ColorStateList mTextColorLink;
    private final int mTextSize;
    private final String mTypeface;

    public TextAppearanceSpan(Context context, int i2) {
        this(context, i2, -1);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getFamily() {
        return this.mTypeface;
    }

    public ColorStateList getLinkTextColor() {
        return this.mTextColorLink;
    }

    @Override // android.text.ParcelableSpan
    public int getSpanTypeId() {
        return 17;
    }

    public ColorStateList getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public int getTextStyle() {
        return this.mStyle;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        updateMeasureState(textPaint);
        ColorStateList colorStateList = this.mTextColor;
        if (colorStateList != null) {
            textPaint.setColor(colorStateList.getColorForState(textPaint.drawableState, 0));
        }
        ColorStateList colorStateList2 = this.mTextColorLink;
        if (colorStateList2 != null) {
            textPaint.linkColor = colorStateList2.getColorForState(textPaint.drawableState, 0);
        }
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        Typeface typefaceDefaultFromStyle;
        if (this.mTypeface != null || this.mStyle != 0) {
            Typeface typeface = textPaint.getTypeface();
            int style = (typeface != null ? typeface.getStyle() : 0) | this.mStyle;
            String str = this.mTypeface;
            if (str != null) {
                typefaceDefaultFromStyle = Typeface.create(str, style);
            } else {
                typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(style) : Typeface.create(typeface, style);
            }
            int i2 = style & (~typefaceDefaultFromStyle.getStyle());
            if ((i2 & 1) != 0) {
                textPaint.setFakeBoldText(true);
            }
            if ((i2 & 2) != 0) {
                textPaint.setTextSkewX(-0.25f);
            }
            textPaint.setTypeface(typefaceDefaultFromStyle);
        }
        int i3 = this.mTextSize;
        if (i3 > 0) {
            textPaint.setTextSize(i3);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mTypeface);
        parcel.writeInt(this.mStyle);
        parcel.writeInt(this.mTextSize);
        if (this.mTextColor != null) {
            parcel.writeInt(1);
            this.mTextColor.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.mTextColorLink == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mTextColorLink.writeToParcel(parcel, i2);
        }
    }

    public TextAppearanceSpan(Context context, int i2, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, a.TextAppearance);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(3);
        this.mTextColorLink = typedArrayObtainStyledAttributes.getColorStateList(6);
        this.mTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.mStyle = typedArrayObtainStyledAttributes.getInt(2, 0);
        String string = typedArrayObtainStyledAttributes.getString(12);
        if (string != null) {
            this.mTypeface = string;
        } else {
            int i4 = typedArrayObtainStyledAttributes.getInt(1, 0);
            if (i4 == 1) {
                this.mTypeface = "sans";
            } else if (i4 == 2) {
                this.mTypeface = "serif";
            } else if (i4 != 3) {
                this.mTypeface = null;
            } else {
                this.mTypeface = "monospace";
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i3 >= 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(R.style.Theme, a.Theme);
            colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(i3);
            typedArrayObtainStyledAttributes2.recycle();
        }
        this.mTextColor = colorStateList;
    }

    public TextAppearanceSpan(String str, int i2, int i3, ColorStateList colorStateList, ColorStateList colorStateList2) {
        this.mTypeface = str;
        this.mStyle = i2;
        this.mTextSize = i3;
        this.mTextColor = colorStateList;
        this.mTextColorLink = colorStateList2;
    }

    public TextAppearanceSpan(Parcel parcel) {
        this.mTypeface = parcel.readString();
        this.mStyle = parcel.readInt();
        this.mTextSize = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.mTextColor = ColorStateList.CREATOR.createFromParcel(parcel);
        } else {
            this.mTextColor = null;
        }
        if (parcel.readInt() != 0) {
            this.mTextColorLink = ColorStateList.CREATOR.createFromParcel(parcel);
        } else {
            this.mTextColorLink = null;
        }
    }
}
