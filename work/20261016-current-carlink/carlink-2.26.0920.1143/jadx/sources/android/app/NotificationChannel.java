package android.app;

import android.content.ContentResolver;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.text.TextUtils;
import com.android.internal.util.Preconditions;
import java.io.IOException;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationChannel implements Parcelable {
    private static final String ATT_BLOCKABLE_SYSTEM = "blockable_system";
    private static final String ATT_CONTENT_TYPE = "content_type";
    private static final String ATT_DELETED = "deleted";
    private static final String ATT_DESC = "desc";
    private static final String ATT_FLAGS = "flags";
    private static final String ATT_GROUP = "group";
    private static final String ATT_ID = "id";
    private static final String ATT_IMPORTANCE = "importance";
    private static final String ATT_LIGHTS = "lights";
    private static final String ATT_LIGHT_COLOR = "light_color";
    private static final String ATT_NAME = "name";
    private static final String ATT_PRIORITY = "priority";
    private static final String ATT_SHOW_BADGE = "show_badge";
    private static final String ATT_SOUND = "sound";
    private static final String ATT_USAGE = "usage";
    private static final String ATT_USER_LOCKED = "locked";
    private static final String ATT_VIBRATION = "vibration";
    private static final String ATT_VIBRATION_ENABLED = "vibration_enabled";
    private static final String ATT_VISIBILITY = "visibility";
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";
    private static final boolean DEFAULT_DELETED = false;
    private static final int DEFAULT_IMPORTANCE = -1000;
    private static final int DEFAULT_LIGHT_COLOR = 0;
    private static final boolean DEFAULT_SHOW_BADGE = true;
    private static final int DEFAULT_VISIBILITY = -1000;
    private static final String DELIMITER = ",";
    private static final int MAX_TEXT_LENGTH = 1000;
    private static final String TAG_CHANNEL = "channel";
    public static final int USER_LOCKED_IMPORTANCE = 4;
    public static final int USER_LOCKED_LIGHTS = 8;
    public static final int USER_LOCKED_PRIORITY = 1;
    public static final int USER_LOCKED_SHOW_BADGE = 128;
    public static final int USER_LOCKED_SOUND = 32;
    public static final int USER_LOCKED_VIBRATION = 16;
    public static final int USER_LOCKED_VISIBILITY = 2;
    private AudioAttributes mAudioAttributes;
    private boolean mBlockableSystem;
    private boolean mBypassDnd;
    private boolean mDeleted;
    private String mDesc;
    private String mGroup;
    private final String mId;
    private int mImportance;
    private int mLightColor;
    private boolean mLights;
    private int mLockscreenVisibility;
    private String mName;
    private boolean mShowBadge;
    private Uri mSound;
    private int mUserLockedFields;
    private long[] mVibration;
    private boolean mVibrationEnabled;
    public static final int[] LOCKABLE_FIELDS = {1, 2, 4, 8, 16, 32, 128};
    public static final Parcelable.Creator<NotificationChannel> CREATOR = new Parcelable.Creator<NotificationChannel>() { // from class: android.app.NotificationChannel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationChannel createFromParcel(Parcel parcel) {
            return new NotificationChannel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationChannel[] newArray(int i2) {
            return new NotificationChannel[i2];
        }
    };

    public NotificationChannel(String str, CharSequence charSequence, int i2) {
        this.mImportance = -1000;
        this.mLockscreenVisibility = -1000;
        this.mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.mLightColor = 0;
        this.mShowBadge = true;
        this.mDeleted = false;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        this.mBlockableSystem = false;
        this.mId = getTrimmedString(str);
        this.mName = charSequence != null ? getTrimmedString(charSequence.toString()) : null;
        this.mImportance = i2;
    }

    private Uri getSoundForBackup(Context context) {
        Uri sound = getSound();
        if (sound == null) {
            return null;
        }
        Uri uriCanonicalize = context.getContentResolver().canonicalize(sound);
        return uriCanonicalize == null ? Settings.System.DEFAULT_NOTIFICATION_URI : uriCanonicalize;
    }

    private String getTrimmedString(String str) {
        return (str == null || str.length() <= 1000) ? str : str.substring(0, 1000);
    }

    private static String longArrayToString(long[] jArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (jArr != null && jArr.length > 0) {
            for (int i2 = 0; i2 < jArr.length - 1; i2++) {
                stringBuffer.append(jArr[i2]);
                stringBuffer.append(DELIMITER);
            }
            stringBuffer.append(jArr[jArr.length - 1]);
        }
        return stringBuffer.toString();
    }

    private Uri restoreSoundUri(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uriCanonicalize = contentResolver.canonicalize(uri);
        return uriCanonicalize == null ? Settings.System.DEFAULT_NOTIFICATION_URI : contentResolver.uncanonicalize(uriCanonicalize);
    }

    private static AudioAttributes safeAudioAttributes(XmlPullParser xmlPullParser) {
        int iSafeInt = safeInt(xmlPullParser, ATT_USAGE, 5);
        int iSafeInt2 = safeInt(xmlPullParser, ATT_CONTENT_TYPE, 4);
        return new AudioAttributes.Builder().setUsage(iSafeInt).setContentType(iSafeInt2).setFlags(safeInt(xmlPullParser, "flags", 0)).build();
    }

    private static boolean safeBool(XmlPullParser xmlPullParser, String str, boolean z2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return TextUtils.isEmpty(attributeValue) ? z2 : Boolean.parseBoolean(attributeValue);
    }

    private static int safeInt(XmlPullParser xmlPullParser, String str, int i2) {
        return tryParseInt(xmlPullParser.getAttributeValue(null, str), i2);
    }

    private static long[] safeLongArray(XmlPullParser xmlPullParser, String str, long[] jArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return jArr;
        }
        String[] strArrSplit = attributeValue.split(DELIMITER);
        long[] jArr2 = new long[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                jArr2[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException unused) {
                jArr2[i2] = 0;
            }
        }
        return jArr2;
    }

    private static Uri safeUri(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return null;
        }
        return Uri.parse(attributeValue);
    }

    private static int tryParseInt(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public boolean canBypassDnd() {
        return this.mBypassDnd;
    }

    public boolean canShowBadge() {
        return this.mShowBadge;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void enableLights(boolean z2) {
        this.mLights = z2;
    }

    public void enableVibration(boolean z2) {
        this.mVibrationEnabled = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NotificationChannel.class != obj.getClass()) {
            return false;
        }
        NotificationChannel notificationChannel = (NotificationChannel) obj;
        if (getImportance() != notificationChannel.getImportance() || this.mBypassDnd != notificationChannel.mBypassDnd || getLockscreenVisibility() != notificationChannel.getLockscreenVisibility() || this.mLights != notificationChannel.mLights || getLightColor() != notificationChannel.getLightColor() || getUserLockedFields() != notificationChannel.getUserLockedFields() || this.mVibrationEnabled != notificationChannel.mVibrationEnabled || this.mShowBadge != notificationChannel.mShowBadge || isDeleted() != notificationChannel.isDeleted() || isBlockableSystem() != notificationChannel.isBlockableSystem()) {
            return false;
        }
        if (getId() == null ? notificationChannel.getId() != null : !getId().equals(notificationChannel.getId())) {
            return false;
        }
        if (getName() == null ? notificationChannel.getName() != null : !getName().equals(notificationChannel.getName())) {
            return false;
        }
        if (getDescription() == null ? notificationChannel.getDescription() != null : !getDescription().equals(notificationChannel.getDescription())) {
            return false;
        }
        if (getSound() == null ? notificationChannel.getSound() != null : !getSound().equals(notificationChannel.getSound())) {
            return false;
        }
        if (!Arrays.equals(this.mVibration, notificationChannel.mVibration)) {
            return false;
        }
        if (getGroup() == null ? notificationChannel.getGroup() != null : !getGroup().equals(notificationChannel.getGroup())) {
            return false;
        }
        if (getAudioAttributes() != null) {
            return getAudioAttributes().equals(notificationChannel.getAudioAttributes());
        }
        return notificationChannel.getAudioAttributes() == null;
    }

    public AudioAttributes getAudioAttributes() {
        return this.mAudioAttributes;
    }

    public String getDescription() {
        return this.mDesc;
    }

    public String getGroup() {
        return this.mGroup;
    }

    public String getId() {
        return this.mId;
    }

    public int getImportance() {
        return this.mImportance;
    }

    public int getLightColor() {
        return this.mLightColor;
    }

    public int getLockscreenVisibility() {
        return this.mLockscreenVisibility;
    }

    public CharSequence getName() {
        return this.mName;
    }

    public Uri getSound() {
        return this.mSound;
    }

    public int getUserLockedFields() {
        return this.mUserLockedFields;
    }

    public long[] getVibrationPattern() {
        return this.mVibration;
    }

    public int hashCode() {
        return (isBlockableSystem() ? 1 : 0) + (((((((isDeleted() ? 1 : 0) + ((((((getUserLockedFields() + ((Arrays.hashCode(this.mVibration) + ((getLightColor() + ((((((getLockscreenVisibility() + ((((getImportance() + ((((((getId() != null ? getId().hashCode() : 0) * 31) + (getName() != null ? getName().hashCode() : 0)) * 31) + (getDescription() != null ? getDescription().hashCode() : 0)) * 31)) * 31) + (this.mBypassDnd ? 1 : 0)) * 31)) * 31) + (getSound() != null ? getSound().hashCode() : 0)) * 31) + (this.mLights ? 1 : 0)) * 31)) * 31)) * 31)) * 31) + (this.mVibrationEnabled ? 1 : 0)) * 31) + (this.mShowBadge ? 1 : 0)) * 31)) * 31) + (getGroup() != null ? getGroup().hashCode() : 0)) * 31) + (getAudioAttributes() != null ? getAudioAttributes().hashCode() : 0)) * 31);
    }

    public boolean isBlockableSystem() {
        return this.mBlockableSystem;
    }

    public boolean isDeleted() {
        return this.mDeleted;
    }

    public void lockFields(int i2) {
        this.mUserLockedFields = i2 | this.mUserLockedFields;
    }

    public void populateFromXml(XmlPullParser xmlPullParser) {
        populateFromXml(xmlPullParser, false, null);
    }

    public void populateFromXmlForRestore(XmlPullParser xmlPullParser, Context context) {
        populateFromXml(xmlPullParser, true, context);
    }

    public void setBlockableSystem(boolean z2) {
        this.mBlockableSystem = z2;
    }

    public void setBypassDnd(boolean z2) {
        this.mBypassDnd = z2;
    }

    public void setDeleted(boolean z2) {
        this.mDeleted = z2;
    }

    public void setDescription(String str) {
        this.mDesc = getTrimmedString(str);
    }

    public void setGroup(String str) {
        this.mGroup = str;
    }

    public void setImportance(int i2) {
        this.mImportance = i2;
    }

    public void setLightColor(int i2) {
        this.mLightColor = i2;
    }

    public void setLockscreenVisibility(int i2) {
        this.mLockscreenVisibility = i2;
    }

    public void setName(CharSequence charSequence) {
        this.mName = charSequence != null ? getTrimmedString(charSequence.toString()) : null;
    }

    public void setShowBadge(boolean z2) {
        this.mShowBadge = z2;
    }

    public void setSound(Uri uri, AudioAttributes audioAttributes) {
        this.mSound = uri;
        this.mAudioAttributes = audioAttributes;
    }

    public void setVibrationPattern(long[] jArr) {
        this.mVibrationEnabled = jArr != null && jArr.length > 0;
        this.mVibration = jArr;
    }

    public boolean shouldShowLights() {
        return this.mLights;
    }

    public boolean shouldVibrate() {
        return this.mVibrationEnabled;
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", getId());
        jSONObject.put("name", getName());
        jSONObject.put(ATT_DESC, getDescription());
        if (getImportance() != -1000) {
            jSONObject.put(ATT_IMPORTANCE, NotificationListenerService.Ranking.importanceToString(getImportance()));
        }
        if (canBypassDnd()) {
            jSONObject.put("priority", 2);
        }
        if (getLockscreenVisibility() != -1000) {
            jSONObject.put("visibility", Notification.visibilityToString(getLockscreenVisibility()));
        }
        if (getSound() != null) {
            jSONObject.put(ATT_SOUND, getSound().toString());
        }
        if (getAudioAttributes() != null) {
            jSONObject.put(ATT_USAGE, Integer.toString(getAudioAttributes().getUsage()));
            jSONObject.put(ATT_CONTENT_TYPE, Integer.toString(getAudioAttributes().getContentType()));
            jSONObject.put("flags", Integer.toString(getAudioAttributes().getFlags()));
        }
        jSONObject.put(ATT_LIGHTS, Boolean.toString(shouldShowLights()));
        jSONObject.put(ATT_LIGHT_COLOR, Integer.toString(getLightColor()));
        jSONObject.put(ATT_VIBRATION_ENABLED, Boolean.toString(shouldVibrate()));
        jSONObject.put("locked", Integer.toString(getUserLockedFields()));
        jSONObject.put(ATT_VIBRATION, longArrayToString(getVibrationPattern()));
        jSONObject.put(ATT_SHOW_BADGE, Boolean.toString(canShowBadge()));
        jSONObject.put("deleted", Boolean.toString(isDeleted()));
        jSONObject.put("group", getGroup());
        jSONObject.put(ATT_BLOCKABLE_SYSTEM, isBlockableSystem());
        return jSONObject;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NotificationChannel{mId='");
        sb.append(this.mId);
        sb.append("', mName=");
        sb.append(this.mName);
        sb.append(", mDescription=");
        sb.append(!TextUtils.isEmpty(this.mDesc) ? "hasDescription " : "");
        sb.append(", mImportance=");
        sb.append(this.mImportance);
        sb.append(", mBypassDnd=");
        sb.append(this.mBypassDnd);
        sb.append(", mLockscreenVisibility=");
        sb.append(this.mLockscreenVisibility);
        sb.append(", mSound=");
        sb.append(this.mSound);
        sb.append(", mLights=");
        sb.append(this.mLights);
        sb.append(", mLightColor=");
        sb.append(this.mLightColor);
        sb.append(", mVibration=");
        sb.append(Arrays.toString(this.mVibration));
        sb.append(", mUserLockedFields=");
        sb.append(this.mUserLockedFields);
        sb.append(", mVibrationEnabled=");
        sb.append(this.mVibrationEnabled);
        sb.append(", mShowBadge=");
        sb.append(this.mShowBadge);
        sb.append(", mDeleted=");
        sb.append(this.mDeleted);
        sb.append(", mGroup='");
        sb.append(this.mGroup);
        sb.append("', mAudioAttributes=");
        sb.append(this.mAudioAttributes);
        sb.append(", mBlockableSystem=");
        sb.append(this.mBlockableSystem);
        sb.append('}');
        return sb.toString();
    }

    public void unlockFields(int i2) {
        this.mUserLockedFields = (~i2) & this.mUserLockedFields;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mId != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mId);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mName != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mName);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mDesc != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mDesc);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeInt(this.mImportance);
        parcel.writeByte(this.mBypassDnd ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mLockscreenVisibility);
        if (this.mSound != null) {
            parcel.writeByte((byte) 1);
            this.mSound.writeToParcel(parcel, 0);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeByte(this.mLights ? (byte) 1 : (byte) 0);
        parcel.writeLongArray(this.mVibration);
        parcel.writeInt(this.mUserLockedFields);
        parcel.writeByte(this.mVibrationEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mShowBadge ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mDeleted ? (byte) 1 : (byte) 0);
        if (this.mGroup != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mGroup);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mAudioAttributes != null) {
            parcel.writeInt(1);
            this.mAudioAttributes.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mLightColor);
        parcel.writeBoolean(this.mBlockableSystem);
    }

    public void writeXml(XmlSerializer xmlSerializer) throws IOException {
        writeXml(xmlSerializer, false, null);
    }

    public void writeXmlForBackup(XmlSerializer xmlSerializer, Context context) throws IOException {
        writeXml(xmlSerializer, true, context);
    }

    private void populateFromXml(XmlPullParser xmlPullParser, boolean z2, Context context) {
        Preconditions.checkArgument((z2 && context == null) ? false : true, "forRestore is true but got null context");
        setDescription(xmlPullParser.getAttributeValue(null, ATT_DESC));
        setBypassDnd(safeInt(xmlPullParser, "priority", 0) != 0);
        setLockscreenVisibility(safeInt(xmlPullParser, "visibility", -1000));
        Uri uriSafeUri = safeUri(xmlPullParser, ATT_SOUND);
        if (z2) {
            uriSafeUri = restoreSoundUri(context, uriSafeUri);
        }
        setSound(uriSafeUri, safeAudioAttributes(xmlPullParser));
        enableLights(safeBool(xmlPullParser, ATT_LIGHTS, false));
        setLightColor(safeInt(xmlPullParser, ATT_LIGHT_COLOR, 0));
        setVibrationPattern(safeLongArray(xmlPullParser, ATT_VIBRATION, null));
        enableVibration(safeBool(xmlPullParser, ATT_VIBRATION_ENABLED, false));
        setShowBadge(safeBool(xmlPullParser, ATT_SHOW_BADGE, false));
        setDeleted(safeBool(xmlPullParser, "deleted", false));
        setGroup(xmlPullParser.getAttributeValue(null, "group"));
        lockFields(safeInt(xmlPullParser, "locked", 0));
        setBlockableSystem(safeBool(xmlPullParser, ATT_BLOCKABLE_SYSTEM, false));
    }

    private void writeXml(XmlSerializer xmlSerializer, boolean z2, Context context) throws IOException {
        Preconditions.checkArgument((z2 && context == null) ? false : true, "forBackup is true but got null context");
        xmlSerializer.startTag(null, "channel");
        xmlSerializer.attribute(null, "id", getId());
        if (getName() != null) {
            xmlSerializer.attribute(null, "name", getName().toString());
        }
        if (getDescription() != null) {
            xmlSerializer.attribute(null, ATT_DESC, getDescription());
        }
        if (getImportance() != -1000) {
            xmlSerializer.attribute(null, ATT_IMPORTANCE, Integer.toString(getImportance()));
        }
        if (canBypassDnd()) {
            xmlSerializer.attribute(null, "priority", Integer.toString(2));
        }
        if (getLockscreenVisibility() != -1000) {
            xmlSerializer.attribute(null, "visibility", Integer.toString(getLockscreenVisibility()));
        }
        Uri soundForBackup = z2 ? getSoundForBackup(context) : getSound();
        if (soundForBackup != null) {
            xmlSerializer.attribute(null, ATT_SOUND, soundForBackup.toString());
        }
        if (getAudioAttributes() != null) {
            xmlSerializer.attribute(null, ATT_USAGE, Integer.toString(getAudioAttributes().getUsage()));
            xmlSerializer.attribute(null, ATT_CONTENT_TYPE, Integer.toString(getAudioAttributes().getContentType()));
            xmlSerializer.attribute(null, "flags", Integer.toString(getAudioAttributes().getFlags()));
        }
        if (shouldShowLights()) {
            xmlSerializer.attribute(null, ATT_LIGHTS, Boolean.toString(shouldShowLights()));
        }
        if (getLightColor() != 0) {
            xmlSerializer.attribute(null, ATT_LIGHT_COLOR, Integer.toString(getLightColor()));
        }
        if (shouldVibrate()) {
            xmlSerializer.attribute(null, ATT_VIBRATION_ENABLED, Boolean.toString(shouldVibrate()));
        }
        if (getVibrationPattern() != null) {
            xmlSerializer.attribute(null, ATT_VIBRATION, longArrayToString(getVibrationPattern()));
        }
        if (getUserLockedFields() != 0) {
            xmlSerializer.attribute(null, "locked", Integer.toString(getUserLockedFields()));
        }
        if (canShowBadge()) {
            xmlSerializer.attribute(null, ATT_SHOW_BADGE, Boolean.toString(canShowBadge()));
        }
        if (isDeleted()) {
            xmlSerializer.attribute(null, "deleted", Boolean.toString(isDeleted()));
        }
        if (getGroup() != null) {
            xmlSerializer.attribute(null, "group", getGroup());
        }
        if (isBlockableSystem()) {
            xmlSerializer.attribute(null, ATT_BLOCKABLE_SYSTEM, Boolean.toString(isBlockableSystem()));
        }
        xmlSerializer.endTag(null, "channel");
    }

    public NotificationChannel(Parcel parcel) {
        this.mImportance = -1000;
        this.mLockscreenVisibility = -1000;
        this.mSound = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.mLightColor = 0;
        this.mShowBadge = true;
        this.mDeleted = false;
        this.mAudioAttributes = Notification.AUDIO_ATTRIBUTES_DEFAULT;
        this.mBlockableSystem = false;
        if (parcel.readByte() != 0) {
            this.mId = parcel.readString();
        } else {
            this.mId = null;
        }
        if (parcel.readByte() != 0) {
            this.mName = parcel.readString();
        } else {
            this.mName = null;
        }
        if (parcel.readByte() != 0) {
            this.mDesc = parcel.readString();
        } else {
            this.mDesc = null;
        }
        this.mImportance = parcel.readInt();
        this.mBypassDnd = parcel.readByte() != 0;
        this.mLockscreenVisibility = parcel.readInt();
        if (parcel.readByte() != 0) {
            this.mSound = Uri.CREATOR.createFromParcel(parcel);
        } else {
            this.mSound = null;
        }
        this.mLights = parcel.readByte() != 0;
        this.mVibration = parcel.createLongArray();
        this.mUserLockedFields = parcel.readInt();
        this.mVibrationEnabled = parcel.readByte() != 0;
        this.mShowBadge = parcel.readByte() != 0;
        this.mDeleted = parcel.readByte() != 0;
        if (parcel.readByte() != 0) {
            this.mGroup = parcel.readString();
        } else {
            this.mGroup = null;
        }
        this.mAudioAttributes = parcel.readInt() > 0 ? AudioAttributes.CREATOR.createFromParcel(parcel) : null;
        this.mLightColor = parcel.readInt();
        this.mBlockableSystem = parcel.readBoolean();
    }
}
