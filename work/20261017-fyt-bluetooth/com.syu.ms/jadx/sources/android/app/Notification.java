package android.app;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.LinkCapabilities;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.UserHandle;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import java.text.NumberFormat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Notification implements Parcelable {
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
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_AS_HEADS_UP = "headsup";
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_SCORE_MODIFIED = "android.scoreModified";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int HEADS_UP_ALLOWED = 1;
    public static final int HEADS_UP_NEVER = 0;
    public static final int HEADS_UP_REQUESTED = 2;
    public static final String KIND_CALL = "android.call";
    public static final String KIND_EMAIL = "android.email";
    public static final String KIND_EVENT = "android.event";
    public static final String KIND_MESSAGE = "android.message";
    public static final String KIND_PROMO = "android.promo";
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    private static final String TAG = "Notification";
    public Action[] actions;
    public int audioStreamType;
    public RemoteViews bigContentView;
    public PendingIntent contentIntent;
    public RemoteViews contentView;
    public int defaults;
    public PendingIntent deleteIntent;
    public Bundle extras;
    public int flags;
    public PendingIntent fullScreenIntent;
    public int icon;
    public int iconLevel;
    public String[] kind;
    public Bitmap largeIcon;
    public int ledARGB;
    public int ledOffMS;
    public int ledOnMS;
    public int number;
    public int priority;
    public Uri sound;
    public CharSequence tickerText;
    public RemoteViews tickerView;
    public long[] vibrate;
    public long when;

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
        public PendingIntent actionIntent;
        public int icon;
        public CharSequence title;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.icon);
            TextUtils.writeToParcel(this.title, parcel, i2);
            if (this.actionIntent == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.actionIntent.writeToParcel(parcel, i2);
            }
        }

        private Action() {
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Action m6clone() {
            return new Action(this.icon, this.title, this.actionIntent);
        }

        private Action(Parcel parcel) {
            this.icon = parcel.readInt();
            this.title = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 1) {
                this.actionIntent = PendingIntent.CREATOR.createFromParcel(parcel);
            }
        }

        public Action(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.icon = i2;
            this.title = charSequence;
            this.actionIntent = pendingIntent;
        }
    }

    public static class BigTextStyle extends Style {
        private CharSequence mBigText;

        public BigTextStyle() {
        }

        private RemoteViews makeBigContentView() {
            boolean z2 = (this.mBuilder.mContentText == null || this.mBuilder.mSubText == null) ? false : true;
            this.mBuilder.mContentText = null;
            RemoteViews standardView = getStandardView(17367143);
            if (z2) {
                standardView.setViewPadding(16909031, 0, 0, 0, 0);
            }
            standardView.setTextViewText(16909035, this.mBigText);
            standardView.setViewVisibility(16909035, 0);
            standardView.setViewVisibility(R.id.text2, 8);
            return standardView;
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            bundle.putCharSequence(Notification.EXTRA_TEXT, this.mBigText);
        }

        public BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = Notification.safeCharSequence(charSequence);
            return this;
        }

        @Override // android.app.Notification.Style
        public Notification buildStyled(Notification notification) {
            notification.bigContentView = makeBigContentView();
            notification.extras.putCharSequence(Notification.EXTRA_TEXT, this.mBigText);
            return notification;
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigTextStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static class Builder {
        private static final int MAX_ACTION_BUTTONS = 3;
        private CharSequence mContentInfo;
        private PendingIntent mContentIntent;
        private CharSequence mContentText;
        private CharSequence mContentTitle;
        private RemoteViews mContentView;
        private Context mContext;
        private int mDefaults;
        private PendingIntent mDeleteIntent;
        private Bundle mExtras;
        private int mFlags;
        private PendingIntent mFullScreenIntent;
        private Bitmap mLargeIcon;
        private int mLedArgb;
        private int mLedOffMs;
        private int mLedOnMs;
        private int mNumber;
        private int mProgress;
        private boolean mProgressIndeterminate;
        private int mProgressMax;
        private int mSmallIcon;
        private int mSmallIconLevel;
        private Uri mSound;
        private Style mStyle;
        private CharSequence mSubText;
        private CharSequence mTickerText;
        private RemoteViews mTickerView;
        private boolean mUseChronometer;
        private long[] mVibrate;
        private ArrayList<String> mKindList = new ArrayList<>(1);
        private ArrayList<Action> mActions = new ArrayList<>(3);
        private boolean mShowWhen = true;
        private long mWhen = System.currentTimeMillis();
        private int mAudioStreamType = -1;
        private int mPriority = 0;

        public Builder(Context context) {
            this.mContext = context;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:36:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:37:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:38:0x00bd  */
        /* JADX WARN: Code duplicated, block: B:48:0x00de A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:49:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:59:0x013a  */
        /* JADX WARN: Code duplicated, block: B:62:0x0142  */
        /* JADX WARN: Code duplicated, block: B:63:0x0144  */
        /* JADX WARN: Code duplicated, block: B:66:0x014d  */
        private RemoteViews applyStandardTemplate(int i2, boolean z2) {
            int i3;
            boolean z3;
            CharSequence charSequence;
            int i4;
            boolean z4;
            int i5;
            CharSequence charSequence2;
            RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), i2);
            Bitmap bitmap = this.mLargeIcon;
            if (bitmap != null) {
                remoteViews.setImageViewBitmap(R.id.icon, bitmap);
                i3 = 16908899;
            } else {
                i3 = 16908294;
            }
            if (this.mPriority < -1) {
                remoteViews.setInt(R.id.icon, "setBackgroundResource", 17303182);
                remoteViews.setInt(16909030, "setBackgroundResource", 17302604);
            }
            int i6 = this.mSmallIcon;
            if (i6 != 0) {
                remoteViews.setImageViewResource(i3, i6);
                remoteViews.setViewVisibility(i3, 0);
            } else {
                remoteViews.setViewVisibility(i3, 8);
            }
            CharSequence charSequence3 = this.mContentTitle;
            if (charSequence3 != null) {
                remoteViews.setTextViewText(R.id.title, charSequence3);
            }
            CharSequence charSequence4 = this.mContentText;
            if (charSequence4 != null) {
                remoteViews.setTextViewText(16908358, charSequence4);
                z3 = true;
            } else {
                z3 = false;
            }
            CharSequence charSequence5 = this.mContentInfo;
            if (charSequence5 == null) {
                if (this.mNumber > 0) {
                    if (this.mNumber > this.mContext.getResources().getInteger(R.integer.status_bar_notification_info_maxnum)) {
                        remoteViews.setTextViewText(16909034, this.mContext.getResources().getString(R.string.status_bar_notification_info_overflow));
                    } else {
                        remoteViews.setTextViewText(16909034, NumberFormat.getIntegerInstance().format(this.mNumber));
                    }
                    remoteViews.setViewVisibility(16909034, 0);
                } else {
                    remoteViews.setViewVisibility(16909034, 8);
                }
                charSequence = this.mSubText;
                if (charSequence != null) {
                    remoteViews.setTextViewText(16908358, charSequence);
                    charSequence2 = this.mContentText;
                    if (charSequence2 != null) {
                        remoteViews.setTextViewText(R.id.text2, charSequence2);
                        remoteViews.setViewVisibility(R.id.text2, 0);
                        z4 = true;
                    } else {
                        remoteViews.setViewVisibility(R.id.text2, 8);
                        z4 = false;
                    }
                } else {
                    remoteViews.setViewVisibility(R.id.text2, 8);
                    i4 = this.mProgressMax;
                    if (i4 == 0 || this.mProgressIndeterminate) {
                        remoteViews.setProgressBar(R.id.progress, i4, this.mProgress, this.mProgressIndeterminate);
                        remoteViews.setViewVisibility(R.id.progress, 0);
                        z4 = true;
                    } else {
                        remoteViews.setViewVisibility(R.id.progress, 8);
                        z4 = false;
                    }
                }
                if (z4) {
                    if (z2) {
                        remoteViews.setTextViewTextSize(16908358, 0, this.mContext.getResources().getDimensionPixelSize(17104985));
                    }
                    remoteViews.setViewPadding(16909031, 0, 0, 0, 0);
                }
                if (this.mWhen != 0 || !this.mShowWhen) {
                    remoteViews.setViewVisibility(16908388, 8);
                } else if (this.mUseChronometer) {
                    remoteViews.setViewVisibility(16909032, 0);
                    remoteViews.setLong(16909032, "setBase", this.mWhen + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(16909032, "setStarted", true);
                } else {
                    remoteViews.setViewVisibility(16908388, 0);
                    remoteViews.setLong(16908388, "setTime", this.mWhen);
                }
                if (z3) {
                    i5 = 0;
                } else {
                    i5 = 8;
                }
                remoteViews.setViewVisibility(16909033, i5);
                remoteViews.setViewVisibility(16909038, z3 ? 0 : 8);
                return remoteViews;
            }
            remoteViews.setTextViewText(16909034, charSequence5);
            remoteViews.setViewVisibility(16909034, 0);
            z3 = true;
            charSequence = this.mSubText;
            if (charSequence != null) {
                remoteViews.setTextViewText(16908358, charSequence);
                charSequence2 = this.mContentText;
                if (charSequence2 != null) {
                    remoteViews.setTextViewText(R.id.text2, charSequence2);
                    remoteViews.setViewVisibility(R.id.text2, 0);
                    z4 = true;
                } else {
                    remoteViews.setViewVisibility(R.id.text2, 8);
                    z4 = false;
                }
            } else {
                remoteViews.setViewVisibility(R.id.text2, 8);
                i4 = this.mProgressMax;
                if (i4 == 0) {
                }
                remoteViews.setProgressBar(R.id.progress, i4, this.mProgress, this.mProgressIndeterminate);
                remoteViews.setViewVisibility(R.id.progress, 0);
                z4 = true;
            }
            if (z4) {
                if (z2) {
                    remoteViews.setTextViewTextSize(16908358, 0, this.mContext.getResources().getDimensionPixelSize(17104985));
                }
                remoteViews.setViewPadding(16909031, 0, 0, 0, 0);
            }
            if (this.mWhen != 0) {
                remoteViews.setViewVisibility(16908388, 8);
            } else {
                remoteViews.setViewVisibility(16908388, 8);
            }
            if (z3) {
                i5 = 0;
            } else {
                i5 = 8;
            }
            remoteViews.setViewVisibility(16909033, i5);
            remoteViews.setViewVisibility(16909038, z3 ? 0 : 8);
            return remoteViews;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RemoteViews applyStandardTemplateWithActions(int i2) {
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(i2, false);
            int size = this.mActions.size();
            if (size > 0) {
                remoteViewsApplyStandardTemplate.setViewVisibility(16909027, 0);
                remoteViewsApplyStandardTemplate.setViewVisibility(16909036, 0);
                if (size > 3) {
                    size = 3;
                }
                remoteViewsApplyStandardTemplate.removeAllViews(16909027);
                for (int i3 = 0; i3 < size; i3++) {
                    remoteViewsApplyStandardTemplate.addView(16909027, generateActionButton(this.mActions.get(i3)));
                }
            }
            return remoteViewsApplyStandardTemplate;
        }

        private RemoteViews generateActionButton(Action action) {
            boolean z2 = action.actionIntent == null;
            RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), z2 ? 17367138 : 17367136);
            remoteViews.setTextViewCompoundDrawablesRelative(16909026, action.icon, 0, 0, 0);
            remoteViews.setTextViewText(16909026, action.title);
            if (!z2) {
                remoteViews.setOnClickPendingIntent(16909026, action.actionIntent);
            }
            remoteViews.setContentDescription(16909026, action.title);
            return remoteViews;
        }

        private RemoteViews makeBigContentView() {
            if (this.mActions.size() == 0) {
                return null;
            }
            return applyStandardTemplateWithActions(17367141);
        }

        private RemoteViews makeContentView() {
            RemoteViews remoteViews = this.mContentView;
            return remoteViews != null ? remoteViews : applyStandardTemplate(17367140, true);
        }

        private RemoteViews makeTickerView() {
            RemoteViews remoteViews = this.mTickerView;
            if (remoteViews != null) {
                return remoteViews;
            }
            if (this.mContentView == null) {
                return applyStandardTemplate(this.mLargeIcon == null ? 17367204 : 17367205, true);
            }
            return null;
        }

        private void setFlag(int i2, boolean z2) {
            if (z2) {
                this.mFlags = i2 | this.mFlags;
            } else {
                this.mFlags = (~i2) & this.mFlags;
            }
        }

        public Builder addAction(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i2, Notification.safeCharSequence(charSequence), pendingIntent));
            return this;
        }

        public void addExtras(Bundle bundle) {
            bundle.putCharSequence(Notification.EXTRA_TITLE, this.mContentTitle);
            bundle.putCharSequence(Notification.EXTRA_TEXT, this.mContentText);
            bundle.putCharSequence(Notification.EXTRA_SUB_TEXT, this.mSubText);
            bundle.putCharSequence(Notification.EXTRA_INFO_TEXT, this.mContentInfo);
            bundle.putInt(Notification.EXTRA_SMALL_ICON, this.mSmallIcon);
            bundle.putInt(Notification.EXTRA_PROGRESS, this.mProgress);
            bundle.putInt(Notification.EXTRA_PROGRESS_MAX, this.mProgressMax);
            bundle.putBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, this.mProgressIndeterminate);
            bundle.putBoolean(Notification.EXTRA_SHOW_CHRONOMETER, this.mUseChronometer);
            bundle.putBoolean(Notification.EXTRA_SHOW_WHEN, this.mShowWhen);
            Bitmap bitmap = this.mLargeIcon;
            if (bitmap != null) {
                bundle.putParcelable(Notification.EXTRA_LARGE_ICON, bitmap);
            }
        }

        public Builder addKind(String str) {
            this.mKindList.add(str);
            return this;
        }

        public Notification build() {
            Notification notificationBuildUnstyled = buildUnstyled();
            Style style = this.mStyle;
            if (style != null) {
                notificationBuildUnstyled = style.buildStyled(notificationBuildUnstyled);
            }
            Bundle bundle = this.mExtras != null ? new Bundle(this.mExtras) : new Bundle();
            notificationBuildUnstyled.extras = bundle;
            addExtras(bundle);
            Style style2 = this.mStyle;
            if (style2 != null) {
                style2.addExtras(notificationBuildUnstyled.extras);
            }
            return notificationBuildUnstyled;
        }

        public Notification buildInto(Notification notification) {
            build().cloneInto(notification, true);
            return notification;
        }

        public Notification buildUnstyled() {
            Notification notification = new Notification();
            notification.when = this.mWhen;
            notification.icon = this.mSmallIcon;
            notification.iconLevel = this.mSmallIconLevel;
            notification.number = this.mNumber;
            notification.contentView = makeContentView();
            notification.contentIntent = this.mContentIntent;
            notification.deleteIntent = this.mDeleteIntent;
            notification.fullScreenIntent = this.mFullScreenIntent;
            notification.tickerText = this.mTickerText;
            notification.tickerView = makeTickerView();
            notification.largeIcon = this.mLargeIcon;
            notification.sound = this.mSound;
            notification.audioStreamType = this.mAudioStreamType;
            notification.vibrate = this.mVibrate;
            notification.ledARGB = this.mLedArgb;
            notification.ledOnMS = this.mLedOnMs;
            notification.ledOffMS = this.mLedOffMs;
            notification.defaults = this.mDefaults;
            notification.flags = this.mFlags;
            notification.bigContentView = makeBigContentView();
            if (this.mLedOnMs != 0 || this.mLedOffMs != 0) {
                notification.flags |= 1;
            }
            if ((this.mDefaults & 4) != 0) {
                notification.flags |= 1;
            }
            if (this.mKindList.size() > 0) {
                String[] strArr = new String[this.mKindList.size()];
                notification.kind = strArr;
                this.mKindList.toArray(strArr);
            } else {
                notification.kind = null;
            }
            notification.priority = this.mPriority;
            if (this.mActions.size() > 0) {
                Action[] actionArr = new Action[this.mActions.size()];
                notification.actions = actionArr;
                this.mActions.toArray(actionArr);
            }
            return notification;
        }

        @Deprecated
        public Notification getNotification() {
            return build();
        }

        public Builder setAutoCancel(boolean z2) {
            setFlag(16, z2);
            return this;
        }

        public Builder setContent(RemoteViews remoteViews) {
            this.mContentView = remoteViews;
            return this;
        }

        public Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setDefaults(int i2) {
            this.mDefaults = i2;
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mDeleteIntent = pendingIntent;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z2) {
            this.mFullScreenIntent = pendingIntent;
            setFlag(128, z2);
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        public Builder setLights(int i2, int i3, int i4) {
            this.mLedArgb = i2;
            this.mLedOnMs = i3;
            this.mLedOffMs = i4;
            return this;
        }

        public Builder setNumber(int i2) {
            this.mNumber = i2;
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

        public Builder setPriority(int i2) {
            this.mPriority = i2;
            return this;
        }

        public Builder setProgress(int i2, int i3, boolean z2) {
            this.mProgressMax = i2;
            this.mProgress = i3;
            this.mProgressIndeterminate = z2;
            return this;
        }

        public Builder setShowWhen(boolean z2) {
            this.mShowWhen = z2;
            return this;
        }

        public Builder setSmallIcon(int i2) {
            this.mSmallIcon = i2;
            return this;
        }

        public Builder setSound(Uri uri) {
            this.mSound = uri;
            this.mAudioStreamType = -1;
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mTickerText = Notification.safeCharSequence(charSequence);
            return this;
        }

        public Builder setUsesChronometer(boolean z2) {
            this.mUseChronometer = z2;
            return this;
        }

        public Builder setVibrate(long[] jArr) {
            this.mVibrate = jArr;
            return this;
        }

        public Builder setWhen(long j2) {
            this.mWhen = j2;
            return this;
        }

        public Builder setSmallIcon(int i2, int i3) {
            this.mSmallIcon = i2;
            this.mSmallIconLevel = i3;
            return this;
        }

        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mTickerText = Notification.safeCharSequence(charSequence);
            this.mTickerView = remoteViews;
            return this;
        }

        public Builder setSound(Uri uri, int i2) {
            this.mSound = uri;
            this.mAudioStreamType = i2;
            return this;
        }
    }

    public static abstract class Style {
        private CharSequence mBigContentTitle;
        public Builder mBuilder;
        private CharSequence mSummaryText = null;
        private boolean mSummaryTextSet = false;

        public void addExtras(Bundle bundle) {
            if (this.mSummaryTextSet) {
                bundle.putCharSequence(Notification.EXTRA_SUMMARY_TEXT, this.mSummaryText);
            }
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence(Notification.EXTRA_TITLE_BIG, charSequence);
            }
        }

        public Notification build() {
            checkBuilder();
            return this.mBuilder.build();
        }

        public abstract Notification buildStyled(Notification notification);

        public void checkBuilder() {
            if (this.mBuilder == null) {
                throw new IllegalArgumentException("Style requires a valid Builder object");
            }
        }

        public RemoteViews getStandardView(int i2) {
            checkBuilder();
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                this.mBuilder.setContentTitle(charSequence);
            }
            RemoteViews remoteViewsApplyStandardTemplateWithActions = this.mBuilder.applyStandardTemplateWithActions(i2);
            CharSequence charSequence2 = this.mBigContentTitle;
            if (charSequence2 == null || !charSequence2.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909031, 0);
            } else {
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909031, 8);
            }
            CharSequence charSequence3 = this.mSummaryTextSet ? this.mSummaryText : this.mBuilder.mSubText;
            if (charSequence3 != null) {
                remoteViewsApplyStandardTemplateWithActions.setTextViewText(16908358, charSequence3);
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909038, 0);
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909033, 0);
            } else {
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909038, 8);
                remoteViewsApplyStandardTemplateWithActions.setViewVisibility(16909033, 8);
            }
            return remoteViewsApplyStandardTemplateWithActions;
        }

        public void internalSetBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
        }

        public void internalSetSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
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

    public Notification() {
        this.audioStreamType = -1;
        this.extras = new Bundle();
        this.when = System.currentTimeMillis();
        this.priority = 0;
    }

    public static CharSequence safeCharSequence(CharSequence charSequence) {
        if (!(charSequence instanceof Parcelable)) {
            return charSequence;
        }
        Log.e(TAG, "warning: " + charSequence.getClass().getCanonicalName() + " instance is a custom Parcelable and not allowed in Notification");
        return charSequence.toString();
    }

    public void cloneInto(Notification notification, boolean z2) {
        RemoteViews remoteViews;
        Bitmap bitmap;
        RemoteViews remoteViews2;
        RemoteViews remoteViews3;
        notification.when = this.when;
        notification.icon = this.icon;
        notification.number = this.number;
        notification.contentIntent = this.contentIntent;
        notification.deleteIntent = this.deleteIntent;
        notification.fullScreenIntent = this.fullScreenIntent;
        CharSequence charSequence = this.tickerText;
        if (charSequence != null) {
            notification.tickerText = charSequence.toString();
        }
        if (z2 && (remoteViews3 = this.tickerView) != null) {
            notification.tickerView = remoteViews3.m22clone();
        }
        if (z2 && (remoteViews2 = this.contentView) != null) {
            notification.contentView = remoteViews2.m22clone();
        }
        if (z2 && (bitmap = this.largeIcon) != null) {
            notification.largeIcon = Bitmap.createBitmap(bitmap);
        }
        notification.iconLevel = this.iconLevel;
        notification.sound = this.sound;
        notification.audioStreamType = this.audioStreamType;
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
        String[] strArr = this.kind;
        if (strArr != null) {
            int length2 = strArr.length;
            String[] strArr2 = new String[length2];
            notification.kind = strArr2;
            System.arraycopy(strArr, 0, strArr2, 0, length2);
        }
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
        Action[] actionArr = this.actions;
        if (actionArr != null) {
            notification.actions = new Action[actionArr.length];
            while (true) {
                Action[] actionArr2 = this.actions;
                if (i2 >= actionArr2.length) {
                    break;
                }
                notification.actions[i2] = actionArr2[i2].m6clone();
                i2++;
            }
        }
        if (z2 && (remoteViews = this.bigContentView) != null) {
            notification.bigContentView = remoteViews.m22clone();
        }
        if (z2) {
            return;
        }
        notification.lightenPayload();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void lightenPayload() {
        this.tickerView = null;
        this.contentView = null;
        this.bigContentView = null;
        this.largeIcon = null;
        Bundle bundle = this.extras;
        if (bundle != null) {
            bundle.remove(EXTRA_LARGE_ICON);
            this.extras.remove(EXTRA_LARGE_ICON_BIG);
            this.extras.remove(EXTRA_PICTURE);
        }
    }

    @Deprecated
    public void setLatestEventInfo(Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        Builder builder = new Builder(context);
        builder.setWhen(this.when);
        builder.setSmallIcon(this.icon);
        builder.setPriority(this.priority);
        builder.setTicker(this.tickerText);
        builder.setNumber(this.number);
        builder.mFlags = this.flags;
        builder.setSound(this.sound, this.audioStreamType);
        builder.setDefaults(this.defaults);
        builder.setVibrate(this.vibrate);
        if (charSequence != null) {
            builder.setContentTitle(charSequence);
        }
        if (charSequence2 != null) {
            builder.setContentText(charSequence2);
        }
        builder.setContentIntent(pendingIntent);
        builder.buildInto(this);
    }

    public void setUser(UserHandle userHandle) {
        if (userHandle.getIdentifier() == -1) {
            userHandle = UserHandle.OWNER;
        }
        RemoteViews remoteViews = this.tickerView;
        if (remoteViews != null) {
            remoteViews.setUser(userHandle);
        }
        RemoteViews remoteViews2 = this.contentView;
        if (remoteViews2 != null) {
            remoteViews2.setUser(userHandle);
        }
        RemoteViews remoteViews3 = this.bigContentView;
        if (remoteViews3 != null) {
            remoteViews3.setUser(userHandle);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification(pri=");
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
            sb.append(LinkCapabilities.Role.DEFAULT);
        } else {
            long[] jArr = this.vibrate;
            if (jArr != null) {
                int length = jArr.length - 1;
                sb.append("[");
                for (int i2 = 0; i2 < length; i2++) {
                    sb.append(this.vibrate[i2]);
                    sb.append(PhoneNumberUtils.PAUSE);
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
            sb.append(LinkCapabilities.Role.DEFAULT);
        } else {
            Uri uri = this.sound;
            if (uri != null) {
                sb.append(uri.toString());
            } else {
                sb.append("null");
            }
        }
        sb.append(" defaults=0x");
        sb.append(Integer.toHexString(this.defaults));
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.flags));
        sb.append(" kind=[");
        if (this.kind == null) {
            sb.append("null");
        } else {
            for (int i3 = 0; i3 < this.kind.length; i3++) {
                if (i3 > 0) {
                    sb.append(",");
                }
                sb.append(this.kind[i3]);
            }
        }
        sb.append("]");
        if (this.actions != null) {
            sb.append(" ");
            sb.append(this.actions.length);
            sb.append(" action");
            if (this.actions.length > 1) {
                sb.append("s");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(1);
        parcel.writeLong(this.when);
        parcel.writeInt(this.icon);
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
        if (this.largeIcon != null) {
            parcel.writeInt(1);
            this.largeIcon.writeToParcel(parcel, 0);
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
        parcel.writeStringArray(this.kind);
        parcel.writeBundle(this.extras);
        parcel.writeTypedArray(this.actions, 0);
        if (this.bigContentView == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.bigContentView.writeToParcel(parcel, 0);
        }
    }

    public static class BigPictureStyle extends Style {
        private Bitmap mBigLargeIcon;
        private boolean mBigLargeIconSet = false;
        private Bitmap mPicture;

        public BigPictureStyle() {
        }

        private RemoteViews makeBigContentView() {
            RemoteViews standardView = getStandardView(17367142);
            standardView.setImageViewBitmap(16909037, this.mPicture);
            return standardView;
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            if (this.mBigLargeIconSet) {
                bundle.putParcelable(Notification.EXTRA_LARGE_ICON_BIG, this.mBigLargeIcon);
            }
            bundle.putParcelable(Notification.EXTRA_PICTURE, this.mPicture);
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.mBigLargeIconSet = true;
            this.mBigLargeIcon = bitmap;
            return this;
        }

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPicture = bitmap;
            return this;
        }

        @Override // android.app.Notification.Style
        public Notification buildStyled(Notification notification) {
            if (this.mBigLargeIconSet) {
                this.mBuilder.mLargeIcon = this.mBigLargeIcon;
            }
            notification.bigContentView = makeBigContentView();
            return notification;
        }

        public BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        public BigPictureStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    public static class InboxStyle extends Style {
        private ArrayList<CharSequence> mTexts = new ArrayList<>(5);

        public InboxStyle() {
        }

        private RemoteViews makeBigContentView() {
            this.mBuilder.mContentText = null;
            RemoteViews standardView = getStandardView(17367144);
            standardView.setViewVisibility(R.id.text2, 8);
            int[] iArr = {16909039, 16909040, 16909041, 16909042, 16909043, 16909044, 16909045};
            for (int i2 = 0; i2 < 7; i2++) {
                standardView.setViewVisibility(iArr[i2], 8);
            }
            for (int i3 = 0; i3 < this.mTexts.size() && i3 < 7; i3++) {
                CharSequence charSequence = this.mTexts.get(i3);
                if (charSequence != null && !charSequence.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                    standardView.setViewVisibility(iArr[i3], 0);
                    standardView.setTextViewText(iArr[i3], charSequence);
                }
            }
            standardView.setViewVisibility(16909047, this.mTexts.size() > 0 ? 0 : 8);
            standardView.setViewVisibility(16909046, this.mTexts.size() > 7 ? 0 : 8);
            return standardView;
        }

        @Override // android.app.Notification.Style
        public void addExtras(Bundle bundle) {
            super.addExtras(bundle);
            bundle.putCharSequenceArray(Notification.EXTRA_TEXT_LINES, (CharSequence[]) this.mTexts.toArray(new CharSequence[this.mTexts.size()]));
        }

        public InboxStyle addLine(CharSequence charSequence) {
            this.mTexts.add(Notification.safeCharSequence(charSequence));
            return this;
        }

        @Override // android.app.Notification.Style
        public Notification buildStyled(Notification notification) {
            notification.bigContentView = makeBigContentView();
            return notification;
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            internalSetBigContentTitle(Notification.safeCharSequence(charSequence));
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            internalSetSummaryText(Notification.safeCharSequence(charSequence));
            return this;
        }

        public InboxStyle(Builder builder) {
            setBuilder(builder);
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Notification m5clone() {
        Notification notification = new Notification();
        cloneInto(notification, true);
        return notification;
    }

    public Notification(Context context, int i2, CharSequence charSequence, long j2, CharSequence charSequence2, CharSequence charSequence3, Intent intent) {
        this.audioStreamType = -1;
        this.extras = new Bundle();
        this.when = j2;
        this.icon = i2;
        this.tickerText = charSequence;
        setLatestEventInfo(context, charSequence2, charSequence3, PendingIntent.getActivity(context, 0, intent, 0));
    }

    @Deprecated
    public Notification(int i2, CharSequence charSequence, long j2) {
        this.audioStreamType = -1;
        this.extras = new Bundle();
        this.icon = i2;
        this.tickerText = charSequence;
        this.when = j2;
    }

    public Notification(Parcel parcel) {
        this.audioStreamType = -1;
        this.extras = new Bundle();
        parcel.readInt();
        this.when = parcel.readLong();
        this.icon = parcel.readInt();
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
            this.largeIcon = Bitmap.CREATOR.createFromParcel(parcel);
        }
        this.defaults = parcel.readInt();
        this.flags = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.sound = Uri.CREATOR.createFromParcel(parcel);
        }
        this.audioStreamType = parcel.readInt();
        this.vibrate = parcel.createLongArray();
        this.ledARGB = parcel.readInt();
        this.ledOnMS = parcel.readInt();
        this.ledOffMS = parcel.readInt();
        this.iconLevel = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.fullScreenIntent = PendingIntent.CREATOR.createFromParcel(parcel);
        }
        this.priority = parcel.readInt();
        this.kind = parcel.createStringArray();
        this.extras = parcel.readBundle();
        this.actions = (Action[]) parcel.createTypedArray(Action.CREATOR);
        if (parcel.readInt() != 0) {
            this.bigContentView = RemoteViews.CREATOR.createFromParcel(parcel);
        }
    }
}
