package android.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class Rating implements Parcelable {
    public static final Parcelable.Creator<Rating> CREATOR = new Parcelable.Creator<Rating>() { // from class: android.media.Rating.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Rating createFromParcel(Parcel parcel) {
            return new Rating(parcel.readInt(), parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Rating[] newArray(int i2) {
            return new Rating[i2];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private final int mRatingStyle;
    private final float mRatingValue;

    public static Rating newHeartRating(boolean z2) {
        return new Rating(1, z2 ? 1.0f : 0.0f);
    }

    public static Rating newPercentageRating(float f2) {
        if (f2 >= 0.0f && f2 <= 100.0f) {
            return new Rating(6, f2);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static Rating newStarRating(int i2, float f2) {
        float f3;
        if (i2 == 3) {
            f3 = 3.0f;
        } else if (i2 == 4) {
            f3 = 4.0f;
        } else {
            if (i2 != 5) {
                Log.e(TAG, "Invalid rating style (" + i2 + ") for a star rating");
                return null;
            }
            f3 = 5.0f;
        }
        if (f2 >= 0.0f && f2 <= f3) {
            return new Rating(i2, f2);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    public static Rating newThumbRating(boolean z2) {
        return new Rating(2, z2 ? 1.0f : 0.0f);
    }

    public static Rating newUnratedRating(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new Rating(i2, -1.0f);
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        if (this.mRatingStyle == 6 && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public float getStarRating() {
        int i2 = this.mRatingStyle;
        if ((i2 == 3 || i2 == 4 || i2 == 5) && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == 1 && this.mRatingValue == 1.0f;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == 2 && this.mRatingValue == 1.0f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.mRatingStyle);
        sb.append(" rating=");
        float f2 = this.mRatingValue;
        sb.append(f2 < 0.0f ? "unrated" : String.valueOf(f2));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }

    private Rating(int i2, float f2) {
        this.mRatingStyle = i2;
        this.mRatingValue = f2;
    }
}
