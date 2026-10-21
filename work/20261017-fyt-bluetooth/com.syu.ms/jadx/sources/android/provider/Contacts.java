package android.provider;

import android.R;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ProxyProperties;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Contacts {

    @Deprecated
    public static final String AUTHORITY = "contacts";

    @Deprecated
    public static final Uri CONTENT_URI = Uri.parse("content://contacts");

    @Deprecated
    public static final int KIND_EMAIL = 1;

    @Deprecated
    public static final int KIND_IM = 3;

    @Deprecated
    public static final int KIND_ORGANIZATION = 4;

    @Deprecated
    public static final int KIND_PHONE = 5;

    @Deprecated
    public static final int KIND_POSTAL = 2;
    private static final String TAG = "Contacts";

    @Deprecated
    public static final class ContactMethods implements BaseColumns, ContactMethodsColumns, PeopleColumns {

        @Deprecated
        public static final String CONTENT_EMAIL_ITEM_TYPE = "vnd.android.cursor.item/email";

        @Deprecated
        public static final String CONTENT_EMAIL_TYPE = "vnd.android.cursor.dir/email";

        @Deprecated
        public static final String CONTENT_IM_ITEM_TYPE = "vnd.android.cursor.item/jabber-im";

        @Deprecated
        public static final String CONTENT_POSTAL_ITEM_TYPE = "vnd.android.cursor.item/postal-address";

        @Deprecated
        public static final String CONTENT_POSTAL_TYPE = "vnd.android.cursor.dir/postal-address";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/contact-methods";

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "name ASC";

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final String POSTAL_LOCATION_LATITUDE = "data";

        @Deprecated
        public static final String POSTAL_LOCATION_LONGITUDE = "aux_data";

        @Deprecated
        public static final int PROTOCOL_AIM = 0;

        @Deprecated
        public static final int PROTOCOL_GOOGLE_TALK = 5;

        @Deprecated
        public static final int PROTOCOL_ICQ = 6;

        @Deprecated
        public static final int PROTOCOL_JABBER = 7;

        @Deprecated
        public static final int PROTOCOL_MSN = 1;

        @Deprecated
        public static final int PROTOCOL_QQ = 4;

        @Deprecated
        public static final int PROTOCOL_SKYPE = 3;

        @Deprecated
        public static final int PROTOCOL_YAHOO = 2;

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/contact_methods");

        @Deprecated
        public static final Uri CONTENT_EMAIL_URI = Uri.parse("content://contacts/contact_methods/email");

        public interface ProviderNames {
            public static final String AIM = "AIM";
            public static final String GTALK = "GTalk";
            public static final String ICQ = "ICQ";
            public static final String JABBER = "JABBER";
            public static final String MSN = "MSN";
            public static final String QQ = "QQ";
            public static final String SKYPE = "SKYPE";
            public static final String XMPP = "XMPP";
            public static final String YAHOO = "Yahoo";
        }

        private ContactMethods() {
        }

        @Deprecated
        public static Object decodeImProtocol(String str) {
            if (str == null) {
                return null;
            }
            if (str.startsWith("pre:")) {
                return Integer.valueOf(Integer.parseInt(str.substring(4)));
            }
            if (str.startsWith("custom:")) {
                return str.substring(7);
            }
            throw new IllegalArgumentException("the value is not a valid encoded protocol, " + str);
        }

        @Deprecated
        public static String encodeCustomImProtocol(String str) {
            return "custom:" + str;
        }

        @Deprecated
        public static String encodePredefinedImProtocol(int i2) {
            return "pre:" + i2;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0045 A[ORIG_RETURN, RETURN] */
        @Deprecated
        public static final CharSequence getDisplayLabel(Context context, int i2, int i3, CharSequence charSequence) {
            CharSequence charSequence2;
            if (i2 == 1) {
                if (i3 == 0) {
                    if (TextUtils.isEmpty(charSequence)) {
                        return ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    return charSequence;
                }
                CharSequence[] textArray = context.getResources().getTextArray(R.array.emailAddressTypes);
                try {
                    charSequence2 = textArray[i3 - 1];
                } catch (ArrayIndexOutOfBoundsException unused) {
                    charSequence2 = textArray[0];
                }
                return charSequence2;
            }
            if (i2 != 2) {
                return context.getString(R.string.untitled);
            }
            if (i3 == 0) {
                if (TextUtils.isEmpty(charSequence)) {
                    return ProxyProperties.LOCAL_EXCL_LIST;
                }
                return charSequence;
            }
            CharSequence[] textArray2 = context.getResources().getTextArray(R.array.postalAddressTypes);
            try {
                charSequence2 = textArray2[i3 - 1];
            } catch (ArrayIndexOutOfBoundsException unused2) {
                charSequence2 = textArray2[0];
            }
            return charSequence2;
        }

        @Deprecated
        public static String lookupProviderNameFromId(int i2) {
            switch (i2) {
                case 0:
                    return ProviderNames.AIM;
                case 1:
                    return ProviderNames.MSN;
                case 2:
                    return ProviderNames.YAHOO;
                case 3:
                    return ProviderNames.SKYPE;
                case 4:
                    return ProviderNames.QQ;
                case 5:
                    return ProviderNames.GTALK;
                case 6:
                    return ProviderNames.ICQ;
                case 7:
                    return ProviderNames.JABBER;
                default:
                    return null;
            }
        }

        @Deprecated
        public void addPostalLocation(Context context, long j2, double d2, double d3) {
            ContentResolver contentResolver = context.getContentResolver();
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("data", Double.valueOf(d2));
            contentValues.put("aux_data", Double.valueOf(d3));
            Uri uri = CONTENT_URI;
            long id = ContentUris.parseId(contentResolver.insert(uri, contentValues));
            contentValues.clear();
            contentValues.put("aux_data", Long.valueOf(id));
            contentResolver.update(ContentUris.withAppendedId(uri, j2), contentValues, null, null);
        }
    }

    @Deprecated
    public interface ContactMethodsColumns {

        @Deprecated
        public static final String AUX_DATA = "aux_data";

        @Deprecated
        public static final String DATA = "data";

        @Deprecated
        public static final String ISPRIMARY = "isprimary";

        @Deprecated
        public static final String KIND = "kind";

        @Deprecated
        public static final String LABEL = "label";

        @Deprecated
        public static final int MOBILE_EMAIL_TYPE_INDEX = 2;

        @Deprecated
        public static final String MOBILE_EMAIL_TYPE_NAME = "_AUTO_CELL";

        @Deprecated
        public static final String TYPE = "type";

        @Deprecated
        public static final int TYPE_CUSTOM = 0;

        @Deprecated
        public static final int TYPE_HOME = 1;

        @Deprecated
        public static final int TYPE_OTHER = 3;

        @Deprecated
        public static final int TYPE_WORK = 2;
    }

    @Deprecated
    public static final class Extensions implements BaseColumns, ExtensionsColumns {

        @Deprecated
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/contact_extensions";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/contact_extensions";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/extensions");

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "person, name ASC";

        @Deprecated
        public static final String PERSON_ID = "person";

        private Extensions() {
        }
    }

    @Deprecated
    public interface ExtensionsColumns {

        @Deprecated
        public static final String NAME = "name";

        @Deprecated
        public static final String VALUE = "value";
    }

    @Deprecated
    public static final class GroupMembership implements BaseColumns, GroupsColumns {

        @Deprecated
        public static final String CONTENT_DIRECTORY = "groupmembership";

        @Deprecated
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/contactsgroupmembership";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/contactsgroupmembership";

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "group_id ASC";

        @Deprecated
        public static final String GROUP_ID = "group_id";

        @Deprecated
        public static final String GROUP_SYNC_ACCOUNT = "group_sync_account";

        @Deprecated
        public static final String GROUP_SYNC_ACCOUNT_TYPE = "group_sync_account_type";

        @Deprecated
        public static final String GROUP_SYNC_ID = "group_sync_id";

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/groupmembership");

        @Deprecated
        public static final Uri RAW_CONTENT_URI = Uri.parse("content://contacts/groupmembershipraw");

        private GroupMembership() {
        }
    }

    @Deprecated
    public static final class Groups implements BaseColumns, SyncConstValue, GroupsColumns {

        @Deprecated
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/contactsgroup";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/contactsgroup";

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "name ASC";

        @Deprecated
        public static final String GROUP_ANDROID_STARRED = "Starred in Android";

        @Deprecated
        public static final String GROUP_MY_CONTACTS = "Contacts";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/groups");

        @Deprecated
        public static final Uri DELETED_CONTENT_URI = Uri.parse("content://contacts/deleted_groups");

        private Groups() {
        }
    }

    @Deprecated
    public interface GroupsColumns {

        @Deprecated
        public static final String NAME = "name";

        @Deprecated
        public static final String NOTES = "notes";

        @Deprecated
        public static final String SHOULD_SYNC = "should_sync";

        @Deprecated
        public static final String SYSTEM_ID = "system_id";
    }

    @Deprecated
    public static final class Intents {

        @Deprecated
        public static final String ATTACH_IMAGE = "com.android.contacts.action.ATTACH_IMAGE";

        @Deprecated
        public static final String EXTRA_CREATE_DESCRIPTION = "com.android.contacts.action.CREATE_DESCRIPTION";

        @Deprecated
        public static final String EXTRA_FORCE_CREATE = "com.android.contacts.action.FORCE_CREATE";

        @Deprecated
        public static final String EXTRA_TARGET_RECT = "target_rect";

        @Deprecated
        public static final String SEARCH_SUGGESTION_CLICKED = "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED";

        @Deprecated
        public static final String SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED = "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED";

        @Deprecated
        public static final String SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED = "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED";

        @Deprecated
        public static final String SHOW_OR_CREATE_CONTACT = "com.android.contacts.action.SHOW_OR_CREATE_CONTACT";

        @Deprecated
        public static final class Insert {

            @Deprecated
            public static final String ACTION = "android.intent.action.INSERT";

            @Deprecated
            public static final String COMPANY = "company";

            @Deprecated
            public static final String EMAIL = "email";

            @Deprecated
            public static final String EMAIL_ISPRIMARY = "email_isprimary";

            @Deprecated
            public static final String EMAIL_TYPE = "email_type";

            @Deprecated
            public static final String FULL_MODE = "full_mode";

            @Deprecated
            public static final String IM_HANDLE = "im_handle";

            @Deprecated
            public static final String IM_ISPRIMARY = "im_isprimary";

            @Deprecated
            public static final String IM_PROTOCOL = "im_protocol";

            @Deprecated
            public static final String JOB_TITLE = "job_title";

            @Deprecated
            public static final String NAME = "name";

            @Deprecated
            public static final String NOTES = "notes";

            @Deprecated
            public static final String PHONE = "phone";

            @Deprecated
            public static final String PHONETIC_NAME = "phonetic_name";

            @Deprecated
            public static final String PHONE_ISPRIMARY = "phone_isprimary";

            @Deprecated
            public static final String PHONE_TYPE = "phone_type";

            @Deprecated
            public static final String POSTAL = "postal";

            @Deprecated
            public static final String POSTAL_ISPRIMARY = "postal_isprimary";

            @Deprecated
            public static final String POSTAL_TYPE = "postal_type";

            @Deprecated
            public static final String SECONDARY_EMAIL = "secondary_email";

            @Deprecated
            public static final String SECONDARY_EMAIL_TYPE = "secondary_email_type";

            @Deprecated
            public static final String SECONDARY_PHONE = "secondary_phone";

            @Deprecated
            public static final String SECONDARY_PHONE_TYPE = "secondary_phone_type";

            @Deprecated
            public static final String TERTIARY_EMAIL = "tertiary_email";

            @Deprecated
            public static final String TERTIARY_EMAIL_TYPE = "tertiary_email_type";

            @Deprecated
            public static final String TERTIARY_PHONE = "tertiary_phone";

            @Deprecated
            public static final String TERTIARY_PHONE_TYPE = "tertiary_phone_type";

            @Deprecated
            public Insert() {
            }
        }

        @Deprecated
        public static final class UI {

            @Deprecated
            public static final String FILTER_CONTACTS_ACTION = "com.android.contacts.action.FILTER_CONTACTS";

            @Deprecated
            public static final String FILTER_TEXT_EXTRA_KEY = "com.android.contacts.extra.FILTER_TEXT";

            @Deprecated
            public static final String GROUP_NAME_EXTRA_KEY = "com.android.contacts.extra.GROUP";

            @Deprecated
            public static final String LIST_ALL_CONTACTS_ACTION = "com.android.contacts.action.LIST_ALL_CONTACTS";

            @Deprecated
            public static final String LIST_CONTACTS_WITH_PHONES_ACTION = "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES";

            @Deprecated
            public static final String LIST_DEFAULT = "com.android.contacts.action.LIST_DEFAULT";

            @Deprecated
            public static final String LIST_FREQUENT_ACTION = "com.android.contacts.action.LIST_FREQUENT";

            @Deprecated
            public static final String LIST_GROUP_ACTION = "com.android.contacts.action.LIST_GROUP";

            @Deprecated
            public static final String LIST_STARRED_ACTION = "com.android.contacts.action.LIST_STARRED";

            @Deprecated
            public static final String LIST_STREQUENT_ACTION = "com.android.contacts.action.LIST_STREQUENT";

            @Deprecated
            public static final String TITLE_EXTRA_KEY = "com.android.contacts.extra.TITLE_EXTRA";

            @Deprecated
            public UI() {
            }
        }

        @Deprecated
        public Intents() {
        }
    }

    @Deprecated
    public interface OrganizationColumns {

        @Deprecated
        public static final String COMPANY = "company";

        @Deprecated
        public static final String ISPRIMARY = "isprimary";

        @Deprecated
        public static final String LABEL = "label";

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final String TITLE = "title";

        @Deprecated
        public static final String TYPE = "type";

        @Deprecated
        public static final int TYPE_CUSTOM = 0;

        @Deprecated
        public static final int TYPE_OTHER = 2;

        @Deprecated
        public static final int TYPE_WORK = 1;
    }

    @Deprecated
    public static final class Organizations implements BaseColumns, OrganizationColumns {

        @Deprecated
        public static final String CONTENT_DIRECTORY = "organizations";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/organizations");

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "company, title, isprimary ASC";

        private Organizations() {
        }

        @Deprecated
        public static final CharSequence getDisplayLabel(Context context, int i2, CharSequence charSequence) {
            CharSequence charSequence2;
            if (i2 == 0) {
                return !TextUtils.isEmpty(charSequence) ? charSequence : ProxyProperties.LOCAL_EXCL_LIST;
            }
            CharSequence[] textArray = context.getResources().getTextArray(R.array.organizationTypes);
            try {
                charSequence2 = textArray[i2 - 1];
            } catch (ArrayIndexOutOfBoundsException unused) {
                charSequence2 = textArray[0];
            }
            return charSequence2;
        }
    }

    @Deprecated
    public interface PeopleColumns {

        @Deprecated
        public static final String CUSTOM_RINGTONE = "custom_ringtone";

        @Deprecated
        public static final String DISPLAY_NAME = "display_name";

        @Deprecated
        public static final String LAST_TIME_CONTACTED = "last_time_contacted";

        @Deprecated
        public static final String NAME = "name";

        @Deprecated
        public static final String NOTES = "notes";

        @Deprecated
        public static final String PHONETIC_NAME = "phonetic_name";

        @Deprecated
        public static final String PHOTO_VERSION = "photo_version";

        @Deprecated
        public static final String SEND_TO_VOICEMAIL = "send_to_voicemail";

        @Deprecated
        public static final String SORT_STRING = "sort_string";

        @Deprecated
        public static final String STARRED = "starred";

        @Deprecated
        public static final String TIMES_CONTACTED = "times_contacted";
    }

    @Deprecated
    public interface PhonesColumns {

        @Deprecated
        public static final String ISPRIMARY = "isprimary";

        @Deprecated
        public static final String LABEL = "label";

        @Deprecated
        public static final String NUMBER = "number";

        @Deprecated
        public static final String NUMBER_KEY = "number_key";

        @Deprecated
        public static final String TYPE = "type";

        @Deprecated
        public static final int TYPE_CUSTOM = 0;

        @Deprecated
        public static final int TYPE_FAX_HOME = 5;

        @Deprecated
        public static final int TYPE_FAX_WORK = 4;

        @Deprecated
        public static final int TYPE_HOME = 1;

        @Deprecated
        public static final int TYPE_MOBILE = 2;

        @Deprecated
        public static final int TYPE_OTHER = 7;

        @Deprecated
        public static final int TYPE_PAGER = 6;

        @Deprecated
        public static final int TYPE_WORK = 3;
    }

    @Deprecated
    public static final class Photos implements BaseColumns, PhotosColumns, SyncConstValue {

        @Deprecated
        public static final String CONTENT_DIRECTORY = "photo";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/photos");

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "person ASC";

        private Photos() {
        }
    }

    @Deprecated
    public interface PhotosColumns {

        @Deprecated
        public static final String DATA = "data";

        @Deprecated
        public static final String DOWNLOAD_REQUIRED = "download_required";

        @Deprecated
        public static final String EXISTS_ON_SERVER = "exists_on_server";

        @Deprecated
        public static final String LOCAL_VERSION = "local_version";

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final String SYNC_ERROR = "sync_error";
    }

    @Deprecated
    public static final class Presence implements BaseColumns, PresenceColumns, PeopleColumns {

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/presence");

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final int getPresenceIconResourceId(int i2) {
            if (i2 == 1) {
                return R.drawable.presence_invisible;
            }
            if (i2 == 2 || i2 == 3) {
                return R.drawable.presence_away;
            }
            if (i2 != 4) {
                return i2 != 5 ? R.drawable.presence_offline : R.drawable.presence_online;
            }
            return R.drawable.presence_busy;
        }

        @Deprecated
        public static final void setPresenceIcon(ImageView imageView, int i2) throws Throwable {
            imageView.setImageResource(getPresenceIconResourceId(i2));
        }
    }

    @Deprecated
    public interface PresenceColumns {
        public static final int AVAILABLE = 5;
        public static final int AWAY = 2;
        public static final int DO_NOT_DISTURB = 4;
        public static final int IDLE = 3;

        @Deprecated
        public static final String IM_ACCOUNT = "im_account";

        @Deprecated
        public static final String IM_HANDLE = "im_handle";

        @Deprecated
        public static final String IM_PROTOCOL = "im_protocol";
        public static final int INVISIBLE = 1;
        public static final int OFFLINE = 0;
        public static final String PRESENCE_CUSTOM_STATUS = "status";
        public static final String PRESENCE_STATUS = "mode";
        public static final String PRIORITY = "priority";
    }

    @Deprecated
    public static final class Settings implements BaseColumns, SettingsColumns {

        @Deprecated
        public static final String CONTENT_DIRECTORY = "settings";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/settings");

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "key ASC";

        @Deprecated
        public static final String SYNC_EVERYTHING = "syncEverything";

        private Settings() {
        }

        @Deprecated
        public static String getSetting(ContentResolver contentResolver, String str, String str2) {
            Cursor cursorQuery = contentResolver.query(CONTENT_URI, new String[]{"value"}, "key=?", new String[]{str2}, null);
            try {
                if (cursorQuery.moveToNext()) {
                    return cursorQuery.getString(0);
                }
                return null;
            } finally {
                cursorQuery.close();
            }
        }

        @Deprecated
        public static void setSetting(ContentResolver contentResolver, String str, String str2, String str3) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("key", str2);
            contentValues.put("value", str3);
            contentResolver.update(CONTENT_URI, contentValues, null, null);
        }
    }

    @Deprecated
    public interface SettingsColumns {

        @Deprecated
        public static final String KEY = "key";

        @Deprecated
        public static final String VALUE = "value";

        @Deprecated
        public static final String _SYNC_ACCOUNT = "_sync_account";

        @Deprecated
        public static final String _SYNC_ACCOUNT_TYPE = "_sync_account_type";
    }

    private Contacts() {
    }

    @Deprecated
    public static final class Phones implements BaseColumns, PhonesColumns, PeopleColumns {

        @Deprecated
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/phone";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/phone";

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "name ASC";

        @Deprecated
        public static final String PERSON_ID = "person";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/phones");

        @Deprecated
        public static final Uri CONTENT_FILTER_URL = Uri.parse("content://contacts/phones/filter");

        private Phones() {
        }

        @Deprecated
        public static final CharSequence getDisplayLabel(Context context, int i2, CharSequence charSequence, CharSequence[] charSequenceArr) {
            CharSequence charSequence2;
            if (i2 == 0) {
                return !TextUtils.isEmpty(charSequence) ? charSequence : ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (charSequenceArr == null) {
                charSequenceArr = context.getResources().getTextArray(R.array.phoneTypes);
            }
            try {
                charSequence2 = charSequenceArr[i2 - 1];
            } catch (ArrayIndexOutOfBoundsException unused) {
                charSequence2 = charSequenceArr[0];
            }
            return charSequence2;
        }

        @Deprecated
        public static final CharSequence getDisplayLabel(Context context, int i2, CharSequence charSequence) {
            return getDisplayLabel(context, i2, charSequence, null);
        }
    }

    @Deprecated
    public static final class People implements BaseColumns, SyncConstValue, PeopleColumns, PhonesColumns, PresenceColumns {

        @Deprecated
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/person";

        @Deprecated
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/person";

        @Deprecated
        public static final String DEFAULT_SORT_ORDER = "name ASC";

        @Deprecated
        public static final String PRIMARY_EMAIL_ID = "primary_email";

        @Deprecated
        public static final String PRIMARY_ORGANIZATION_ID = "primary_organization";

        @Deprecated
        public static final String PRIMARY_PHONE_ID = "primary_phone";

        @Deprecated
        public static final Uri CONTENT_URI = Uri.parse("content://contacts/people");

        @Deprecated
        public static final Uri CONTENT_FILTER_URI = Uri.parse("content://contacts/people/filter");

        @Deprecated
        public static final Uri DELETED_CONTENT_URI = Uri.parse("content://contacts/deleted_people");

        @Deprecated
        public static final Uri WITH_EMAIL_OR_IM_FILTER_URI = Uri.parse("content://contacts/people/with_email_or_im_filter");
        private static final String[] GROUPS_PROJECTION = {"_id"};

        @Deprecated
        public static final class ContactMethods implements BaseColumns, ContactMethodsColumns, PeopleColumns {

            @Deprecated
            public static final String CONTENT_DIRECTORY = "contact_methods";

            @Deprecated
            public static final String DEFAULT_SORT_ORDER = "data ASC";

            private ContactMethods() {
            }
        }

        @Deprecated
        public static class Extensions implements BaseColumns, ExtensionsColumns {

            @Deprecated
            public static final String CONTENT_DIRECTORY = "extensions";

            @Deprecated
            public static final String DEFAULT_SORT_ORDER = "name ASC";

            @Deprecated
            public static final String PERSON_ID = "person";

            private Extensions() {
            }
        }

        @Deprecated
        public static final class Phones implements BaseColumns, PhonesColumns, PeopleColumns {

            @Deprecated
            public static final String CONTENT_DIRECTORY = "phones";

            @Deprecated
            public static final String DEFAULT_SORT_ORDER = "number ASC";

            private Phones() {
            }
        }

        private People() {
        }

        @Deprecated
        public static Uri addToGroup(ContentResolver contentResolver, long j2, String str) {
            long j3;
            Cursor cursorQuery = contentResolver.query(Groups.CONTENT_URI, GROUPS_PROJECTION, "name=?", new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    j3 = cursorQuery.moveToFirst() ? cursorQuery.getLong(0) : 0L;
                    cursorQuery.close();
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            } else {
                j3 = 0;
            }
            if (j3 != 0) {
                return addToGroup(contentResolver, j2, j3);
            }
            throw new IllegalStateException("Failed to find the My Contacts group");
        }

        @Deprecated
        public static Uri addToMyContactsGroup(ContentResolver contentResolver, long j2) {
            long jTryGetMyContactsGroupId = tryGetMyContactsGroupId(contentResolver);
            if (jTryGetMyContactsGroupId != 0) {
                return addToGroup(contentResolver, j2, jTryGetMyContactsGroupId);
            }
            throw new IllegalStateException("Failed to find the My Contacts group");
        }

        @Deprecated
        public static Uri createPersonInMyContactsGroup(ContentResolver contentResolver, ContentValues contentValues) {
            Uri uriInsert = contentResolver.insert(CONTENT_URI, contentValues);
            if (uriInsert == null) {
                Log.e("Contacts", "Failed to create the contact");
                return null;
            }
            if (addToMyContactsGroup(contentResolver, ContentUris.parseId(uriInsert)) != null) {
                return uriInsert;
            }
            contentResolver.delete(uriInsert, null, null);
            return null;
        }

        @Deprecated
        public static Bitmap loadContactPhoto(Context context, Uri uri, int i2, BitmapFactory.Options options) {
            if (uri == null) {
                return loadPlaceholderPhoto(i2, context, options);
            }
            InputStream inputStreamOpenContactPhotoInputStream = openContactPhotoInputStream(context.getContentResolver(), uri);
            Bitmap bitmapDecodeStream = inputStreamOpenContactPhotoInputStream != null ? BitmapFactory.decodeStream(inputStreamOpenContactPhotoInputStream, null, options) : null;
            return bitmapDecodeStream == null ? loadPlaceholderPhoto(i2, context, options) : bitmapDecodeStream;
        }

        private static Bitmap loadPlaceholderPhoto(int i2, Context context, BitmapFactory.Options options) {
            if (i2 == 0) {
                return null;
            }
            return BitmapFactory.decodeResource(context.getResources(), i2, options);
        }

        @Deprecated
        public static void markAsContacted(ContentResolver contentResolver, long j2) {
            Uri uriWithAppendedPath = Uri.withAppendedPath(ContentUris.withAppendedId(CONTENT_URI, j2), "update_contact_time");
            ContentValues contentValues = new ContentValues();
            contentValues.put("last_time_contacted", Long.valueOf(System.currentTimeMillis()));
            contentResolver.update(uriWithAppendedPath, contentValues, null, null);
        }

        @Deprecated
        public static InputStream openContactPhotoInputStream(ContentResolver contentResolver, Uri uri) {
            Cursor cursorQuery = contentResolver.query(Uri.withAppendedPath(uri, "photo"), new String[]{"data"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        byte[] blob = cursorQuery.getBlob(0);
                        if (blob == null) {
                            cursorQuery.close();
                            return null;
                        }
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(blob);
                        cursorQuery.close();
                        return byteArrayInputStream;
                    }
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }

        @Deprecated
        public static Cursor queryGroups(ContentResolver contentResolver, long j2) {
            return contentResolver.query(GroupMembership.CONTENT_URI, null, "person=?", new String[]{String.valueOf(j2)}, "name ASC");
        }

        @Deprecated
        public static void setPhotoData(ContentResolver contentResolver, Uri uri, byte[] bArr) {
            Uri uriWithAppendedPath = Uri.withAppendedPath(uri, "photo");
            ContentValues contentValues = new ContentValues();
            contentValues.put("data", bArr);
            contentResolver.update(uriWithAppendedPath, contentValues, null, null);
        }

        @Deprecated
        public static long tryGetMyContactsGroupId(ContentResolver contentResolver) {
            Cursor cursorQuery = contentResolver.query(Groups.CONTENT_URI, GROUPS_PROJECTION, "system_id='Contacts'", null, null);
            if (cursorQuery == null) {
                return 0L;
            }
            try {
                if (cursorQuery.moveToFirst()) {
                    return cursorQuery.getLong(0);
                }
                return 0L;
            } finally {
                cursorQuery.close();
            }
        }

        @Deprecated
        public static Uri addToGroup(ContentResolver contentResolver, long j2, long j3) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("person", Long.valueOf(j2));
            contentValues.put(GroupMembership.GROUP_ID, Long.valueOf(j3));
            return contentResolver.insert(GroupMembership.CONTENT_URI, contentValues);
        }
    }
}
