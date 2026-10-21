package android.speech.tts;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
class EventLogger extends AbstractEventLogger {
    private final SynthesisRequest mRequest;

    public EventLogger(SynthesisRequest synthesisRequest, int i2, int i3, String str) {
        super(i2, i3, str);
        this.mRequest = synthesisRequest;
    }

    private String getLocaleString() {
        StringBuilder sb = new StringBuilder(this.mRequest.getLanguage());
        if (!TextUtils.isEmpty(this.mRequest.getCountry())) {
            sb.append('-');
            sb.append(this.mRequest.getCountry());
            if (!TextUtils.isEmpty(this.mRequest.getVariant())) {
                sb.append('-');
                sb.append(this.mRequest.getVariant());
            }
        }
        return sb.toString();
    }

    private int getUtteranceLength() {
        String text = this.mRequest.getText();
        if (text == null) {
            return 0;
        }
        return text.length();
    }

    @Override // android.speech.tts.AbstractEventLogger
    public void logFailure(int i2) {
        if (i2 != -2) {
            EventLogTags.writeTtsSpeakFailure(this.mServiceApp, this.mCallerUid, this.mCallerPid, getUtteranceLength(), getLocaleString(), this.mRequest.getSpeechRate(), this.mRequest.getPitch());
        }
    }

    @Override // android.speech.tts.AbstractEventLogger
    public void logSuccess(long j2, long j3, long j4) {
        EventLogTags.writeTtsSpeakSuccess(this.mServiceApp, this.mCallerUid, this.mCallerPid, getUtteranceLength(), getLocaleString(), this.mRequest.getSpeechRate(), this.mRequest.getPitch(), j3, j4, j2);
    }
}
