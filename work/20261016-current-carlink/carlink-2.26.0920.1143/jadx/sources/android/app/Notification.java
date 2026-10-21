package android.app;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.media.PlayerBase;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.TextAppearanceSpan;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.android.internal.R;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.NotificationColorUtil;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Notification implements Parcelable {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    private static final boolean CHECK_SDK_VERSION_FOR_GRAYSCALE_ICON = false;
    public static final int COLOR_DEFAULT = 0;
    public static final int COLOR_INVALID = 1;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_ALLOW_DURING_SETUP = "android.allowDuringSetup";
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
    public static final String EXTRA_BIG_TEXT = "android.bigText";
    public static final String EXTRA_BUILDER_APPLICATION_INFO = "android.appInfo";
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";
    public static final String EXTRA_COLORIZED = "android.colorized";
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_CONTAINS_CUSTOM_VIEW = "android.contains.customView";
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";
    public static final String EXTRA_FOREGROUND_APPS = "android.foregroundApps";
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @Deprecated
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
    public static final String EXTRA_MESSAGES = "android.messages";
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_REDUCED_IMAGES = "android.reduced.images";
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @Deprecated
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUBSTITUTE_APP_NAME = "android.substName";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEMPLATE = "android.template";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTOGROUP_SUMMARY = 1024;
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_CAN_COLORIZE = 2048;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;

    @Deprecated
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";
    private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
    private static final int MAX_REPLY_HISTORY = 5;

    @Deprecated
    public static final int PRIORITY_DEFAULT = 0;

    @Deprecated
    public static final int PRIORITY_HIGH = 1;

    @Deprecated
    public static final int PRIORITY_LOW = -1;

    @Deprecated
    public static final int PRIORITY_MAX = 2;

    @Deprecated
    public static final int PRIORITY_MIN = -2;

    @Deprecated
    public static final int STREAM_DEFAULT = -1;
    private static final String TAG = "Notification";
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;
    public static IBinder processWhitelistToken;
    public static IBinder whitelistToken;
    public Action[] actions;
    public ArraySet<PendingIntent> allPendingIntents;

    @Deprecated
    public AudioAttributes audioAttributes;

    @Deprecated
    public int audioStreamType;

    @Deprecated
    public RemoteViews bigContentView;
    public String category;
    public int color;
    public PendingIntent contentIntent;

    @Deprecated
    public RemoteViews contentView;
    private long creationTime;

    @Deprecated
    public int defaults;
    public PendingIntent deleteIntent;
    public Bundle extras;
    public int flags;
    public PendingIntent fullScreenIntent;

    @Deprecated
    public RemoteViews headsUpContentView;

    @Deprecated
    public int icon;
    public int iconLevel;

    @Deprecated
    public Bitmap largeIcon;

    @Deprecated
    public int ledARGB;

    @Deprecated
    public int ledOffMS;

    @Deprecated
    public int ledOnMS;
    private int mBadgeIcon;
    private String mChannelId;
    private int mGroupAlertBehavior;
    private String mGroupKey;
    private Icon mLargeIcon;
    private CharSequence mSettingsText;
    private String mShortcutId;
    private Icon mSmallIcon;
    private String mSortKey;
    private long mTimeout;
    public int number;

    @Deprecated
    public int priority;
    public Notification publicVersion;

    @Deprecated
    public Uri sound;
    public CharSequence tickerText;

    @Deprecated
    public RemoteViews tickerView;

    @Deprecated
    public long[] vibrate;
    public int visibility;
    public long when;
    public static final AudioAttributes AUDIO_ATTRIBUTES_DEFAULT = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
    public static final Parcelable.Creator<Notification> CREATOR = new Parcelable.Creator<Notification>() { // from class: android.app.Notification.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Notification createFromParcel(Parcel parcel) {
            return new Notification(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Notification[] newArray(int i2) {
            return new Notification[i2];
        }
    };

    public static class Action implements Parcelable {
        public static final Parcelable.Creator<Action> CREATOR = new Parcelable.Creator<Action>() { // from class: android.app.Notification.Action.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Action createFromParcel(Parcel parcel) {
                return new Action(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Action[] newArray(int i2) {
                return new Action[i2];
            }
        };
        private static final String EXTRA_DATA_ONLY_INPUTS = "android.extra.DATA_ONLY_INPUTS";
        public PendingIntent actionIntent;

        @Deprecated
        public int icon;
        private boolean mAllowGeneratedReplies;
        private final Bundle mExtras;
        private Icon mIcon;
        private final RemoteInput[] mRemoteInputs;
        public CharSequence title;

        public static final class Builder {
            private boolean mAllowGeneratedReplies;
            private final Bundle mExtras;
            private final Icon mIcon;
            private final PendingIntent mIntent;
            private ArrayList<RemoteInput> mRemoteInputs;
            private final CharSequence mTitle;

            @Deprecated
            public Builder(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
                this(Icon.createWithResource("", i2), charSequence, pendingIntent);
            }

            public Builder addExtras(Bundle bundle) {
                if (bundle != null) {
                    this.mExtras.putAll(bundle);
                }
                return this;
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                if (this.mRemoteInputs == null) {
                    this.mRemoteInputs = new ArrayList<>();
                }
                this.mRemoteInputs.add(remoteInput);
                return this;
            }

            public Action build() {
                ArrayList arrayList = new ArrayList();
                RemoteInput[] remoteInputArr = (RemoteInput[]) this.mExtras.getParcelableArray(Action.EXTRA_DATA_ONLY_INPUTS);
                if (remoteInputArr != null) {
                    for (RemoteInput remoteInput : remoteInputArr) {
                        arrayList.add(remoteInput);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.mRemoteInputs;
                if (arrayList3 != null) {
                    for (RemoteInput remoteInput2 : arrayList3) {
                        if (remoteInput2.isDataOnly()) {
                            arrayList.add(remoteInput2);
                        } else {
                            arrayList2.add(remoteInput2);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.mExtras.putParcelableArray(Action.EXTRA_DATA_ONLY_INPUTS, (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]));
                }
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), this.mAllowGeneratedReplies);
            }

            public Builder extend(Extender extender) {
                extender.extend(this);
                return this;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public Builder setAllowGeneratedReplies(boolean z2) {
                this.mAllowGeneratedReplies = z2;
                return this;
            }

            public Builder(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                this(icon, charSequence, pendingIntent, new Bundle(), null, true);
            }

            public Builder(Action action) {
                this(action.getIcon(), action.title, action.actionIntent, new Bundle(action.mExtras), action.getRemoteInputs(), action.getAllowGeneratedReplies());
            }

            private Builder(Icon icon, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z2) {
                this.mAllowGeneratedReplies = true;
                this.mIcon = icon;
                this.mTitle = charSequence;
                this.mIntent = pendingIntent;
                this.mExtras = bundle;
                if (remoteInputArr != null) {
                    ArrayList<RemoteInput> arrayList = new ArrayList<>(remoteInputArr.length);
                    this.mRemoteInputs = arrayList;
                    Collections.addAll(arrayList, remoteInputArr);
                }
                this.mAllowGeneratedReplies = z2;
            }
        }

        public interface Extender {
            Builder extend(Builder builder);
        }

        public static final class WearableExtender implements Extender {
            private static final int DEFAULT_FLAGS = 1;
            private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
            private static final int FLAG_AVAILABLE_OFFLINE = 1;
            private static final int FLAG_HINT_DISPLAY_INLINE = 4;
            private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
            private static final String KEY_CANCEL_LABEL = "cancelLabel";
            private static final String KEY_CONFIRM_LABEL = "confirmLabel";
            private static final String KEY_FLAGS = "flags";
            private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
            private CharSequence mCancelLabel;
            private CharSequence mConfirmLabel;
            private int mFlags;
            private CharSequence mInProgressLabel;

            public WearableExtender() {
                this.mFlags = 1;
            }

            private void setFlag(int i2, boolean z2) {
                if (z2) {
                    this.mFlags = i2 | this.mFlags;
                } else {
                    this.mFlags = (~i2) & this.mFlags;
                }
            }

            @Override // android.app.Notification.Action.Extender
            public Builder extend(Builder builder) {
                Bundle bundle = new Bundle();
                int i2 = this.mFlags;
                if (i2 != 1) {
                    bundle.putInt("flags", i2);
                }
                CharSequence charSequence = this.mInProgressLabel;
                if (charSequence != null) {
                    bundle.putCharSequence(KEY_IN_PROGRESS_LABEL, charSequence);
                }
                CharSequence charSequence2 = this.mConfirmLabel;
                if (charSequence2 != null) {
                    bundle.putCharSequence(KEY_CONFIRM_LABEL, charSequence2);
                }
                CharSequence charSequence3 = this.mCancelLabel;
                if (charSequence3 != null) {
                    bundle.putCharSequence(KEY_CANCEL_LABEL, charSequence3);
                }
                builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
                return builder;
            }

            public CharSequence getCancelLabel() {
                return this.mCancelLabel;
            }

            public CharSequence getConfirmLabel() {
                return this.mConfirmLabel;
            }

            public boolean getHintDisplayActionInline() {
                return (this.mFlags & 4) != 0;
            }

            public boolean getHintLaunchesActivity() {
                return (this.mFlags & 2) != 0;
            }

            public CharSequence getInProgressLabel() {
                return this.mInProgressLabel;
            }

            public boolean isAvailableOffline() {
                return (this.mFlags & 1) != 0;
            }

            public WearableExtender setAvailableOffline(boolean z2) {
                setFlag(1, z2);
                return this;
            }

            public WearableExtender setCancelLabel(CharSequence charSequence) {
                this.mCancelLabel = charSequence;
                return this;
            }

            public WearableExtender setConfirmLabel(CharSequence charSequence) {
                this.mConfirmLabel = charSequence;
                return this;
            }

            public WearableExtender setHintDisplayActionInline(boolean z2) {
                setFlag(4, z2);
                return this;
            }

            public WearableExtender setHintLaunchesActivity(boolean z2) {
                setFlag(2, z2);
                return this;
            }

            public WearableExtender setInProgressLabel(CharSequence charSequence) {
                this.mInProgressLabel = charSequence;
                return this;
            }

            /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
            public WearableExtender m10clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.mFlags = this.mFlags;
                wearableExtender.mInProgressLabel = this.mInProgressLabel;
                wearableExtender.mConfirmLabel = this.mConfirmLabel;
                wearableExtender.mCancelLabel = this.mCancelLabel;
                return wearableExtender;
            }

            public WearableExtender(Action action) {
                this.mFlags = 1;
                Bundle bundle = action.getExtras().getBundle(EXTRA_WEARABLE_EXTENSIONS);
                if (bundle != null) {
                    this.mFlags = bundle.getInt("flags", 1);
                    this.mInProgressLabel = bundle.getCharSequence(KEY_IN_PROGRESS_LABEL);
                    this.mConfirmLabel = bundle.getCharSequence(KEY_CONFIRM_LABEL);
                    this.mCancelLabel = bundle.getCharSequence(KEY_CANCEL_LABEL);
                }
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean getAllowGeneratedReplies() {
            return this.mAllowGeneratedReplies;
        }

        public RemoteInput[] getDataOnlyRemoteInputs() {
            return (RemoteInput[]) this.mExtras.getParcelableArray(EXTRA_DATA_ONLY_INPUTS);
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public Icon getIcon() {
            int i2;
            if (this.mIcon == null && (i2 = this.icon) != 0) {
                this.mIcon = Icon.createWithResource("", i2);
            }
            return this.mIcon;
        }

        public RemoteInput[] getRemoteInputs() {
            return this.mRemoteInputs;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            Icon icon = getIcon();
            if (icon != null) {
                parcel.writeInt(1);
                icon.writeToParcel(parcel, 0);
            } else {
                parcel.writeInt(0);
            }
            TextUtils.writeToParcel(this.title, parcel, i2);
            if (this.actionIntent != null) {
                parcel.writeInt(1);
                this.actionIntent.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeBundle(this.mExtras);
            parcel.writeTypedArray(this.mRemoteInputs, i2);
            parcel.writeInt(this.mAllowGeneratedReplies ? 1 : 0);
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Action m9clone() {
            return new Action(getIcon(), this.title, this.actionIntent, this.mExtras == null ? new Bundle() : new Bundle(this.mExtras), getRemoteInputs(), getAllowGeneratedReplies());
        }

        private Action(Parcel parcel) {
            this.mAllowGeneratedReplies = true;
            if (parcel.readInt() != 0) {
                Icon iconCreateFromParcel = Icon.CREATOR.createFromParcel(parcel);
                this.mIcon = iconCreateFromParcel;
                if (iconCreateFromParcel.getType() == 2) {
                    this.icon = this.mIcon.getResId();
                }
            }
            this.title = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 1) {
                this.actionIntent = PendingIntent.CREATOR.createFromParcel(parcel);
            }
            this.mExtras = Bundle.setDefusable(parcel.readBundle(), true);
            this.mRemoteInputs = (RemoteInput[]) parcel.createTypedArray(RemoteInput.CREATOR);
            this.mAllowGeneratedReplies = parcel.readInt() == 1;
        }

        @Deprecated
        public Action(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(Icon.createWithResource("", i2), charSequence, pendingIntent, new Bundle(), null, true);
        }

        private Action(Icon icon, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z2) {
            this.mAllowGeneratedReplies = true;
            this.mIcon = icon;
            if (icon != null && icon.getType() == 2) {
                this.icon = icon.getResId();
            }
            this.title = charSequence;
            this.actionIntent = pendingIntent;
            this.mExtras = bundle == null ? new Bundle() : bundle;
            this.mRemoteInputs = remoteInputArr;
            this.mAllowGeneratedReplies = z2;
        }
    }

    public static class BigPictureStyle extends Style {
        public static final int MIN_ASHMEM_BITMAP_SIZE = 131072;
        private Icon mBigLargeIcon;
        private boolean mBigLargeIconSet = false;
        private Bitmap mPicture;

        public BigPictureStyle() {
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            if (this.mBigLargeIconSet) {
                bundle.putParcelable("android.largeIcon.big", this.mBigLargeIcon);
            }
            bundle.putParcelable("android.picture", this.mPicture);
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            return bigLargeIcon(bitmap != null ? Icon.createWithBitmap(bitmap) : null);
        }

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPicture = bitmap;
            return this;
        }

        @Override // android.app.Notification.Style
        public boolean hasSummaryInHeader() {
            return false;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            Bitmap bitmap;
            Icon icon = null;
            if (this.mBigLargeIconSet) {
                Icon icon2 = this.mBuilder.mN.mLargeIcon;
                this.mBuilder.mN.mLargeIcon = this.mBigLargeIcon;
                bitmap = this.mBuilder.mN.largeIcon;
                this.mBuilder.mN.largeIcon = null;
                icon = icon2;
            } else {
                bitmap = null;
            }
            RemoteViews standardView = getStandardView(this.mBuilder.getBigPictureLayoutResource());
            if (this.mSummaryTextSet) {
                Builder builder = this.mBuilder;
                standardView.setTextViewText(R.id.text, builder.processTextSpans(builder.processLegacyText(this.mSummaryText)));
                this.mBuilder.setTextViewColorSecondary(standardView, R.id.text);
                standardView.setViewVisibility(R.id.text, 0);
            }
            Builder builder2 = this.mBuilder;
            builder2.setContentMinHeight(standardView, builder2.mN.hasLargeIcon());
            if (this.mBigLargeIconSet) {
                this.mBuilder.mN.mLargeIcon = icon;
                this.mBuilder.mN.largeIcon = bitmap;
            }
            standardView.setImageViewBitmap(R.id.big_picture, this.mPicture);
            return standardView;
        }

        @Override // android.app.Notification.Style
        public void purgeResources() {
            super.purgeResources();
            Bitmap bitmap = this.mPicture;
            if (bitmap != null && bitmap.isMutable() && this.mPicture.getAllocationByteCount() >= 131072) {
                this.mPicture = this.mPicture.createAshmemBitmap();
            }
            Icon icon = this.mBigLargeIcon;
            if (icon != null) {
                icon.convertToAshmem();
            }
        }

        @Override // android.app.Notification.Style
        public void reduceImageSizes(Context context) {
            super.reduceImageSizes(context);
            Resources resources = context.getResources();
            boolean zIsLowRamDeviceStatic = ActivityManager.isLowRamDeviceStatic();
            if (this.mPicture != null) {
                this.mPicture = Icon.scaleDownIfNecessary(this.mPicture, resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_big_picture_max_height_low_ram : R.dimen.notification_big_picture_max_height), resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_big_picture_max_width_low_ram : R.dimen.notification_big_picture_max_width));
            }
            if (this.mBigLargeIcon != null) {
                int dimensionPixelSize = resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_right_icon_size_low_ram : R.dimen.notification_right_icon_size);
                this.mBigLargeIcon.scaleDownIfNecessary(dimensionPixelSize, dimensionPixelSize);
            }
        }

        @Override // android.app.Notification.Style
        public void restoreFromExtras(Bundle bundle) {
            super.restoreFromExtras(bundle);
            if (bundle.containsKey("android.largeIcon.big")) {
                this.mBigLargeIconSet = true;
                this.mBigLargeIcon = (Icon) bundle.getParcelable("android.largeIcon.big");
            }
            this.mPicture = (Bitmap) bundle.getParcelable("android.picture");
        }

        public BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigPictureStyle bigLargeIcon(Icon icon) {
            this.mBigLargeIconSet = true;
            this.mBigLargeIcon = icon;
            return this;
        }

        @Deprecated
        public BigPictureStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static class BigTextStyle extends Style {
        private CharSequence mBigText;

        public BigTextStyle() {
        }

        public static void applyBigTextContentView(Builder builder, RemoteViews remoteViews, CharSequence charSequence) {
            remoteViews.setTextViewText(R.id.big_text, builder.processTextSpans(charSequence));
            builder.setTextViewColorSecondary(remoteViews, R.id.big_text);
            remoteViews.setViewVisibility(R.id.big_text, TextUtils.isEmpty(charSequence) ? 8 : 0);
            remoteViews.setBoolean(R.id.big_text, "setHasImage", builder.mN.hasLargeIcon());
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            bundle.putCharSequence("android.bigText", this.mBigText);
        }

        public BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = Notification.safeCharSequence(charSequence);
            return this;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            CharSequence charSequence = this.mBuilder.getAllExtras().getCharSequence("android.text");
            this.mBuilder.getAllExtras().putCharSequence("android.text", null);
            RemoteViews standardView = getStandardView(this.mBuilder.getBigTextLayoutResource());
            this.mBuilder.getAllExtras().putCharSequence("android.text", charSequence);
            CharSequence charSequenceProcessLegacyText = this.mBuilder.processLegacyText(this.mBigText);
            if (TextUtils.isEmpty(charSequenceProcessLegacyText)) {
                charSequenceProcessLegacyText = this.mBuilder.processLegacyText(charSequence);
            }
            applyBigTextContentView(this.mBuilder, standardView, charSequenceProcessLegacyText);
            return standardView;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeContentView(boolean z2) {
            if (!z2) {
                return super.makeContentView(z2);
            }
            Builder builder = this.mBuilder;
            builder.mOriginalActions = builder.mActions;
            this.mBuilder.mActions = new ArrayList();
            RemoteViews remoteViewsMakeBigContentView = makeBigContentView();
            Builder builder2 = this.mBuilder;
            builder2.mActions = builder2.mOriginalActions;
            this.mBuilder.mOriginalActions = null;
            return remoteViewsMakeBigContentView;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeHeadsUpContentView(boolean z2) {
            return (!z2 || this.mBuilder.mActions.size() <= 0) ? super.makeHeadsUpContentView(z2) : makeBigContentView();
        }

        @Override // android.app.Notification.Style
        public void restoreFromExtras(Bundle bundle) {
            super.restoreFromExtras(bundle);
            this.mBigText = bundle.getCharSequence("android.bigText");
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        @Deprecated
        public BigTextStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static class Builder {
        public static final String EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.bigViewActionCount";
        public static final String EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.contentViewActionCount";
        public static final String EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT = "android.rebuild.hudViewActionCount";
        private static final int LIGHTNESS_TEXT_DIFFERENCE_DARK = -10;
        private static final int LIGHTNESS_TEXT_DIFFERENCE_LIGHT = 20;
        private static final int MAX_ACTION_BUTTONS = 3;
        private static final boolean USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY = SystemProperties.getBoolean("notifications.only_title", true);
        private int mActionBarColor;
        private ArrayList<Action> mActions;
        private int mBackgroundColor;
        private int mBackgroundColorHint;
        private int mCachedAmbientColor;
        private int mCachedAmbientColorIsFor;
        private int mCachedContrastColor;
        private int mCachedContrastColorIsFor;
        private NotificationColorUtil mColorUtil;
        private Context mContext;
        private int mForegroundColor;
        private boolean mInNightMode;
        private boolean mIsLegacy;
        private boolean mIsLegacyInitialized;
        private Notification mN;
        private ArrayList<Action> mOriginalActions;
        StandardTemplateParams mParams;
        private ArrayList<String> mPersonList;
        private int mPrimaryTextColor;
        private boolean mRebuildStyledRemoteViews;
        private int mSecondaryTextColor;
        private Style mStyle;
        private int mTextColorsAreForBackground;
        private boolean mTintActionButtons;
        private Bundle mUserExtras;

        public Builder(Context context, String str) {
            this(context, (Notification) null);
            this.mN.mChannelId = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplate(int i2) {
            return applyStandardTemplate(i2, this.mParams.reset().fillTextsFrom(this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplateWithActions(int i2) {
            return applyStandardTemplateWithActions(i2, this.mParams.reset().fillTextsFrom(this));
        }

        private void bindExpandButton(RemoteViews remoteViews) {
            int primaryHighlightColor = getPrimaryHighlightColor();
            remoteViews.setDrawableParameters(R.id.expand_button, false, -1, primaryHighlightColor, PorterDuff.Mode.SRC_ATOP, -1);
            remoteViews.setInt(R.id.notification_header, "setOriginalNotificationColor", primaryHighlightColor);
        }

        private void bindHeaderAppName(RemoteViews remoteViews, boolean z2) {
            remoteViews.setTextViewText(R.id.app_name_text, loadHeaderAppName());
            if (!isColorized() || z2) {
                remoteViews.setTextColor(R.id.app_name_text, z2 ? resolveAmbientColor() : resolveContrastColor());
            } else {
                setTextViewColorPrimary(remoteViews, R.id.app_name_text);
            }
        }

        private void bindHeaderChronometerAndTime(RemoteViews remoteViews) {
            if (!showsTimeOrChronometer()) {
                Notification notification = this.mN;
                long j2 = notification.when;
                if (j2 == 0) {
                    j2 = notification.creationTime;
                }
                remoteViews.setLong(R.id.time, "setTime", j2);
                return;
            }
            remoteViews.setViewVisibility(R.id.time_divider, 0);
            setTextViewColorSecondary(remoteViews, R.id.time_divider);
            if (!this.mN.extras.getBoolean("android.showChronometer")) {
                remoteViews.setViewVisibility(R.id.time, 0);
                remoteViews.setLong(R.id.time, "setTime", this.mN.when);
                setTextViewColorSecondary(remoteViews, R.id.time);
            } else {
                remoteViews.setViewVisibility(R.id.chronometer, 0);
                remoteViews.setLong(R.id.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + this.mN.when);
                remoteViews.setBoolean(R.id.chronometer, "setStarted", true);
                remoteViews.setChronometerCountDown(R.id.chronometer, this.mN.extras.getBoolean("android.chronometerCountDown"));
                setTextViewColorSecondary(remoteViews, R.id.chronometer);
            }
        }

        private void bindHeaderText(RemoteViews remoteViews) {
            Style style;
            CharSequence charSequence = this.mN.extras.getCharSequence("android.subText");
            if (charSequence == null && (style = this.mStyle) != null && style.mSummaryTextSet && style.hasSummaryInHeader()) {
                charSequence = this.mStyle.mSummaryText;
            }
            if (charSequence == null && this.mContext.getApplicationInfo().targetSdkVersion < 24 && this.mN.extras.getCharSequence("android.infoText") != null) {
                charSequence = this.mN.extras.getCharSequence("android.infoText");
            }
            if (charSequence != null) {
                remoteViews.setTextViewText(R.id.header_text, processTextSpans(processLegacyText(charSequence)));
                setTextViewColorSecondary(remoteViews, R.id.header_text);
                remoteViews.setViewVisibility(R.id.header_text, 0);
                remoteViews.setViewVisibility(R.id.header_text_divider, 0);
                setTextViewColorSecondary(remoteViews, R.id.header_text_divider);
            }
        }

        private void bindLargeIcon(RemoteViews remoteViews) {
            Notification notification;
            Bitmap bitmap;
            if (this.mN.mLargeIcon == null && (bitmap = (notification = this.mN).largeIcon) != null) {
                notification.mLargeIcon = Icon.createWithBitmap(bitmap);
            }
            if (this.mN.mLargeIcon != null) {
                remoteViews.setViewVisibility(R.id.right_icon, 0);
                remoteViews.setImageViewIcon(R.id.right_icon, this.mN.mLargeIcon);
                processLargeLegacyIcon(this.mN.mLargeIcon, remoteViews);
                remoteViews.setViewLayoutMarginEndDimen(R.id.line1, R.dimen.notification_content_picture_margin);
                remoteViews.setViewLayoutMarginEndDimen(R.id.text, R.dimen.notification_content_picture_margin);
                remoteViews.setViewLayoutMarginEndDimen(16908301, R.dimen.notification_content_picture_margin);
                Action actionFindReplyAction = findReplyAction();
                remoteViews.setViewVisibility(R.id.reply_icon_action, actionFindReplyAction != null ? 0 : 8);
                if (actionFindReplyAction != null) {
                    int iResolveContrastColor = resolveContrastColor();
                    PorterDuff.Mode mode = PorterDuff.Mode.SRC_ATOP;
                    remoteViews.setDrawableParameters(R.id.reply_icon_action, true, -1, iResolveContrastColor, mode, -1);
                    remoteViews.setDrawableParameters(R.id.reply_icon_action, false, -1, NotificationColorUtil.isColorLight(iResolveContrastColor) ? -16777216 : -1, mode, -1);
                    remoteViews.setOnClickPendingIntent(R.id.right_icon, actionFindReplyAction.actionIntent);
                    remoteViews.setOnClickPendingIntent(R.id.reply_icon_action, actionFindReplyAction.actionIntent);
                    remoteViews.setRemoteInputs(R.id.right_icon, actionFindReplyAction.mRemoteInputs);
                    remoteViews.setRemoteInputs(R.id.reply_icon_action, actionFindReplyAction.mRemoteInputs);
                }
            }
            remoteViews.setViewVisibility(R.id.right_icon_container, this.mN.mLargeIcon != null ? 0 : 8);
        }

        private void bindNotificationHeader(RemoteViews remoteViews, boolean z2) {
            bindSmallIcon(remoteViews, z2);
            bindHeaderAppName(remoteViews, z2);
            if (!z2) {
                bindHeaderText(remoteViews);
                bindHeaderChronometerAndTime(remoteViews);
                bindProfileBadge(remoteViews);
            }
            bindExpandButton(remoteViews);
        }

        private void bindProfileBadge(RemoteViews remoteViews) {
            Bitmap profileBadge = getProfileBadge();
            if (profileBadge != null) {
                remoteViews.setImageViewBitmap(R.id.profile_badge, profileBadge);
                remoteViews.setViewVisibility(R.id.profile_badge, 0);
                if (isColorized()) {
                    remoteViews.setDrawableParameters(R.id.profile_badge, false, -1, getPrimaryTextColor(), PorterDuff.Mode.SRC_ATOP, -1);
                }
            }
        }

        private void bindSmallIcon(RemoteViews remoteViews, boolean z2) {
            Notification notification;
            int i2;
            if (this.mN.mSmallIcon == null && (i2 = (notification = this.mN).icon) != 0) {
                notification.mSmallIcon = Icon.createWithResource(this.mContext, i2);
            }
            remoteViews.setImageViewIcon(16908294, this.mN.mSmallIcon);
            remoteViews.setDrawableParameters(16908294, false, -1, -1, null, this.mN.iconLevel);
            processSmallIconColor(this.mN.mSmallIcon, remoteViews, z2);
        }

        private CharSequence createSummaryText() {
            CharSequence charSequence = this.mN.extras.getCharSequence("android.title");
            if (USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY) {
                return charSequence;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (charSequence == null) {
                charSequence = this.mN.extras.getCharSequence("android.title.big");
            }
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            if (charSequence != null) {
                spannableStringBuilder.append(bidiFormatter.unicodeWrap(charSequence));
            }
            CharSequence charSequence2 = this.mN.extras.getCharSequence("android.text");
            if (charSequence != null && charSequence2 != null) {
                spannableStringBuilder.append(bidiFormatter.unicodeWrap(this.mContext.getText(R.string.notification_header_divider_symbol_with_spaces)));
            }
            if (charSequence2 != null) {
                spannableStringBuilder.append(bidiFormatter.unicodeWrap(charSequence2));
            }
            return spannableStringBuilder;
        }

        private CharSequence ensureColorSpanContrast(CharSequence charSequence, int i2, ColorStateList[] colorStateListArr) {
            Object[] objArr;
            int i3;
            if (!(charSequence instanceof Spanned)) {
                return charSequence;
            }
            Spanned spanned = (Spanned) charSequence;
            boolean z2 = false;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned.toString());
            int length = spans.length;
            int i4 = 0;
            while (i4 < length) {
                Object obj = spans[i4];
                int spanStart = spanned.getSpanStart(obj);
                int spanEnd = spanned.getSpanEnd(obj);
                boolean z3 = spanEnd - spanStart == charSequence.length() ? true : z2;
                Object underlying = obj instanceof CharacterStyle ? ((CharacterStyle) obj).getUnderlying() : obj;
                if (underlying instanceof TextAppearanceSpan) {
                    TextAppearanceSpan textAppearanceSpan = (TextAppearanceSpan) underlying;
                    ColorStateList textColor = textAppearanceSpan.getTextColor();
                    if (textColor != null) {
                        int[] colors = textColor.getColors();
                        int length2 = colors.length;
                        objArr = spans;
                        int[] iArr = new int[length2];
                        i3 = length;
                        int i5 = 0;
                        while (i5 < length2) {
                            iArr[i5] = NotificationColorUtil.ensureLargeTextContrast(colors[i5], i2, this.mInNightMode);
                            i5++;
                            length2 = length2;
                            colors = colors;
                        }
                        ColorStateList colorStateList = new ColorStateList((int[][]) textColor.getStates().clone(), iArr);
                        underlying = new TextAppearanceSpan(textAppearanceSpan.getFamily(), textAppearanceSpan.getTextStyle(), textAppearanceSpan.getTextSize(), colorStateList, textAppearanceSpan.getLinkTextColor());
                        if (z3) {
                            colorStateListArr[0] = new ColorStateList((int[][]) colorStateList.getStates().clone(), iArr);
                        }
                    } else {
                        objArr = spans;
                        i3 = length;
                    }
                } else {
                    objArr = spans;
                    i3 = length;
                    if (underlying instanceof ForegroundColorSpan) {
                        int iEnsureLargeTextContrast = NotificationColorUtil.ensureLargeTextContrast(((ForegroundColorSpan) underlying).getForegroundColor(), i2, this.mInNightMode);
                        underlying = new ForegroundColorSpan(iEnsureLargeTextContrast);
                        if (z3) {
                            z2 = false;
                            colorStateListArr[0] = ColorStateList.valueOf(iEnsureLargeTextContrast);
                        }
                    } else {
                        z2 = false;
                        underlying = obj;
                    }
                    spannableStringBuilder.setSpan(underlying, spanStart, spanEnd, spanned.getSpanFlags(obj));
                    i4++;
                    spans = objArr;
                    length = i3;
                }
                z2 = false;
                spannableStringBuilder.setSpan(underlying, spanStart, spanEnd, spanned.getSpanFlags(obj));
                i4++;
                spans = objArr;
                length = i3;
            }
            return spannableStringBuilder;
        }

        private void ensureColors() {
            int backgroundColor = getBackgroundColor();
            if (this.mPrimaryTextColor == 1 || this.mSecondaryTextColor == 1 || this.mActionBarColor == 1 || this.mTextColorsAreForBackground != backgroundColor) {
                this.mTextColorsAreForBackground = backgroundColor;
                if (hasForegroundColor() && isColorized()) {
                    double dCalculateLuminance = NotificationColorUtil.calculateLuminance(backgroundColor);
                    double dCalculateLuminance2 = NotificationColorUtil.calculateLuminance(this.mForegroundColor);
                    double dCalculateContrast = NotificationColorUtil.calculateContrast(this.mForegroundColor, backgroundColor);
                    boolean z2 = (dCalculateLuminance > dCalculateLuminance2 && NotificationColorUtil.satisfiesTextContrast(backgroundColor, -16777216)) || (dCalculateLuminance <= dCalculateLuminance2 && !NotificationColorUtil.satisfiesTextContrast(backgroundColor, -1));
                    if (dCalculateContrast >= 4.5d) {
                        int i2 = this.mForegroundColor;
                        this.mPrimaryTextColor = i2;
                        int iChangeColorLightness = NotificationColorUtil.changeColorLightness(i2, z2 ? 20 : -10);
                        this.mSecondaryTextColor = iChangeColorLightness;
                        if (NotificationColorUtil.calculateContrast(iChangeColorLightness, backgroundColor) < 4.5d) {
                            if (z2) {
                                this.mSecondaryTextColor = NotificationColorUtil.findContrastColor(this.mSecondaryTextColor, backgroundColor, true, 4.5d);
                            } else {
                                this.mSecondaryTextColor = NotificationColorUtil.findContrastColorAgainstDark(this.mSecondaryTextColor, backgroundColor, true, 4.5d);
                            }
                            this.mPrimaryTextColor = NotificationColorUtil.changeColorLightness(this.mSecondaryTextColor, z2 ? -20 : 10);
                        }
                    } else if (z2) {
                        int iFindContrastColor = NotificationColorUtil.findContrastColor(this.mForegroundColor, backgroundColor, true, 4.5d);
                        this.mSecondaryTextColor = iFindContrastColor;
                        this.mPrimaryTextColor = NotificationColorUtil.changeColorLightness(iFindContrastColor, -20);
                    } else {
                        int iFindContrastColorAgainstDark = NotificationColorUtil.findContrastColorAgainstDark(this.mForegroundColor, backgroundColor, true, 4.5d);
                        this.mSecondaryTextColor = iFindContrastColorAgainstDark;
                        this.mPrimaryTextColor = NotificationColorUtil.changeColorLightness(iFindContrastColorAgainstDark, 10);
                    }
                } else {
                    this.mPrimaryTextColor = NotificationColorUtil.resolvePrimaryColor(this.mContext, backgroundColor);
                    this.mSecondaryTextColor = NotificationColorUtil.resolveSecondaryColor(this.mContext, backgroundColor);
                    if (backgroundColor != 0 && (this.mBackgroundColorHint != 1 || isColorized())) {
                        this.mPrimaryTextColor = NotificationColorUtil.findAlphaToMeetContrast(this.mPrimaryTextColor, backgroundColor, 4.5d);
                        this.mSecondaryTextColor = NotificationColorUtil.findAlphaToMeetContrast(this.mSecondaryTextColor, backgroundColor, 4.5d);
                    }
                }
                this.mActionBarColor = NotificationColorUtil.resolveActionBarColor(this.mContext, backgroundColor);
            }
        }

        private Action findReplyAction() {
            ArrayList<Action> arrayList = this.mActions;
            ArrayList<Action> arrayList2 = this.mOriginalActions;
            if (arrayList2 != null) {
                arrayList = arrayList2;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Action action = arrayList.get(i2);
                if (hasValidRemoteInput(action)) {
                    return action;
                }
            }
            return null;
        }

        private RemoteViews generateActionButton(Action action, boolean z2, boolean z3, boolean z4) {
            int actionTombstoneLayoutResource;
            int color;
            CharSequence charSequenceEnsureColorSpanContrast;
            ColorStateList[] colorStateListArr;
            ColorStateList colorStateList;
            boolean z5 = action.actionIntent == null;
            ApplicationInfo applicationInfo = this.mContext.getApplicationInfo();
            if (z2) {
                actionTombstoneLayoutResource = getEmphasizedActionLayoutResource();
            } else {
                actionTombstoneLayoutResource = z5 ? getActionTombstoneLayoutResource() : getActionLayoutResource();
            }
            BuilderRemoteViews builderRemoteViews = new BuilderRemoteViews(applicationInfo, actionTombstoneLayoutResource);
            if (!z5) {
                builderRemoteViews.setOnClickPendingIntent(R.id.action0, action.actionIntent);
            }
            builderRemoteViews.setContentDescription(R.id.action0, action.title);
            if (action.mRemoteInputs != null) {
                builderRemoteViews.setRemoteInputs(R.id.action0, action.mRemoteInputs);
            }
            if (z2) {
                if (isColorized()) {
                    color = z3 ? getActionBarColor() : getActionBarColorDeEmphasized();
                } else {
                    color = this.mContext.getColor(z3 ? R.color.notification_action_list : R.color.notification_action_list_dark);
                }
                builderRemoteViews.setDrawableParameters(R.id.button_holder, true, -1, color, PorterDuff.Mode.SRC_ATOP, -1);
                CharSequence charSequence = action.title;
                if (isLegacy()) {
                    charSequenceEnsureColorSpanContrast = NotificationColorUtil.clearColorSpans(charSequence);
                    colorStateListArr = null;
                } else {
                    ColorStateList[] colorStateListArr2 = new ColorStateList[1];
                    charSequenceEnsureColorSpanContrast = ensureColorSpanContrast(charSequence, color, colorStateListArr2);
                    colorStateListArr = colorStateListArr2;
                }
                builderRemoteViews.setTextViewText(R.id.action0, processTextSpans(charSequenceEnsureColorSpanContrast));
                setTextViewColorPrimary(builderRemoteViews, R.id.action0);
                if (colorStateListArr != null && (colorStateList = colorStateListArr[0]) != null) {
                    builderRemoteViews.setTextColor(R.id.action0, colorStateList);
                } else if (this.mN.color != 0 && !isColorized() && this.mTintActionButtons) {
                    builderRemoteViews.setTextColor(R.id.action0, resolveContrastColor());
                }
            } else {
                builderRemoteViews.setTextViewText(R.id.action0, processTextSpans(processLegacyText(action.title)));
                if (isColorized() && !z4) {
                    setTextViewColorPrimary(builderRemoteViews, R.id.action0);
                } else if (this.mN.color != 0 && this.mTintActionButtons) {
                    builderRemoteViews.setTextColor(R.id.action0, z4 ? resolveAmbientColor() : resolveContrastColor());
                }
            }
            return builderRemoteViews;
        }

        private int getActionBarColor() {
            ensureColors();
            return this.mActionBarColor;
        }

        private int getActionBarColorDeEmphasized() {
            return NotificationColorUtil.getShiftedColor(getBackgroundColor(), 12);
        }

        private int getActionLayoutResource() {
            return R.layout.notification_material_action;
        }

        private int getActionTombstoneLayoutResource() {
            return R.layout.notification_material_action_tombstone;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Bundle getAllExtras() {
            Bundle bundle = (Bundle) this.mUserExtras.clone();
            bundle.putAll(this.mN.extras);
            return bundle;
        }

        private int getBackgroundColor() {
            if (isColorized()) {
                int i2 = this.mBackgroundColor;
                return i2 != 1 ? i2 : this.mN.color;
            }
            int i3 = this.mBackgroundColorHint;
            if (i3 != 1) {
                return i3;
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBaseLayoutResource() {
            return R.layout.notification_template_material_base;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBigBaseLayoutResource() {
            return R.layout.notification_template_material_big_base;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBigPictureLayoutResource() {
            return R.layout.notification_template_material_big_picture;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getBigTextLayoutResource() {
            return R.layout.notification_template_material_big_text;
        }

        private NotificationColorUtil getColorUtil() {
            if (this.mColorUtil == null) {
                this.mColorUtil = NotificationColorUtil.getInstance(this.mContext);
            }
            return this.mColorUtil;
        }

        private int getEmphasizedActionLayoutResource() {
            return R.layout.notification_material_action_emphasized;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getInboxLayoutResource() {
            return R.layout.notification_template_material_inbox;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMessagingLayoutResource() {
            return R.layout.notification_template_material_messaging;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getPrimaryHighlightColor() {
            return isColorized() ? getPrimaryTextColor() : resolveContrastColor();
        }

        private Bitmap getProfileBadge() {
            Drawable profileBadgeDrawable = getProfileBadgeDrawable();
            if (profileBadgeDrawable == null) {
                return null;
            }
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.notification_badge_size);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            profileBadgeDrawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            profileBadgeDrawable.draw(canvas);
            return bitmapCreateBitmap;
        }

        private Drawable getProfileBadgeDrawable() {
            if (this.mContext.getUserId() == 0) {
                return null;
            }
            return this.mContext.getPackageManager().getUserBadgeForDensityNoBackground(new UserHandle(this.mContext.getUserId()), 0);
        }

        private boolean handleProgressBar(boolean z2, RemoteViews remoteViews, Bundle bundle) {
            int i2 = bundle.getInt("android.progressMax", 0);
            int i3 = bundle.getInt("android.progress", 0);
            boolean z3 = bundle.getBoolean("android.progressIndeterminate");
            if (!z2 || (i2 == 0 && !z3)) {
                remoteViews.setViewVisibility(16908301, 8);
                return false;
            }
            remoteViews.setViewVisibility(16908301, 0);
            remoteViews.setProgressBar(16908301, i2, i3, z3);
            remoteViews.setProgressBackgroundTintList(16908301, ColorStateList.valueOf(this.mContext.getColor(R.color.notification_progress_background_color)));
            if (this.mN.color == 0) {
                return true;
            }
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(resolveContrastColor());
            remoteViews.setProgressTintList(16908301, colorStateListValueOf);
            remoteViews.setProgressIndeterminateTintList(16908301, colorStateListValueOf);
            return true;
        }

        private boolean hasForegroundColor() {
            return this.mForegroundColor != 1;
        }

        private boolean hasValidRemoteInput(Action action) {
            RemoteInput[] remoteInputs;
            if (TextUtils.isEmpty(action.title) || action.actionIntent == null || (remoteInputs = action.getRemoteInputs()) == null) {
                return false;
            }
            for (RemoteInput remoteInput : remoteInputs) {
                CharSequence[] choices = remoteInput.getChoices();
                if (remoteInput.getAllowFreeFormInput()) {
                    return true;
                }
                if (choices != null && choices.length != 0) {
                    return true;
                }
            }
            return false;
        }

        private void hideLine1Text(RemoteViews remoteViews) {
            if (remoteViews != null) {
                remoteViews.setViewVisibility(R.id.text_line_1, 8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isColorized() {
            return this.mN.isColorized();
        }

        private boolean isLegacy() {
            if (!this.mIsLegacyInitialized) {
                this.mIsLegacy = this.mContext.getApplicationInfo().targetSdkVersion < 21;
                this.mIsLegacyInitialized = true;
            }
            return this.mIsLegacy;
        }

        public static void makeHeaderExpanded(RemoteViews remoteViews) {
            if (remoteViews != null) {
                remoteViews.setBoolean(R.id.notification_header, "setExpanded", true);
            }
        }

        private RemoteViews makePublicView(boolean z2) {
            RemoteViews remoteViewsMakeNotificationHeader;
            Notification notification = this.mN;
            Notification notification2 = notification.publicVersion;
            if (notification2 != null) {
                Builder builderRecoverBuilder = recoverBuilder(this.mContext, notification2);
                return z2 ? builderRecoverBuilder.makeAmbientNotification() : builderRecoverBuilder.createContentView();
            }
            Bundle bundle = notification.extras;
            Style style = this.mStyle;
            this.mStyle = null;
            Icon icon = notification.mLargeIcon;
            this.mN.mLargeIcon = null;
            Notification notification3 = this.mN;
            Bitmap bitmap = notification3.largeIcon;
            notification3.largeIcon = null;
            ArrayList<Action> arrayList = this.mActions;
            this.mActions = new ArrayList<>();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("android.showWhen", bundle.getBoolean("android.showWhen"));
            bundle2.putBoolean("android.showChronometer", bundle.getBoolean("android.showChronometer"));
            bundle2.putBoolean("android.chronometerCountDown", bundle.getBoolean("android.chronometerCountDown"));
            this.mN.extras = bundle2;
            if (z2) {
                bundle2.putCharSequence("android.title", this.mContext.getString(R.string.notification_hidden_text));
                remoteViewsMakeNotificationHeader = makeAmbientNotification();
            } else {
                remoteViewsMakeNotificationHeader = makeNotificationHeader(false);
                remoteViewsMakeNotificationHeader.setBoolean(R.id.notification_header, "setExpandOnlyOnButton", true);
            }
            Notification notification4 = this.mN;
            notification4.extras = bundle;
            notification4.mLargeIcon = icon;
            this.mN.largeIcon = bitmap;
            this.mActions = arrayList;
            this.mStyle = style;
            return remoteViewsMakeNotificationHeader;
        }

        public static Notification maybeCloneStrippedForDelivery(Notification notification, boolean z2) {
            String string = notification.extras.getString("android.template");
            if (!z2 && !TextUtils.isEmpty(string) && Notification.getNotificationStyleClass(string) == null) {
                return notification;
            }
            boolean z3 = (notification.contentView instanceof BuilderRemoteViews) && notification.extras.getInt(EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT, -1) == notification.contentView.getSequenceNumber();
            boolean z4 = (notification.bigContentView instanceof BuilderRemoteViews) && notification.extras.getInt(EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT, -1) == notification.bigContentView.getSequenceNumber();
            boolean z5 = (notification.headsUpContentView instanceof BuilderRemoteViews) && notification.extras.getInt(EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT, -1) == notification.headsUpContentView.getSequenceNumber();
            if (!z2 && !z3 && !z4 && !z5) {
                return notification;
            }
            Notification notificationM8clone = notification.m8clone();
            if (z3) {
                notificationM8clone.contentView = null;
                notificationM8clone.extras.remove(EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT);
            }
            if (z4) {
                notificationM8clone.bigContentView = null;
                notificationM8clone.extras.remove(EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT);
            }
            if (z5) {
                notificationM8clone.headsUpContentView = null;
                notificationM8clone.extras.remove(EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT);
            }
            if (z2) {
                notificationM8clone.extras.remove("android.tv.EXTENSIONS");
                notificationM8clone.extras.remove("android.wearable.EXTENSIONS");
                notificationM8clone.extras.remove("android.car.EXTENSIONS");
            }
            return notificationM8clone;
        }

        private void processLargeLegacyIcon(Icon icon, RemoteViews remoteViews) {
            if (icon != null && isLegacy() && getColorUtil().isGrayscaleIcon(this.mContext, icon)) {
                remoteViews.setDrawableParameters(16908294, false, -1, resolveContrastColor(), PorterDuff.Mode.SRC_ATOP, -1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence processLegacyText(CharSequence charSequence) {
            return processLegacyText(charSequence, false);
        }

        private void processSmallIconColor(Icon icon, RemoteViews remoteViews, boolean z2) {
            boolean zIsGrayscaleIcon = getColorUtil().isGrayscaleIcon(this.mContext, icon);
            int iResolveAmbientColor = z2 ? resolveAmbientColor() : getPrimaryHighlightColor();
            if (zIsGrayscaleIcon) {
                remoteViews.setDrawableParameters(16908294, false, -1, iResolveAmbientColor, PorterDuff.Mode.SRC_ATOP, -1);
            }
            if (!zIsGrayscaleIcon) {
                iResolveAmbientColor = 1;
            }
            remoteViews.setInt(R.id.notification_header, "setOriginalIconColor", iResolveAmbientColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence processTextSpans(CharSequence charSequence) {
            return hasForegroundColor() ? NotificationColorUtil.clearColorSpans(charSequence) : charSequence;
        }

        public static Builder recoverBuilder(Context context, Notification notification) {
            ApplicationInfo applicationInfo = (ApplicationInfo) notification.extras.getParcelable(Notification.EXTRA_BUILDER_APPLICATION_INFO);
            if (applicationInfo != null) {
                try {
                    context = context.createApplicationContext(applicationInfo, 4);
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e(Notification.TAG, "ApplicationInfo " + applicationInfo + " not found");
                }
            }
            return new Builder(context, notification);
        }

        private void resetContentMargins(RemoteViews remoteViews) {
            remoteViews.setViewLayoutMarginEndDimen(R.id.line1, 0);
            remoteViews.setViewLayoutMarginEndDimen(R.id.text, 0);
        }

        private void resetNotificationHeader(RemoteViews remoteViews) {
            remoteViews.setBoolean(R.id.notification_header, "setExpanded", false);
            remoteViews.setTextViewText(R.id.app_name_text, null);
            remoteViews.setViewVisibility(R.id.chronometer, 8);
            remoteViews.setViewVisibility(R.id.header_text, 8);
            remoteViews.setTextViewText(R.id.header_text, null);
            remoteViews.setViewVisibility(R.id.header_text_divider, 8);
            remoteViews.setViewVisibility(R.id.time_divider, 8);
            remoteViews.setViewVisibility(R.id.time, 8);
            remoteViews.setImageViewIcon(R.id.profile_badge, null);
            remoteViews.setViewVisibility(R.id.profile_badge, 8);
        }

        private void resetStandardTemplate(RemoteViews remoteViews) {
            resetNotificationHeader(remoteViews);
            resetContentMargins(remoteViews);
            remoteViews.setViewVisibility(R.id.right_icon, 8);
            remoteViews.setViewVisibility(16908310, 8);
            remoteViews.setTextViewText(16908310, null);
            remoteViews.setViewVisibility(R.id.text, 8);
            remoteViews.setTextViewText(R.id.text, null);
            remoteViews.setViewVisibility(R.id.text_line_1, 8);
            remoteViews.setTextViewText(R.id.text_line_1, null);
        }

        private void resetStandardTemplateWithActions(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R.id.actions, 8);
            remoteViews.removeAllViews(R.id.actions);
            remoteViews.setViewVisibility(R.id.notification_material_reply_container, 8);
            remoteViews.setTextViewText(R.id.notification_material_reply_text_1, null);
            remoteViews.setViewVisibility(R.id.notification_material_reply_text_2, 8);
            remoteViews.setTextViewText(R.id.notification_material_reply_text_2, null);
            remoteViews.setViewVisibility(R.id.notification_material_reply_text_3, 8);
            remoteViews.setTextViewText(R.id.notification_material_reply_text_3, null);
            remoteViews.setViewLayoutMarginBottomDimen(R.id.notification_action_list_margin_target, 0);
        }

        private void sanitizeColor() {
            Notification notification = this.mN;
            int i2 = notification.color;
            if (i2 != 0) {
                notification.color = i2 | (-16777216);
            }
        }

        private void setTextViewColorPrimary(RemoteViews remoteViews, int i2) {
            ensureColors();
            remoteViews.setTextColor(i2, this.mPrimaryTextColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTextViewColorSecondary(RemoteViews remoteViews, int i2) {
            ensureColors();
            remoteViews.setTextColor(i2, this.mSecondaryTextColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean shouldTintActionButtons() {
            return this.mTintActionButtons;
        }

        private boolean showsTimeOrChronometer() {
            return this.mN.showsTime() || this.mN.showsChronometer();
        }

        private boolean textColorsNeedInversion() {
            int i2;
            Style style = this.mStyle;
            return style != null && MediaStyle.class.equals(style.getClass()) && (i2 = this.mContext.getApplicationInfo().targetSdkVersion) > 23 && i2 < 26;
        }

        private void updateBackgroundColor(RemoteViews remoteViews) {
            if (isColorized()) {
                remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", getBackgroundColor());
            } else {
                remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundResource", 0);
            }
        }

        private boolean useExistingRemoteView() {
            Style style = this.mStyle;
            return style == null || !(style.displayCustomViewInline() || this.mRebuildStyledRemoteViews);
        }

        @Deprecated
        public Builder addAction(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i2, Notification.safeCharSequence(charSequence), pendingIntent));
            return this;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                this.mUserExtras.putAll(bundle);
            }
            return this;
        }

        public Builder addPerson(String str) {
            this.mPersonList.add(str);
            return this;
        }

        public Notification build() {
            if (this.mUserExtras != null) {
                this.mN.extras = getAllExtras();
            }
            this.mN.creationTime = System.currentTimeMillis();
            Notification.addFieldsFromContext(this.mContext, this.mN);
            buildUnstyled();
            Style style = this.mStyle;
            if (style != null) {
                style.reduceImageSizes(this.mContext);
                this.mStyle.purgeResources();
                this.mStyle.buildStyled(this.mN);
            }
            this.mN.reduceImageSizes(this.mContext);
            if (this.mContext.getApplicationInfo().targetSdkVersion < 24 && useExistingRemoteView()) {
                Notification notification = this.mN;
                if (notification.contentView == null) {
                    notification.contentView = createContentView();
                    Notification notification2 = this.mN;
                    notification2.extras.putInt(EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT, notification2.contentView.getSequenceNumber());
                }
                Notification notification3 = this.mN;
                if (notification3.bigContentView == null) {
                    notification3.bigContentView = createBigContentView();
                    Notification notification4 = this.mN;
                    RemoteViews remoteViews = notification4.bigContentView;
                    if (remoteViews != null) {
                        notification4.extras.putInt(EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT, remoteViews.getSequenceNumber());
                    }
                }
                Notification notification5 = this.mN;
                if (notification5.headsUpContentView == null) {
                    notification5.headsUpContentView = createHeadsUpContentView();
                    Notification notification6 = this.mN;
                    RemoteViews remoteViews2 = notification6.headsUpContentView;
                    if (remoteViews2 != null) {
                        notification6.extras.putInt(EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT, remoteViews2.getSequenceNumber());
                    }
                }
            }
            Notification notification7 = this.mN;
            if ((notification7.defaults & 4) != 0) {
                notification7.flags |= 1;
            }
            return notification7;
        }

        public Notification buildInto(Notification notification) {
            build().cloneInto(notification, true);
            return notification;
        }

        public Notification buildUnstyled() {
            if (this.mActions.size() > 0) {
                this.mN.actions = new Action[this.mActions.size()];
                this.mActions.toArray(this.mN.actions);
            }
            if (!this.mPersonList.isEmpty()) {
                Bundle bundle = this.mN.extras;
                ArrayList<String> arrayList = this.mPersonList;
                bundle.putStringArray("android.people", (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            Notification notification = this.mN;
            if (notification.bigContentView != null || notification.contentView != null || notification.headsUpContentView != null) {
                notification.extras.putBoolean(Notification.EXTRA_CONTAINS_CUSTOM_VIEW, true);
            }
            return this.mN;
        }

        public RemoteViews createBigContentView() {
            RemoteViews remoteViewsApplyStandardTemplateWithActions;
            if (this.mN.bigContentView != null && useExistingRemoteView()) {
                return this.mN.bigContentView;
            }
            Style style = this.mStyle;
            if (style != null) {
                remoteViewsApplyStandardTemplateWithActions = style.makeBigContentView();
                hideLine1Text(remoteViewsApplyStandardTemplateWithActions);
            } else {
                remoteViewsApplyStandardTemplateWithActions = this.mActions.size() != 0 ? applyStandardTemplateWithActions(getBigBaseLayoutResource()) : null;
            }
            makeHeaderExpanded(remoteViewsApplyStandardTemplateWithActions);
            return remoteViewsApplyStandardTemplateWithActions;
        }

        public RemoteViews createContentView() {
            return createContentView(false);
        }

        public RemoteViews createHeadsUpContentView(boolean z2) {
            if (this.mN.headsUpContentView != null && useExistingRemoteView()) {
                return this.mN.headsUpContentView;
            }
            Style style = this.mStyle;
            if (style != null) {
                RemoteViews remoteViewsMakeHeadsUpContentView = style.makeHeadsUpContentView(z2);
                if (remoteViewsMakeHeadsUpContentView != null) {
                    return remoteViewsMakeHeadsUpContentView;
                }
            } else if (this.mActions.size() == 0) {
                return null;
            }
            return applyStandardTemplateWithActions(getBigBaseLayoutResource());
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        public Bundle getExtras() {
            return this.mUserExtras;
        }

        @Deprecated
        public Notification getNotification() {
            return build();
        }

        public int getPrimaryTextColor() {
            ensureColors();
            return this.mPrimaryTextColor;
        }

        public int getSecondaryTextColor() {
            ensureColors();
            return this.mSecondaryTextColor;
        }

        public String loadHeaderAppName() {
            String str;
            String string;
            PackageManager packageManager = this.mContext.getPackageManager();
            if (this.mN.extras.containsKey(Notification.EXTRA_SUBSTITUTE_APP_NAME)) {
                String packageName = this.mContext.getPackageName();
                string = this.mN.extras.getString(Notification.EXTRA_SUBSTITUTE_APP_NAME);
                if (packageManager.checkPermission(Manifest.permission.SUBSTITUTE_NOTIFICATION_APP_NAME, packageName) != 0) {
                    str = string;
                    Log.w(Notification.TAG, "warning: pkg " + packageName + " attempting to substitute app name '" + string + "' without holding perm android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME");
                    str = null;
                }
            } else {
                str = null;
            }
            str = string;
            boolean zIsEmpty = TextUtils.isEmpty(str);
            CharSequence applicationLabel = str;
            if (zIsEmpty) {
                applicationLabel = packageManager.getApplicationLabel(this.mContext.getApplicationInfo());
            }
            if (TextUtils.isEmpty(applicationLabel)) {
                return null;
            }
            return String.valueOf(applicationLabel);
        }

        public RemoteViews makeAmbientNotification() {
            return applyStandardTemplateWithActions(R.layout.notification_template_material_ambient, this.mParams.reset().ambient(true).fillTextsFrom(this).hasProgress(false));
        }

        public RemoteViews makeLowPriorityContentView(boolean z2) {
            Notification notification = this.mN;
            int i2 = notification.color;
            notification.color = 0;
            CharSequence charSequence = notification.extras.getCharSequence("android.subText");
            if (!z2 || TextUtils.isEmpty(charSequence)) {
                CharSequence charSequenceCreateSummaryText = createSummaryText();
                if (!TextUtils.isEmpty(charSequenceCreateSummaryText)) {
                    this.mN.extras.putCharSequence("android.subText", charSequenceCreateSummaryText);
                }
            }
            RemoteViews remoteViewsMakeNotificationHeader = makeNotificationHeader(false);
            remoteViewsMakeNotificationHeader.setBoolean(R.id.notification_header, "setAcceptAllTouches", true);
            if (charSequence != null) {
                this.mN.extras.putCharSequence("android.subText", charSequence);
            } else {
                this.mN.extras.remove("android.subText");
            }
            this.mN.color = i2;
            return remoteViewsMakeNotificationHeader;
        }

        public RemoteViews makeNotificationHeader(boolean z2) {
            Boolean bool = (Boolean) this.mN.extras.get("android.colorized");
            this.mN.extras.putBoolean("android.colorized", false);
            BuilderRemoteViews builderRemoteViews = new BuilderRemoteViews(this.mContext.getApplicationInfo(), z2 ? R.layout.notification_template_ambient_header : R.layout.notification_template_header);
            resetNotificationHeader(builderRemoteViews);
            bindNotificationHeader(builderRemoteViews, z2);
            if (bool != null) {
                this.mN.extras.putBoolean("android.colorized", bool.booleanValue());
            } else {
                this.mN.extras.remove("android.colorized");
            }
            return builderRemoteViews;
        }

        public RemoteViews makePublicAmbientNotification() {
            return makePublicView(true);
        }

        public RemoteViews makePublicContentView() {
            return makePublicView(false);
        }

        public int resolveAmbientColor() {
            int i2 = this.mCachedAmbientColorIsFor;
            int i3 = this.mN.color;
            if (i2 == i3 && i2 != 1) {
                return this.mCachedAmbientColor;
            }
            int iResolveAmbientColor = NotificationColorUtil.resolveAmbientColor(this.mContext, i3);
            this.mCachedAmbientColorIsFor = this.mN.color;
            this.mCachedAmbientColor = iResolveAmbientColor;
            return iResolveAmbientColor;
        }

        public int resolveContrastColor() {
            int iResolveContrastColor;
            int i2;
            if (this.mCachedContrastColorIsFor == this.mN.color && (i2 = this.mCachedContrastColor) != 1) {
                return i2;
            }
            int color = this.mBackgroundColorHint;
            if (color == 1) {
                color = this.mContext.getColor(R.color.notification_material_background_color);
            }
            int i3 = this.mN.color;
            if (i3 == 0) {
                ensureColors();
                iResolveContrastColor = this.mSecondaryTextColor;
            } else {
                iResolveContrastColor = NotificationColorUtil.resolveContrastColor(this.mContext, i3, color, this.mInNightMode);
            }
            if (Color.alpha(iResolveContrastColor) < 255) {
                iResolveContrastColor = NotificationColorUtil.compositeColors(iResolveContrastColor, color);
            }
            this.mCachedContrastColorIsFor = this.mN.color;
            this.mCachedContrastColor = iResolveContrastColor;
            return iResolveContrastColor;
        }

        public Builder setActions(Action... actionArr) {
            this.mActions.clear();
            for (Action action : actionArr) {
                if (action != null) {
                    this.mActions.add(action);
                }
            }
            return this;
        }

        public Builder setAutoCancel(boolean z2) {
            setFlag(16, z2);
            return this;
        }

        public void setBackgroundColorHint(int i2) {
            this.mBackgroundColorHint = i2;
        }

        public Builder setBadgeIconType(int i2) {
            this.mN.mBadgeIcon = i2;
            return this;
        }

        public Builder setCategory(String str) {
            this.mN.category = str;
            return this;
        }

        @Deprecated
        public Builder setChannel(String str) {
            this.mN.mChannelId = str;
            return this;
        }

        public Builder setChannelId(String str) {
            this.mN.mChannelId = str;
            return this;
        }

        public Builder setChronometerCountDown(boolean z2) {
            this.mN.extras.putBoolean("android.chronometerCountDown", z2);
            return this;
        }

        public Builder setColor(int i2) {
            this.mN.color = i2;
            sanitizeColor();
            return this;
        }

        public void setColorPalette(int i2, int i3) {
            this.mBackgroundColor = i2;
            this.mForegroundColor = i3;
            this.mTextColorsAreForBackground = 1;
            ensureColors();
        }

        public Builder setColorized(boolean z2) {
            this.mN.extras.putBoolean("android.colorized", z2);
            return this;
        }

        @Deprecated
        public Builder setContent(RemoteViews remoteViews) {
            return setCustomContentView(remoteViews);
        }

        @Deprecated
        public Builder setContentInfo(CharSequence charSequence) {
            this.mN.extras.putCharSequence("android.infoText", Notification.safeCharSequence(charSequence));
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mN.contentIntent = pendingIntent;
            return this;
        }

        public void setContentMinHeight(RemoteViews remoteViews, boolean z2) {
            remoteViews.setInt(R.id.notification_main_column, "setMinimumHeight", z2 ? this.mContext.getResources().getDimensionPixelSize(R.dimen.notification_min_content_height) : 0);
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mN.extras.putCharSequence("android.text", Notification.safeCharSequence(charSequence));
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mN.extras.putCharSequence("android.title", Notification.safeCharSequence(charSequence));
            return this;
        }

        public Builder setCustomBigContentView(RemoteViews remoteViews) {
            this.mN.bigContentView = remoteViews;
            return this;
        }

        public Builder setCustomContentView(RemoteViews remoteViews) {
            this.mN.contentView = remoteViews;
            return this;
        }

        public Builder setCustomHeadsUpContentView(RemoteViews remoteViews) {
            this.mN.headsUpContentView = remoteViews;
            return this;
        }

        @Deprecated
        public Builder setDefaults(int i2) {
            this.mN.defaults = i2;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mN.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            if (bundle != null) {
                this.mUserExtras = bundle;
            }
            return this;
        }

        public Builder setFlag(int i2, boolean z2) {
            if (z2) {
                Notification notification = this.mN;
                notification.flags = i2 | notification.flags;
            } else {
                Notification notification2 = this.mN;
                notification2.flags = (~i2) & notification2.flags;
            }
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z2) {
            this.mN.fullScreenIntent = pendingIntent;
            setFlag(128, z2);
            return this;
        }

        public Builder setGroup(String str) {
            this.mN.mGroupKey = str;
            return this;
        }

        public Builder setGroupAlertBehavior(int i2) {
            this.mN.mGroupAlertBehavior = i2;
            return this;
        }

        public Builder setGroupSummary(boolean z2) {
            setFlag(512, z2);
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            return setLargeIcon(bitmap != null ? Icon.createWithBitmap(bitmap) : null);
        }

        @Deprecated
        public Builder setLights(int i2, int i3, int i4) {
            Notification notification = this.mN;
            notification.ledARGB = i2;
            notification.ledOnMS = i3;
            notification.ledOffMS = i4;
            if (i3 != 0 || i4 != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public Builder setLocalOnly(boolean z2) {
            setFlag(256, z2);
            return this;
        }

        public Builder setNumber(int i2) {
            this.mN.number = i2;
            return this;
        }

        public Builder setOngoing(boolean z2) {
            setFlag(2, z2);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean z2) {
            setFlag(8, z2);
            return this;
        }

        @Deprecated
        public Builder setPriority(int i2) {
            this.mN.priority = i2;
            return this;
        }

        public Builder setProgress(int i2, int i3, boolean z2) {
            this.mN.extras.putInt("android.progress", i3);
            this.mN.extras.putInt("android.progressMax", i2);
            this.mN.extras.putBoolean("android.progressIndeterminate", z2);
            return this;
        }

        public Builder setPublicVersion(Notification notification) {
            if (notification != null) {
                this.mN.publicVersion = new Notification();
                notification.cloneInto(this.mN.publicVersion, true);
            } else {
                this.mN.publicVersion = null;
            }
            return this;
        }

        public void setRebuildStyledRemoteViews(boolean z2) {
            this.mRebuildStyledRemoteViews = z2;
        }

        public Builder setRemoteInputHistory(CharSequence[] charSequenceArr) {
            if (charSequenceArr == null) {
                this.mN.extras.putCharSequenceArray("android.remoteInputHistory", null);
            } else {
                int iMin = Math.min(5, charSequenceArr.length);
                CharSequence[] charSequenceArr2 = new CharSequence[iMin];
                for (int i2 = 0; i2 < iMin; i2++) {
                    charSequenceArr2[i2] = Notification.safeCharSequence(charSequenceArr[i2]);
                }
                this.mN.extras.putCharSequenceArray("android.remoteInputHistory", charSequenceArr2);
            }
            return this;
        }

        public Builder setSettingsText(CharSequence charSequence) {
            this.mN.mSettingsText = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setShortcutId(String str) {
            this.mN.mShortcutId = str;
            return this;
        }

        public Builder setShowWhen(boolean z2) {
            this.mN.extras.putBoolean("android.showWhen", z2);
            return this;
        }

        public Builder setSmallIcon(int i2) {
            return setSmallIcon(i2 != 0 ? Icon.createWithResource(this.mContext, i2) : null);
        }

        public Builder setSortKey(String str) {
            this.mN.mSortKey = str;
            return this;
        }

        @Deprecated
        public Builder setSound(Uri uri) {
            Notification notification = this.mN;
            notification.sound = uri;
            notification.audioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.setBuilder(this);
                    this.mN.extras.putString("android.template", style.getClass().getName());
                } else {
                    this.mN.extras.remove("android.template");
                }
            }
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mN.extras.putCharSequence("android.subText", Notification.safeCharSequence(charSequence));
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mN.tickerText = Notification.safeCharSequence(charSequence);
            return this;
        }

        @Deprecated
        public Builder setTimeout(long j2) {
            this.mN.mTimeout = j2;
            return this;
        }

        public Builder setTimeoutAfter(long j2) {
            this.mN.mTimeout = j2;
            return this;
        }

        public Builder setUsesChronometer(boolean z2) {
            this.mN.extras.putBoolean("android.showChronometer", z2);
            return this;
        }

        @Deprecated
        public Builder setVibrate(long[] jArr) {
            this.mN.vibrate = jArr;
            return this;
        }

        public Builder setVisibility(int i2) {
            this.mN.visibility = i2;
            return this;
        }

        public Builder setWhen(long j2) {
            this.mN.when = j2;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplate(int i2, boolean z2) {
            return applyStandardTemplate(i2, this.mParams.reset().hasProgress(z2).fillTextsFrom(this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplateWithActions(int i2, StandardTemplateParams standardTemplateParams) {
            boolean zHasValidRemoteInput;
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(i2, standardTemplateParams);
            resetStandardTemplateWithActions(remoteViewsApplyStandardTemplate);
            int size = this.mActions.size();
            boolean z2 = (this.mN.fullScreenIntent == null || standardTemplateParams.ambient) ? false : true;
            remoteViewsApplyStandardTemplate.setBoolean(R.id.actions, "setEmphasizedMode", z2);
            if (size > 0) {
                remoteViewsApplyStandardTemplate.setViewVisibility(R.id.actions_container, 0);
                remoteViewsApplyStandardTemplate.setViewVisibility(R.id.actions, 0);
                if (standardTemplateParams.ambient) {
                    remoteViewsApplyStandardTemplate.setInt(R.id.actions, "setBackgroundColor", 0);
                } else if (isColorized()) {
                    remoteViewsApplyStandardTemplate.setInt(R.id.actions, "setBackgroundColor", getActionBarColor());
                } else {
                    remoteViewsApplyStandardTemplate.setInt(R.id.actions, "setBackgroundColor", this.mContext.getColor(R.color.notification_action_list));
                }
                remoteViewsApplyStandardTemplate.setViewLayoutMarginBottomDimen(R.id.notification_action_list_margin_target, R.dimen.notification_action_list_height);
                if (size > 3) {
                    size = 3;
                }
                zHasValidRemoteInput = false;
                for (int i3 = 0; i3 < size; i3++) {
                    Action action = this.mActions.get(i3);
                    zHasValidRemoteInput |= hasValidRemoteInput(action);
                    remoteViewsApplyStandardTemplate.addView(R.id.actions, generateActionButton(action, z2, i3 % 2 != 0, standardTemplateParams.ambient));
                }
            } else {
                remoteViewsApplyStandardTemplate.setViewVisibility(R.id.actions_container, 8);
                zHasValidRemoteInput = false;
            }
            CharSequence[] charSequenceArray = this.mN.extras.getCharSequenceArray("android.remoteInputHistory");
            if (!standardTemplateParams.ambient && zHasValidRemoteInput && charSequenceArray != null && charSequenceArray.length > 0 && !TextUtils.isEmpty(charSequenceArray[0])) {
                remoteViewsApplyStandardTemplate.setViewVisibility(R.id.notification_material_reply_container, 0);
                remoteViewsApplyStandardTemplate.setTextViewText(R.id.notification_material_reply_text_1, processTextSpans(charSequenceArray[0]));
                setTextViewColorSecondary(remoteViewsApplyStandardTemplate, R.id.notification_material_reply_text_1);
                if (charSequenceArray.length > 1 && !TextUtils.isEmpty(charSequenceArray[1])) {
                    remoteViewsApplyStandardTemplate.setViewVisibility(R.id.notification_material_reply_text_2, 0);
                    remoteViewsApplyStandardTemplate.setTextViewText(R.id.notification_material_reply_text_2, processTextSpans(charSequenceArray[1]));
                    setTextViewColorSecondary(remoteViewsApplyStandardTemplate, R.id.notification_material_reply_text_2);
                    if (charSequenceArray.length > 2 && !TextUtils.isEmpty(charSequenceArray[2])) {
                        remoteViewsApplyStandardTemplate.setViewVisibility(R.id.notification_material_reply_text_3, 0);
                        remoteViewsApplyStandardTemplate.setTextViewText(R.id.notification_material_reply_text_3, processTextSpans(charSequenceArray[2]));
                        setTextViewColorSecondary(remoteViewsApplyStandardTemplate, R.id.notification_material_reply_text_3);
                    }
                }
            }
            return remoteViewsApplyStandardTemplate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CharSequence processLegacyText(CharSequence charSequence, boolean z2) {
            return (isLegacy() || textColorsNeedInversion()) != z2 ? getColorUtil().invertCharSequenceColors(charSequence) : charSequence;
        }

        public Builder addAction(Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        public RemoteViews createContentView(boolean z2) {
            RemoteViews remoteViewsMakeContentView;
            if (this.mN.contentView != null && useExistingRemoteView()) {
                return this.mN.contentView;
            }
            Style style = this.mStyle;
            return (style == null || (remoteViewsMakeContentView = style.makeContentView(z2)) == null) ? applyStandardTemplate(getBaseLayoutResource()) : remoteViewsMakeContentView;
        }

        public Builder setLargeIcon(Icon icon) {
            this.mN.mLargeIcon = icon;
            this.mN.extras.putParcelable("android.largeIcon", icon);
            return this;
        }

        @Deprecated
        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            setTicker(charSequence);
            return this;
        }

        @Deprecated
        public Builder(Context context) {
            this(context, (Notification) null);
        }

        @Deprecated
        public Builder setSound(Uri uri, int i2) {
            PlayerBase.deprecateStreamTypeForPlayback(i2, Notification.TAG, "setSound()");
            Notification notification = this.mN;
            notification.sound = uri;
            notification.audioStreamType = i2;
            return this;
        }

        public Builder(Context context, Notification notification) {
            Bitmap bitmap;
            int i2;
            this.mUserExtras = new Bundle();
            this.mActions = new ArrayList<>(3);
            this.mPersonList = new ArrayList<>();
            this.mCachedContrastColor = 1;
            this.mCachedContrastColorIsFor = 1;
            this.mCachedAmbientColor = 1;
            this.mCachedAmbientColorIsFor = 1;
            this.mParams = new StandardTemplateParams();
            this.mTextColorsAreForBackground = 1;
            this.mPrimaryTextColor = 1;
            this.mSecondaryTextColor = 1;
            this.mActionBarColor = 1;
            this.mBackgroundColor = 1;
            this.mForegroundColor = 1;
            this.mBackgroundColorHint = 1;
            this.mContext = context;
            Resources resources = context.getResources();
            this.mTintActionButtons = resources.getBoolean(R.bool.config_tintNotificationActionButtons);
            if (resources.getBoolean(R.bool.config_enableNightMode)) {
                this.mInNightMode = (resources.getConfiguration().uiMode & 48) == 32;
            }
            if (notification == null) {
                this.mN = new Notification();
                if (context.getApplicationInfo().targetSdkVersion < 24) {
                    this.mN.extras.putBoolean("android.showWhen", true);
                }
                Notification notification2 = this.mN;
                notification2.priority = 0;
                notification2.visibility = 0;
                return;
            }
            this.mN = notification;
            Action[] actionArr = notification.actions;
            if (actionArr != null) {
                Collections.addAll(this.mActions, actionArr);
            }
            if (this.mN.extras.containsKey("android.people")) {
                Collections.addAll(this.mPersonList, this.mN.extras.getStringArray("android.people"));
            }
            if (this.mN.getSmallIcon() == null && (i2 = this.mN.icon) != 0) {
                setSmallIcon(i2);
            }
            if (this.mN.getLargeIcon() == null && (bitmap = this.mN.largeIcon) != null) {
                setLargeIcon(bitmap);
            }
            String string = this.mN.extras.getString("android.template");
            if (TextUtils.isEmpty(string)) {
                return;
            }
            Class<? extends Style> notificationStyleClass = Notification.getNotificationStyleClass(string);
            if (notificationStyleClass == null) {
                Log.d(Notification.TAG, "Unknown style class: " + string);
                return;
            }
            try {
                Constructor<? extends Style> declaredConstructor = notificationStyleClass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                Style styleNewInstance = declaredConstructor.newInstance(new Object[0]);
                styleNewInstance.restoreFromExtras(this.mN.extras);
                setStyle(styleNewInstance);
            } catch (Throwable th) {
                Log.e(Notification.TAG, "Could not create Style", th);
            }
        }

        public Builder setSmallIcon(int i2, int i3) {
            this.mN.iconLevel = i3;
            return setSmallIcon(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplate(int i2, StandardTemplateParams standardTemplateParams) {
            BuilderRemoteViews builderRemoteViews = new BuilderRemoteViews(this.mContext.getApplicationInfo(), i2);
            resetStandardTemplate(builderRemoteViews);
            Bundle bundle = this.mN.extras;
            updateBackgroundColor(builderRemoteViews);
            bindNotificationHeader(builderRemoteViews, standardTemplateParams.ambient);
            bindLargeIcon(builderRemoteViews);
            boolean zHandleProgressBar = handleProgressBar(standardTemplateParams.hasProgress, builderRemoteViews, bundle);
            if (standardTemplateParams.title != null) {
                builderRemoteViews.setViewVisibility(16908310, 0);
                builderRemoteViews.setTextViewText(16908310, processTextSpans(standardTemplateParams.title));
                if (!standardTemplateParams.ambient) {
                    setTextViewColorPrimary(builderRemoteViews, 16908310);
                }
                builderRemoteViews.setViewLayoutWidth(16908310, zHandleProgressBar ? -2 : -1);
            }
            CharSequence charSequence = standardTemplateParams.text;
            if (charSequence != null) {
                int i3 = zHandleProgressBar ? R.id.text_line_1 : R.id.text;
                builderRemoteViews.setTextViewText(i3, processTextSpans(charSequence));
                if (!standardTemplateParams.ambient) {
                    setTextViewColorSecondary(builderRemoteViews, i3);
                }
                builderRemoteViews.setViewVisibility(i3, 0);
            }
            setContentMinHeight(builderRemoteViews, zHandleProgressBar || this.mN.hasLargeIcon());
            return builderRemoteViews;
        }

        public Builder setSmallIcon(Icon icon) {
            this.mN.setSmallIcon(icon);
            if (icon != null && icon.getType() == 2) {
                this.mN.icon = icon.getResId();
            }
            return this;
        }

        @Deprecated
        public Builder setSound(Uri uri, AudioAttributes audioAttributes) {
            Notification notification = this.mN;
            notification.sound = uri;
            notification.audioAttributes = audioAttributes;
            return this;
        }

        public RemoteViews createHeadsUpContentView() {
            return createHeadsUpContentView(false);
        }
    }

    public static class BuilderRemoteViews extends RemoteViews {
        public BuilderRemoteViews(Parcel parcel) {
            super(parcel);
        }

        public BuilderRemoteViews(ApplicationInfo applicationInfo, int i2) {
            super(applicationInfo, i2);
        }

        @Override // android.widget.RemoteViews
        /* JADX INFO: renamed from: clone */
        public BuilderRemoteViews mo11clone() {
            Parcel parcelObtain = Parcel.obtain();
            writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            BuilderRemoteViews builderRemoteViews = new BuilderRemoteViews(parcelObtain);
            parcelObtain.recycle();
            return builderRemoteViews;
        }
    }

    public static class DecoratedCustomViewStyle extends Style {
        private void buildIntoRemoteViewContent(RemoteViews remoteViews, RemoteViews remoteViews2) {
            if (remoteViews2 != null) {
                RemoteViews remoteViewsMo11clone = remoteViews2.mo11clone();
                remoteViews.removeAllViewsExceptId(R.id.notification_main_column, 16908301);
                remoteViews.addView(R.id.notification_main_column, remoteViewsMo11clone, 0);
                remoteViews.setReapplyDisallowed();
            }
            remoteViews.setViewLayoutMarginEndDimen(R.id.notification_main_column, this.mBuilder.mN.hasLargeIcon() ? R.dimen.notification_content_plus_picture_margin_end : R.dimen.notification_content_margin_end);
        }

        private RemoteViews makeDecoratedBigContentView() {
            RemoteViews remoteViews = this.mBuilder.mN.bigContentView == null ? this.mBuilder.mN.contentView : this.mBuilder.mN.bigContentView;
            if (this.mBuilder.mActions.size() == 0) {
                return makeStandardTemplateWithCustomContent(remoteViews);
            }
            Builder builder = this.mBuilder;
            RemoteViews remoteViewsApplyStandardTemplateWithActions = builder.applyStandardTemplateWithActions(builder.getBigBaseLayoutResource());
            buildIntoRemoteViewContent(remoteViewsApplyStandardTemplateWithActions, remoteViews);
            return remoteViewsApplyStandardTemplateWithActions;
        }

        private RemoteViews makeDecoratedHeadsUpContentView() {
            RemoteViews remoteViews = this.mBuilder.mN.headsUpContentView == null ? this.mBuilder.mN.contentView : this.mBuilder.mN.headsUpContentView;
            if (this.mBuilder.mActions.size() == 0) {
                return makeStandardTemplateWithCustomContent(remoteViews);
            }
            Builder builder = this.mBuilder;
            RemoteViews remoteViewsApplyStandardTemplateWithActions = builder.applyStandardTemplateWithActions(builder.getBigBaseLayoutResource());
            buildIntoRemoteViewContent(remoteViewsApplyStandardTemplateWithActions, remoteViews);
            return remoteViewsApplyStandardTemplateWithActions;
        }

        private RemoteViews makeStandardTemplateWithCustomContent(RemoteViews remoteViews) {
            Builder builder = this.mBuilder;
            RemoteViews remoteViewsApplyStandardTemplate = builder.applyStandardTemplate(builder.getBaseLayoutResource());
            buildIntoRemoteViewContent(remoteViewsApplyStandardTemplate, remoteViews);
            return remoteViewsApplyStandardTemplate;
        }

        @Override // android.app.Notification.Style
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            return makeDecoratedBigContentView();
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeContentView(boolean z2) {
            return makeStandardTemplateWithCustomContent(this.mBuilder.mN.contentView);
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeHeadsUpContentView(boolean z2) {
            return makeDecoratedHeadsUpContentView();
        }
    }

    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        private RemoteViews buildIntoRemoteView(RemoteViews remoteViews, int i2, RemoteViews remoteViews2) {
            if (remoteViews2 != null) {
                RemoteViews remoteViewsMo11clone = remoteViews2.mo11clone();
                remoteViewsMo11clone.overrideTextColors(this.mBuilder.getPrimaryTextColor());
                remoteViews.removeAllViews(i2);
                remoteViews.addView(i2, remoteViewsMo11clone);
                remoteViews.setReapplyDisallowed();
            }
            return remoteViews;
        }

        private RemoteViews makeBigContentViewWithCustomContent(RemoteViews remoteViews) {
            RemoteViews remoteViewsMakeBigContentView = super.makeBigContentView();
            if (remoteViewsMakeBigContentView != null) {
                return buildIntoRemoteView(remoteViewsMakeBigContentView, R.id.notification_main_column, remoteViews);
            }
            if (remoteViews != this.mBuilder.mN.contentView) {
                return buildIntoRemoteView(super.makeContentView(false), R.id.notification_content_container, remoteViews);
            }
            return null;
        }

        @Override // android.app.Notification.Style
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // android.app.Notification.MediaStyle, android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            return makeBigContentViewWithCustomContent(this.mBuilder.mN.bigContentView != null ? this.mBuilder.mN.bigContentView : this.mBuilder.mN.contentView);
        }

        @Override // android.app.Notification.MediaStyle, android.app.Notification.Style
        public RemoteViews makeContentView(boolean z2) {
            return buildIntoRemoteView(super.makeContentView(false), R.id.notification_content_container, this.mBuilder.mN.contentView);
        }

        @Override // android.app.Notification.MediaStyle, android.app.Notification.Style
        public RemoteViews makeHeadsUpContentView(boolean z2) {
            return makeBigContentViewWithCustomContent(this.mBuilder.mN.headsUpContentView != null ? this.mBuilder.mN.headsUpContentView : this.mBuilder.mN.contentView);
        }
    }

    public interface Extender {
        Builder extend(Builder builder);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GroupAlertBehavior {
    }

    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;
        CharSequence mConversationTitle;
        CharSequence mUserDisplayName;
        List<Message> mMessages = new ArrayList();
        List<Message> mHistoricMessages = new ArrayList();

        public static final class Message {
            static final String KEY_DATA_MIME_TYPE = "type";
            static final String KEY_DATA_URI = "uri";
            static final String KEY_EXTRAS_BUNDLE = "extras";
            static final String KEY_SENDER = "sender";
            static final String KEY_TEXT = "text";
            static final String KEY_TIMESTAMP = "time";
            private String mDataMimeType;
            private Uri mDataUri;
            private Bundle mExtras = new Bundle();
            private final CharSequence mSender;
            private final CharSequence mText;
            private final long mTimestamp;

            public Message(CharSequence charSequence, long j2, CharSequence charSequence2) {
                this.mText = charSequence;
                this.mTimestamp = j2;
                this.mSender = charSequence2;
            }

            public static Bundle[] getBundleArrayForMessages(List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    bundleArr[i2] = list.get(i2).toBundle();
                }
                return bundleArr;
            }

            public static Message getMessageFromBundle(Bundle bundle) {
                try {
                    if (bundle.containsKey("text") && bundle.containsKey("time")) {
                        Message message = new Message(bundle.getCharSequence("text"), bundle.getLong("time"), bundle.getCharSequence("sender"));
                        if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                            message.setData(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                        }
                        if (bundle.containsKey(KEY_EXTRAS_BUNDLE)) {
                            message.getExtras().putAll(bundle.getBundle(KEY_EXTRAS_BUNDLE));
                        }
                        return message;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            public static List<Message> getMessagesFromBundleArray(Parcelable[] parcelableArr) {
                Message messageFromBundle;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    if ((parcelable instanceof Bundle) && (messageFromBundle = getMessageFromBundle((Bundle) parcelable)) != null) {
                        arrayList.add(messageFromBundle);
                    }
                }
                return arrayList;
            }

            private Bundle toBundle() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.mText;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.mTimestamp);
                CharSequence charSequence2 = this.mSender;
                if (charSequence2 != null) {
                    bundle.putCharSequence("sender", charSequence2);
                }
                String str = this.mDataMimeType;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.mDataUri;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.mExtras;
                if (bundle2 != null) {
                    bundle.putBundle(KEY_EXTRAS_BUNDLE, bundle2);
                }
                return bundle;
            }

            public String getDataMimeType() {
                return this.mDataMimeType;
            }

            public Uri getDataUri() {
                return this.mDataUri;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public CharSequence getSender() {
                return this.mSender;
            }

            public CharSequence getText() {
                return this.mText;
            }

            public long getTimestamp() {
                return this.mTimestamp;
            }

            public Message setData(String str, Uri uri) {
                this.mDataMimeType = str;
                this.mDataUri = uri;
                return this;
            }
        }

        public MessagingStyle() {
        }

        private Message findLatestIncomingMessage() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (!TextUtils.isEmpty(message.mSender)) {
                    return message;
                }
            }
            if (this.mMessages.isEmpty()) {
                return null;
            }
            List<Message> list = this.mMessages;
            return list.get(list.size() - 1);
        }

        private void fixTitleAndTextExtras(Bundle bundle) {
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            CharSequence string = null;
            CharSequence charSequence = messageFindLatestIncomingMessage == null ? null : messageFindLatestIncomingMessage.mText;
            if (messageFindLatestIncomingMessage != null) {
                string = TextUtils.isEmpty(messageFindLatestIncomingMessage.mSender) ? this.mUserDisplayName : messageFindLatestIncomingMessage.mSender;
            }
            if (!TextUtils.isEmpty(this.mConversationTitle)) {
                if (TextUtils.isEmpty(string)) {
                    string = this.mConversationTitle;
                } else {
                    BidiFormatter bidiFormatter = BidiFormatter.getInstance();
                    string = this.mBuilder.mContext.getString(R.string.notification_messaging_title_template, bidiFormatter.unicodeWrap(this.mConversationTitle), bidiFormatter.unicodeWrap(messageFindLatestIncomingMessage.mSender));
                }
            }
            if (string != null) {
                bundle.putCharSequence("android.title", string);
            }
            if (charSequence != null) {
                bundle.putCharSequence("android.text", charSequence);
            }
        }

        private static TextAppearanceSpan makeFontColorSpan(int i2) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i2), null);
        }

        private CharSequence makeMessageLine(Message message, Builder builder) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean zIsColorized = builder.isColorized();
            if (TextUtils.isEmpty(message.mSender)) {
                CharSequence charSequence = this.mUserDisplayName;
                if (charSequence == null) {
                    charSequence = "";
                }
                spannableStringBuilder.append(bidiFormatter.unicodeWrap(charSequence), makeFontColorSpan(zIsColorized ? builder.getPrimaryTextColor() : this.mBuilder.resolveContrastColor()), 0);
            } else {
                spannableStringBuilder.append(bidiFormatter.unicodeWrap(message.mSender), makeFontColorSpan(zIsColorized ? builder.getPrimaryTextColor() : -16777216), 0);
            }
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(message.mText != null ? message.mText : ""));
            return spannableStringBuilder;
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            CharSequence charSequence = this.mUserDisplayName;
            if (charSequence != null) {
                bundle.putCharSequence("android.selfDisplayName", charSequence);
            }
            CharSequence charSequence2 = this.mConversationTitle;
            if (charSequence2 != null) {
                bundle.putCharSequence("android.conversationTitle", charSequence2);
            }
            if (!this.mMessages.isEmpty()) {
                bundle.putParcelableArray("android.messages", Message.getBundleArrayForMessages(this.mMessages));
            }
            if (!this.mHistoricMessages.isEmpty()) {
                bundle.putParcelableArray("android.messages.historic", Message.getBundleArrayForMessages(this.mHistoricMessages));
            }
            fixTitleAndTextExtras(bundle);
        }

        public MessagingStyle addHistoricMessage(Message message) {
            this.mHistoricMessages.add(message);
            if (this.mHistoricMessages.size() > 25) {
                this.mHistoricMessages.remove(0);
            }
            return this;
        }

        public MessagingStyle addMessage(CharSequence charSequence, long j2, CharSequence charSequence2) {
            return addMessage(new Message(charSequence, j2, charSequence2));
        }

        public CharSequence getConversationTitle() {
            return this.mConversationTitle;
        }

        public List<Message> getHistoricMessages() {
            return this.mHistoricMessages;
        }

        public List<Message> getMessages() {
            return this.mMessages;
        }

        public CharSequence getUserDisplayName() {
            return this.mUserDisplayName;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            CharSequence charSequenceMakeMessageLine;
            CharSequence charSequence = !TextUtils.isEmpty(((Style) this).mBigContentTitle) ? ((Style) this).mBigContentTitle : this.mConversationTitle;
            int i2 = 1;
            boolean z2 = !TextUtils.isEmpty(charSequence);
            if (this.mMessages.size() == 1) {
                if (z2) {
                    charSequenceMakeMessageLine = makeMessageLine(this.mMessages.get(0), this.mBuilder);
                } else {
                    charSequence = this.mMessages.get(0).mSender;
                    charSequenceMakeMessageLine = this.mMessages.get(0).mText;
                }
                Builder builder = this.mBuilder;
                RemoteViews remoteViewsApplyStandardTemplateWithActions = builder.applyStandardTemplateWithActions(builder.getBigTextLayoutResource(), this.mBuilder.mParams.reset().hasProgress(false).title(charSequence).text(null));
                BigTextStyle.applyBigTextContentView(this.mBuilder, remoteViewsApplyStandardTemplateWithActions, charSequenceMakeMessageLine);
                return remoteViewsApplyStandardTemplateWithActions;
            }
            Builder builder2 = this.mBuilder;
            RemoteViews remoteViewsApplyStandardTemplateWithActions2 = builder2.applyStandardTemplateWithActions(builder2.getMessagingLayoutResource(), this.mBuilder.mParams.reset().hasProgress(false).title(charSequence).text(null));
            int[] iArr = {R.id.inbox_text0, R.id.inbox_text1, R.id.inbox_text2, R.id.inbox_text3, R.id.inbox_text4, R.id.inbox_text5, R.id.inbox_text6};
            for (int i3 = 0; i3 < 7; i3++) {
                remoteViewsApplyStandardTemplateWithActions2.setViewVisibility(iArr[i3], 8);
            }
            remoteViewsApplyStandardTemplateWithActions2.setViewLayoutMarginBottomDimen(R.id.line1, z2 ? R.dimen.notification_messaging_spacing : 0);
            if (!this.mBuilder.mN.hasLargeIcon()) {
                i2 = 0;
            } else if (!z2) {
                i2 = 2;
            }
            remoteViewsApplyStandardTemplateWithActions2.setInt(R.id.notification_messaging, "setNumIndentLines", i2);
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            int iMax = Math.max(0, this.mHistoricMessages.size() - (7 - this.mMessages.size()));
            int i4 = -1;
            int i5 = 0;
            while (true) {
                int i6 = iMax + i5;
                if (i6 >= this.mHistoricMessages.size() || i5 >= 7) {
                    break;
                }
                Message message = this.mHistoricMessages.get(i6);
                int i7 = iArr[i5];
                remoteViewsApplyStandardTemplateWithActions2.setTextViewText(i7, makeMessageLine(message, this.mBuilder));
                if (messageFindLatestIncomingMessage == message) {
                    i4 = i7;
                }
                i5++;
            }
            int iMax2 = Math.max(0, this.mMessages.size() - 7);
            while (true) {
                int i8 = iMax2 + i5;
                if (i8 >= this.mMessages.size() || i5 >= 7) {
                    break;
                }
                Message message2 = this.mMessages.get(i8);
                int i9 = iArr[i5];
                remoteViewsApplyStandardTemplateWithActions2.setViewVisibility(i9, 0);
                Builder builder3 = this.mBuilder;
                remoteViewsApplyStandardTemplateWithActions2.setTextViewText(i9, builder3.processTextSpans(makeMessageLine(message2, builder3)));
                this.mBuilder.setTextViewColorSecondary(remoteViewsApplyStandardTemplateWithActions2, i9);
                if (messageFindLatestIncomingMessage == message2) {
                    i4 = i9;
                }
                i5++;
            }
            while (i5 < 7) {
                remoteViewsApplyStandardTemplateWithActions2.setTextViewText(iArr[i5], null);
                i5++;
            }
            remoteViewsApplyStandardTemplateWithActions2.setInt(R.id.notification_messaging, "setContractedChildId", i4);
            return remoteViewsApplyStandardTemplateWithActions2;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeContentView(boolean z2) {
            CharSequence charSequenceMakeMessageLine = null;
            if (z2) {
                Builder builder = this.mBuilder;
                builder.mOriginalActions = builder.mActions;
                this.mBuilder.mActions = new ArrayList();
                RemoteViews remoteViewsMakeBigContentView = makeBigContentView();
                Builder builder2 = this.mBuilder;
                builder2.mActions = builder2.mOriginalActions;
                this.mBuilder.mOriginalActions = null;
                return remoteViewsMakeBigContentView;
            }
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            CharSequence charSequence = this.mConversationTitle;
            if (charSequence == null) {
                charSequence = messageFindLatestIncomingMessage == null ? null : messageFindLatestIncomingMessage.mSender;
            }
            if (messageFindLatestIncomingMessage != null) {
                charSequenceMakeMessageLine = this.mConversationTitle != null ? makeMessageLine(messageFindLatestIncomingMessage, this.mBuilder) : messageFindLatestIncomingMessage.mText;
            }
            Builder builder3 = this.mBuilder;
            return builder3.applyStandardTemplate(builder3.getBaseLayoutResource(), this.mBuilder.mParams.reset().hasProgress(false).title(charSequence).text(charSequenceMakeMessageLine));
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeHeadsUpContentView(boolean z2) {
            if (z2) {
                return makeBigContentView();
            }
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            CharSequence charSequence = this.mConversationTitle;
            CharSequence charSequenceMakeMessageLine = null;
            if (charSequence == null) {
                charSequence = messageFindLatestIncomingMessage == null ? null : messageFindLatestIncomingMessage.mSender;
            }
            if (messageFindLatestIncomingMessage != null) {
                charSequenceMakeMessageLine = this.mConversationTitle != null ? makeMessageLine(messageFindLatestIncomingMessage, this.mBuilder) : messageFindLatestIncomingMessage.mText;
            }
            Builder builder = this.mBuilder;
            return builder.applyStandardTemplateWithActions(builder.getBigBaseLayoutResource(), this.mBuilder.mParams.reset().hasProgress(false).title(charSequence).text(charSequenceMakeMessageLine));
        }

        @Override // android.app.Notification.Style
        public void restoreFromExtras(Bundle bundle) {
            super.restoreFromExtras(bundle);
            this.mMessages.clear();
            this.mHistoricMessages.clear();
            this.mUserDisplayName = bundle.getCharSequence("android.selfDisplayName");
            this.mConversationTitle = bundle.getCharSequence("android.conversationTitle");
            Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
            if (parcelableArray != null) {
                this.mMessages = Message.getMessagesFromBundleArray(parcelableArray);
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
            if (parcelableArray2 != null) {
                this.mHistoricMessages = Message.getMessagesFromBundleArray(parcelableArray2);
            }
        }

        public MessagingStyle setConversationTitle(CharSequence charSequence) {
            this.mConversationTitle = charSequence;
            return this;
        }

        public MessagingStyle addMessage(Message message) {
            this.mMessages.add(message);
            if (this.mMessages.size() > 25) {
                this.mMessages.remove(0);
            }
            return this;
        }

        public MessagingStyle(CharSequence charSequence) {
            this.mUserDisplayName = charSequence;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    public static class StandardTemplateParams {
        boolean ambient;
        boolean hasProgress;
        CharSequence text;
        CharSequence title;

        private StandardTemplateParams() {
            this.hasProgress = true;
            this.ambient = false;
        }

        public final StandardTemplateParams ambient(boolean z2) {
            Preconditions.checkState(this.title == null && this.text == null, "must set ambient before text");
            this.ambient = z2;
            return this;
        }

        public final StandardTemplateParams fillTextsFrom(Builder builder) {
            Bundle bundle = builder.mN.extras;
            this.title = builder.processLegacyText(bundle.getCharSequence("android.title"), this.ambient);
            CharSequence charSequence = bundle.getCharSequence("android.bigText");
            if (!this.ambient || TextUtils.isEmpty(charSequence)) {
                charSequence = bundle.getCharSequence("android.text");
            }
            this.text = builder.processLegacyText(charSequence, this.ambient);
            return this;
        }

        public final StandardTemplateParams hasProgress(boolean z2) {
            this.hasProgress = z2;
            return this;
        }

        public final StandardTemplateParams reset() {
            this.hasProgress = true;
            this.ambient = false;
            this.title = null;
            this.text = null;
            return this;
        }

        public final StandardTemplateParams text(CharSequence charSequence) {
            this.text = charSequence;
            return this;
        }

        public final StandardTemplateParams title(CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }
    }

    public static abstract class Style {
        private CharSequence mBigContentTitle;
        protected Builder mBuilder;
        protected CharSequence mSummaryText = null;
        protected boolean mSummaryTextSet = false;

        public void addExtras(Bundle bundle) {
            if (this.mSummaryTextSet) {
                bundle.putCharSequence("android.summaryText", this.mSummaryText);
            }
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            bundle.putString("android.template", getClass().getName());
        }

        public Notification build() {
            checkBuilder();
            return this.mBuilder.build();
        }

        public Notification buildStyled(Notification notification) {
            addExtras(notification.extras);
            return notification;
        }

        public void checkBuilder() {
            if (this.mBuilder == null) {
                throw new IllegalArgumentException("Style requires a valid Builder object");
            }
        }

        public boolean displayCustomViewInline() {
            return false;
        }

        public RemoteViews getStandardView(int i2) {
            checkBuilder();
            CharSequence charSequence = this.mBuilder.getAllExtras().getCharSequence("android.title");
            CharSequence charSequence2 = this.mBigContentTitle;
            if (charSequence2 != null) {
                this.mBuilder.setContentTitle(charSequence2);
            }
            RemoteViews remoteViewsApplyStandardTemplateWithActions = this.mBuilder.applyStandardTemplateWithActions(i2);
            this.mBuilder.getAllExtras().putCharSequence("android.title", charSequence);
            CharSequence charSequence3 = this.mBigContentTitle;
            if (charSequence3 == null || !charSequence3.equals("")) {
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(R.id.line1, 0);
            } else {
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(R.id.line1, 8);
            }
            return remoteViewsApplyStandardTemplateWithActions;
        }

        public boolean hasProgress() {
            return true;
        }

        public boolean hasSummaryInHeader() {
            return true;
        }

        public void internalSetBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
        }

        public void internalSetSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
        }

        public RemoteViews makeBigContentView() {
            return null;
        }

        public RemoteViews makeContentView(boolean z2) {
            return null;
        }

        public RemoteViews makeHeadsUpContentView(boolean z2) {
            return null;
        }

        public void purgeResources() {
        }

        public void reduceImageSizes(Context context) {
        }

        public void restoreFromExtras(Bundle bundle) {
            if (bundle.containsKey("android.summaryText")) {
                this.mSummaryText = bundle.getCharSequence("android.summaryText");
                this.mSummaryTextSet = true;
            }
            if (bundle.containsKey("android.title.big")) {
                this.mBigContentTitle = bundle.getCharSequence("android.title.big");
            }
        }

        public void setBuilder(Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    public static final class WearableExtender implements Extender {
        private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
        private static final int DEFAULT_FLAGS = 1;
        private static final int DEFAULT_GRAVITY = 80;
        private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
        private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
        private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;
        private static final String KEY_ACTIONS = "actions";
        private static final String KEY_BACKGROUND = "background";
        private static final String KEY_BRIDGE_TAG = "bridgeTag";
        private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
        private static final String KEY_CONTENT_ICON = "contentIcon";
        private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
        private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
        private static final String KEY_DISMISSAL_ID = "dismissalId";
        private static final String KEY_DISPLAY_INTENT = "displayIntent";
        private static final String KEY_FLAGS = "flags";
        private static final String KEY_GRAVITY = "gravity";
        private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
        private static final String KEY_PAGES = "pages";
        public static final int SCREEN_TIMEOUT_LONG = -1;
        public static final int SCREEN_TIMEOUT_SHORT = 0;
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions;
        private Bitmap mBackground;
        private String mBridgeTag;
        private int mContentActionIndex;
        private int mContentIcon;
        private int mContentIconGravity;
        private int mCustomContentHeight;
        private int mCustomSizePreset;
        private String mDismissalId;
        private PendingIntent mDisplayIntent;
        private int mFlags;
        private int mGravity;
        private int mHintScreenTimeout;
        private ArrayList<Notification> mPages;

        public WearableExtender() {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
        }

        private void setFlag(int i2, boolean z2) {
            if (z2) {
                this.mFlags = i2 | this.mFlags;
            } else {
                this.mFlags = (~i2) & this.mFlags;
            }
        }

        public WearableExtender addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public WearableExtender addActions(List<Action> list) {
            this.mActions.addAll(list);
            return this;
        }

        public WearableExtender addPage(Notification notification) {
            this.mPages.add(notification);
            return this;
        }

        public WearableExtender addPages(List<Notification> list) {
            this.mPages.addAll(list);
            return this;
        }

        public WearableExtender clearActions() {
            this.mActions.clear();
            return this;
        }

        public WearableExtender clearPages() {
            this.mPages.clear();
            return this;
        }

        @Override // android.app.Notification.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.mActions.isEmpty()) {
                bundle.putParcelableArrayList(KEY_ACTIONS, this.mActions);
            }
            int i2 = this.mFlags;
            if (i2 != 1) {
                bundle.putInt("flags", i2);
            }
            PendingIntent pendingIntent = this.mDisplayIntent;
            if (pendingIntent != null) {
                bundle.putParcelable(KEY_DISPLAY_INTENT, pendingIntent);
            }
            if (!this.mPages.isEmpty()) {
                ArrayList<Notification> arrayList = this.mPages;
                bundle.putParcelableArray(KEY_PAGES, (Parcelable[]) arrayList.toArray(new Notification[arrayList.size()]));
            }
            Bitmap bitmap = this.mBackground;
            if (bitmap != null) {
                bundle.putParcelable(KEY_BACKGROUND, bitmap);
            }
            int i3 = this.mContentIcon;
            if (i3 != 0) {
                bundle.putInt(KEY_CONTENT_ICON, i3);
            }
            int i4 = this.mContentIconGravity;
            if (i4 != 8388613) {
                bundle.putInt(KEY_CONTENT_ICON_GRAVITY, i4);
            }
            int i5 = this.mContentActionIndex;
            if (i5 != -1) {
                bundle.putInt(KEY_CONTENT_ACTION_INDEX, i5);
            }
            int i6 = this.mCustomSizePreset;
            if (i6 != 0) {
                bundle.putInt(KEY_CUSTOM_SIZE_PRESET, i6);
            }
            int i7 = this.mCustomContentHeight;
            if (i7 != 0) {
                bundle.putInt(KEY_CUSTOM_CONTENT_HEIGHT, i7);
            }
            int i8 = this.mGravity;
            if (i8 != 80) {
                bundle.putInt(KEY_GRAVITY, i8);
            }
            int i9 = this.mHintScreenTimeout;
            if (i9 != 0) {
                bundle.putInt(KEY_HINT_SCREEN_TIMEOUT, i9);
            }
            String str = this.mDismissalId;
            if (str != null) {
                bundle.putString(KEY_DISMISSAL_ID, str);
            }
            String str2 = this.mBridgeTag;
            if (str2 != null) {
                bundle.putString(KEY_BRIDGE_TAG, str2);
            }
            builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
            return builder;
        }

        public List<Action> getActions() {
            return this.mActions;
        }

        public Bitmap getBackground() {
            return this.mBackground;
        }

        public String getBridgeTag() {
            return this.mBridgeTag;
        }

        public int getContentAction() {
            return this.mContentActionIndex;
        }

        public int getContentIcon() {
            return this.mContentIcon;
        }

        public int getContentIconGravity() {
            return this.mContentIconGravity;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.mFlags & 1) != 0;
        }

        public int getCustomContentHeight() {
            return this.mCustomContentHeight;
        }

        public int getCustomSizePreset() {
            return this.mCustomSizePreset;
        }

        public String getDismissalId() {
            return this.mDismissalId;
        }

        public PendingIntent getDisplayIntent() {
            return this.mDisplayIntent;
        }

        public int getGravity() {
            return this.mGravity;
        }

        public boolean getHintAmbientBigPicture() {
            return (this.mFlags & 32) != 0;
        }

        public boolean getHintAvoidBackgroundClipping() {
            return (this.mFlags & 16) != 0;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            return (this.mFlags & 64) != 0;
        }

        public boolean getHintHideIcon() {
            return (this.mFlags & 2) != 0;
        }

        public int getHintScreenTimeout() {
            return this.mHintScreenTimeout;
        }

        public boolean getHintShowBackgroundOnly() {
            return (this.mFlags & 4) != 0;
        }

        public List<Notification> getPages() {
            return this.mPages;
        }

        public boolean getStartScrollBottom() {
            return (this.mFlags & 8) != 0;
        }

        public WearableExtender setBackground(Bitmap bitmap) {
            this.mBackground = bitmap;
            return this;
        }

        public WearableExtender setBridgeTag(String str) {
            this.mBridgeTag = str;
            return this;
        }

        public WearableExtender setContentAction(int i2) {
            this.mContentActionIndex = i2;
            return this;
        }

        public WearableExtender setContentIcon(int i2) {
            this.mContentIcon = i2;
            return this;
        }

        public WearableExtender setContentIconGravity(int i2) {
            this.mContentIconGravity = i2;
            return this;
        }

        public WearableExtender setContentIntentAvailableOffline(boolean z2) {
            setFlag(1, z2);
            return this;
        }

        public WearableExtender setCustomContentHeight(int i2) {
            this.mCustomContentHeight = i2;
            return this;
        }

        public WearableExtender setCustomSizePreset(int i2) {
            this.mCustomSizePreset = i2;
            return this;
        }

        public WearableExtender setDismissalId(String str) {
            this.mDismissalId = str;
            return this;
        }

        public WearableExtender setDisplayIntent(PendingIntent pendingIntent) {
            this.mDisplayIntent = pendingIntent;
            return this;
        }

        public WearableExtender setGravity(int i2) {
            this.mGravity = i2;
            return this;
        }

        public WearableExtender setHintAmbientBigPicture(boolean z2) {
            setFlag(32, z2);
            return this;
        }

        public WearableExtender setHintAvoidBackgroundClipping(boolean z2) {
            setFlag(16, z2);
            return this;
        }

        public WearableExtender setHintContentIntentLaunchesActivity(boolean z2) {
            setFlag(64, z2);
            return this;
        }

        public WearableExtender setHintHideIcon(boolean z2) {
            setFlag(2, z2);
            return this;
        }

        public WearableExtender setHintScreenTimeout(int i2) {
            this.mHintScreenTimeout = i2;
            return this;
        }

        public WearableExtender setHintShowBackgroundOnly(boolean z2) {
            setFlag(4, z2);
            return this;
        }

        public WearableExtender setStartScrollBottom(boolean z2) {
            setFlag(8, z2);
            return this;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m12clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.mActions = new ArrayList<>(this.mActions);
            wearableExtender.mFlags = this.mFlags;
            wearableExtender.mDisplayIntent = this.mDisplayIntent;
            wearableExtender.mPages = new ArrayList<>(this.mPages);
            wearableExtender.mBackground = this.mBackground;
            wearableExtender.mContentIcon = this.mContentIcon;
            wearableExtender.mContentIconGravity = this.mContentIconGravity;
            wearableExtender.mContentActionIndex = this.mContentActionIndex;
            wearableExtender.mCustomSizePreset = this.mCustomSizePreset;
            wearableExtender.mCustomContentHeight = this.mCustomContentHeight;
            wearableExtender.mGravity = this.mGravity;
            wearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
            wearableExtender.mDismissalId = this.mDismissalId;
            wearableExtender.mBridgeTag = this.mBridgeTag;
            return wearableExtender;
        }

        public WearableExtender(Notification notification) {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
            Bundle bundle = notification.extras.getBundle(EXTRA_WEARABLE_EXTENSIONS);
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(KEY_ACTIONS);
                if (parcelableArrayList != null) {
                    this.mActions.addAll(parcelableArrayList);
                }
                this.mFlags = bundle.getInt("flags", 1);
                this.mDisplayIntent = (PendingIntent) bundle.getParcelable(KEY_DISPLAY_INTENT);
                Notification[] notificationArrayFromBundle = Notification.getNotificationArrayFromBundle(bundle, KEY_PAGES);
                if (notificationArrayFromBundle != null) {
                    Collections.addAll(this.mPages, notificationArrayFromBundle);
                }
                this.mBackground = (Bitmap) bundle.getParcelable(KEY_BACKGROUND);
                this.mContentIcon = bundle.getInt(KEY_CONTENT_ICON);
                this.mContentIconGravity = bundle.getInt(KEY_CONTENT_ICON_GRAVITY, 8388613);
                this.mContentActionIndex = bundle.getInt(KEY_CONTENT_ACTION_INDEX, -1);
                this.mCustomSizePreset = bundle.getInt(KEY_CUSTOM_SIZE_PRESET, 0);
                this.mCustomContentHeight = bundle.getInt(KEY_CUSTOM_CONTENT_HEIGHT);
                this.mGravity = bundle.getInt(KEY_GRAVITY, 80);
                this.mHintScreenTimeout = bundle.getInt(KEY_HINT_SCREEN_TIMEOUT);
                this.mDismissalId = bundle.getString(KEY_DISMISSAL_ID);
                this.mBridgeTag = bundle.getString(KEY_BRIDGE_TAG);
            }
        }
    }

    public Notification() {
        this.number = 0;
        this.audioStreamType = -1;
        this.audioAttributes = AUDIO_ATTRIBUTES_DEFAULT;
        this.color = 0;
        this.extras = new Bundle();
        this.mGroupAlertBehavior = 0;
        this.mBadgeIcon = 0;
        this.when = System.currentTimeMillis();
        this.creationTime = System.currentTimeMillis();
        this.priority = 0;
    }

    public static void addFieldsFromContext(Context context, Notification notification) {
        addFieldsFromContext(context.getApplicationInfo(), notification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Notification[] getNotificationArrayFromBundle(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = (Notification[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Notification[].class);
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }

    public static Class<? extends Style> getNotificationStyleClass(String str) {
        Class<? extends Style>[] clsArr = {BigTextStyle.class, BigPictureStyle.class, InboxStyle.class, MediaStyle.class, DecoratedCustomViewStyle.class, DecoratedMediaCustomViewStyle.class, MessagingStyle.class};
        for (int i2 = 0; i2 < 7; i2++) {
            Class<? extends Style> cls = clsArr[i2];
            if (str.equals(cls.getName())) {
                return cls;
            }
        }
        return null;
    }

    private boolean hasColorizedPermission() {
        return (this.flags & 2048) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasLargeIcon() {
        return (this.mLargeIcon == null && this.largeIcon == null) ? false : true;
    }

    private boolean isForegroundService() {
        return (this.flags & 64) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeToParcel$0(Parcel parcel, PendingIntent pendingIntent, Parcel parcel2, int i2) {
        if (parcel == parcel2) {
            if (this.allPendingIntents == null) {
                this.allPendingIntents = new ArraySet<>();
            }
            this.allPendingIntents.add(pendingIntent);
        }
    }

    public static String priorityToString(int i2) {
        if (i2 == -2) {
            return "MIN";
        }
        if (i2 == -1) {
            return "LOW";
        }
        if (i2 == 0) {
            return "DEFAULT";
        }
        if (i2 == 1) {
            return "HIGH";
        }
        if (i2 == 2) {
            return "MAX";
        }
        return "UNKNOWN(" + String.valueOf(i2) + ")";
    }

    private void readFromParcelImpl(Parcel parcel) {
        parcel.readInt();
        IBinder strongBinder = parcel.readStrongBinder();
        whitelistToken = strongBinder;
        if (strongBinder == null) {
            whitelistToken = processWhitelistToken;
        }
        parcel.setClassCookie(PendingIntent.class, whitelistToken);
        this.when = parcel.readLong();
        this.creationTime = parcel.readLong();
        if (parcel.readInt() != 0) {
            Icon iconCreateFromParcel = Icon.CREATOR.createFromParcel(parcel);
            this.mSmallIcon = iconCreateFromParcel;
            if (iconCreateFromParcel.getType() == 2) {
                this.icon = this.mSmallIcon.getResId();
            }
        }
        this.number = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.contentIntent = PendingIntent.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.deleteIntent = PendingIntent.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.tickerText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.tickerView = RemoteViews.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.contentView = RemoteViews.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.mLargeIcon = Icon.CREATOR.createFromParcel(parcel);
        }
        this.defaults = parcel.readInt();
        this.flags = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.sound = Uri.CREATOR.createFromParcel(parcel);
        }
        this.audioStreamType = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.audioAttributes = AudioAttributes.CREATOR.createFromParcel(parcel);
        }
        this.vibrate = parcel.createLongArray();
        this.ledARGB = parcel.readInt();
        this.ledOnMS = parcel.readInt();
        this.ledOffMS = parcel.readInt();
        this.iconLevel = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.fullScreenIntent = PendingIntent.CREATOR.createFromParcel(parcel);
        }
        this.priority = parcel.readInt();
        this.category = parcel.readString();
        this.mGroupKey = parcel.readString();
        this.mSortKey = parcel.readString();
        this.extras = Bundle.setDefusable(parcel.readBundle(), true);
        this.actions = (Action[]) parcel.createTypedArray(Action.CREATOR);
        if (parcel.readInt() != 0) {
            this.bigContentView = RemoteViews.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() != 0) {
            this.headsUpContentView = RemoteViews.CREATOR.createFromParcel(parcel);
        }
        this.visibility = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.publicVersion = CREATOR.createFromParcel(parcel);
        }
        this.color = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.mChannelId = parcel.readString();
        }
        this.mTimeout = parcel.readLong();
        if (parcel.readInt() != 0) {
            this.mShortcutId = parcel.readString();
        }
        this.mBadgeIcon = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.mSettingsText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
        this.mGroupAlertBehavior = parcel.readInt();
    }

    private void reduceImageSizesForRemoteView(RemoteViews remoteViews, Context context, boolean z2) {
        if (remoteViews != null) {
            Resources resources = context.getResources();
            remoteViews.reduceImageSizes(resources.getDimensionPixelSize(z2 ? R.dimen.notification_custom_view_max_image_width_low_ram : R.dimen.notification_custom_view_max_image_width), resources.getDimensionPixelSize(z2 ? R.dimen.notification_custom_view_max_image_height_low_ram : R.dimen.notification_custom_view_max_image_height));
        }
    }

    private static CharSequence removeTextSizeSpans(CharSequence charSequence) {
        Object textAppearanceSpan;
        if (!(charSequence instanceof Spanned)) {
            return charSequence;
        }
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spanned.toString());
        for (Object obj : spans) {
            Object underlying = obj instanceof CharacterStyle ? ((CharacterStyle) obj).getUnderlying() : obj;
            if (underlying instanceof TextAppearanceSpan) {
                TextAppearanceSpan textAppearanceSpan2 = (TextAppearanceSpan) underlying;
                textAppearanceSpan = new TextAppearanceSpan(textAppearanceSpan2.getFamily(), textAppearanceSpan2.getTextStyle(), -1, textAppearanceSpan2.getTextColor(), textAppearanceSpan2.getLinkTextColor());
            } else {
                if (!(underlying instanceof RelativeSizeSpan) && !(underlying instanceof AbsoluteSizeSpan)) {
                    textAppearanceSpan = obj;
                }
            }
            spannableStringBuilder.setSpan(textAppearanceSpan, spanned.getSpanStart(obj), spanned.getSpanEnd(obj), spanned.getSpanFlags(obj));
        }
        return spannableStringBuilder;
    }

    public static CharSequence safeCharSequence(CharSequence charSequence) {
        if (charSequence == null) {
            return charSequence;
        }
        if (charSequence.length() > 5120) {
            charSequence = charSequence.subSequence(0, 5120);
        }
        if (!(charSequence instanceof Parcelable)) {
            return removeTextSizeSpans(charSequence);
        }
        Log.e(TAG, "warning: " + charSequence.getClass().getCanonicalName() + " instance is a custom Parcelable and not allowed in Notification");
        return charSequence.toString();
    }

    public static String visibilityToString(int i2) {
        if (i2 == -1) {
            return "SECRET";
        }
        if (i2 == 0) {
            return "PRIVATE";
        }
        if (i2 == 1) {
            return "PUBLIC";
        }
        return "UNKNOWN(" + String.valueOf(i2) + ")";
    }

    private void writeToParcelImpl(Parcel parcel, int i2) {
        Bitmap bitmap;
        int i3;
        parcel.writeInt(1);
        parcel.writeStrongBinder(whitelistToken);
        parcel.writeLong(this.when);
        parcel.writeLong(this.creationTime);
        if (this.mSmallIcon == null && (i3 = this.icon) != 0) {
            this.mSmallIcon = Icon.createWithResource("", i3);
        }
        if (this.mSmallIcon != null) {
            parcel.writeInt(1);
            this.mSmallIcon.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.number);
        if (this.contentIntent != null) {
            parcel.writeInt(1);
            this.contentIntent.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.deleteIntent != null) {
            parcel.writeInt(1);
            this.deleteIntent.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.tickerText != null) {
            parcel.writeInt(1);
            TextUtils.writeToParcel(this.tickerText, parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.tickerView != null) {
            parcel.writeInt(1);
            this.tickerView.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.contentView != null) {
            parcel.writeInt(1);
            this.contentView.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.mLargeIcon == null && (bitmap = this.largeIcon) != null) {
            this.mLargeIcon = Icon.createWithBitmap(bitmap);
        }
        if (this.mLargeIcon != null) {
            parcel.writeInt(1);
            this.mLargeIcon.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.defaults);
        parcel.writeInt(this.flags);
        if (this.sound != null) {
            parcel.writeInt(1);
            this.sound.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.audioStreamType);
        if (this.audioAttributes != null) {
            parcel.writeInt(1);
            this.audioAttributes.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLongArray(this.vibrate);
        parcel.writeInt(this.ledARGB);
        parcel.writeInt(this.ledOnMS);
        parcel.writeInt(this.ledOffMS);
        parcel.writeInt(this.iconLevel);
        if (this.fullScreenIntent != null) {
            parcel.writeInt(1);
            this.fullScreenIntent.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.priority);
        parcel.writeString(this.category);
        parcel.writeString(this.mGroupKey);
        parcel.writeString(this.mSortKey);
        parcel.writeBundle(this.extras);
        parcel.writeTypedArray(this.actions, 0);
        if (this.bigContentView != null) {
            parcel.writeInt(1);
            this.bigContentView.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.headsUpContentView != null) {
            parcel.writeInt(1);
            this.headsUpContentView.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.visibility);
        if (this.publicVersion != null) {
            parcel.writeInt(1);
            this.publicVersion.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.color);
        if (this.mChannelId != null) {
            parcel.writeInt(1);
            parcel.writeString(this.mChannelId);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.mTimeout);
        if (this.mShortcutId != null) {
            parcel.writeInt(1);
            parcel.writeString(this.mShortcutId);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mBadgeIcon);
        if (this.mSettingsText != null) {
            parcel.writeInt(1);
            TextUtils.writeToParcel(this.mSettingsText, parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mGroupAlertBehavior);
    }

    public void cloneInto(Notification notification, boolean z2) {
        RemoteViews remoteViews;
        RemoteViews remoteViews2;
        Icon icon;
        RemoteViews remoteViews3;
        RemoteViews remoteViews4;
        whitelistToken = whitelistToken;
        notification.when = this.when;
        notification.creationTime = this.creationTime;
        notification.mSmallIcon = this.mSmallIcon;
        notification.number = this.number;
        notification.contentIntent = this.contentIntent;
        notification.deleteIntent = this.deleteIntent;
        notification.fullScreenIntent = this.fullScreenIntent;
        CharSequence charSequence = this.tickerText;
        if (charSequence != null) {
            notification.tickerText = charSequence.toString();
        }
        if (z2 && (remoteViews4 = this.tickerView) != null) {
            notification.tickerView = remoteViews4.mo11clone();
        }
        if (z2 && (remoteViews3 = this.contentView) != null) {
            notification.contentView = remoteViews3.mo11clone();
        }
        if (z2 && (icon = this.mLargeIcon) != null) {
            notification.mLargeIcon = icon;
        }
        notification.iconLevel = this.iconLevel;
        notification.sound = this.sound;
        notification.audioStreamType = this.audioStreamType;
        AudioAttributes audioAttributes = this.audioAttributes;
        if (audioAttributes != null) {
            notification.audioAttributes = new AudioAttributes.Builder(audioAttributes).build();
        }
        long[] jArr = this.vibrate;
        int i2 = 0;
        if (jArr != null) {
            int length = jArr.length;
            long[] jArr2 = new long[length];
            notification.vibrate = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, length);
        }
        notification.ledARGB = this.ledARGB;
        notification.ledOnMS = this.ledOnMS;
        notification.ledOffMS = this.ledOffMS;
        notification.defaults = this.defaults;
        notification.flags = this.flags;
        notification.priority = this.priority;
        notification.category = this.category;
        notification.mGroupKey = this.mGroupKey;
        notification.mSortKey = this.mSortKey;
        if (this.extras != null) {
            try {
                Bundle bundle = new Bundle(this.extras);
                notification.extras = bundle;
                bundle.size();
            } catch (BadParcelableException e2) {
                Log.e(TAG, "could not unparcel extras from notification: " + this, e2);
                notification.extras = null;
            }
        }
        if (!ArrayUtils.isEmpty(this.allPendingIntents)) {
            notification.allPendingIntents = new ArraySet<>((ArraySet) this.allPendingIntents);
        }
        Action[] actionArr = this.actions;
        if (actionArr != null) {
            notification.actions = new Action[actionArr.length];
            while (true) {
                Action[] actionArr2 = this.actions;
                if (i2 >= actionArr2.length) {
                    break;
                }
                Action action = actionArr2[i2];
                if (action != null) {
                    notification.actions[i2] = action.m9clone();
                }
                i2++;
            }
        }
        if (z2 && (remoteViews2 = this.bigContentView) != null) {
            notification.bigContentView = remoteViews2.mo11clone();
        }
        if (z2 && (remoteViews = this.headsUpContentView) != null) {
            notification.headsUpContentView = remoteViews.mo11clone();
        }
        notification.visibility = this.visibility;
        if (this.publicVersion != null) {
            Notification notification2 = new Notification();
            notification.publicVersion = notification2;
            this.publicVersion.cloneInto(notification2, z2);
        }
        notification.color = this.color;
        notification.mChannelId = this.mChannelId;
        notification.mTimeout = this.mTimeout;
        notification.mShortcutId = this.mShortcutId;
        notification.mBadgeIcon = this.mBadgeIcon;
        notification.mSettingsText = this.mSettingsText;
        notification.mGroupAlertBehavior = this.mGroupAlertBehavior;
        if (z2) {
            return;
        }
        notification.lightenPayload();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBadgeIconType() {
        return this.mBadgeIcon;
    }

    @Deprecated
    public String getChannel() {
        return this.mChannelId;
    }

    public String getChannelId() {
        return this.mChannelId;
    }

    public String getGroup() {
        return this.mGroupKey;
    }

    public int getGroupAlertBehavior() {
        return this.mGroupAlertBehavior;
    }

    public Icon getLargeIcon() {
        return this.mLargeIcon;
    }

    public Class<? extends Style> getNotificationStyle() {
        String string = this.extras.getString("android.template");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return getNotificationStyleClass(string);
    }

    public CharSequence getSettingsText() {
        return this.mSettingsText;
    }

    public String getShortcutId() {
        return this.mShortcutId;
    }

    public Icon getSmallIcon() {
        return this.mSmallIcon;
    }

    public String getSortKey() {
        return this.mSortKey;
    }

    @Deprecated
    public long getTimeout() {
        return this.mTimeout;
    }

    public long getTimeoutAfter() {
        return this.mTimeout;
    }

    public boolean hasCompletedProgress() {
        return this.extras.containsKey("android.progress") && this.extras.containsKey("android.progressMax") && this.extras.getInt("android.progressMax") != 0 && this.extras.getInt("android.progress") == this.extras.getInt("android.progressMax");
    }

    public boolean hasMediaSession() {
        return this.extras.getParcelable("android.mediaSession") != null;
    }

    public boolean isColorized() {
        if (isColorizedMedia()) {
            return true;
        }
        return this.extras.getBoolean("android.colorized") && (hasColorizedPermission() || isForegroundService());
    }

    public boolean isColorizedMedia() {
        Class<? extends Style> notificationStyle = getNotificationStyle();
        if (!MediaStyle.class.equals(notificationStyle)) {
            return DecoratedMediaCustomViewStyle.class.equals(notificationStyle) && this.extras.getBoolean("android.colorized") && hasMediaSession();
        }
        Boolean bool = (Boolean) this.extras.get("android.colorized");
        return (bool == null || bool.booleanValue()) && hasMediaSession();
    }

    public boolean isGroupChild() {
        return this.mGroupKey != null && (this.flags & 512) == 0;
    }

    public boolean isGroupSummary() {
        return (this.mGroupKey == null || (this.flags & 512) == 0) ? false : true;
    }

    public boolean isMediaNotification() {
        Class<? extends Style> notificationStyle = getNotificationStyle();
        return MediaStyle.class.equals(notificationStyle) || DecoratedMediaCustomViewStyle.class.equals(notificationStyle);
    }

    public final void lightenPayload() {
        Object obj;
        this.tickerView = null;
        this.contentView = null;
        this.bigContentView = null;
        this.headsUpContentView = null;
        this.mLargeIcon = null;
        Bundle bundle = this.extras;
        if (bundle == null || bundle.isEmpty()) {
            return;
        }
        Set<String> setKeySet = this.extras.keySet();
        int size = setKeySet.size();
        String[] strArr = (String[]) setKeySet.toArray(new String[size]);
        for (int i2 = 0; i2 < size; i2++) {
            String str = strArr[i2];
            if (!"android.tv.EXTENSIONS".equals(str) && (obj = this.extras.get(str)) != null && ((obj instanceof Parcelable) || (obj instanceof Parcelable[]) || (obj instanceof SparseArray) || (obj instanceof ArrayList))) {
                this.extras.remove(str);
            }
        }
    }

    public void reduceImageSizes(Context context) {
        int i2;
        if (this.extras.getBoolean(EXTRA_REDUCED_IMAGES)) {
            return;
        }
        boolean zIsLowRamDeviceStatic = ActivityManager.isLowRamDeviceStatic();
        if (this.mLargeIcon != null || this.largeIcon != null) {
            Resources resources = context.getResources();
            Class<? extends Style> notificationStyle = getNotificationStyle();
            int dimensionPixelSize = resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_right_icon_size_low_ram : R.dimen.notification_right_icon_size);
            if (MediaStyle.class.equals(notificationStyle) || DecoratedMediaCustomViewStyle.class.equals(notificationStyle)) {
                int dimensionPixelSize2 = resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_media_image_max_height_low_ram : R.dimen.notification_media_image_max_height);
                dimensionPixelSize = resources.getDimensionPixelSize(zIsLowRamDeviceStatic ? R.dimen.notification_media_image_max_width_low_ram : R.dimen.notification_media_image_max_width);
                i2 = dimensionPixelSize2;
            } else {
                i2 = dimensionPixelSize;
            }
            Icon icon = this.mLargeIcon;
            if (icon != null) {
                icon.scaleDownIfNecessary(dimensionPixelSize, i2);
            }
            Bitmap bitmap = this.largeIcon;
            if (bitmap != null) {
                this.largeIcon = Icon.scaleDownIfNecessary(bitmap, dimensionPixelSize, i2);
            }
        }
        reduceImageSizesForRemoteView(this.contentView, context, zIsLowRamDeviceStatic);
        reduceImageSizesForRemoteView(this.headsUpContentView, context, zIsLowRamDeviceStatic);
        reduceImageSizesForRemoteView(this.bigContentView, context, zIsLowRamDeviceStatic);
        this.extras.putBoolean(EXTRA_REDUCED_IMAGES, true);
    }

    @Deprecated
    public void setLatestEventInfo(Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        if (context.getApplicationInfo().targetSdkVersion > 22) {
            Log.e(TAG, "setLatestEventInfo() is deprecated and you should feel deprecated.", new Throwable());
        }
        if (context.getApplicationInfo().targetSdkVersion < 24) {
            this.extras.putBoolean("android.showWhen", true);
        }
        Builder builder = new Builder(context, this);
        if (charSequence != null) {
            builder.setContentTitle(charSequence);
        }
        if (charSequence2 != null) {
            builder.setContentText(charSequence2);
        }
        builder.setContentIntent(pendingIntent);
        builder.build();
    }

    public void setSmallIcon(Icon icon) {
        this.mSmallIcon = icon;
    }

    public boolean showsChronometer() {
        return this.when != 0 && this.extras.getBoolean("android.showChronometer");
    }

    public boolean showsTime() {
        return this.when != 0 && this.extras.getBoolean("android.showWhen");
    }

    public boolean suppressAlertingDueToGrouping() {
        if (isGroupSummary() && getGroupAlertBehavior() == 2) {
            return true;
        }
        return isGroupChild() && getGroupAlertBehavior() == 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Notification(channel=");
        sb.append(getChannelId());
        sb.append(" pri=");
        sb.append(this.priority);
        sb.append(" contentView=");
        RemoteViews remoteViews = this.contentView;
        if (remoteViews != null) {
            sb.append(remoteViews.getPackage());
            sb.append("/0x");
            sb.append(Integer.toHexString(this.contentView.getLayoutId()));
        } else {
            sb.append("null");
        }
        sb.append(" vibrate=");
        if ((this.defaults & 2) != 0) {
            sb.append(PhoneConstants.APN_TYPE_DEFAULT);
        } else {
            long[] jArr = this.vibrate;
            if (jArr != null) {
                int length = jArr.length - 1;
                sb.append("[");
                for (int i2 = 0; i2 < length; i2++) {
                    sb.append(this.vibrate[i2]);
                    sb.append(',');
                }
                if (length != -1) {
                    sb.append(this.vibrate[length]);
                }
                sb.append("]");
            } else {
                sb.append("null");
            }
        }
        sb.append(" sound=");
        if ((this.defaults & 1) != 0) {
            sb.append(PhoneConstants.APN_TYPE_DEFAULT);
        } else {
            Uri uri = this.sound;
            if (uri != null) {
                sb.append(uri.toString());
            } else {
                sb.append("null");
            }
        }
        if (this.tickerText != null) {
            sb.append(" tick");
        }
        sb.append(" defaults=0x");
        android.accessibilityservice.c.x(this.defaults, sb, " flags=0x");
        sb.append(Integer.toHexString(this.flags));
        sb.append(String.format(" color=0x%08x", Integer.valueOf(this.color)));
        if (this.category != null) {
            sb.append(" category=");
            sb.append(this.category);
        }
        if (this.mGroupKey != null) {
            sb.append(" groupKey=");
            sb.append(this.mGroupKey);
        }
        if (this.mSortKey != null) {
            sb.append(" sortKey=");
            sb.append(this.mSortKey);
        }
        if (this.actions != null) {
            sb.append(" actions=");
            sb.append(this.actions.length);
        }
        sb.append(" vis=");
        sb.append(visibilityToString(this.visibility));
        if (this.publicVersion != null) {
            sb.append(" publicVersion=");
            sb.append(this.publicVersion.toString());
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(final Parcel parcel, int i2) {
        boolean z2 = this.allPendingIntents == null;
        if (z2) {
            PendingIntent.setOnMarshaledListener(new PendingIntent.OnMarshaledListener() { // from class: android.app.l
                @Override // android.app.PendingIntent.OnMarshaledListener
                public final void onMarshaled(PendingIntent pendingIntent, Parcel parcel2, int i3) {
                    this.f41a.lambda$writeToParcel$0(parcel, pendingIntent, parcel2, i3);
                }
            });
        }
        try {
            writeToParcelImpl(parcel, i2);
            parcel.writeArraySet(this.allPendingIntents);
        } finally {
            if (z2) {
                PendingIntent.setOnMarshaledListener(null);
            }
        }
    }

    public static final class CarExtender implements Extender {
        private static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
        private static final String EXTRA_COLOR = "app_color";
        private static final String EXTRA_CONVERSATION = "car_conversation";
        private static final String EXTRA_LARGE_ICON = "large_icon";
        private static final String TAG = "CarExtender";
        private int mColor;
        private Bitmap mLargeIcon;
        private UnreadConversation mUnreadConversation;

        public static class Builder {
            private long mLatestTimestamp;
            private final List<String> mMessages = new ArrayList();
            private final String mParticipant;
            private PendingIntent mReadPendingIntent;
            private RemoteInput mRemoteInput;
            private PendingIntent mReplyPendingIntent;

            public Builder(String str) {
                this.mParticipant = str;
            }

            public Builder addMessage(String str) {
                this.mMessages.add(str);
                return this;
            }

            public UnreadConversation build() {
                List<String> list = this.mMessages;
                return new UnreadConversation((String[]) list.toArray(new String[list.size()]), this.mRemoteInput, this.mReplyPendingIntent, this.mReadPendingIntent, new String[]{this.mParticipant}, this.mLatestTimestamp);
            }

            public Builder setLatestTimestamp(long j2) {
                this.mLatestTimestamp = j2;
                return this;
            }

            public Builder setReadPendingIntent(PendingIntent pendingIntent) {
                this.mReadPendingIntent = pendingIntent;
                return this;
            }

            public Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
                this.mRemoteInput = remoteInput;
                this.mReplyPendingIntent = pendingIntent;
                return this;
            }
        }

        public static class UnreadConversation {
            private static final String KEY_AUTHOR = "author";
            private static final String KEY_MESSAGES = "messages";
            private static final String KEY_ON_READ = "on_read";
            private static final String KEY_ON_REPLY = "on_reply";
            private static final String KEY_PARTICIPANTS = "participants";
            private static final String KEY_REMOTE_INPUT = "remote_input";
            private static final String KEY_TEXT = "text";
            private static final String KEY_TIMESTAMP = "timestamp";
            private final long mLatestTimestamp;
            private final String[] mMessages;
            private final String[] mParticipants;
            private final PendingIntent mReadPendingIntent;
            private final RemoteInput mRemoteInput;
            private final PendingIntent mReplyPendingIntent;

            public UnreadConversation(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j2) {
                this.mMessages = strArr;
                this.mRemoteInput = remoteInput;
                this.mReadPendingIntent = pendingIntent2;
                this.mReplyPendingIntent = pendingIntent;
                this.mParticipants = strArr2;
                this.mLatestTimestamp = j2;
            }

            public static UnreadConversation getUnreadConversationFromBundle(Bundle bundle) {
                String[] strArr;
                if (bundle == null) {
                    return null;
                }
                Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_MESSAGES);
                if (parcelableArray != null) {
                    int length = parcelableArray.length;
                    String[] strArr2 = new String[length];
                    boolean z2 = false;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            z2 = true;
                            break;
                        }
                        Parcelable parcelable = parcelableArray[i2];
                        if (!(parcelable instanceof Bundle)) {
                            break;
                        }
                        String string = ((Bundle) parcelable).getString("text");
                        strArr2[i2] = string;
                        if (string == null) {
                            break;
                        }
                        i2++;
                    }
                    if (!z2) {
                        return null;
                    }
                    strArr = strArr2;
                } else {
                    strArr = null;
                }
                PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(KEY_ON_READ);
                PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(KEY_ON_REPLY);
                RemoteInput remoteInput = (RemoteInput) bundle.getParcelable(KEY_REMOTE_INPUT);
                String[] stringArray = bundle.getStringArray(KEY_PARTICIPANTS);
                if (stringArray == null || stringArray.length != 1) {
                    return null;
                }
                return new UnreadConversation(strArr, remoteInput, pendingIntent2, pendingIntent, stringArray, bundle.getLong("timestamp"));
            }

            public Bundle getBundleForUnreadConversation() {
                Bundle bundle = new Bundle();
                String[] strArr = this.mParticipants;
                String str = (strArr == null || strArr.length <= 1) ? null : strArr[0];
                int length = this.mMessages.length;
                Parcelable[] parcelableArr = new Parcelable[length];
                for (int i2 = 0; i2 < length; i2++) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("text", this.mMessages[i2]);
                    bundle2.putString("author", str);
                    parcelableArr[i2] = bundle2;
                }
                bundle.putParcelableArray(KEY_MESSAGES, parcelableArr);
                RemoteInput remoteInput = this.mRemoteInput;
                if (remoteInput != null) {
                    bundle.putParcelable(KEY_REMOTE_INPUT, remoteInput);
                }
                bundle.putParcelable(KEY_ON_REPLY, this.mReplyPendingIntent);
                bundle.putParcelable(KEY_ON_READ, this.mReadPendingIntent);
                bundle.putStringArray(KEY_PARTICIPANTS, this.mParticipants);
                bundle.putLong("timestamp", this.mLatestTimestamp);
                return bundle;
            }

            public long getLatestTimestamp() {
                return this.mLatestTimestamp;
            }

            public String[] getMessages() {
                return this.mMessages;
            }

            public String getParticipant() {
                String[] strArr = this.mParticipants;
                if (strArr.length > 0) {
                    return strArr[0];
                }
                return null;
            }

            public String[] getParticipants() {
                return this.mParticipants;
            }

            public PendingIntent getReadPendingIntent() {
                return this.mReadPendingIntent;
            }

            public RemoteInput getRemoteInput() {
                return this.mRemoteInput;
            }

            public PendingIntent getReplyPendingIntent() {
                return this.mReplyPendingIntent;
            }
        }

        public CarExtender() {
            this.mColor = 0;
        }

        @Override // android.app.Notification.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            Bitmap bitmap = this.mLargeIcon;
            if (bitmap != null) {
                bundle.putParcelable(EXTRA_LARGE_ICON, bitmap);
            }
            int i2 = this.mColor;
            if (i2 != 0) {
                bundle.putInt(EXTRA_COLOR, i2);
            }
            UnreadConversation unreadConversation = this.mUnreadConversation;
            if (unreadConversation != null) {
                bundle.putBundle(EXTRA_CONVERSATION, unreadConversation.getBundleForUnreadConversation());
            }
            builder.getExtras().putBundle(EXTRA_CAR_EXTENDER, bundle);
            return builder;
        }

        public int getColor() {
            return this.mColor;
        }

        public Bitmap getLargeIcon() {
            return this.mLargeIcon;
        }

        public UnreadConversation getUnreadConversation() {
            return this.mUnreadConversation;
        }

        public CarExtender setColor(int i2) {
            this.mColor = i2;
            return this;
        }

        public CarExtender setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        public CarExtender setUnreadConversation(UnreadConversation unreadConversation) {
            this.mUnreadConversation = unreadConversation;
            return this;
        }

        public CarExtender(Notification notification) {
            this.mColor = 0;
            Bundle bundle = notification.extras;
            Bundle bundle2 = bundle == null ? null : bundle.getBundle(EXTRA_CAR_EXTENDER);
            if (bundle2 != null) {
                this.mLargeIcon = (Bitmap) bundle2.getParcelable(EXTRA_LARGE_ICON);
                this.mColor = bundle2.getInt(EXTRA_COLOR, 0);
                this.mUnreadConversation = UnreadConversation.getUnreadConversationFromBundle(bundle2.getBundle(EXTRA_CONVERSATION));
            }
        }
    }

    public static class InboxStyle extends Style {
        private ArrayList<CharSequence> mTexts = new ArrayList<>(5);

        public InboxStyle() {
        }

        private void handleInboxImageMargin(RemoteViews remoteViews, int i2, boolean z2) {
            int i3 = 0;
            if (z2) {
                boolean z3 = this.mBuilder.mN.extras.getInt("android.progressMax", 0) != 0 || this.mBuilder.mN.extras.getBoolean("android.progressIndeterminate");
                if (this.mBuilder.mN.hasLargeIcon() && !z3) {
                    i3 = R.dimen.notification_content_picture_margin;
                }
            }
            remoteViews.setViewLayoutMarginEndDimen(i2, i3);
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            bundle.putCharSequenceArray("android.textLines", (CharSequence[]) this.mTexts.toArray(new CharSequence[this.mTexts.size()]));
        }

        public InboxStyle addLine(CharSequence charSequence) {
            this.mTexts.add(Notification.safeCharSequence(charSequence));
            return this;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            CharSequence charSequence = this.mBuilder.mN.extras.getCharSequence("android.text");
            this.mBuilder.getAllExtras().putCharSequence("android.text", null);
            RemoteViews standardView = getStandardView(this.mBuilder.getInboxLayoutResource());
            this.mBuilder.getAllExtras().putCharSequence("android.text", charSequence);
            int[] iArr = {R.id.inbox_text0, R.id.inbox_text1, R.id.inbox_text2, R.id.inbox_text3, R.id.inbox_text4, R.id.inbox_text5, R.id.inbox_text6};
            for (int i2 = 0; i2 < 7; i2++) {
                standardView.setViewVisibility(iArr[i2], 8);
            }
            int dimensionPixelSize = this.mBuilder.mContext.getResources().getDimensionPixelSize(R.dimen.notification_inbox_item_top_padding);
            int i3 = this.mBuilder.mActions.size() > 0 ? 6 : 7;
            boolean z2 = true;
            int i4 = 0;
            for (int i5 = 0; i5 < this.mTexts.size() && i5 < i3; i5++) {
                CharSequence charSequence2 = this.mTexts.get(i5);
                if (!TextUtils.isEmpty(charSequence2)) {
                    standardView.setViewVisibility(iArr[i5], 0);
                    int i6 = iArr[i5];
                    Builder builder = this.mBuilder;
                    standardView.setTextViewText(i6, builder.processTextSpans(builder.processLegacyText(charSequence2)));
                    this.mBuilder.setTextViewColorSecondary(standardView, iArr[i5]);
                    standardView.setViewPadding(iArr[i5], 0, dimensionPixelSize, 0, 0);
                    handleInboxImageMargin(standardView, iArr[i5], z2);
                    i4 = z2 ? iArr[i5] : 0;
                    z2 = false;
                }
            }
            if (i4 != 0) {
                standardView.setViewPadding(i4, 0, this.mBuilder.mContext.getResources().getDimensionPixelSize(R.dimen.notification_text_margin_top), 0, 0);
            }
            return standardView;
        }

        @Override // android.app.Notification.Style
        public void restoreFromExtras(Bundle bundle) {
            super.restoreFromExtras(bundle);
            this.mTexts.clear();
            if (bundle.containsKey("android.textLines")) {
                Collections.addAll(this.mTexts, bundle.getCharSequenceArray("android.textLines"));
            }
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        @Deprecated
        public InboxStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static class MediaStyle extends Style {
        static final int MAX_MEDIA_BUTTONS = 5;
        static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
        private int[] mActionsToShowInCompact = null;
        private MediaSession.Token mToken;

        public MediaStyle() {
        }

        private RemoteViews generateMediaActionButton(Action action, int i2) {
            boolean z2 = action.actionIntent == null;
            BuilderRemoteViews builderRemoteViews = new BuilderRemoteViews(this.mBuilder.mContext.getApplicationInfo(), R.layout.notification_material_media_action);
            builderRemoteViews.setImageViewIcon(R.id.action0, action.getIcon());
            if (!this.mBuilder.shouldTintActionButtons() && !this.mBuilder.isColorized()) {
                i2 = NotificationColorUtil.resolveColor(this.mBuilder.mContext, 0);
            }
            builderRemoteViews.setDrawableParameters(R.id.action0, false, -1, i2, PorterDuff.Mode.SRC_ATOP, -1);
            if (!z2) {
                builderRemoteViews.setOnClickPendingIntent(R.id.action0, action.actionIntent);
            }
            builderRemoteViews.setContentDescription(R.id.action0, action.title);
            return builderRemoteViews;
        }

        private int getPrimaryHighlightColor() {
            return this.mBuilder.getPrimaryHighlightColor();
        }

        private void handleImage(RemoteViews remoteViews) {
            if (this.mBuilder.mN.hasLargeIcon()) {
                remoteViews.setViewLayoutMarginEndDimen(R.id.line1, 0);
                remoteViews.setViewLayoutMarginEndDimen(R.id.text, 0);
            }
        }

        private RemoteViews makeMediaBigContentView() {
            int iMin = Math.min(this.mBuilder.mActions.size(), 5);
            int[] iArr = this.mActionsToShowInCompact;
            int iMin2 = iArr == null ? 0 : Math.min(iArr.length, 3);
            if (!this.mBuilder.mN.hasLargeIcon() && iMin <= iMin2) {
                return null;
            }
            RemoteViews remoteViewsApplyStandardTemplate = this.mBuilder.applyStandardTemplate(R.layout.notification_template_material_big_media, false);
            if (iMin > 0) {
                remoteViewsApplyStandardTemplate.removeAllViews(R.id.media_actions);
                for (int i2 = 0; i2 < iMin; i2++) {
                    remoteViewsApplyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton((Action) this.mBuilder.mActions.get(i2), getPrimaryHighlightColor()));
                }
            }
            handleImage(remoteViewsApplyStandardTemplate);
            return remoteViewsApplyStandardTemplate;
        }

        private RemoteViews makeMediaContentView() {
            RemoteViews remoteViewsApplyStandardTemplate = this.mBuilder.applyStandardTemplate(R.layout.notification_template_material_media, false);
            int size = this.mBuilder.mActions.size();
            int[] iArr = this.mActionsToShowInCompact;
            int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
            if (iMin > 0) {
                remoteViewsApplyStandardTemplate.removeAllViews(R.id.media_actions);
                for (int i2 = 0; i2 < iMin; i2++) {
                    if (i2 >= size) {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i2), Integer.valueOf(size - 1)));
                    }
                    remoteViewsApplyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton((Action) this.mBuilder.mActions.get(this.mActionsToShowInCompact[i2]), getPrimaryHighlightColor()));
                }
            }
            handleImage(remoteViewsApplyStandardTemplate);
            remoteViewsApplyStandardTemplate.setViewLayoutMarginEndDimen(R.id.notification_main_column, this.mBuilder.mN.hasLargeIcon() ? R.dimen.notification_content_plus_picture_margin_end : R.dimen.notification_content_margin_end);
            return remoteViewsApplyStandardTemplate;
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            MediaSession.Token token = this.mToken;
            if (token != null) {
                bundle.putParcelable("android.mediaSession", token);
            }
            int[] iArr = this.mActionsToShowInCompact;
            if (iArr != null) {
                bundle.putIntArray("android.compactActions", iArr);
            }
        }

        @Override // android.app.Notification.Style
        public Notification buildStyled(Notification notification) {
            super.buildStyled(notification);
            if (notification.category == null) {
                notification.category = "transport";
            }
            return notification;
        }

        @Override // android.app.Notification.Style
        public boolean hasProgress() {
            return false;
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeBigContentView() {
            return makeMediaBigContentView();
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeContentView(boolean z2) {
            return makeMediaContentView();
        }

        @Override // android.app.Notification.Style
        public RemoteViews makeHeadsUpContentView(boolean z2) {
            RemoteViews remoteViewsMakeMediaBigContentView = makeMediaBigContentView();
            return remoteViewsMakeMediaBigContentView != null ? remoteViewsMakeMediaBigContentView : makeMediaContentView();
        }

        @Override // android.app.Notification.Style
        public void restoreFromExtras(Bundle bundle) {
            super.restoreFromExtras(bundle);
            if (bundle.containsKey("android.mediaSession")) {
                this.mToken = (MediaSession.Token) bundle.getParcelable("android.mediaSession");
            }
            if (bundle.containsKey("android.compactActions")) {
                this.mActionsToShowInCompact = bundle.getIntArray("android.compactActions");
            }
        }

        public MediaStyle setMediaSession(MediaSession.Token token) {
            this.mToken = token;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.mActionsToShowInCompact = iArr;
            return this;
        }

        @Deprecated
        public MediaStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static final class TvExtender implements Extender {
        private static final String EXTRA_CHANNEL_ID = "channel_id";
        private static final String EXTRA_CONTENT_INTENT = "content_intent";
        private static final String EXTRA_DELETE_INTENT = "delete_intent";
        private static final String EXTRA_FLAGS = "flags";
        private static final String EXTRA_TV_EXTENDER = "android.tv.EXTENSIONS";
        private static final int FLAG_AVAILABLE_ON_TV = 1;
        private static final String TAG = "TvExtender";
        private String mChannelId;
        private PendingIntent mContentIntent;
        private PendingIntent mDeleteIntent;
        private int mFlags;

        public TvExtender() {
            this.mFlags = 1;
        }

        @Override // android.app.Notification.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            bundle.putInt("flags", this.mFlags);
            bundle.putString("channel_id", this.mChannelId);
            PendingIntent pendingIntent = this.mContentIntent;
            if (pendingIntent != null) {
                bundle.putParcelable(EXTRA_CONTENT_INTENT, pendingIntent);
            }
            PendingIntent pendingIntent2 = this.mDeleteIntent;
            if (pendingIntent2 != null) {
                bundle.putParcelable(EXTRA_DELETE_INTENT, pendingIntent2);
            }
            builder.getExtras().putBundle(EXTRA_TV_EXTENDER, bundle);
            return builder;
        }

        @Deprecated
        public String getChannel() {
            return this.mChannelId;
        }

        public String getChannelId() {
            return this.mChannelId;
        }

        public PendingIntent getContentIntent() {
            return this.mContentIntent;
        }

        public PendingIntent getDeleteIntent() {
            return this.mDeleteIntent;
        }

        public boolean isAvailableOnTv() {
            return (this.mFlags & 1) != 0;
        }

        public TvExtender setChannel(String str) {
            this.mChannelId = str;
            return this;
        }

        public TvExtender setChannelId(String str) {
            this.mChannelId = str;
            return this;
        }

        public TvExtender setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public TvExtender setDeleteIntent(PendingIntent pendingIntent) {
            this.mDeleteIntent = pendingIntent;
            return this;
        }

        public TvExtender(Notification notification) {
            Bundle bundle = notification.extras;
            Bundle bundle2 = bundle == null ? null : bundle.getBundle(EXTRA_TV_EXTENDER);
            if (bundle2 != null) {
                this.mFlags = bundle2.getInt("flags");
                this.mChannelId = bundle2.getString("channel_id");
                this.mContentIntent = (PendingIntent) bundle2.getParcelable(EXTRA_CONTENT_INTENT);
                this.mDeleteIntent = (PendingIntent) bundle2.getParcelable(EXTRA_DELETE_INTENT);
            }
        }
    }

    public static void addFieldsFromContext(ApplicationInfo applicationInfo, Notification notification) {
        notification.extras.putParcelable(EXTRA_BUILDER_APPLICATION_INFO, applicationInfo);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Notification m8clone() {
        Notification notification = new Notification();
        cloneInto(notification, true);
        return notification;
    }

    public Notification(Context context, int i2, CharSequence charSequence, long j2, CharSequence charSequence2, CharSequence charSequence3, Intent intent) {
        this.number = 0;
        this.audioStreamType = -1;
        this.audioAttributes = AUDIO_ATTRIBUTES_DEFAULT;
        this.color = 0;
        this.extras = new Bundle();
        this.mGroupAlertBehavior = 0;
        this.mBadgeIcon = 0;
        new Builder(context).setWhen(j2).setSmallIcon(i2).setTicker(charSequence).setContentTitle(charSequence2).setContentText(charSequence3).setContentIntent(PendingIntent.getActivity(context, 0, intent, 0)).buildInto(this);
    }

    @Deprecated
    public Notification(int i2, CharSequence charSequence, long j2) {
        this.number = 0;
        this.audioStreamType = -1;
        this.audioAttributes = AUDIO_ATTRIBUTES_DEFAULT;
        this.color = 0;
        this.extras = new Bundle();
        this.mGroupAlertBehavior = 0;
        this.mBadgeIcon = 0;
        this.icon = i2;
        this.tickerText = charSequence;
        this.when = j2;
        this.creationTime = System.currentTimeMillis();
    }

    public Notification(Parcel parcel) {
        this.number = 0;
        this.audioStreamType = -1;
        this.audioAttributes = AUDIO_ATTRIBUTES_DEFAULT;
        this.color = 0;
        this.extras = new Bundle();
        this.mGroupAlertBehavior = 0;
        this.mBadgeIcon = 0;
        readFromParcelImpl(parcel);
        this.allPendingIntents = parcel.readArraySet(null);
    }
}
