package android.provider;

import android.app.admin.DevicePolicyManager;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.widget.Toast;
import com.android.internal.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ContactsInternal {
    private static final int CONTACTS_URI_LOOKUP = 1001;
    private static final int CONTACTS_URI_LOOKUP_ID = 1000;
    private static final UriMatcher sContactsUriMatcher;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sContactsUriMatcher = uriMatcher;
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*", 1001);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*/#", 1000);
    }

    private ContactsInternal() {
    }

    private static boolean maybeStartManagedQuickContact(Context context, Intent intent) {
        Uri data = intent.getData();
        List<String> pathSegments = data.getPathSegments();
        boolean z2 = pathSegments.size() < 4;
        long id = z2 ? ContactsContract.Contacts.ENTERPRISE_CONTACT_ID_BASE : ContentUris.parseId(data);
        String str = pathSegments.get(2);
        String queryParameter = data.getQueryParameter(ContactsContract.DIRECTORY_PARAM_KEY);
        long j2 = queryParameter == null ? 1000000000L : Long.parseLong(queryParameter);
        if (TextUtils.isEmpty(str) || !str.startsWith(ContactsContract.Contacts.ENTERPRISE_CONTACT_LOOKUP_PREFIX)) {
            return false;
        }
        if (!ContactsContract.Contacts.isEnterpriseContactId(id)) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("Invalid enterprise contact id: ", id));
        }
        if (!ContactsContract.Directory.isEnterpriseDirectoryId(j2)) {
            throw new IllegalArgumentException(android.accessibilityservice.c.f("Invalid enterprise directory id: ", j2));
        }
        ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).startManagedQuickContact(str.substring(ContactsContract.Contacts.ENTERPRISE_CONTACT_LOOKUP_PREFIX.length()), id - ContactsContract.Contacts.ENTERPRISE_CONTACT_ID_BASE, z2, j2 - 1000000000, intent);
        return true;
    }

    public static void startQuickContactWithErrorToast(Context context, Intent intent) {
        int iMatch = sContactsUriMatcher.match(intent.getData());
        if ((iMatch == 1000 || iMatch == 1001) && maybeStartManagedQuickContact(context, intent)) {
            return;
        }
        startQuickContactWithErrorToastForUser(context, intent, Process.myUserHandle());
    }

    public static void startQuickContactWithErrorToastForUser(Context context, Intent intent, UserHandle userHandle) {
        try {
            context.startActivityAsUser(intent, userHandle);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, R.string.quick_contacts_not_available, 0).show();
        }
    }
}
