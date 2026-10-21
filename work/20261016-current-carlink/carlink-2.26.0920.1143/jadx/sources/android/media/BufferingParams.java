package android.media;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class BufferingParams implements Parcelable {
    public static final int BUFFERING_MODE_NONE = 0;
    public static final int BUFFERING_MODE_SIZE_ONLY = 2;
    public static final int BUFFERING_MODE_TIME_ONLY = 1;
    public static final int BUFFERING_MODE_TIME_THEN_SIZE = 3;
    private static final int BUFFERING_NO_WATERMARK = -1;
    public static final Parcelable.Creator<BufferingParams> CREATOR = new Parcelable.Creator<BufferingParams>() { // from class: android.media.BufferingParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BufferingParams createFromParcel(Parcel parcel) {
            return new BufferingParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BufferingParams[] newArray(int i2) {
            return new BufferingParams[i2];
        }
    };
    private int mInitialBufferingMode;
    private int mInitialWatermarkKB;
    private int mInitialWatermarkMs;
    private int mRebufferingMode;
    private int mRebufferingWatermarkHighKB;
    private int mRebufferingWatermarkHighMs;
    private int mRebufferingWatermarkLowKB;
    private int mRebufferingWatermarkLowMs;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BufferingMode {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInitialBufferingMode() {
        return this.mInitialBufferingMode;
    }

    public int getInitialBufferingWatermarkKB() {
        return this.mInitialWatermarkKB;
    }

    public int getInitialBufferingWatermarkMs() {
        return this.mInitialWatermarkMs;
    }

    public int getRebufferingMode() {
        return this.mRebufferingMode;
    }

    public int getRebufferingWatermarkHighKB() {
        return this.mRebufferingWatermarkHighKB;
    }

    public int getRebufferingWatermarkHighMs() {
        return this.mRebufferingWatermarkHighMs;
    }

    public int getRebufferingWatermarkLowKB() {
        return this.mRebufferingWatermarkLowKB;
    }

    public int getRebufferingWatermarkLowMs() {
        return this.mRebufferingWatermarkLowMs;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mInitialBufferingMode);
        parcel.writeInt(this.mRebufferingMode);
        parcel.writeInt(this.mInitialWatermarkMs);
        parcel.writeInt(this.mInitialWatermarkKB);
        parcel.writeInt(this.mRebufferingWatermarkLowMs);
        parcel.writeInt(this.mRebufferingWatermarkHighMs);
        parcel.writeInt(this.mRebufferingWatermarkLowKB);
        parcel.writeInt(this.mRebufferingWatermarkHighKB);
    }

    private BufferingParams() {
        this.mInitialBufferingMode = 0;
        this.mRebufferingMode = 0;
        this.mInitialWatermarkMs = -1;
        this.mInitialWatermarkKB = -1;
        this.mRebufferingWatermarkLowMs = -1;
        this.mRebufferingWatermarkHighMs = -1;
        this.mRebufferingWatermarkLowKB = -1;
        this.mRebufferingWatermarkHighKB = -1;
    }

    public static class Builder {
        private int mInitialBufferingMode;
        private int mInitialWatermarkKB;
        private int mInitialWatermarkMs;
        private int mRebufferingMode;
        private int mRebufferingWatermarkHighKB;
        private int mRebufferingWatermarkHighMs;
        private int mRebufferingWatermarkLowKB;
        private int mRebufferingWatermarkLowMs;

        public Builder() {
            this.mInitialBufferingMode = 0;
            this.mRebufferingMode = 0;
            this.mInitialWatermarkMs = -1;
            this.mInitialWatermarkKB = -1;
            this.mRebufferingWatermarkLowMs = -1;
            this.mRebufferingWatermarkHighMs = -1;
            this.mRebufferingWatermarkLowKB = -1;
            this.mRebufferingWatermarkHighKB = -1;
        }

        private boolean isSizeBasedMode(int i2) {
            return i2 == 2 || i2 == 3;
        }

        private boolean isTimeBasedMode(int i2) {
            return i2 == 1 || i2 == 3;
        }

        public BufferingParams build() {
            if (isTimeBasedMode(this.mRebufferingMode) && this.mRebufferingWatermarkLowMs > this.mRebufferingWatermarkHighMs) {
                throw new IllegalStateException("Illegal watermark:" + this.mRebufferingWatermarkLowMs + " : " + this.mRebufferingWatermarkHighMs);
            }
            if (isSizeBasedMode(this.mRebufferingMode) && this.mRebufferingWatermarkLowKB > this.mRebufferingWatermarkHighKB) {
                throw new IllegalStateException("Illegal watermark:" + this.mRebufferingWatermarkLowKB + " : " + this.mRebufferingWatermarkHighKB);
            }
            BufferingParams bufferingParams = new BufferingParams();
            bufferingParams.mInitialBufferingMode = this.mInitialBufferingMode;
            bufferingParams.mRebufferingMode = this.mRebufferingMode;
            bufferingParams.mInitialWatermarkMs = this.mInitialWatermarkMs;
            bufferingParams.mInitialWatermarkKB = this.mInitialWatermarkKB;
            bufferingParams.mRebufferingWatermarkLowMs = this.mRebufferingWatermarkLowMs;
            bufferingParams.mRebufferingWatermarkHighMs = this.mRebufferingWatermarkHighMs;
            bufferingParams.mRebufferingWatermarkLowKB = this.mRebufferingWatermarkLowKB;
            bufferingParams.mRebufferingWatermarkHighKB = this.mRebufferingWatermarkHighKB;
            return bufferingParams;
        }

        public Builder setInitialBufferingMode(int i2) {
            if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException(c.d("Illegal buffering mode ", i2));
            }
            this.mInitialBufferingMode = i2;
            return this;
        }

        public Builder setInitialBufferingWatermarkKB(int i2) {
            this.mInitialWatermarkKB = i2;
            return this;
        }

        public Builder setInitialBufferingWatermarkMs(int i2) {
            this.mInitialWatermarkMs = i2;
            return this;
        }

        public Builder setRebufferingMode(int i2) {
            if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException(c.d("Illegal buffering mode ", i2));
            }
            this.mRebufferingMode = i2;
            return this;
        }

        public Builder setRebufferingWatermarkHighKB(int i2) {
            this.mRebufferingWatermarkHighKB = i2;
            return this;
        }

        public Builder setRebufferingWatermarkHighMs(int i2) {
            this.mRebufferingWatermarkHighMs = i2;
            return this;
        }

        public Builder setRebufferingWatermarkLowKB(int i2) {
            this.mRebufferingWatermarkLowKB = i2;
            return this;
        }

        public Builder setRebufferingWatermarkLowMs(int i2) {
            this.mRebufferingWatermarkLowMs = i2;
            return this;
        }

        public Builder setRebufferingWatermarksKB(int i2, int i3) {
            this.mRebufferingWatermarkLowKB = i2;
            this.mRebufferingWatermarkHighKB = i3;
            return this;
        }

        public Builder setRebufferingWatermarksMs(int i2, int i3) {
            this.mRebufferingWatermarkLowMs = i2;
            this.mRebufferingWatermarkHighMs = i3;
            return this;
        }

        public Builder(BufferingParams bufferingParams) {
            this.mInitialBufferingMode = 0;
            this.mRebufferingMode = 0;
            this.mInitialWatermarkMs = -1;
            this.mInitialWatermarkKB = -1;
            this.mRebufferingWatermarkLowMs = -1;
            this.mRebufferingWatermarkHighMs = -1;
            this.mRebufferingWatermarkLowKB = -1;
            this.mRebufferingWatermarkHighKB = -1;
            this.mInitialBufferingMode = bufferingParams.mInitialBufferingMode;
            this.mRebufferingMode = bufferingParams.mRebufferingMode;
            this.mInitialWatermarkMs = bufferingParams.mInitialWatermarkMs;
            this.mInitialWatermarkKB = bufferingParams.mInitialWatermarkKB;
            this.mRebufferingWatermarkLowMs = bufferingParams.mRebufferingWatermarkLowMs;
            this.mRebufferingWatermarkHighMs = bufferingParams.mRebufferingWatermarkHighMs;
            this.mRebufferingWatermarkLowKB = bufferingParams.mRebufferingWatermarkLowKB;
            this.mRebufferingWatermarkHighKB = bufferingParams.mRebufferingWatermarkHighKB;
        }
    }

    private BufferingParams(Parcel parcel) {
        this.mInitialBufferingMode = 0;
        this.mRebufferingMode = 0;
        this.mInitialWatermarkMs = -1;
        this.mInitialWatermarkKB = -1;
        this.mRebufferingWatermarkLowMs = -1;
        this.mRebufferingWatermarkHighMs = -1;
        this.mRebufferingWatermarkLowKB = -1;
        this.mRebufferingWatermarkHighKB = -1;
        this.mInitialBufferingMode = parcel.readInt();
        this.mRebufferingMode = parcel.readInt();
        this.mInitialWatermarkMs = parcel.readInt();
        this.mInitialWatermarkKB = parcel.readInt();
        this.mRebufferingWatermarkLowMs = parcel.readInt();
        this.mRebufferingWatermarkHighMs = parcel.readInt();
        this.mRebufferingWatermarkLowKB = parcel.readInt();
        this.mRebufferingWatermarkHighKB = parcel.readInt();
    }
}
