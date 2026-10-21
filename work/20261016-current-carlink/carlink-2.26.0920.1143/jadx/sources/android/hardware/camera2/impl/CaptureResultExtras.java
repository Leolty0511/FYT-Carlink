package android.hardware.camera2.impl;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class CaptureResultExtras implements Parcelable {
    public static final Parcelable.Creator<CaptureResultExtras> CREATOR = new Parcelable.Creator<CaptureResultExtras>() { // from class: android.hardware.camera2.impl.CaptureResultExtras.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CaptureResultExtras createFromParcel(Parcel parcel) {
            return new CaptureResultExtras(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CaptureResultExtras[] newArray(int i2) {
            return new CaptureResultExtras[i2];
        }
    };
    private int afTriggerId;
    private int errorStreamId;
    private long frameNumber;
    private int partialResultCount;
    private int precaptureTriggerId;
    private int requestId;
    private int subsequenceId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAfTriggerId() {
        return this.afTriggerId;
    }

    public int getErrorStreamId() {
        return this.errorStreamId;
    }

    public long getFrameNumber() {
        return this.frameNumber;
    }

    public int getPartialResultCount() {
        return this.partialResultCount;
    }

    public int getPrecaptureTriggerId() {
        return this.precaptureTriggerId;
    }

    public int getRequestId() {
        return this.requestId;
    }

    public int getSubsequenceId() {
        return this.subsequenceId;
    }

    public void readFromParcel(Parcel parcel) {
        this.requestId = parcel.readInt();
        this.subsequenceId = parcel.readInt();
        this.afTriggerId = parcel.readInt();
        this.precaptureTriggerId = parcel.readInt();
        this.frameNumber = parcel.readLong();
        this.partialResultCount = parcel.readInt();
        this.errorStreamId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.requestId);
        parcel.writeInt(this.subsequenceId);
        parcel.writeInt(this.afTriggerId);
        parcel.writeInt(this.precaptureTriggerId);
        parcel.writeLong(this.frameNumber);
        parcel.writeInt(this.partialResultCount);
        parcel.writeInt(this.errorStreamId);
    }

    private CaptureResultExtras(Parcel parcel) {
        readFromParcel(parcel);
    }

    public CaptureResultExtras(int i2, int i3, int i4, int i5, long j2, int i6, int i7) {
        this.requestId = i2;
        this.subsequenceId = i3;
        this.afTriggerId = i4;
        this.precaptureTriggerId = i5;
        this.frameNumber = j2;
        this.partialResultCount = i6;
        this.errorStreamId = i7;
    }
}
