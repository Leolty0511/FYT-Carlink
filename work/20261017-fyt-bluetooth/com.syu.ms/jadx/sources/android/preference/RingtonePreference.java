package android.preference;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.media.RingtoneManager;
import android.net.ProxyProperties;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class RingtonePreference extends Preference implements PreferenceManager.OnActivityResultListener {
    private static final String TAG = "RingtonePreference";
    private int mRequestCode;
    private int mRingtoneType;
    private boolean mShowDefault;
    private boolean mShowSilent;

    public RingtonePreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.RingtonePreference, i2, 0);
        this.mRingtoneType = typedArrayObtainStyledAttributes.getInt(0, 1);
        this.mShowDefault = typedArrayObtainStyledAttributes.getBoolean(1, true);
        this.mShowSilent = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getRingtoneType() {
        return this.mRingtoneType;
    }

    public boolean getShowDefault() {
        return this.mShowDefault;
    }

    public boolean getShowSilent() {
        return this.mShowSilent;
    }

    @Override // android.preference.PreferenceManager.OnActivityResultListener
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 != this.mRequestCode) {
            return false;
        }
        if (intent == null) {
            return true;
        }
        Uri uri = (Uri) intent.getParcelableExtra(RingtoneManager.EXTRA_RINGTONE_PICKED_URI);
        if (!callChangeListener(uri != null ? uri.toString() : ProxyProperties.LOCAL_EXCL_LIST)) {
            return true;
        }
        onSaveRingtone(uri);
        return true;
    }

    @Override // android.preference.Preference
    public void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        super.onAttachedToHierarchy(preferenceManager);
        preferenceManager.registerOnActivityResultListener(this);
        this.mRequestCode = preferenceManager.getNextRequestCode();
    }

    @Override // android.preference.Preference
    public void onClick() {
        Intent intent = new Intent(RingtoneManager.ACTION_RINGTONE_PICKER);
        onPrepareRingtonePickerIntent(intent);
        PreferenceFragment fragment = getPreferenceManager().getFragment();
        if (fragment != null) {
            fragment.startActivityForResult(intent, this.mRequestCode);
        } else {
            getPreferenceManager().getActivity().startActivityForResult(intent, this.mRequestCode);
        }
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return typedArray.getString(i2);
    }

    public void onPrepareRingtonePickerIntent(Intent intent) {
        intent.putExtra(RingtoneManager.EXTRA_RINGTONE_EXISTING_URI, onRestoreRingtone());
        intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_DEFAULT, this.mShowDefault);
        if (this.mShowDefault) {
            intent.putExtra(RingtoneManager.EXTRA_RINGTONE_DEFAULT_URI, RingtoneManager.getDefaultUri(getRingtoneType()));
        }
        intent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_SILENT, this.mShowSilent);
        intent.putExtra(RingtoneManager.EXTRA_RINGTONE_TYPE, this.mRingtoneType);
        intent.putExtra(RingtoneManager.EXTRA_RINGTONE_TITLE, getTitle());
    }

    public Uri onRestoreRingtone() {
        String persistedString = getPersistedString(null);
        if (TextUtils.isEmpty(persistedString)) {
            return null;
        }
        return Uri.parse(persistedString);
    }

    public void onSaveRingtone(Uri uri) {
        persistString(uri != null ? uri.toString() : ProxyProperties.LOCAL_EXCL_LIST);
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z2, Object obj) {
        String str = (String) obj;
        if (z2 || TextUtils.isEmpty(str)) {
            return;
        }
        onSaveRingtone(Uri.parse(str));
    }

    public void setRingtoneType(int i2) {
        this.mRingtoneType = i2;
    }

    public void setShowDefault(boolean z2) {
        this.mShowDefault = z2;
    }

    public void setShowSilent(boolean z2) {
        this.mShowSilent = z2;
    }

    public RingtonePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ringtonePreferenceStyle);
    }

    public RingtonePreference(Context context) {
        this(context, null);
    }
}
