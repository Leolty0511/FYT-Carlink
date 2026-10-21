package com.syu.bt;

/* JADX INFO: loaded from: classes.dex */
public interface InterfaceBt {
    void ClearAllContact(boolean z);

    void DialByKey();

    void checkAppIdIsRight(int i);

    void disPostLoading(int i);

    void dismissRecordDlg();

    void invilatePlayList();

    boolean isHalf();

    void moveTaskToBack();

    void onKeyDown();

    void onKeyLeft();

    void onKeyRight();

    void onKeyUp();

    void onNotify(int i, int[] iArr, float[] fArr, String[] strArr);

    void onNotify_Sound(int i, int[] iArr, float[] fArr, String[] strArr);

    void onNotify_UniCar(int i, int[] iArr, float[] fArr, String[] strArr);

    void phoneState();

    void resetColor();

    void resetList();

    void scrollOk();

    void scrollToNext();

    void scrollToPrev();

    void setDayOrNight(int i);

    void setSwitch(boolean z);

    void showPostLoading(String str);

    void updateBtNameAndPinTip();

    void updateCarplayAuto(int i);

    void updatePhoneBattery(int i);

    void updatePhoneName();

    void updatePin(String str);

    void updateShowDial();

    void updateSimLayout(int i);

    void updateSoundAmp();

    void updateSoundLoud();

    void updateSoundMode();

    void updateSoundVol();

    void updateSystemTime();

    void voiceSearchContact();
}
