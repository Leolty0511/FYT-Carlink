package android.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class VolumePreference extends SeekBarDialogPreference implements PreferenceManager.OnActivityStopListener, View.OnKeyListener, SeekBarVolumizer.Callback {
    private SeekBarVolumizer mSeekBarVolumizer;
    private int mStreamType;

    public static class VolumeStore {
        public int volume = -1;
        public int originalVolume = -1;
    }

    public VolumePreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VolumePreference, i2, i3);
        this.mStreamType = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void cleanup() {
        getPreferenceManager().unregisterOnActivityStopListener(this);
        if (this.mSeekBarVolumizer != null) {
            Dialog dialog = getDialog();
            if (dialog != null && dialog.isShowing()) {
                View viewFindViewById = dialog.getWindow().getDecorView().findViewById(R.id.seekbar);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnKeyListener(null);
                }
                this.mSeekBarVolumizer.revertVolume();
            }
            this.mSeekBarVolumizer.stop();
            this.mSeekBarVolumizer = null;
        }
    }

    @Override // android.preference.PreferenceManager.OnActivityStopListener
    public void onActivityStop() {
        SeekBarVolumizer seekBarVolumizer = this.mSeekBarVolumizer;
        if (seekBarVolumizer != null) {
            seekBarVolumizer.stopSample();
        }
    }

    @Override // android.preference.SeekBarDialogPreference, android.preference.DialogPreference
    public void onBindDialogView(View view) {
        super.onBindDialogView(view);
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.seekbar);
        SeekBarVolumizer seekBarVolumizer = new SeekBarVolumizer(getContext(), this.mStreamType, null, this);
        this.mSeekBarVolumizer = seekBarVolumizer;
        seekBarVolumizer.start();
        this.mSeekBarVolumizer.setSeekBar(seekBar);
        getPreferenceManager().registerOnActivityStopListener(this);
        view.setOnKeyListener(this);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
    }

    @Override // android.preference.DialogPreference
    public void onDialogClosed(boolean z2) {
        SeekBarVolumizer seekBarVolumizer;
        super.onDialogClosed(z2);
        if (!z2 && (seekBarVolumizer = this.mSeekBarVolumizer) != null) {
            seekBarVolumizer.revertVolume();
        }
        cleanup();
    }

    @Override // android.preference.Preference
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (this.mSeekBarVolumizer == null) {
            return true;
        }
        boolean z2 = keyEvent.getAction() == 0;
        if (i2 == 24) {
            if (z2) {
                this.mSeekBarVolumizer.changeVolumeBy(1);
            }
            return true;
        }
        if (i2 == 25) {
            if (z2) {
                this.mSeekBarVolumizer.changeVolumeBy(-1);
            }
            return true;
        }
        if (i2 != 164) {
            return false;
        }
        if (z2) {
            this.mSeekBarVolumizer.muteVolume();
        }
        return true;
    }

    @Override // android.preference.SeekBarVolumizer.Callback
    public void onMuted(boolean z2, boolean z3) {
    }

    @Override // android.preference.SeekBarVolumizer.Callback
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SeekBarVolumizer seekBarVolumizer = this.mSeekBarVolumizer;
        if (seekBarVolumizer != null) {
            seekBarVolumizer.onRestoreInstanceState(savedState.getVolumeStore());
        }
    }

    @Override // android.preference.SeekBarVolumizer.Callback
    public void onSampleStarting(SeekBarVolumizer seekBarVolumizer) {
        SeekBarVolumizer seekBarVolumizer2 = this.mSeekBarVolumizer;
        if (seekBarVolumizer2 == null || seekBarVolumizer == seekBarVolumizer2) {
            return;
        }
        seekBarVolumizer2.stopSample();
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        SeekBarVolumizer seekBarVolumizer = this.mSeekBarVolumizer;
        if (seekBarVolumizer != null) {
            seekBarVolumizer.onSaveInstanceState(savedState.getVolumeStore());
        }
        return savedState;
    }

    public void setStreamType(int i2) {
        this.mStreamType = i2;
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.preference.VolumePreference.SavedState.1
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
        VolumeStore mVolumeStore;

        public SavedState(Parcel parcel) {
            super(parcel);
            VolumeStore volumeStore = new VolumeStore();
            this.mVolumeStore = volumeStore;
            volumeStore.volume = parcel.readInt();
            this.mVolumeStore.originalVolume = parcel.readInt();
        }

        public VolumeStore getVolumeStore() {
            return this.mVolumeStore;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.mVolumeStore.volume);
            parcel.writeInt(this.mVolumeStore.originalVolume);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.mVolumeStore = new VolumeStore();
        }
    }

    public VolumePreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public VolumePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarDialogPreferenceStyle);
    }

    public VolumePreference(Context context) {
        this(context, null);
    }
}
