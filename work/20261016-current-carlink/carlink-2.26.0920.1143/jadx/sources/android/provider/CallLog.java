package android.provider;

import android.app.ActivityManager;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.UserInfo;
import android.database.Cursor;
import android.location.Country;
import android.location.CountryDetector;
import android.net.Uri;
import android.os.UserHandle;
import android.os.UserManager;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.CallerInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CallLog {
    public static final String AUTHORITY = "call_log";
    public static final Uri CONTENT_URI = Uri.parse("content://call_log");
    private static final String LOG_TAG = "CallLog";
    public static final String SHADOW_AUTHORITY = "call_log_shadow";
    private static final boolean VERBOSE_LOG = false;

    public static class Calls implements BaseColumns {
        public static final String ADD_FOR_ALL_USERS = "add_for_all_users";
        public static final String ALLOW_VOICEMAILS_PARAM_KEY = "allow_voicemails";
        public static final int ANSWERED_EXTERNALLY_TYPE = 7;
        public static final int BLOCKED_TYPE = 6;
        public static final String CACHED_FORMATTED_NUMBER = "formatted_number";
        public static final String CACHED_LOOKUP_URI = "lookup_uri";
        public static final String CACHED_MATCHED_NUMBER = "matched_number";
        public static final String CACHED_NAME = "name";
        public static final String CACHED_NORMALIZED_NUMBER = "normalized_number";
        public static final String CACHED_NUMBER_LABEL = "numberlabel";
        public static final String CACHED_NUMBER_TYPE = "numbertype";
        public static final String CACHED_PHOTO_ID = "photo_id";
        public static final String CACHED_PHOTO_URI = "photo_uri";
        public static final Uri CONTENT_FILTER_URI;
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/calls";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/calls";
        public static final Uri CONTENT_URI;
        public static final Uri CONTENT_URI_WITH_VOICEMAIL;
        public static final String COUNTRY_ISO = "countryiso";
        public static final String DATA_USAGE = "data_usage";
        public static final String DATE = "date";
        public static final String DEFAULT_SORT_ORDER = "date DESC";
        public static final String DURATION = "duration";
        public static final String EXTRA_CALL_TYPE_FILTER = "android.provider.extra.CALL_TYPE_FILTER";
        public static final String FEATURES = "features";
        public static final int FEATURES_HD_CALL = 4;
        public static final int FEATURES_PULLED_EXTERNALLY = 2;
        public static final int FEATURES_VIDEO = 1;
        public static final int FEATURES_WIFI = 8;
        public static final String GEOCODED_LOCATION = "geocoded_location";
        public static final int INCOMING_TYPE = 1;
        public static final String IS_READ = "is_read";
        public static final String LAST_MODIFIED = "last_modified";
        public static final String LIMIT_PARAM_KEY = "limit";
        private static final int MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS = 10000;
        public static final int MISSED_TYPE = 3;
        public static final String NEW = "new";
        public static final String NUMBER = "number";
        public static final String NUMBER_PRESENTATION = "presentation";
        public static final String OFFSET_PARAM_KEY = "offset";
        public static final int OUTGOING_TYPE = 2;
        public static final String PHONE_ACCOUNT_ADDRESS = "phone_account_address";
        public static final String PHONE_ACCOUNT_COMPONENT_NAME = "subscription_component_name";
        public static final String PHONE_ACCOUNT_HIDDEN = "phone_account_hidden";
        public static final String PHONE_ACCOUNT_ID = "subscription_id";
        public static final String POST_DIAL_DIGITS = "post_dial_digits";
        public static final int PRESENTATION_ALLOWED = 1;
        public static final int PRESENTATION_PAYPHONE = 4;
        public static final int PRESENTATION_RESTRICTED = 2;
        public static final int PRESENTATION_UNKNOWN = 3;
        public static final int REJECTED_TYPE = 5;
        public static final Uri SHADOW_CONTENT_URI;
        public static final String SUB_ID = "sub_id";
        public static final String TRANSCRIPTION = "transcription";
        public static final String TRANSCRIPTION_STATE = "transcription_state";
        public static final String TYPE = "type";
        public static final String USERS_ID = "users_id";
        public static final String VIA_NUMBER = "via_number";
        public static final int VOICEMAIL_TYPE = 4;
        public static final String VOICEMAIL_URI = "voicemail_uri";

        static {
            Uri uri = Uri.parse("content://call_log/calls");
            CONTENT_URI = uri;
            SHADOW_CONTENT_URI = Uri.parse("content://call_log_shadow/calls");
            CONTENT_FILTER_URI = Uri.parse("content://call_log/calls/filter");
            CONTENT_URI_WITH_VOICEMAIL = uri.buildUpon().appendQueryParameter(ALLOW_VOICEMAILS_PARAM_KEY, "true").build();
        }

        public static Uri addCall(CallerInfo callerInfo, Context context, String str, int i2, int i3, int i4, PhoneAccountHandle phoneAccountHandle, long j2, int i5, Long l2) {
            return addCall(callerInfo, context, str, "", "", i2, i3, i4, phoneAccountHandle, j2, i5, l2, false, null, false);
        }

        private static Uri addEntryAndRemoveExpiredEntries(Context context, UserManager userManager, UserHandle userHandle, ContentValues contentValues) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriMaybeAddUserId = ContentProvider.maybeAddUserId(userManager.isUserUnlocked(userHandle) ? CONTENT_URI : SHADOW_CONTENT_URI, userHandle.getIdentifier());
            try {
                Uri uriInsert = contentResolver.insert(uriMaybeAddUserId, contentValues);
                if (!contentValues.containsKey("subscription_id") || TextUtils.isEmpty(contentValues.getAsString("subscription_id")) || !contentValues.containsKey("subscription_component_name") || TextUtils.isEmpty(contentValues.getAsString("subscription_component_name"))) {
                    contentResolver.delete(uriMaybeAddUserId, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)", null);
                } else {
                    contentResolver.delete(uriMaybeAddUserId, "_id IN (SELECT _id FROM calls WHERE subscription_component_name = ? AND subscription_id = ? ORDER BY date DESC LIMIT -1 OFFSET 500)", new String[]{contentValues.getAsString("subscription_component_name"), contentValues.getAsString("subscription_id")});
                }
                return uriInsert;
            } catch (IllegalArgumentException e2) {
                Log.w(CallLog.LOG_TAG, "Failed to insert calllog", e2);
                return null;
            }
        }

        private static String getCurrentCountryIso(Context context) {
            Country countryDetectCountry;
            CountryDetector countryDetector = (CountryDetector) context.getSystemService(Context.COUNTRY_DETECTOR);
            if (countryDetector == null || (countryDetectCountry = countryDetector.detectCountry()) == null) {
                return null;
            }
            return countryDetectCountry.getCountryIso();
        }

        public static String getLastOutgoingCall(Context context) {
            ContentResolver contentResolver = context.getContentResolver();
            Cursor cursorQuery = null;
            try {
                cursorQuery = contentResolver.query(CONTENT_URI, new String[]{"number"}, "type = 2", null, "date DESC LIMIT 1");
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(0);
                    cursorQuery.close();
                    return string;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return "";
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }

        public static boolean shouldHaveSharedCallLogEntries(Context context, UserManager userManager, int i2) {
            UserInfo userInfo;
            return (userManager.hasUserRestriction(UserManager.DISALLOW_OUTGOING_CALLS, UserHandle.of(i2)) || (userInfo = userManager.getUserInfo(i2)) == null || userInfo.isManagedProfile()) ? false : true;
        }

        private static void updateDataUsageStatForData(ContentResolver contentResolver, String str) {
            contentResolver.update(ContactsContract.DataUsageFeedback.FEEDBACK_URI.buildUpon().appendPath(str).appendQueryParameter("type", "call").build(), new ContentValues(), null, null);
        }

        private static void updateNormalizedNumber(Context context, ContentResolver contentResolver, String str, String str2) {
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || TextUtils.isEmpty(getCurrentCountryIso(context))) {
                return;
            }
            String numberToE164 = PhoneNumberUtils.formatNumberToE164(str2, getCurrentCountryIso(context));
            if (TextUtils.isEmpty(numberToE164)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("data4", numberToE164);
            contentResolver.update(ContactsContract.Data.CONTENT_URI, contentValues, "_id=?", new String[]{str});
        }

        public static Uri addCall(CallerInfo callerInfo, Context context, String str, String str2, String str3, int i2, int i3, int i4, PhoneAccountHandle phoneAccountHandle, long j2, int i5, Long l2, boolean z2, UserHandle userHandle) {
            return addCall(callerInfo, context, str, str2, str3, i2, i3, i4, phoneAccountHandle, j2, i5, l2, z2, userHandle, false);
        }

        /* JADX WARN: Code duplicated, block: B:68:0x017d  */
        public static Uri addCall(CallerInfo callerInfo, Context context, String str, String str2, String str3, int i2, int i3, int i4, PhoneAccountHandle phoneAccountHandle, long j2, int i5, Long l2, boolean z2, UserHandle userHandle, boolean z3) {
            TelecomManager telecomManagerFrom;
            int i6;
            String str4;
            String id;
            String strFlattenToString;
            boolean z4;
            Uri uri;
            Cursor cursorQuery;
            PhoneAccount phoneAccount;
            Uri subscriptionAddress;
            ContentResolver contentResolver = context.getContentResolver();
            try {
                telecomManagerFrom = TelecomManager.from(context);
            } catch (UnsupportedOperationException unused) {
                telecomManagerFrom = null;
            }
            String schemeSpecificPart = (telecomManagerFrom == null || phoneAccountHandle == null || (phoneAccount = telecomManagerFrom.getPhoneAccount(phoneAccountHandle)) == null || (subscriptionAddress = phoneAccount.getSubscriptionAddress()) == null) ? null : subscriptionAddress.getSchemeSpecificPart();
            if (i2 == 2) {
                i6 = 2;
            } else {
                i6 = 4;
                if (i2 != 4) {
                    i6 = (TextUtils.isEmpty(str) || i2 == 3) ? 3 : 1;
                }
            }
            if (i6 != 1) {
                str4 = "";
                if (callerInfo != null) {
                    callerInfo.name = "";
                }
            } else {
                str4 = str;
            }
            if (phoneAccountHandle != null) {
                strFlattenToString = phoneAccountHandle.getComponentName().flattenToString();
                id = phoneAccountHandle.getId();
            } else {
                id = null;
                strFlattenToString = null;
            }
            ContentValues contentValues = new ContentValues(6);
            contentValues.put("number", str4);
            contentValues.put(POST_DIAL_DIGITS, str2);
            contentValues.put(VIA_NUMBER, str3);
            contentValues.put(NUMBER_PRESENTATION, Integer.valueOf(i6));
            contentValues.put("type", Integer.valueOf(i3));
            contentValues.put(FEATURES, Integer.valueOf(i4));
            contentValues.put("date", Long.valueOf(j2));
            contentValues.put("duration", Long.valueOf(i5));
            contentValues.put(USERS_ID, Integer.valueOf(ActivityManager.getCurrentUser()));
            if (l2 != null) {
                contentValues.put(DATA_USAGE, l2);
            }
            contentValues.put("subscription_component_name", strFlattenToString);
            contentValues.put("subscription_id", id);
            contentValues.put(PHONE_ACCOUNT_ADDRESS, schemeSpecificPart);
            contentValues.put(NEW, (Integer) 1);
            contentValues.put(ADD_FOR_ALL_USERS, Integer.valueOf(z2 ? 1 : 0));
            if (i3 == 3) {
                contentValues.put("is_read", Integer.valueOf(z3 ? 1 : 0));
            }
            if (callerInfo != null) {
                long j3 = callerInfo.contactIdOrZero;
                if (j3 > 0) {
                    String str5 = callerInfo.normalizedNumber;
                    if (str5 != null) {
                        cursorQuery = contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"_id"}, "contact_id =? AND data4 =?", new String[]{String.valueOf(j3), str5}, null);
                    } else {
                        String str6 = callerInfo.phoneNumber;
                        if (str6 == null) {
                            str6 = str4;
                        }
                        cursorQuery = contentResolver.query(Uri.withAppendedPath(ContactsContract.CommonDataKinds.Callable.CONTENT_FILTER_URI, Uri.encode(str6)), new String[]{"_id"}, "contact_id =?", new String[]{String.valueOf(callerInfo.contactIdOrZero)}, null);
                    }
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.getCount() > 0 && cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(0);
                                updateDataUsageStatForData(contentResolver, string);
                                if (i5 >= 10000 && i3 == 2 && TextUtils.isEmpty(callerInfo.normalizedNumber)) {
                                    updateNormalizedNumber(context, contentResolver, string, str4);
                                }
                            }
                            cursorQuery.close();
                        } catch (Throwable th) {
                            cursorQuery.close();
                            throw th;
                        }
                    }
                } else {
                    contentValues = contentValues;
                }
            } else {
                contentValues = contentValues;
            }
            UserManager userManager = (UserManager) context.getSystemService(UserManager.class);
            int userHandle2 = userManager.getUserHandle();
            if (z2) {
                Uri uriAddEntryAndRemoveExpiredEntries = addEntryAndRemoveExpiredEntries(context, userManager, UserHandle.SYSTEM, contentValues);
                if (uriAddEntryAndRemoveExpiredEntries == null || CallLog.SHADOW_AUTHORITY.equals(uriAddEntryAndRemoveExpiredEntries.getAuthority())) {
                    return null;
                }
                if (userHandle2 == 0) {
                    uri = uriAddEntryAndRemoveExpiredEntries;
                    z4 = true;
                } else {
                    z4 = true;
                    uri = null;
                }
                List<UserInfo> users = userManager.getUsers(z4);
                int size = users.size();
                for (int i7 = 0; i7 < size; i7++) {
                    UserHandle userHandle3 = users.get(i7).getUserHandle();
                    int identifier = userHandle3.getIdentifier();
                    if (!userHandle3.isSystem() && shouldHaveSharedCallLogEntries(context, userManager, identifier) && userManager.isUserRunning(userHandle3) && userManager.isUserUnlocked(userHandle3)) {
                        Uri uriAddEntryAndRemoveExpiredEntries2 = addEntryAndRemoveExpiredEntries(context, userManager, userHandle3, contentValues);
                        if (identifier == userHandle2) {
                            uri = uriAddEntryAndRemoveExpiredEntries2;
                        }
                    }
                }
                return uri;
            }
            return addEntryAndRemoveExpiredEntries(context, userManager, userHandle != null ? userHandle : UserHandle.of(userHandle2), contentValues);
        }
    }
}
