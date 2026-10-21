package android.preference;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.http.CharArrayBuffers;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import i.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import u.c;

/* JADX INFO: loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
    private boolean mBaseMethodCalled;
    private boolean mCanRecycleLayout;
    private Context mContext;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List<Preference> mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private Drawable mIcon;
    private int mIconResId;
    private long mId;
    private Intent mIntent;
    private String mKey;
    private int mLayoutResId;
    private OnPreferenceChangeInternalListener mListener;
    private OnPreferenceChangeListener mOnChangeListener;
    private OnPreferenceClickListener mOnClickListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private boolean mPersistent;
    private PreferenceManager mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private CharSequence mSummary;
    private CharSequence mTitle;
    private int mTitleRes;
    private int mWidgetLayoutResId;

    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.Creator<BaseSavedState>() { // from class: android.preference.Preference.BaseSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BaseSavedState[] newArray(int i2) {
                return new BaseSavedState[i2];
            }
        };

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public interface OnPreferenceChangeInternalListener {
        void onPreferenceChange(Preference preference);

        void onPreferenceHierarchyChange(Preference preference);
    }

    public interface OnPreferenceChangeListener {
        boolean onPreferenceChange(Preference preference, Object obj);
    }

    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }

    public Preference(Context context, AttributeSet attributeSet, int i2) {
        this.mOrder = Integer.MAX_VALUE;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = 17367154;
        this.mCanRecycleLayout = true;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.Preference, i2, 0);
        for (int indexCount = typedArrayObtainStyledAttributes.getIndexCount(); indexCount >= 0; indexCount--) {
            int index = typedArrayObtainStyledAttributes.getIndex(indexCount);
            switch (index) {
                case 0:
                    this.mIconResId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    break;
                case 1:
                    this.mPersistent = typedArrayObtainStyledAttributes.getBoolean(index, this.mPersistent);
                    break;
                case 2:
                    this.mEnabled = typedArrayObtainStyledAttributes.getBoolean(index, true);
                    break;
                case 3:
                    this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(index, this.mLayoutResId);
                    break;
                case 4:
                    this.mTitleRes = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    this.mTitle = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 5:
                    this.mSelectable = typedArrayObtainStyledAttributes.getBoolean(index, true);
                    break;
                case 6:
                    this.mKey = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 7:
                    this.mSummary = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 8:
                    this.mOrder = typedArrayObtainStyledAttributes.getInt(index, this.mOrder);
                    break;
                case 9:
                    this.mWidgetLayoutResId = typedArrayObtainStyledAttributes.getResourceId(index, this.mWidgetLayoutResId);
                    break;
                case 10:
                    this.mDependencyKey = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 11:
                    this.mDefaultValue = onGetDefaultValue(typedArrayObtainStyledAttributes, index);
                    break;
                case 12:
                    this.mShouldDisableView = typedArrayObtainStyledAttributes.getBoolean(index, this.mShouldDisableView);
                    break;
                case 13:
                    this.mFragment = typedArrayObtainStyledAttributes.getString(index);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (getClass().getName().startsWith(PreferenceManager.METADATA_KEY_PREFERENCES) || getClass().getName().startsWith("com.android")) {
            return;
        }
        this.mCanRecycleLayout = false;
    }

    private void dispatchSetInitialValue() {
        if (shouldPersist() && getSharedPreferences().contains(this.mKey)) {
            onSetInitialValue(true, null);
            return;
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue(false, obj);
        }
    }

    private void registerDependency() {
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        Preference preferenceFindPreferenceInHierarchy = findPreferenceInHierarchy(this.mDependencyKey);
        if (preferenceFindPreferenceInHierarchy != null) {
            preferenceFindPreferenceInHierarchy.registerDependent(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.mDependencyKey + "\" not found for preference \"" + this.mKey + "\" (title: \"" + ((Object) this.mTitle) + "\"");
    }

    private void registerDependent(Preference preference) {
        if (this.mDependents == null) {
            this.mDependents = new ArrayList();
        }
        this.mDependents.add(preference);
        preference.onDependencyChanged(this, shouldDisableDependents());
    }

    private void setEnabledStateOnViews(View view, boolean z2) {
        view.setEnabled(z2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnabledStateOnViews(viewGroup.getChildAt(childCount), z2);
            }
        }
    }

    private void tryCommit(SharedPreferences.Editor editor) {
        if (this.mPreferenceManager.shouldCommit()) {
            try {
                editor.apply();
            } catch (AbstractMethodError unused) {
                editor.commit();
            }
        }
    }

    private void unregisterDependency() {
        Preference preferenceFindPreferenceInHierarchy;
        String str = this.mDependencyKey;
        if (str == null || (preferenceFindPreferenceInHierarchy = findPreferenceInHierarchy(str)) == null) {
            return;
        }
        preferenceFindPreferenceInHierarchy.unregisterDependent(this);
    }

    private void unregisterDependent(Preference preference) {
        List<Preference> list = this.mDependents;
        if (list != null) {
            list.remove(preference);
        }
    }

    public boolean callChangeListener(Object obj) {
        OnPreferenceChangeListener onPreferenceChangeListener = this.mOnChangeListener;
        if (onPreferenceChangeListener == null) {
            return true;
        }
        return onPreferenceChangeListener.onPreferenceChange(this, obj);
    }

    public boolean canRecycleLayout() {
        return this.mCanRecycleLayout;
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.mKey)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (!this.mBaseMethodCalled) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable parcelableOnSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (parcelableOnSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, parcelableOnSaveInstanceState);
            }
        }
    }

    public Preference findPreferenceInHierarchy(String str) {
        PreferenceManager preferenceManager;
        if (TextUtils.isEmpty(str) || (preferenceManager = this.mPreferenceManager) == null) {
            return null;
        }
        return preferenceManager.findPreference(str);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDependency() {
        return this.mDependencyKey;
    }

    public SharedPreferences.Editor getEditor() {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return preferenceManager.getEditor();
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public StringBuilder getFilterableStringBuilder() {
        StringBuilder sb = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            sb.append(title);
            sb.append(CharArrayBuffers.uppercaseAddon);
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(CharArrayBuffers.uppercaseAddon);
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    public String getFragment() {
        return this.mFragment;
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public long getId() {
        return this.mId;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public String getKey() {
        return this.mKey;
    }

    public int getLayoutResource() {
        return this.mLayoutResId;
    }

    public OnPreferenceChangeListener getOnPreferenceChangeListener() {
        return this.mOnChangeListener;
    }

    public OnPreferenceClickListener getOnPreferenceClickListener() {
        return this.mOnClickListener;
    }

    public int getOrder() {
        return this.mOrder;
    }

    public boolean getPersistedBoolean(boolean z2) {
        return !shouldPersist() ? z2 : this.mPreferenceManager.getSharedPreferences().getBoolean(this.mKey, z2);
    }

    public float getPersistedFloat(float f2) {
        return !shouldPersist() ? f2 : this.mPreferenceManager.getSharedPreferences().getFloat(this.mKey, f2);
    }

    public int getPersistedInt(int i2) {
        return !shouldPersist() ? i2 : this.mPreferenceManager.getSharedPreferences().getInt(this.mKey, i2);
    }

    public long getPersistedLong(long j2) {
        return !shouldPersist() ? j2 : this.mPreferenceManager.getSharedPreferences().getLong(this.mKey, j2);
    }

    public String getPersistedString(String str) {
        return !shouldPersist() ? str : this.mPreferenceManager.getSharedPreferences().getString(this.mKey, str);
    }

    public Set<String> getPersistedStringSet(Set<String> set) {
        return !shouldPersist() ? set : this.mPreferenceManager.getSharedPreferences().getStringSet(this.mKey, set);
    }

    public PreferenceManager getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public SharedPreferences getSharedPreferences() {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return preferenceManager.getSharedPreferences();
    }

    public boolean getShouldDisableView() {
        return this.mShouldDisableView;
    }

    public CharSequence getSummary() {
        return this.mSummary;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public int getTitleRes() {
        return this.mTitleRes;
    }

    public View getView(View view, ViewGroup viewGroup) {
        if (view == null) {
            view = onCreateView(viewGroup);
        }
        onBindView(view);
        return view;
    }

    public int getWidgetLayoutResource() {
        return this.mWidgetLayoutResId;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.mKey);
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public boolean isPersistent() {
        return this.mPersistent;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public void notifyChanged() {
        OnPreferenceChangeInternalListener onPreferenceChangeInternalListener = this.mListener;
        if (onPreferenceChangeInternalListener != null) {
            onPreferenceChangeInternalListener.onPreferenceChange(this);
        }
    }

    public void notifyDependencyChange(boolean z2) {
        List<Preference> list = this.mDependents;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            list.get(i2).onDependencyChanged(this, z2);
        }
    }

    public void notifyHierarchyChanged() {
        OnPreferenceChangeInternalListener onPreferenceChangeInternalListener = this.mListener;
        if (onPreferenceChangeInternalListener != null) {
            onPreferenceChangeInternalListener.onPreferenceHierarchyChange(this);
        }
    }

    public void onAttachedToActivity() {
        registerDependency();
    }

    public void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        this.mPreferenceManager = preferenceManager;
        this.mId = preferenceManager.getNextId();
        dispatchSetInitialValue();
    }

    public void onBindView(View view) {
        TextView textView = (TextView) view.findViewById(R.id.title);
        if (textView != null) {
            CharSequence title = getTitle();
            if (TextUtils.isEmpty(title)) {
                textView.setVisibility(8);
            } else {
                textView.setText(title);
                textView.setVisibility(0);
            }
        }
        TextView textView2 = (TextView) view.findViewById(R.id.summary);
        if (textView2 != null) {
            CharSequence summary = getSummary();
            if (TextUtils.isEmpty(summary)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(summary);
                textView2.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        if (imageView != null) {
            if (this.mIconResId != 0 || this.mIcon != null) {
                if (this.mIcon == null) {
                    this.mIcon = getContext().getResources().getDrawable(this.mIconResId);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            imageView.setVisibility(this.mIcon == null ? 8 : 0);
        }
        if (this.mShouldDisableView) {
            setEnabledStateOnViews(view, isEnabled());
        }
    }

    public void onClick() {
    }

    public View onCreateView(ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View viewInflate = layoutInflater.inflate(this.mLayoutResId, viewGroup, false);
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = this.mWidgetLayoutResId;
            if (i2 != 0) {
                layoutInflater.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return viewInflate;
    }

    public void onDependencyChanged(Preference preference, boolean z2) {
        if (this.mDependencyMet == z2) {
            this.mDependencyMet = !z2;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return null;
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        return false;
    }

    public void onParentChanged(Preference preference, boolean z2) {
        if (this.mParentDependencyMet == z2) {
            this.mParentDependencyMet = !z2;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onPrepareForRemoval() {
        unregisterDependency();
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onSetInitialValue(boolean z2, Object obj) {
    }

    public Bundle peekExtras() {
        return this.mExtras;
    }

    public void performClick(PreferenceScreen preferenceScreen) {
        if (isEnabled()) {
            onClick();
            OnPreferenceClickListener onPreferenceClickListener = this.mOnClickListener;
            if (onPreferenceClickListener == null || !onPreferenceClickListener.onPreferenceClick(this)) {
                PreferenceManager preferenceManager = getPreferenceManager();
                if (preferenceManager != null) {
                    PreferenceManager.OnPreferenceTreeClickListener onPreferenceTreeClickListener = preferenceManager.getOnPreferenceTreeClickListener();
                    if (preferenceScreen != null && onPreferenceTreeClickListener != null && onPreferenceTreeClickListener.onPreferenceTreeClick(preferenceScreen, this)) {
                        return;
                    }
                }
                if (this.mIntent != null) {
                    getContext().startActivity(this.mIntent);
                }
            }
        }
    }

    public boolean persistBoolean(boolean z2) {
        if (!shouldPersist()) {
            return false;
        }
        if (z2 == getPersistedBoolean(!z2)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putBoolean(this.mKey, z2);
        tryCommit(editor);
        return true;
    }

    public boolean persistFloat(float f2) {
        if (!shouldPersist()) {
            return false;
        }
        if (f2 == getPersistedFloat(Float.NaN)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putFloat(this.mKey, f2);
        tryCommit(editor);
        return true;
    }

    public boolean persistInt(int i2) {
        if (!shouldPersist()) {
            return false;
        }
        if (i2 == getPersistedInt(~i2)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putInt(this.mKey, i2);
        tryCommit(editor);
        return true;
    }

    public boolean persistLong(long j2) {
        if (!shouldPersist()) {
            return false;
        }
        if (j2 == getPersistedLong(~j2)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putLong(this.mKey, j2);
        tryCommit(editor);
        return true;
    }

    public boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (str == getPersistedString(null)) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putString(this.mKey, str);
        tryCommit(editor);
        return true;
    }

    public boolean persistStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedStringSet(null))) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putStringSet(this.mKey, set);
        tryCommit(editor);
        return true;
    }

    public void requireKey() {
        if (this.mKey == null) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveHierarchyState(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setDefaultValue(Object obj) {
        this.mDefaultValue = obj;
    }

    public void setDependency(String str) {
        unregisterDependency();
        this.mDependencyKey = str;
        registerDependency();
    }

    public void setEnabled(boolean z2) {
        if (this.mEnabled != z2) {
            this.mEnabled = z2;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setFragment(String str) {
        this.mFragment = str;
    }

    public void setIcon(Drawable drawable) {
        if ((drawable != null || this.mIcon == null) && (drawable == null || this.mIcon == drawable)) {
            return;
        }
        this.mIcon = drawable;
        notifyChanged();
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public void setKey(String str) {
        this.mKey = str;
        if (!this.mRequiresKey || hasKey()) {
            return;
        }
        requireKey();
    }

    public void setLayoutResource(int i2) {
        if (i2 != this.mLayoutResId) {
            this.mCanRecycleLayout = false;
        }
        this.mLayoutResId = i2;
    }

    public final void setOnPreferenceChangeInternalListener(OnPreferenceChangeInternalListener onPreferenceChangeInternalListener) {
        this.mListener = onPreferenceChangeInternalListener;
    }

    public void setOnPreferenceChangeListener(OnPreferenceChangeListener onPreferenceChangeListener) {
        this.mOnChangeListener = onPreferenceChangeListener;
    }

    public void setOnPreferenceClickListener(OnPreferenceClickListener onPreferenceClickListener) {
        this.mOnClickListener = onPreferenceClickListener;
    }

    public void setOrder(int i2) {
        if (i2 != this.mOrder) {
            this.mOrder = i2;
            notifyHierarchyChanged();
        }
    }

    public void setPersistent(boolean z2) {
        this.mPersistent = z2;
    }

    public void setSelectable(boolean z2) {
        if (this.mSelectable != z2) {
            this.mSelectable = z2;
            notifyChanged();
        }
    }

    public void setShouldDisableView(boolean z2) {
        this.mShouldDisableView = z2;
        notifyChanged();
    }

    public void setSummary(CharSequence charSequence) {
        if ((charSequence != null || this.mSummary == null) && (charSequence == null || charSequence.equals(this.mSummary))) {
            return;
        }
        this.mSummary = charSequence;
        notifyChanged();
    }

    public void setTitle(CharSequence charSequence) {
        if ((charSequence != null || this.mTitle == null) && (charSequence == null || charSequence.equals(this.mTitle))) {
            return;
        }
        this.mTitleRes = 0;
        this.mTitle = charSequence;
        notifyChanged();
    }

    public void setWidgetLayoutResource(int i2) {
        if (i2 != this.mWidgetLayoutResId) {
            this.mCanRecycleLayout = false;
        }
        this.mWidgetLayoutResId = i2;
    }

    public boolean shouldCommit() {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return false;
        }
        return preferenceManager.shouldCommit();
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public boolean shouldPersist() {
        return this.mPreferenceManager != null && isPersistent() && hasKey();
    }

    public String toString() {
        return getFilterableStringBuilder().toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Preference preference) {
        int i2 = this.mOrder;
        int i3 = preference.mOrder;
        if (i2 != i3) {
            return i2 - i3;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return c.a(charSequence, charSequence2);
    }

    public void setIcon(int i2) {
        this.mIconResId = i2;
        setIcon(this.mContext.getResources().getDrawable(i2));
    }

    public void setSummary(int i2) {
        setSummary(this.mContext.getString(i2));
    }

    public void setTitle(int i2) {
        setTitle(this.mContext.getString(i2));
        this.mTitleRes = i2;
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.preferenceStyle);
    }

    public Preference(Context context) {
        this(context, null);
    }
}
