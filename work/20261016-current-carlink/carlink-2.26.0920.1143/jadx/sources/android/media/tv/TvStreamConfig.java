package android.media.tv;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class TvStreamConfig implements Parcelable {
    public static final Parcelable.Creator<TvStreamConfig> CREATOR = new Parcelable.Creator<TvStreamConfig>() { // from class: android.media.tv.TvStreamConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvStreamConfig createFromParcel(Parcel parcel) {
            try {
                return new Builder().streamId(parcel.readInt()).type(parcel.readInt()).maxWidth(parcel.readInt()).maxHeight(parcel.readInt()).generation(parcel.readInt()).build();
            } catch (Exception e2) {
                Log.e(TvStreamConfig.TAG, "Exception creating TvStreamConfig from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TvStreamConfig[] newArray(int i2) {
            return new TvStreamConfig[i2];
        }
    };
    public static final int STREAM_TYPE_BUFFER_PRODUCER = 2;
    public static final int STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE = 1;
    static final String TAG = "TvStreamConfig";
    private int mGeneration;
    private int mMaxHeight;
    private int mMaxWidth;
    private int mStreamId;
    private int mType;

    public static final class Builder {
        private Integer mGeneration;
        private Integer mMaxHeight;
        private Integer mMaxWidth;
        private Integer mStreamId;
        private Integer mType;

        public TvStreamConfig build() {
            if (this.mStreamId == null || this.mType == null || this.mMaxWidth == null || this.mMaxHeight == null || this.mGeneration == null) {
                throw new UnsupportedOperationException();
            }
            TvStreamConfig tvStreamConfig = new TvStreamConfig();
            tvStreamConfig.mStreamId = this.mStreamId.intValue();
            tvStreamConfig.mType = this.mType.intValue();
            tvStreamConfig.mMaxWidth = this.mMaxWidth.intValue();
            tvStreamConfig.mMaxHeight = this.mMaxHeight.intValue();
            tvStreamConfig.mGeneration = this.mGeneration.intValue();
            return tvStreamConfig;
        }

        public Builder generation(int i2) {
            this.mGeneration = Integer.valueOf(i2);
            return this;
        }

        public Builder maxHeight(int i2) {
            this.mMaxHeight = Integer.valueOf(i2);
            return this;
        }

        public Builder maxWidth(int i2) {
            this.mMaxWidth = Integer.valueOf(i2);
            return this;
        }

        public Builder streamId(int i2) {
            this.mStreamId = Integer.valueOf(i2);
            return this;
        }

        public Builder type(int i2) {
            this.mType = Integer.valueOf(i2);
            return this;
        }
    }

    private TvStreamConfig() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof TvStreamConfig)) {
            return false;
        }
        TvStreamConfig tvStreamConfig = (TvStreamConfig) obj;
        return tvStreamConfig.mGeneration == this.mGeneration && tvStreamConfig.mStreamId == this.mStreamId && tvStreamConfig.mType == this.mType && tvStreamConfig.mMaxWidth == this.mMaxWidth && tvStreamConfig.mMaxHeight == this.mMaxHeight;
    }

    public int getGeneration() {
        return this.mGeneration;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getStreamId() {
        return this.mStreamId;
    }

    public int getType() {
        return this.mType;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TvStreamConfig {mStreamId=");
        sb.append(this.mStreamId);
        sb.append(";mType=");
        sb.append(this.mType);
        sb.append(";mGeneration=");
        return c.m(sb, this.mGeneration, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mStreamId);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mMaxWidth);
        parcel.writeInt(this.mMaxHeight);
        parcel.writeInt(this.mGeneration);
    }
}
