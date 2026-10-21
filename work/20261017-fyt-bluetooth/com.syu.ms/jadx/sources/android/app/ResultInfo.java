package android.app;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ResultInfo implements Parcelable {
    public static final Parcelable.Creator<ResultInfo> CREATOR = new Parcelable.Creator<ResultInfo>() { // from class: android.app.ResultInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultInfo createFromParcel(Parcel parcel) {
            return new ResultInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResultInfo[] newArray(int i2) {
            return new ResultInfo[i2];
        }
    };
    public final Intent mData;
    public final int mRequestCode;
    public final int mResultCode;
    public final String mResultWho;

    public ResultInfo(String str, int i2, int i3, Intent intent) {
        this.mResultWho = str;
        this.mRequestCode = i2;
        this.mResultCode = i3;
        this.mData = intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ResultInfo{who=" + this.mResultWho + ", request=" + this.mRequestCode + ", result=" + this.mResultCode + ", data=" + this.mData + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mResultWho);
        parcel.writeInt(this.mRequestCode);
        parcel.writeInt(this.mResultCode);
        if (this.mData == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mData.writeToParcel(parcel, 0);
        }
    }

    public ResultInfo(Parcel parcel) {
        this.mResultWho = parcel.readString();
        this.mRequestCode = parcel.readInt();
        this.mResultCode = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.mData = Intent.CREATOR.createFromParcel(parcel);
        } else {
            this.mData = null;
        }
    }
}
