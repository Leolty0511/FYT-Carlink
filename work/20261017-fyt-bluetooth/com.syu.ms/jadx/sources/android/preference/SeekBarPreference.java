package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import i.a;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference implements SeekBar.OnSeekBarChangeListener {
    private int mMax;
    private int mProgress;
    private boolean mTrackingTouch;

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.ProgressBar, i2, 0);
        setMax(typedArrayObtainStyledAttributes.getInt(2, this.mMax));
        typedArrayObtainStyledAttributes.recycle();
        setLayoutResource(17367167);
    }

    public int getProgress() {
        return this.mProgress;
    }

    @Override // android.preference.Preference
    public CharSequence getSummary() {
        return null;
    }

    @Override // android.preference.Preference
    public void onBindView(View view) {
        super.onBindView(view);
        SeekBar seekBar = (SeekBar) view.findViewById(16909066);
        seekBar.setOnSeekBarChangeListener(this);
        seekBar.setMax(this.mMax);
        seekBar.setProgress(this.mProgress);
        seekBar.setEnabled(isEnabled());
    }

    @Override // android.preference.Preference
    public Object onGetDefaultValue(TypedArray typedArray, int i2) {
        return Integer.valueOf(typedArray.getInt(i2, 0));
    }

    @Override // android.preference.Preference
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            return false;
        }
        if (i2 == 81 || i2 == 70) {
            setProgress(getProgress() + 1);
            return true;
        }
        if (i2 != 69) {
            return false;
        }
        setProgress(getProgress() - 1);
        return true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (!z2 || this.mTrackingTouch) {
            return;
        }
        syncProgress(seekBar);
    }

    @Override // android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mProgress = savedState.progress;
        this.mMax = savedState.max;
        notifyChanged();
    }

    @Override // android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.progress = this.mProgress;
        savedState.max = this.mMax;
        return savedState;
    }

    @Override // android.preference.Preference
    public void onSetInitialValue(boolean z2, Object obj) {
        setProgress(z2 ? getPersistedInt(this.mProgress) : ((Integer) obj).intValue());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.mTrackingTouch = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.mTrackingTouch = false;
        if (seekBar.getProgress() != this.mProgress) {
            syncProgress(seekBar);
        }
    }

    public void setMax(int i2) {
        if (i2 != this.mMax) {
            this.mMax = i2;
            notifyChanged();
        }
    }

    public void setProgress(int i2) {
        setProgress(i2, true);
    }

    public void syncProgress(SeekBar seekBar) {
        int progress = seekBar.getProgress();
        if (progress != this.mProgress) {
            if (callChangeListener(Integer.valueOf(progress))) {
                setProgress(progress, false);
            } else {
                seekBar.setProgress(this.mProgress);
            }
        }
    }

    private void setProgress(int i2, boolean z2) {
        int i3 = this.mMax;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 != this.mProgress) {
            this.mProgress = i2;
            persistInt(i2);
            if (z2) {
                notifyChanged();
            }
        }
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.SeekBarPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int max;
        public int progress;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.max = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.progress);
            parcel.writeInt(this.max);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SeekBarPreference(Context context) {
        this(context, null);
    }
}
