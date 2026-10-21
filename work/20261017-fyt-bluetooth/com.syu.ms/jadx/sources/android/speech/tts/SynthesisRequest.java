package android.speech.tts;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class SynthesisRequest {
    private int mCallerUid;
    private String mCountry;
    private String mLanguage;
    private final Bundle mParams;
    private int mPitch;
    private int mSpeechRate;
    private final String mText;
    private String mVariant;

    public SynthesisRequest(String str, Bundle bundle) {
        this.mText = str;
        this.mParams = new Bundle(bundle);
    }

    public int getCallerUid() {
        return this.mCallerUid;
    }

    public String getCountry() {
        return this.mCountry;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public Bundle getParams() {
        return this.mParams;
    }

    public int getPitch() {
        return this.mPitch;
    }

    public int getSpeechRate() {
        return this.mSpeechRate;
    }

    public String getText() {
        return this.mText;
    }

    public String getVariant() {
        return this.mVariant;
    }

    public void setCallerUid(int i2) {
        this.mCallerUid = i2;
    }

    public void setLanguage(String str, String str2, String str3) {
        this.mLanguage = str;
        this.mCountry = str2;
        this.mVariant = str3;
    }

    public void setPitch(int i2) {
        this.mPitch = i2;
    }

    public void setSpeechRate(int i2) {
        this.mSpeechRate = i2;
    }
}
