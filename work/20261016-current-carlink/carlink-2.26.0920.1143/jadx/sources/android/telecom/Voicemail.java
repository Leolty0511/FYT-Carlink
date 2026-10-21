package android.telecom;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class Voicemail implements Parcelable {
    public static final Parcelable.Creator<Voicemail> CREATOR = new Parcelable.Creator<Voicemail>() { // from class: android.telecom.Voicemail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Voicemail createFromParcel(Parcel parcel) {
            return new Voicemail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Voicemail[] newArray(int i2) {
            return new Voicemail[i2];
        }
    };
    private final Long mDuration;
    private final Boolean mHasContent;
    private final Long mId;
    private final Boolean mIsRead;
    private final String mNumber;
    private final PhoneAccountHandle mPhoneAccount;
    private final String mProviderData;
    private final String mSource;
    private final Long mTimestamp;
    private final String mTranscription;
    private final Uri mUri;

    public static class Builder {
        private Long mBuilderDuration;
        private boolean mBuilderHasContent;
        private Long mBuilderId;
        private Boolean mBuilderIsRead;
        private String mBuilderNumber;
        private PhoneAccountHandle mBuilderPhoneAccount;
        private String mBuilderSourceData;
        private String mBuilderSourcePackage;
        private Long mBuilderTimestamp;
        private String mBuilderTranscription;
        private Uri mBuilderUri;

        public Voicemail build() {
            Long l2 = this.mBuilderId;
            this.mBuilderId = Long.valueOf(l2 == null ? -1L : l2.longValue());
            Long l3 = this.mBuilderTimestamp;
            this.mBuilderTimestamp = Long.valueOf(l3 == null ? 0L : l3.longValue());
            Long l4 = this.mBuilderDuration;
            this.mBuilderDuration = Long.valueOf(l4 != null ? l4.longValue() : 0L);
            Boolean bool = this.mBuilderIsRead;
            this.mBuilderIsRead = Boolean.valueOf(bool == null ? false : bool.booleanValue());
            return new Voicemail(this.mBuilderTimestamp, this.mBuilderNumber, this.mBuilderPhoneAccount, this.mBuilderId, this.mBuilderDuration, this.mBuilderSourcePackage, this.mBuilderSourceData, this.mBuilderUri, this.mBuilderIsRead, Boolean.valueOf(this.mBuilderHasContent), this.mBuilderTranscription);
        }

        public Builder setDuration(long j2) {
            this.mBuilderDuration = Long.valueOf(j2);
            return this;
        }

        public Builder setHasContent(boolean z2) {
            this.mBuilderHasContent = z2;
            return this;
        }

        public Builder setId(long j2) {
            this.mBuilderId = Long.valueOf(j2);
            return this;
        }

        public Builder setIsRead(boolean z2) {
            this.mBuilderIsRead = Boolean.valueOf(z2);
            return this;
        }

        public Builder setNumber(String str) {
            this.mBuilderNumber = str;
            return this;
        }

        public Builder setPhoneAccount(PhoneAccountHandle phoneAccountHandle) {
            this.mBuilderPhoneAccount = phoneAccountHandle;
            return this;
        }

        public Builder setSourceData(String str) {
            this.mBuilderSourceData = str;
            return this;
        }

        public Builder setSourcePackage(String str) {
            this.mBuilderSourcePackage = str;
            return this;
        }

        public Builder setTimestamp(long j2) {
            this.mBuilderTimestamp = Long.valueOf(j2);
            return this;
        }

        public Builder setTranscription(String str) {
            this.mBuilderTranscription = str;
            return this;
        }

        public Builder setUri(Uri uri) {
            this.mBuilderUri = uri;
            return this;
        }

        private Builder() {
        }
    }

    public static Builder createForInsertion(long j2, String str) {
        return new Builder().setNumber(str).setTimestamp(j2);
    }

    public static Builder createForUpdate(long j2, String str) {
        return new Builder().setId(j2).setSourceData(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getDuration() {
        return this.mDuration.longValue();
    }

    public long getId() {
        return this.mId.longValue();
    }

    public String getNumber() {
        return this.mNumber;
    }

    public PhoneAccountHandle getPhoneAccount() {
        return this.mPhoneAccount;
    }

    public String getSourceData() {
        return this.mProviderData;
    }

    public String getSourcePackage() {
        return this.mSource;
    }

    public long getTimestampMillis() {
        return this.mTimestamp.longValue();
    }

    public String getTranscription() {
        return this.mTranscription;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public boolean hasContent() {
        return this.mHasContent.booleanValue();
    }

    public boolean isRead() {
        return this.mIsRead.booleanValue();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mTimestamp.longValue());
        parcel.writeCharSequence(this.mNumber);
        if (this.mPhoneAccount == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mPhoneAccount.writeToParcel(parcel, i2);
        }
        parcel.writeLong(this.mId.longValue());
        parcel.writeLong(this.mDuration.longValue());
        parcel.writeCharSequence(this.mSource);
        parcel.writeCharSequence(this.mProviderData);
        if (this.mUri == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mUri.writeToParcel(parcel, i2);
        }
        if (this.mIsRead.booleanValue()) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
        if (this.mHasContent.booleanValue()) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeCharSequence(this.mTranscription);
    }

    private Voicemail(Long l2, String str, PhoneAccountHandle phoneAccountHandle, Long l3, Long l4, String str2, String str3, Uri uri, Boolean bool, Boolean bool2, String str4) {
        this.mTimestamp = l2;
        this.mNumber = str;
        this.mPhoneAccount = phoneAccountHandle;
        this.mId = l3;
        this.mDuration = l4;
        this.mSource = str2;
        this.mProviderData = str3;
        this.mUri = uri;
        this.mIsRead = bool;
        this.mHasContent = bool2;
        this.mTranscription = str4;
    }

    private Voicemail(Parcel parcel) {
        this.mTimestamp = Long.valueOf(parcel.readLong());
        this.mNumber = (String) parcel.readCharSequence();
        if (parcel.readInt() > 0) {
            this.mPhoneAccount = PhoneAccountHandle.CREATOR.createFromParcel(parcel);
        } else {
            this.mPhoneAccount = null;
        }
        this.mId = Long.valueOf(parcel.readLong());
        this.mDuration = Long.valueOf(parcel.readLong());
        this.mSource = (String) parcel.readCharSequence();
        this.mProviderData = (String) parcel.readCharSequence();
        if (parcel.readInt() > 0) {
            this.mUri = Uri.CREATOR.createFromParcel(parcel);
        } else {
            this.mUri = null;
        }
        this.mIsRead = Boolean.valueOf(parcel.readInt() > 0);
        this.mHasContent = Boolean.valueOf(parcel.readInt() > 0);
        this.mTranscription = (String) parcel.readCharSequence();
    }
}
