package android.widget;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class QuickContactBadge extends ImageView implements View.OnClickListener {
    public static final int EMAIL_ID_COLUMN_INDEX = 0;
    public static final int EMAIL_LOOKUP_STRING_COLUMN_INDEX = 1;
    private static final String EXTRA_URI_CONTENT = "uri_content";
    public static final int PHONE_ID_COLUMN_INDEX = 0;
    public static final int PHONE_LOOKUP_STRING_COLUMN_INDEX = 1;
    private static final int TOKEN_EMAIL_LOOKUP = 0;
    private static final int TOKEN_EMAIL_LOOKUP_AND_TRIGGER = 2;
    private static final int TOKEN_PHONE_LOOKUP = 1;
    private static final int TOKEN_PHONE_LOOKUP_AND_TRIGGER = 3;
    private String mContactEmail;
    private String mContactPhone;
    private Uri mContactUri;
    private Drawable mDefaultAvatar;
    public String[] mExcludeMimes;
    private Bundle mExtras;
    private Drawable mOverlay;
    private QueryHandler mQueryHandler;
    public static final String[] EMAIL_LOOKUP_PROJECTION = {"contact_id", ContactsContract.ContactsColumns.LOOKUP_KEY};
    public static final String[] PHONE_LOOKUP_PROJECTION = {"_id", ContactsContract.ContactsColumns.LOOKUP_KEY};

    public class QueryHandler extends AsyncQueryHandler {
        public QueryHandler(ContentResolver contentResolver) {
            super(contentResolver);
        }

        /* JADX WARN: Code duplicated, block: B:32:0x006e  */
        /* JADX WARN: Code duplicated, block: B:35:0x007d A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:38:0x008f  */
        /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
        @Override // android.content.AsyncQueryHandler
        public void onQueryComplete(int i2, Object obj, Cursor cursor) {
            boolean z2;
            Uri uriFromParts;
            Bundle bundle = obj != null ? (Bundle) obj : new Bundle();
            boolean z3 = false;
            Uri lookupUri = null;
            try {
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            uriFromParts = Uri.fromParts("mailto", bundle.getString(QuickContactBadge.EXTRA_URI_CONTENT), null);
                            z2 = true;
                        } else if (i2 != 3) {
                            uriFromParts = null;
                        } else {
                            uriFromParts = Uri.fromParts("tel", bundle.getString(QuickContactBadge.EXTRA_URI_CONTENT), null);
                            z2 = true;
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        QuickContactBadge.this.mContactUri = lookupUri;
                        QuickContactBadge.this.onContactUriChanged();
                        if (!z3 && lookupUri != null) {
                            Context context = QuickContactBadge.this.getContext();
                            QuickContactBadge quickContactBadge = QuickContactBadge.this;
                            ContactsContract.QuickContact.showQuickContact(context, quickContactBadge, lookupUri, 3, quickContactBadge.mExcludeMimes);
                            return;
                        } else if (uriFromParts != null) {
                            Intent intent = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT", uriFromParts);
                            bundle.remove(QuickContactBadge.EXTRA_URI_CONTENT);
                            intent.putExtras(bundle);
                            QuickContactBadge.this.getContext().startActivity(intent);
                        }
                    }
                    z2 = false;
                    uriFromParts = null;
                    if (cursor != null && cursor.moveToFirst()) {
                        lookupUri = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                    }
                    z3 = z2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    QuickContactBadge.this.mContactUri = lookupUri;
                    QuickContactBadge.this.onContactUriChanged();
                    if (!z3) {
                    }
                    if (uriFromParts != null) {
                        Intent intent2 = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT", uriFromParts);
                        bundle.remove(QuickContactBadge.EXTRA_URI_CONTENT);
                        intent2.putExtras(bundle);
                        QuickContactBadge.this.getContext().startActivity(intent2);
                    }
                }
                z2 = false;
                uriFromParts = null;
                if (cursor != null && cursor.moveToFirst()) {
                    lookupUri = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                }
                z3 = z2;
                if (cursor != null) {
                    cursor.close();
                }
                QuickContactBadge.this.mContactUri = lookupUri;
                QuickContactBadge.this.onContactUriChanged();
                if (!z3) {
                }
                if (uriFromParts != null) {
                    Intent intent3 = new Intent("com.android.contacts.action.SHOW_OR_CREATE_CONTACT", uriFromParts);
                    bundle.remove(QuickContactBadge.EXTRA_URI_CONTENT);
                    intent3.putExtras(bundle);
                    QuickContactBadge.this.getContext().startActivity(intent3);
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public QuickContactBadge(Context context) {
        this(context, null);
    }

    private boolean isAssigned() {
        return (this.mContactUri == null && this.mContactEmail == null && this.mContactPhone == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onContactUriChanged() {
        setEnabled(isAssigned());
    }

    public void assignContactFromEmail(String str, boolean z2) {
        assignContactFromEmail(str, z2, null);
    }

    public void assignContactFromPhone(String str, boolean z2) {
        assignContactFromPhone(str, z2, new Bundle());
    }

    public void assignContactUri(Uri uri) {
        this.mContactUri = uri;
        this.mContactEmail = null;
        this.mContactPhone = null;
        onContactUriChanged();
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mOverlay;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.mOverlay.setState(getDrawableState());
        invalidate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Bundle bundle = this.mExtras;
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = bundle;
        if (this.mContactUri != null) {
            ContactsContract.QuickContact.showQuickContact(getContext(), this, this.mContactUri, 3, this.mExcludeMimes);
            return;
        }
        String str = this.mContactEmail;
        if (str != null && this.mQueryHandler != null) {
            bundle2.putString(EXTRA_URI_CONTENT, str);
            this.mQueryHandler.startQuery(2, bundle2, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(this.mContactEmail)), EMAIL_LOOKUP_PROJECTION, null, null, null);
            return;
        }
        String str2 = this.mContactPhone;
        if (str2 == null || this.mQueryHandler == null) {
            return;
        }
        bundle2.putString(EXTRA_URI_CONTENT, str2);
        this.mQueryHandler.startQuery(3, bundle2, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, this.mContactPhone), PHONE_LOOKUP_PROJECTION, null, null, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable;
        super.onDraw(canvas);
        if (!isEnabled() || (drawable = this.mOverlay) == null || drawable.getIntrinsicWidth() == 0 || this.mOverlay.getIntrinsicHeight() == 0) {
            return;
        }
        this.mOverlay.setBounds(0, 0, getWidth(), getHeight());
        if (this.mPaddingTop == 0 && this.mPaddingLeft == 0) {
            this.mOverlay.draw(canvas);
            return;
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(this.mPaddingLeft, this.mPaddingTop);
        this.mOverlay.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(QuickContactBadge.class.getName());
    }

    @Override // android.widget.ImageView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(QuickContactBadge.class.getName());
    }

    public void setExcludeMimes(String[] strArr) {
        this.mExcludeMimes = strArr;
    }

    public void setImageToDefault() {
        if (this.mDefaultAvatar == null) {
            this.mDefaultAvatar = getResources().getDrawable(17302219);
        }
        setImageDrawable(this.mDefaultAvatar);
    }

    public void setMode(int i2) {
    }

    public QuickContactBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void assignContactFromEmail(String str, boolean z2, Bundle bundle) {
        QueryHandler queryHandler;
        this.mContactEmail = str;
        this.mExtras = bundle;
        if (!z2 && (queryHandler = this.mQueryHandler) != null) {
            queryHandler.startQuery(0, null, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(str)), EMAIL_LOOKUP_PROJECTION, null, null, null);
        } else {
            this.mContactUri = null;
            onContactUriChanged();
        }
    }

    public void assignContactFromPhone(String str, boolean z2, Bundle bundle) {
        QueryHandler queryHandler;
        this.mContactPhone = str;
        this.mExtras = bundle;
        if (!z2 && (queryHandler = this.mQueryHandler) != null) {
            queryHandler.startQuery(1, null, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str), PHONE_LOOKUP_PROJECTION, null, null, null);
        } else {
            this.mContactUri = null;
            onContactUriChanged();
        }
    }

    public QuickContactBadge(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mExtras = null;
        this.mExcludeMimes = null;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(a.Theme);
        this.mOverlay = typedArrayObtainStyledAttributes.getDrawable(236);
        typedArrayObtainStyledAttributes.recycle();
        if (!isInEditMode()) {
            this.mQueryHandler = new QueryHandler(this.mContext.getContentResolver());
        }
        setOnClickListener(this);
    }
}
