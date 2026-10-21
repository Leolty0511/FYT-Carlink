package android.content.pm;

import android.accessibilityservice.c;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ShortcutInfo implements Parcelable {
    private static final String ANDROID_PACKAGE_NAME = "android";
    public static final int CLONE_REMOVE_FOR_CREATOR = 9;
    public static final int CLONE_REMOVE_FOR_LAUNCHER = 11;
    public static final int CLONE_REMOVE_FOR_LAUNCHER_APPROVAL = 10;
    private static final int CLONE_REMOVE_ICON = 1;
    private static final int CLONE_REMOVE_INTENT = 2;
    public static final int CLONE_REMOVE_NON_KEY_INFO = 4;
    public static final int CLONE_REMOVE_RES_NAMES = 8;
    public static final Parcelable.Creator<ShortcutInfo> CREATOR = new Parcelable.Creator<ShortcutInfo>() { // from class: android.content.pm.ShortcutInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShortcutInfo createFromParcel(Parcel parcel) {
            return new ShortcutInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShortcutInfo[] newArray(int i2) {
            return new ShortcutInfo[i2];
        }
    };
    public static final int FLAG_ADAPTIVE_BITMAP = 512;
    public static final int FLAG_DISABLED = 64;
    public static final int FLAG_DYNAMIC = 1;
    public static final int FLAG_HAS_ICON_FILE = 8;
    public static final int FLAG_HAS_ICON_RES = 4;
    public static final int FLAG_ICON_FILE_PENDING_SAVE = 2048;
    public static final int FLAG_IMMUTABLE = 256;
    public static final int FLAG_KEY_FIELDS_ONLY = 16;
    public static final int FLAG_MANIFEST = 32;
    public static final int FLAG_PINNED = 2;
    public static final int FLAG_RETURNED_BY_SERVICE = 1024;
    public static final int FLAG_STRINGS_RESOLVED = 128;
    private static final int IMPLICIT_RANK_MASK = Integer.MAX_VALUE;
    private static final int RANK_CHANGED_BIT = Integer.MIN_VALUE;
    public static final int RANK_NOT_SET = Integer.MAX_VALUE;
    private static final String RES_TYPE_STRING = "string";
    public static final String SHORTCUT_CATEGORY_CONVERSATION = "android.shortcut.conversation";
    static final String TAG = "Shortcut";
    private ComponentName mActivity;
    private String mBitmapPath;
    private ArraySet<String> mCategories;
    private CharSequence mDisabledMessage;
    private int mDisabledMessageResId;
    private String mDisabledMessageResName;
    private PersistableBundle mExtras;
    private int mFlags;
    private Icon mIcon;
    private int mIconResId;
    private String mIconResName;
    private final String mId;
    private int mImplicitRank;
    private PersistableBundle[] mIntentPersistableExtrases;
    private Intent[] mIntents;
    private long mLastChangedTimestamp;
    private final String mPackageName;
    private int mRank;
    private CharSequence mText;
    private int mTextResId;
    private String mTextResName;
    private CharSequence mTitle;
    private int mTitleResId;
    private String mTitleResName;
    private final int mUserId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CloneFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShortcutFlags {
    }

    private static ArraySet<String> cloneCategories(Set<String> set) {
        if (set == null) {
            return null;
        }
        ArraySet<String> arraySet = new ArraySet<>(set.size());
        for (String str : set) {
            if (!TextUtils.isEmpty(str)) {
                arraySet.add(str.toString().intern());
            }
        }
        return arraySet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent[] cloneIntents(Intent[] intentArr) {
        if (intentArr == null) {
            return null;
        }
        int length = intentArr.length;
        Intent[] intentArr2 = new Intent[length];
        for (int i2 = 0; i2 < length; i2++) {
            if (intentArr[i2] != null) {
                intentArr2[i2] = new Intent(intentArr[i2]);
            }
        }
        return intentArr2;
    }

    private static PersistableBundle[] clonePersistableBundle(PersistableBundle[] persistableBundleArr) {
        if (persistableBundleArr == null) {
            return null;
        }
        int length = persistableBundleArr.length;
        PersistableBundle[] persistableBundleArr2 = new PersistableBundle[length];
        for (int i2 = 0; i2 < length; i2++) {
            if (persistableBundleArr[i2] != null) {
                persistableBundleArr2[i2] = new PersistableBundle(persistableBundleArr[i2]);
            }
        }
        return persistableBundleArr2;
    }

    private void fixUpIntentExtras() {
        Intent[] intentArr = this.mIntents;
        if (intentArr == null) {
            this.mIntentPersistableExtrases = null;
            return;
        }
        this.mIntentPersistableExtrases = new PersistableBundle[intentArr.length];
        int i2 = 0;
        while (true) {
            Intent[] intentArr2 = this.mIntents;
            if (i2 >= intentArr2.length) {
                return;
            }
            Intent intent = intentArr2[i2];
            Bundle extras = intent.getExtras();
            if (extras == null) {
                this.mIntentPersistableExtrases[i2] = null;
            } else {
                this.mIntentPersistableExtrases[i2] = new PersistableBundle(extras);
                intent.replaceExtras((Bundle) null);
            }
            i2++;
        }
    }

    public static IllegalArgumentException getInvalidIconException() {
        return new IllegalArgumentException("Unsupported icon type: only the bitmap and resource types are supported");
    }

    public static String getResourceEntryName(String str) {
        int iIndexOf = str.indexOf(47);
        if (iIndexOf < 0) {
            return null;
        }
        return str.substring(iIndexOf + 1);
    }

    public static String getResourcePackageName(String str) {
        int iIndexOf = str.indexOf(58);
        if (iIndexOf < 0) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    private CharSequence getResourceString(Resources resources, int i2, CharSequence charSequence) {
        try {
            return resources.getString(i2);
        } catch (Resources.NotFoundException unused) {
            StringBuilder sbS = c.s("Resource for ID=", i2, " not found in package ");
            sbS.append(this.mPackageName);
            Log.e(TAG, sbS.toString());
            return charSequence;
        }
    }

    public static String getResourceTypeAndEntryName(String str) {
        int iIndexOf = str.indexOf(58);
        if (iIndexOf < 0) {
            return null;
        }
        return str.substring(iIndexOf + 1);
    }

    public static String getResourceTypeName(String str) {
        int i2;
        int iIndexOf;
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 >= 0 && (iIndexOf = str.indexOf(47, (i2 = iIndexOf2 + 1))) >= 0) {
            return str.substring(i2, iIndexOf);
        }
        return null;
    }

    public static int lookUpResourceId(Resources resources, String str, String str2, String str3) {
        try {
            if (str == null) {
                return 0;
            }
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return resources.getIdentifier(str, str2, str3);
            }
        } catch (Resources.NotFoundException unused2) {
            Log.e(TAG, "Resource ID for name=" + str + " not found in package " + str3);
            return 0;
        }
    }

    public static String lookUpResourceName(Resources resources, int i2, boolean z2, String str) {
        if (i2 == 0) {
            return null;
        }
        try {
            String resourceName = resources.getResourceName(i2);
            if ("android".equals(getResourcePackageName(resourceName))) {
                return String.valueOf(i2);
            }
            return z2 ? getResourceTypeAndEntryName(resourceName) : getResourceEntryName(resourceName);
        } catch (Resources.NotFoundException unused) {
            Log.e(TAG, "Resource name for ID=" + i2 + " not found in package " + str + ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource.");
            return null;
        }
    }

    public static Intent setIntentExtras(Intent intent, PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            intent.replaceExtras((Bundle) null);
        } else {
            intent.replaceExtras(new Bundle(persistableBundle));
        }
        return intent;
    }

    private String toStringInner(boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder("ShortcutInfo {id=");
        sb.append(z2 ? "***" : this.mId);
        sb.append(", flags=0x");
        sb.append(Integer.toHexString(this.mFlags));
        sb.append(" [");
        if (!isEnabled()) {
            sb.append("X");
        }
        if (isImmutable()) {
            sb.append("Im");
        }
        if (isManifestShortcut()) {
            sb.append("M");
        }
        if (isDynamic()) {
            sb.append("D");
        }
        if (isPinned()) {
            sb.append("P");
        }
        if (hasIconFile()) {
            sb.append("If");
        }
        if (isIconPendingSave()) {
            sb.append("^");
        }
        if (hasIconResource()) {
            sb.append("Ir");
        }
        if (hasKeyFieldsOnly()) {
            sb.append("K");
        }
        if (hasStringResourcesResolved()) {
            sb.append("Sr");
        }
        if (isReturnedByServer()) {
            sb.append("V");
        }
        sb.append("], packageName=");
        sb.append(this.mPackageName);
        sb.append(", activity=");
        sb.append(this.mActivity);
        sb.append(", shortLabel=");
        sb.append(z2 ? "***" : this.mTitle);
        sb.append(", resId=");
        sb.append(this.mTitleResId);
        sb.append("[");
        sb.append(this.mTitleResName);
        sb.append("], longLabel=");
        sb.append(z2 ? "***" : this.mText);
        sb.append(", resId=");
        sb.append(this.mTextResId);
        sb.append("[");
        sb.append(this.mTextResName);
        sb.append("], disabledMessage=");
        sb.append(z2 ? "***" : this.mDisabledMessage);
        sb.append(", resId=");
        sb.append(this.mDisabledMessageResId);
        sb.append("[");
        sb.append(this.mDisabledMessageResName);
        sb.append("], categories=");
        sb.append(this.mCategories);
        sb.append(", icon=");
        sb.append(this.mIcon);
        sb.append(", rank=");
        sb.append(this.mRank);
        sb.append(", timestamp=");
        sb.append(this.mLastChangedTimestamp);
        sb.append(", intents=");
        Intent[] intentArr = this.mIntents;
        if (intentArr == null) {
            sb.append("null");
        } else if (z2) {
            sb.append("size:");
            sb.append(this.mIntents.length);
        } else {
            int length = intentArr.length;
            sb.append("[");
            String str = "";
            int i2 = 0;
            while (i2 < length) {
                sb.append(str);
                sb.append(this.mIntents[i2]);
                sb.append("/");
                sb.append(this.mIntentPersistableExtrases[i2]);
                i2++;
                str = ", ";
            }
            sb.append("]");
        }
        sb.append(", extras=");
        sb.append(this.mExtras);
        if (z3) {
            sb.append(", iconRes=");
            sb.append(this.mIconResId);
            sb.append("[");
            sb.append(this.mIconResName);
            sb.append("], bitmapPath=");
            sb.append(this.mBitmapPath);
        }
        sb.append("}");
        return sb.toString();
    }

    public static Icon validateIcon(Icon icon) {
        int type = icon.getType();
        if (type != 1 && type != 2 && type != 5) {
            throw getInvalidIconException();
        }
        if (icon.hasTint()) {
            throw new IllegalArgumentException("Icons with tints are not supported");
        }
        return icon;
    }

    public void addFlags(int i2) {
        this.mFlags = i2 | this.mFlags;
    }

    public void clearFlags(int i2) {
        this.mFlags = (~i2) & this.mFlags;
    }

    public void clearIcon() {
        this.mIcon = null;
    }

    public void clearIconPendingSave() {
        clearFlags(2048);
    }

    public void clearImplicitRankAndRankChangedFlag() {
        this.mImplicitRank = 0;
    }

    public ShortcutInfo clone(int i2) {
        return new ShortcutInfo(this, i2);
    }

    public void copyNonNullFieldsFrom(ShortcutInfo shortcutInfo) {
        ensureUpdatableWith(shortcutInfo);
        ComponentName componentName = shortcutInfo.mActivity;
        if (componentName != null) {
            this.mActivity = componentName;
        }
        Icon icon = shortcutInfo.mIcon;
        if (icon != null) {
            this.mIcon = icon;
            this.mIconResId = 0;
            this.mIconResName = null;
            this.mBitmapPath = null;
        }
        CharSequence charSequence = shortcutInfo.mTitle;
        if (charSequence != null) {
            this.mTitle = charSequence;
            this.mTitleResId = 0;
            this.mTitleResName = null;
        } else {
            int i2 = shortcutInfo.mTitleResId;
            if (i2 != 0) {
                this.mTitle = null;
                this.mTitleResId = i2;
                this.mTitleResName = null;
            }
        }
        CharSequence charSequence2 = shortcutInfo.mText;
        if (charSequence2 != null) {
            this.mText = charSequence2;
            this.mTextResId = 0;
            this.mTextResName = null;
        } else {
            int i3 = shortcutInfo.mTextResId;
            if (i3 != 0) {
                this.mText = null;
                this.mTextResId = i3;
                this.mTextResName = null;
            }
        }
        CharSequence charSequence3 = shortcutInfo.mDisabledMessage;
        if (charSequence3 != null) {
            this.mDisabledMessage = charSequence3;
            this.mDisabledMessageResId = 0;
            this.mDisabledMessageResName = null;
        } else {
            int i4 = shortcutInfo.mDisabledMessageResId;
            if (i4 != 0) {
                this.mDisabledMessage = null;
                this.mDisabledMessageResId = i4;
                this.mDisabledMessageResName = null;
            }
        }
        ArraySet<String> arraySet = shortcutInfo.mCategories;
        if (arraySet != null) {
            this.mCategories = cloneCategories(arraySet);
        }
        Intent[] intentArr = shortcutInfo.mIntents;
        if (intentArr != null) {
            this.mIntents = cloneIntents(intentArr);
            this.mIntentPersistableExtrases = clonePersistableBundle(shortcutInfo.mIntentPersistableExtrases);
        }
        int i5 = shortcutInfo.mRank;
        if (i5 != Integer.MAX_VALUE) {
            this.mRank = i5;
        }
        PersistableBundle persistableBundle = shortcutInfo.mExtras;
        if (persistableBundle != null) {
            this.mExtras = persistableBundle;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void enforceMandatoryFields(boolean z2) {
        Preconditions.checkStringNotEmpty(this.mId, "Shortcut ID must be provided");
        if (!z2) {
            Preconditions.checkNotNull(this.mActivity, "Activity must be provided");
        }
        if (this.mTitle == null && this.mTitleResId == 0) {
            throw new IllegalArgumentException("Short label must be provided");
        }
        Preconditions.checkNotNull(this.mIntents, "Shortcut Intent must be provided");
        Preconditions.checkArgument(this.mIntents.length > 0, "Shortcut Intent must be provided");
    }

    public void ensureUpdatableWith(ShortcutInfo shortcutInfo) {
        Preconditions.checkState(this.mUserId == shortcutInfo.mUserId, "Owner User ID must match");
        Preconditions.checkState(this.mId.equals(shortcutInfo.mId), "ID must match");
        Preconditions.checkState(this.mPackageName.equals(shortcutInfo.mPackageName), "Package name must match");
        Preconditions.checkState(!isImmutable(), "Target ShortcutInfo is immutable");
    }

    public ComponentName getActivity() {
        return this.mActivity;
    }

    public String getBitmapPath() {
        return this.mBitmapPath;
    }

    public Set<String> getCategories() {
        return this.mCategories;
    }

    public CharSequence getDisabledMessage() {
        return this.mDisabledMessage;
    }

    public String getDisabledMessageResName() {
        return this.mDisabledMessageResName;
    }

    public int getDisabledMessageResourceId() {
        return this.mDisabledMessageResId;
    }

    public PersistableBundle getExtras() {
        return this.mExtras;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public Icon getIcon() {
        return this.mIcon;
    }

    public String getIconResName() {
        return this.mIconResName;
    }

    public int getIconResourceId() {
        return this.mIconResId;
    }

    public String getId() {
        return this.mId;
    }

    public int getImplicitRank() {
        return this.mImplicitRank & Integer.MAX_VALUE;
    }

    public Intent getIntent() {
        Intent[] intentArr = this.mIntents;
        if (intentArr == null || intentArr.length == 0) {
            return null;
        }
        int length = intentArr.length - 1;
        return setIntentExtras(new Intent(this.mIntents[length]), this.mIntentPersistableExtrases[length]);
    }

    public PersistableBundle[] getIntentPersistableExtrases() {
        return this.mIntentPersistableExtrases;
    }

    public Intent[] getIntents() {
        int length = this.mIntents.length;
        Intent[] intentArr = new Intent[length];
        for (int i2 = 0; i2 < length; i2++) {
            Intent intent = new Intent(this.mIntents[i2]);
            intentArr[i2] = intent;
            setIntentExtras(intent, this.mIntentPersistableExtrases[i2]);
        }
        return intentArr;
    }

    public Intent[] getIntentsNoExtras() {
        return this.mIntents;
    }

    public long getLastChangedTimestamp() {
        return this.mLastChangedTimestamp;
    }

    public CharSequence getLongLabel() {
        return this.mText;
    }

    public int getLongLabelResourceId() {
        return this.mTextResId;
    }

    public String getPackage() {
        return this.mPackageName;
    }

    public int getRank() {
        return this.mRank;
    }

    public CharSequence getShortLabel() {
        return this.mTitle;
    }

    public int getShortLabelResourceId() {
        return this.mTitleResId;
    }

    @Deprecated
    public CharSequence getText() {
        return this.mText;
    }

    @Deprecated
    public int getTextResId() {
        return this.mTextResId;
    }

    public String getTextResName() {
        return this.mTextResName;
    }

    @Deprecated
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Deprecated
    public int getTitleResId() {
        return this.mTitleResId;
    }

    public String getTitleResName() {
        return this.mTitleResName;
    }

    public UserHandle getUserHandle() {
        return UserHandle.of(this.mUserId);
    }

    public int getUserId() {
        return this.mUserId;
    }

    public boolean hasAdaptiveBitmap() {
        return hasFlags(512);
    }

    public boolean hasAnyResources() {
        return hasIconResource() || hasStringResources();
    }

    public boolean hasFlags(int i2) {
        return (this.mFlags & i2) == i2;
    }

    public boolean hasIconFile() {
        return hasFlags(8);
    }

    public boolean hasIconResource() {
        return hasFlags(4);
    }

    public boolean hasKeyFieldsOnly() {
        return hasFlags(16);
    }

    public boolean hasRank() {
        return this.mRank != Integer.MAX_VALUE;
    }

    public boolean hasStringResources() {
        return (this.mTitleResId == 0 && this.mTextResId == 0 && this.mDisabledMessageResId == 0) ? false : true;
    }

    public boolean hasStringResourcesResolved() {
        return hasFlags(128);
    }

    public boolean isAlive() {
        return hasFlags(2) || hasFlags(1) || hasFlags(32);
    }

    public boolean isDeclaredInManifest() {
        return hasFlags(32);
    }

    public boolean isDynamic() {
        return hasFlags(1);
    }

    public boolean isEnabled() {
        return !hasFlags(64);
    }

    public boolean isFloating() {
        return (!isPinned() || isDynamic() || isManifestShortcut()) ? false : true;
    }

    public boolean isIconPendingSave() {
        return hasFlags(2048);
    }

    public boolean isImmutable() {
        return hasFlags(256);
    }

    @Deprecated
    public boolean isManifestShortcut() {
        return isDeclaredInManifest();
    }

    public boolean isOriginallyFromManifest() {
        return hasFlags(256);
    }

    public boolean isPinned() {
        return hasFlags(2);
    }

    public boolean isRankChanged() {
        return (this.mImplicitRank & Integer.MIN_VALUE) != 0;
    }

    public boolean isReturnedByServer() {
        return hasFlags(1024);
    }

    public void lookupAndFillInResourceIds(Resources resources) {
        String str = this.mTitleResName;
        if (str == null && this.mTextResName == null && this.mDisabledMessageResName == null && this.mIconResName == null) {
            return;
        }
        this.mTitleResId = lookUpResourceId(resources, str, "string", this.mPackageName);
        this.mTextResId = lookUpResourceId(resources, this.mTextResName, "string", this.mPackageName);
        this.mDisabledMessageResId = lookUpResourceId(resources, this.mDisabledMessageResName, "string", this.mPackageName);
        this.mIconResId = lookUpResourceId(resources, this.mIconResName, null, this.mPackageName);
    }

    public void lookupAndFillInResourceNames(Resources resources) {
        int i2 = this.mTitleResId;
        if (i2 == 0 && this.mTextResId == 0 && this.mDisabledMessageResId == 0 && this.mIconResId == 0) {
            return;
        }
        this.mTitleResName = lookUpResourceName(resources, i2, false, this.mPackageName);
        this.mTextResName = lookUpResourceName(resources, this.mTextResId, false, this.mPackageName);
        this.mDisabledMessageResName = lookUpResourceName(resources, this.mDisabledMessageResId, false, this.mPackageName);
        this.mIconResName = lookUpResourceName(resources, this.mIconResId, true, this.mPackageName);
    }

    public void replaceFlags(int i2) {
        this.mFlags = i2;
    }

    public void resolveResourceStrings(Resources resources) {
        this.mFlags |= 128;
        int i2 = this.mTitleResId;
        if (i2 == 0 && this.mTextResId == 0 && this.mDisabledMessageResId == 0) {
            return;
        }
        if (i2 != 0) {
            this.mTitle = getResourceString(resources, i2, this.mTitle);
        }
        int i3 = this.mTextResId;
        if (i3 != 0) {
            this.mText = getResourceString(resources, i3, this.mText);
        }
        int i4 = this.mDisabledMessageResId;
        if (i4 != 0) {
            this.mDisabledMessage = getResourceString(resources, i4, this.mDisabledMessage);
        }
    }

    public void setActivity(ComponentName componentName) {
        this.mActivity = componentName;
    }

    public void setBitmapPath(String str) {
        this.mBitmapPath = str;
    }

    public void setCategories(Set<String> set) {
        this.mCategories = cloneCategories(set);
    }

    public void setDisabledMessage(String str) {
        this.mDisabledMessage = str;
        this.mDisabledMessageResId = 0;
        this.mDisabledMessageResName = null;
    }

    public void setDisabledMessageResId(int i2) {
        if (this.mDisabledMessageResId != i2) {
            this.mDisabledMessageResName = null;
        }
        this.mDisabledMessageResId = i2;
        this.mDisabledMessage = null;
    }

    public void setDisabledMessageResName(String str) {
        this.mDisabledMessageResName = str;
    }

    public void setIconPendingSave() {
        addFlags(2048);
    }

    public void setIconResName(String str) {
        this.mIconResName = str;
    }

    public void setIconResourceId(int i2) {
        if (this.mIconResId != i2) {
            this.mIconResName = null;
        }
        this.mIconResId = i2;
    }

    public void setImplicitRank(int i2) {
        this.mImplicitRank = (i2 & Integer.MAX_VALUE) | (this.mImplicitRank & Integer.MIN_VALUE);
    }

    public void setIntents(Intent[] intentArr) {
        Preconditions.checkNotNull(intentArr);
        Preconditions.checkArgument(intentArr.length > 0);
        this.mIntents = cloneIntents(intentArr);
        fixUpIntentExtras();
    }

    public void setRank(int i2) {
        this.mRank = i2;
    }

    public void setRankChanged() {
        this.mImplicitRank |= Integer.MIN_VALUE;
    }

    public void setReturnedByServer() {
        addFlags(1024);
    }

    public void setTextResName(String str) {
        this.mTextResName = str;
    }

    public void setTimestamp(long j2) {
        this.mLastChangedTimestamp = j2;
    }

    public void setTitleResName(String str) {
        this.mTitleResName = str;
    }

    public String toInsecureString() {
        return toStringInner(false, true);
    }

    public String toString() {
        return toStringInner(true, false);
    }

    public void updateTimestamp() {
        this.mLastChangedTimestamp = System.currentTimeMillis();
    }

    public boolean usesQuota() {
        return hasFlags(1) || hasFlags(32);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mUserId);
        parcel.writeString(this.mId);
        parcel.writeString(this.mPackageName);
        parcel.writeParcelable(this.mActivity, i2);
        parcel.writeInt(this.mFlags);
        parcel.writeInt(this.mIconResId);
        parcel.writeLong(this.mLastChangedTimestamp);
        if (hasKeyFieldsOnly()) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeParcelable(this.mIcon, i2);
        parcel.writeCharSequence(this.mTitle);
        parcel.writeInt(this.mTitleResId);
        parcel.writeCharSequence(this.mText);
        parcel.writeInt(this.mTextResId);
        parcel.writeCharSequence(this.mDisabledMessage);
        parcel.writeInt(this.mDisabledMessageResId);
        parcel.writeParcelableArray(this.mIntents, i2);
        parcel.writeParcelableArray(this.mIntentPersistableExtrases, i2);
        parcel.writeInt(this.mRank);
        parcel.writeParcelable(this.mExtras, i2);
        parcel.writeString(this.mBitmapPath);
        parcel.writeString(this.mIconResName);
        parcel.writeString(this.mTitleResName);
        parcel.writeString(this.mTextResName);
        parcel.writeString(this.mDisabledMessageResName);
        ArraySet<String> arraySet = this.mCategories;
        if (arraySet == null) {
            parcel.writeInt(0);
            return;
        }
        int size = arraySet.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeString(this.mCategories.valueAt(i3));
        }
    }

    public static class Builder {
        private ComponentName mActivity;
        private Set<String> mCategories;
        private final Context mContext;
        private CharSequence mDisabledMessage;
        private int mDisabledMessageResId;
        private PersistableBundle mExtras;
        private Icon mIcon;
        private String mId;
        private Intent[] mIntents;
        private int mRank = Integer.MAX_VALUE;
        private CharSequence mText;
        private int mTextResId;
        private CharSequence mTitle;
        private int mTitleResId;

        @Deprecated
        public Builder(Context context) {
            this.mContext = context;
        }

        public ShortcutInfo build() {
            return new ShortcutInfo(this);
        }

        public Builder setActivity(ComponentName componentName) {
            this.mActivity = (ComponentName) Preconditions.checkNotNull(componentName, "activity cannot be null");
            return this;
        }

        public Builder setCategories(Set<String> set) {
            this.mCategories = set;
            return this;
        }

        public Builder setDisabledMessage(CharSequence charSequence) {
            Preconditions.checkState(this.mDisabledMessageResId == 0, "disabledMessageResId already set");
            this.mDisabledMessage = Preconditions.checkStringNotEmpty(charSequence, "disabledMessage cannot be empty");
            return this;
        }

        @Deprecated
        public Builder setDisabledMessageResId(int i2) {
            Preconditions.checkState(this.mDisabledMessage == null, "disabledMessage already set");
            this.mDisabledMessageResId = i2;
            return this;
        }

        public Builder setExtras(PersistableBundle persistableBundle) {
            this.mExtras = persistableBundle;
            return this;
        }

        public Builder setIcon(Icon icon) {
            this.mIcon = ShortcutInfo.validateIcon(icon);
            return this;
        }

        @Deprecated
        public Builder setId(String str) {
            this.mId = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
            return this;
        }

        public Builder setIntent(Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        public Builder setIntents(Intent[] intentArr) {
            Preconditions.checkNotNull(intentArr, "intents cannot be null");
            Preconditions.checkNotNull(Integer.valueOf(intentArr.length), "intents cannot be empty");
            for (Intent intent : intentArr) {
                Preconditions.checkNotNull(intent, "intents cannot contain null");
                Preconditions.checkNotNull(intent.getAction(), "intent's action must be set");
            }
            this.mIntents = ShortcutInfo.cloneIntents(intentArr);
            return this;
        }

        public Builder setLongLabel(CharSequence charSequence) {
            Preconditions.checkState(this.mTextResId == 0, "longLabelResId already set");
            this.mText = Preconditions.checkStringNotEmpty(charSequence, "longLabel cannot be empty");
            return this;
        }

        @Deprecated
        public Builder setLongLabelResId(int i2) {
            Preconditions.checkState(this.mText == null, "longLabel already set");
            this.mTextResId = i2;
            return this;
        }

        public Builder setRank(int i2) {
            Preconditions.checkArgument(i2 >= 0, "Rank cannot be negative or bigger than MAX_RANK");
            this.mRank = i2;
            return this;
        }

        public Builder setShortLabel(CharSequence charSequence) {
            Preconditions.checkState(this.mTitleResId == 0, "shortLabelResId already set");
            this.mTitle = Preconditions.checkStringNotEmpty(charSequence, "shortLabel cannot be empty");
            return this;
        }

        @Deprecated
        public Builder setShortLabelResId(int i2) {
            Preconditions.checkState(this.mTitle == null, "shortLabel already set");
            this.mTitleResId = i2;
            return this;
        }

        @Deprecated
        public Builder setText(CharSequence charSequence) {
            return setLongLabel(charSequence);
        }

        @Deprecated
        public Builder setTextResId(int i2) {
            return setLongLabelResId(i2);
        }

        @Deprecated
        public Builder setTitle(CharSequence charSequence) {
            return setShortLabel(charSequence);
        }

        @Deprecated
        public Builder setTitleResId(int i2) {
            return setShortLabelResId(i2);
        }

        public Builder(Context context, String str) {
            this.mContext = context;
            this.mId = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        }
    }

    private ShortcutInfo(Builder builder) {
        this.mUserId = builder.mContext.getUserId();
        this.mId = (String) Preconditions.checkStringNotEmpty(builder.mId, "Shortcut ID must be provided");
        this.mPackageName = builder.mContext.getPackageName();
        this.mActivity = builder.mActivity;
        this.mIcon = builder.mIcon;
        this.mTitle = builder.mTitle;
        this.mTitleResId = builder.mTitleResId;
        this.mText = builder.mText;
        this.mTextResId = builder.mTextResId;
        this.mDisabledMessage = builder.mDisabledMessage;
        this.mDisabledMessageResId = builder.mDisabledMessageResId;
        this.mCategories = cloneCategories(builder.mCategories);
        this.mIntents = cloneIntents(builder.mIntents);
        fixUpIntentExtras();
        this.mRank = builder.mRank;
        this.mExtras = builder.mExtras;
        updateTimestamp();
    }

    private ShortcutInfo(ShortcutInfo shortcutInfo, int i2) {
        this.mUserId = shortcutInfo.mUserId;
        this.mId = shortcutInfo.mId;
        this.mPackageName = shortcutInfo.mPackageName;
        this.mActivity = shortcutInfo.mActivity;
        int i3 = shortcutInfo.mFlags;
        this.mFlags = i3;
        this.mLastChangedTimestamp = shortcutInfo.mLastChangedTimestamp;
        this.mIconResId = shortcutInfo.mIconResId;
        if ((i2 & 4) == 0) {
            if ((i2 & 1) == 0) {
                this.mIcon = shortcutInfo.mIcon;
                this.mBitmapPath = shortcutInfo.mBitmapPath;
            }
            this.mTitle = shortcutInfo.mTitle;
            this.mTitleResId = shortcutInfo.mTitleResId;
            this.mText = shortcutInfo.mText;
            this.mTextResId = shortcutInfo.mTextResId;
            this.mDisabledMessage = shortcutInfo.mDisabledMessage;
            this.mDisabledMessageResId = shortcutInfo.mDisabledMessageResId;
            this.mCategories = cloneCategories(shortcutInfo.mCategories);
            if ((i2 & 2) == 0) {
                this.mIntents = cloneIntents(shortcutInfo.mIntents);
                this.mIntentPersistableExtrases = clonePersistableBundle(shortcutInfo.mIntentPersistableExtrases);
            }
            this.mRank = shortcutInfo.mRank;
            this.mExtras = shortcutInfo.mExtras;
            if ((i2 & 8) == 0) {
                this.mTitleResName = shortcutInfo.mTitleResName;
                this.mTextResName = shortcutInfo.mTextResName;
                this.mDisabledMessageResName = shortcutInfo.mDisabledMessageResName;
                this.mIconResName = shortcutInfo.mIconResName;
                return;
            }
            return;
        }
        this.mFlags = i3 | 16;
    }

    private ShortcutInfo(Parcel parcel) {
        ClassLoader classLoader = ShortcutInfo.class.getClassLoader();
        this.mUserId = parcel.readInt();
        this.mId = parcel.readString();
        this.mPackageName = parcel.readString();
        this.mActivity = (ComponentName) parcel.readParcelable(classLoader);
        this.mFlags = parcel.readInt();
        this.mIconResId = parcel.readInt();
        this.mLastChangedTimestamp = parcel.readLong();
        if (parcel.readInt() == 0) {
            return;
        }
        this.mIcon = (Icon) parcel.readParcelable(classLoader);
        this.mTitle = parcel.readCharSequence();
        this.mTitleResId = parcel.readInt();
        this.mText = parcel.readCharSequence();
        this.mTextResId = parcel.readInt();
        this.mDisabledMessage = parcel.readCharSequence();
        this.mDisabledMessageResId = parcel.readInt();
        this.mIntents = (Intent[]) parcel.readParcelableArray(classLoader, Intent.class);
        this.mIntentPersistableExtrases = (PersistableBundle[]) parcel.readParcelableArray(classLoader, PersistableBundle.class);
        this.mRank = parcel.readInt();
        this.mExtras = (PersistableBundle) parcel.readParcelable(classLoader);
        this.mBitmapPath = parcel.readString();
        this.mIconResName = parcel.readString();
        this.mTitleResName = parcel.readString();
        this.mTextResName = parcel.readString();
        this.mDisabledMessageResName = parcel.readString();
        int i2 = parcel.readInt();
        if (i2 == 0) {
            this.mCategories = null;
            return;
        }
        this.mCategories = new ArraySet<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            this.mCategories.add(parcel.readString().intern());
        }
    }

    public ShortcutInfo(int i2, String str, String str2, ComponentName componentName, Icon icon, CharSequence charSequence, int i3, String str3, CharSequence charSequence2, int i4, String str4, CharSequence charSequence3, int i5, String str5, Set<String> set, Intent[] intentArr, int i6, PersistableBundle persistableBundle, long j2, int i7, int i8, String str6, String str7) {
        this.mUserId = i2;
        this.mId = str;
        this.mPackageName = str2;
        this.mActivity = componentName;
        this.mIcon = icon;
        this.mTitle = charSequence;
        this.mTitleResId = i3;
        this.mTitleResName = str3;
        this.mText = charSequence2;
        this.mTextResId = i4;
        this.mTextResName = str4;
        this.mDisabledMessage = charSequence3;
        this.mDisabledMessageResId = i5;
        this.mDisabledMessageResName = str5;
        this.mCategories = cloneCategories(set);
        this.mIntents = cloneIntents(intentArr);
        fixUpIntentExtras();
        this.mRank = i6;
        this.mExtras = persistableBundle;
        this.mLastChangedTimestamp = j2;
        this.mFlags = i7;
        this.mIconResId = i8;
        this.mIconResName = str6;
        this.mBitmapPath = str7;
    }
}
