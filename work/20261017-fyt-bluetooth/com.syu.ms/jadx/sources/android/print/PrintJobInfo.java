package android.print;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class PrintJobInfo implements Parcelable {
    public static final Parcelable.Creator<PrintJobInfo> CREATOR = new Parcelable.Creator<PrintJobInfo>() { // from class: android.print.PrintJobInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintJobInfo createFromParcel(Parcel parcel) {
            return new PrintJobInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintJobInfo[] newArray(int i2) {
            return new PrintJobInfo[i2];
        }
    };
    public static final int STATE_ANY = -1;
    public static final int STATE_ANY_ACTIVE = -3;
    public static final int STATE_ANY_SCHEDULED = -4;
    public static final int STATE_ANY_VISIBLE_TO_CLIENTS = -2;
    public static final int STATE_BLOCKED = 4;
    public static final int STATE_CANCELED = 7;
    public static final int STATE_COMPLETED = 5;
    public static final int STATE_CREATED = 1;
    public static final int STATE_FAILED = 6;
    public static final int STATE_QUEUED = 2;
    public static final int STATE_STARTED = 3;
    private Bundle mAdvancedOptions;
    private int mAppId;
    private PrintAttributes mAttributes;
    private boolean mCanceling;
    private int mCopies;
    private long mCreationTime;
    private PrintDocumentInfo mDocumentInfo;
    private PrintJobId mId;
    private String mLabel;
    private PageRange[] mPageRanges;
    private PrinterId mPrinterId;
    private String mPrinterName;
    private int mState;
    private String mStateReason;
    private String mTag;

    public static String stateToString(int i2) {
        switch (i2) {
            case 1:
                return "STATE_CREATED";
            case 2:
                return "STATE_QUEUED";
            case 3:
                return "STATE_STARTED";
            case 4:
                return "STATE_BLOCKED";
            case 5:
                return "STATE_COMPLETED";
            case 6:
                return "STATE_FAILED";
            case 7:
                return "STATE_CANCELED";
            default:
                return "STATE_UNKNOWN";
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAdvancedIntOption(String str) {
        Bundle bundle = this.mAdvancedOptions;
        if (bundle != null) {
            return bundle.getInt(str);
        }
        return 0;
    }

    public Bundle getAdvancedOptions() {
        return this.mAdvancedOptions;
    }

    public String getAdvancedStringOption(String str) {
        Bundle bundle = this.mAdvancedOptions;
        if (bundle != null) {
            return bundle.getString(str);
        }
        return null;
    }

    public int getAppId() {
        return this.mAppId;
    }

    public PrintAttributes getAttributes() {
        return this.mAttributes;
    }

    public int getCopies() {
        return this.mCopies;
    }

    public long getCreationTime() {
        return this.mCreationTime;
    }

    public PrintDocumentInfo getDocumentInfo() {
        return this.mDocumentInfo;
    }

    public PrintJobId getId() {
        return this.mId;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public PageRange[] getPages() {
        return this.mPageRanges;
    }

    public PrinterId getPrinterId() {
        return this.mPrinterId;
    }

    public String getPrinterName() {
        return this.mPrinterName;
    }

    public int getState() {
        return this.mState;
    }

    public String getStateReason() {
        return this.mStateReason;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean hasAdvancedOption(String str) {
        Bundle bundle = this.mAdvancedOptions;
        return bundle != null && bundle.containsKey(str);
    }

    public boolean isCancelling() {
        return this.mCanceling;
    }

    public void setAdvancedOptions(Bundle bundle) {
        this.mAdvancedOptions = bundle;
    }

    public void setAppId(int i2) {
        this.mAppId = i2;
    }

    public void setAttributes(PrintAttributes printAttributes) {
        this.mAttributes = printAttributes;
    }

    public void setCancelling(boolean z2) {
        this.mCanceling = z2;
    }

    public void setCopies(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("Copies must be more than one.");
        }
        this.mCopies = i2;
    }

    public void setCreationTime(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("creationTime must be non-negative.");
        }
        this.mCreationTime = j2;
    }

    public void setDocumentInfo(PrintDocumentInfo printDocumentInfo) {
        this.mDocumentInfo = printDocumentInfo;
    }

    public void setId(PrintJobId printJobId) {
        this.mId = printJobId;
    }

    public void setLabel(String str) {
        this.mLabel = str;
    }

    public void setPages(PageRange[] pageRangeArr) {
        this.mPageRanges = pageRangeArr;
    }

    public void setPrinterId(PrinterId printerId) {
        this.mPrinterId = printerId;
    }

    public void setPrinterName(String str) {
        this.mPrinterName = str;
    }

    public void setState(int i2) {
        this.mState = i2;
    }

    public void setStateReason(String str) {
        this.mStateReason = str;
    }

    public void setTag(String str) {
        this.mTag = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PrintJobInfo{");
        sb.append("label: ");
        sb.append(this.mLabel);
        sb.append(", id: ");
        sb.append(this.mId);
        sb.append(", state: ");
        sb.append(stateToString(this.mState));
        sb.append(", printer: " + this.mPrinterId);
        sb.append(", tag: ");
        sb.append(this.mTag);
        sb.append(", creationTime: " + this.mCreationTime);
        sb.append(", copies: ");
        sb.append(this.mCopies);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(", attributes: ");
        PrintAttributes printAttributes = this.mAttributes;
        sb2.append(printAttributes != null ? printAttributes.toString() : null);
        sb.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(", documentInfo: ");
        PrintDocumentInfo printDocumentInfo = this.mDocumentInfo;
        sb3.append(printDocumentInfo != null ? printDocumentInfo.toString() : null);
        sb.append(sb3.toString());
        sb.append(", cancelling: " + this.mCanceling);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(", pages: ");
        PageRange[] pageRangeArr = this.mPageRanges;
        sb4.append(pageRangeArr != null ? Arrays.toString(pageRangeArr) : null);
        sb.append(sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(", hasAdvancedOptions: ");
        sb5.append(this.mAdvancedOptions != null);
        sb.append(sb5.toString());
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mId, i2);
        parcel.writeString(this.mLabel);
        parcel.writeParcelable(this.mPrinterId, i2);
        parcel.writeString(this.mPrinterName);
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mAppId);
        parcel.writeString(this.mTag);
        parcel.writeLong(this.mCreationTime);
        parcel.writeInt(this.mCopies);
        parcel.writeString(this.mStateReason);
        parcel.writeParcelableArray(this.mPageRanges, i2);
        parcel.writeParcelable(this.mAttributes, i2);
        parcel.writeParcelable(this.mDocumentInfo, 0);
        parcel.writeInt(this.mCanceling ? 1 : 0);
        parcel.writeBundle(this.mAdvancedOptions);
    }

    public PrintJobInfo() {
    }

    public static final class Builder {
        private final PrintJobInfo mPrototype;

        public Builder(PrintJobInfo printJobInfo) {
            this.mPrototype = printJobInfo != null ? new PrintJobInfo(printJobInfo) : new PrintJobInfo();
        }

        public PrintJobInfo build() {
            return this.mPrototype;
        }

        public void putAdvancedOption(String str, String str2) {
            if (this.mPrototype.mAdvancedOptions == null) {
                this.mPrototype.mAdvancedOptions = new Bundle();
            }
            this.mPrototype.mAdvancedOptions.putString(str, str2);
        }

        public void setAttributes(PrintAttributes printAttributes) {
            this.mPrototype.mAttributes = printAttributes;
        }

        public void setCopies(int i2) {
            this.mPrototype.mCopies = i2;
        }

        public void setPages(PageRange[] pageRangeArr) {
            this.mPrototype.mPageRanges = pageRangeArr;
        }

        public void putAdvancedOption(String str, int i2) {
            if (this.mPrototype.mAdvancedOptions == null) {
                this.mPrototype.mAdvancedOptions = new Bundle();
            }
            this.mPrototype.mAdvancedOptions.putInt(str, i2);
        }
    }

    public PrintJobInfo(PrintJobInfo printJobInfo) {
        this.mId = printJobInfo.mId;
        this.mLabel = printJobInfo.mLabel;
        this.mPrinterId = printJobInfo.mPrinterId;
        this.mPrinterName = printJobInfo.mPrinterName;
        this.mState = printJobInfo.mState;
        this.mAppId = printJobInfo.mAppId;
        this.mTag = printJobInfo.mTag;
        this.mCreationTime = printJobInfo.mCreationTime;
        this.mCopies = printJobInfo.mCopies;
        this.mStateReason = printJobInfo.mStateReason;
        this.mPageRanges = printJobInfo.mPageRanges;
        this.mAttributes = printJobInfo.mAttributes;
        this.mDocumentInfo = printJobInfo.mDocumentInfo;
        this.mCanceling = printJobInfo.mCanceling;
        this.mAdvancedOptions = printJobInfo.mAdvancedOptions;
    }

    private PrintJobInfo(Parcel parcel) {
        this.mId = (PrintJobId) parcel.readParcelable(null);
        this.mLabel = parcel.readString();
        this.mPrinterId = (PrinterId) parcel.readParcelable(null);
        this.mPrinterName = parcel.readString();
        this.mState = parcel.readInt();
        this.mAppId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mCreationTime = parcel.readLong();
        this.mCopies = parcel.readInt();
        this.mStateReason = parcel.readString();
        Parcelable[] parcelableArray = parcel.readParcelableArray(null);
        if (parcelableArray != null) {
            this.mPageRanges = new PageRange[parcelableArray.length];
            for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                this.mPageRanges[i2] = (PageRange) parcelableArray[i2];
            }
        }
        this.mAttributes = (PrintAttributes) parcel.readParcelable(null);
        this.mDocumentInfo = (PrintDocumentInfo) parcel.readParcelable(null);
        this.mCanceling = parcel.readInt() == 1;
        this.mAdvancedOptions = parcel.readBundle();
    }
}
