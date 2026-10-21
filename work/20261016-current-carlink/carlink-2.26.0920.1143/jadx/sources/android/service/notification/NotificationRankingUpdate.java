package android.service.notification;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class NotificationRankingUpdate implements Parcelable {
    public static final Parcelable.Creator<NotificationRankingUpdate> CREATOR = new Parcelable.Creator<NotificationRankingUpdate>() { // from class: android.service.notification.NotificationRankingUpdate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationRankingUpdate createFromParcel(Parcel parcel) {
            return new NotificationRankingUpdate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationRankingUpdate[] newArray(int i2) {
            return new NotificationRankingUpdate[i2];
        }
    };
    private final Bundle mChannels;
    private final int[] mImportance;
    private final Bundle mImportanceExplanation;
    private final String[] mInterceptedKeys;
    private final String[] mKeys;
    private final Bundle mOverrideGroupKeys;
    private final Bundle mOverridePeople;
    private final Bundle mShowBadge;
    private final Bundle mSnoozeCriteria;
    private final Bundle mSuppressedVisualEffects;
    private final Bundle mVisibilityOverrides;

    public NotificationRankingUpdate(String[] strArr, String[] strArr2, Bundle bundle, Bundle bundle2, int[] iArr, Bundle bundle3, Bundle bundle4, Bundle bundle5, Bundle bundle6, Bundle bundle7, Bundle bundle8) {
        this.mKeys = strArr;
        this.mInterceptedKeys = strArr2;
        this.mVisibilityOverrides = bundle;
        this.mSuppressedVisualEffects = bundle2;
        this.mImportance = iArr;
        this.mImportanceExplanation = bundle3;
        this.mOverrideGroupKeys = bundle4;
        this.mChannels = bundle5;
        this.mOverridePeople = bundle6;
        this.mSnoozeCriteria = bundle7;
        this.mShowBadge = bundle8;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getChannels() {
        return this.mChannels;
    }

    public int[] getImportance() {
        return this.mImportance;
    }

    public Bundle getImportanceExplanation() {
        return this.mImportanceExplanation;
    }

    public String[] getInterceptedKeys() {
        return this.mInterceptedKeys;
    }

    public String[] getOrderedKeys() {
        return this.mKeys;
    }

    public Bundle getOverrideGroupKeys() {
        return this.mOverrideGroupKeys;
    }

    public Bundle getOverridePeople() {
        return this.mOverridePeople;
    }

    public Bundle getShowBadge() {
        return this.mShowBadge;
    }

    public Bundle getSnoozeCriteria() {
        return this.mSnoozeCriteria;
    }

    public Bundle getSuppressedVisualEffects() {
        return this.mSuppressedVisualEffects;
    }

    public Bundle getVisibilityOverrides() {
        return this.mVisibilityOverrides;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringArray(this.mKeys);
        parcel.writeStringArray(this.mInterceptedKeys);
        parcel.writeBundle(this.mVisibilityOverrides);
        parcel.writeBundle(this.mSuppressedVisualEffects);
        parcel.writeIntArray(this.mImportance);
        parcel.writeBundle(this.mImportanceExplanation);
        parcel.writeBundle(this.mOverrideGroupKeys);
        parcel.writeBundle(this.mChannels);
        parcel.writeBundle(this.mOverridePeople);
        parcel.writeBundle(this.mSnoozeCriteria);
        parcel.writeBundle(this.mShowBadge);
    }

    public NotificationRankingUpdate(Parcel parcel) {
        String[] stringArray = parcel.readStringArray();
        this.mKeys = stringArray;
        this.mInterceptedKeys = parcel.readStringArray();
        this.mVisibilityOverrides = parcel.readBundle();
        this.mSuppressedVisualEffects = parcel.readBundle();
        int[] iArr = new int[stringArray.length];
        this.mImportance = iArr;
        parcel.readIntArray(iArr);
        this.mImportanceExplanation = parcel.readBundle();
        this.mOverrideGroupKeys = parcel.readBundle();
        this.mChannels = parcel.readBundle();
        this.mOverridePeople = parcel.readBundle();
        this.mSnoozeCriteria = parcel.readBundle();
        this.mShowBadge = parcel.readBundle();
    }
}
