package android.webkit;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class WebViewProviderInfo implements Parcelable {
    public static final Parcelable.Creator<WebViewProviderInfo> CREATOR = new Parcelable.Creator<WebViewProviderInfo>() { // from class: android.webkit.WebViewProviderInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WebViewProviderInfo createFromParcel(Parcel parcel) {
            return new WebViewProviderInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WebViewProviderInfo[] newArray(int i2) {
            return new WebViewProviderInfo[i2];
        }
    };
    public final boolean availableByDefault;
    public final String description;
    public final boolean isFallback;
    public final String packageName;
    public final String[] signatures;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.description);
        parcel.writeInt(this.availableByDefault ? 1 : 0);
        parcel.writeInt(this.isFallback ? 1 : 0);
        parcel.writeStringArray(this.signatures);
    }

    public WebViewProviderInfo(String str, String str2, boolean z2, boolean z3, String[] strArr) {
        this.packageName = str;
        this.description = str2;
        this.availableByDefault = z2;
        this.isFallback = z3;
        this.signatures = strArr;
    }

    private WebViewProviderInfo(Parcel parcel) {
        this.packageName = parcel.readString();
        this.description = parcel.readString();
        this.availableByDefault = parcel.readInt() > 0;
        this.isFallback = parcel.readInt() > 0;
        this.signatures = parcel.createStringArray();
    }
}
