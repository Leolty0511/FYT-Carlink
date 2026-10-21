package android.speech.tts;

import android.util.EventLog;

/* JADX INFO: loaded from: classes2.dex */
public class EventLogTags {
    public static final int TTS_SPEAK_FAILURE = 76002;
    public static final int TTS_SPEAK_SUCCESS = 76001;
    public static final int TTS_V2_SPEAK_FAILURE = 76004;
    public static final int TTS_V2_SPEAK_SUCCESS = 76003;

    private EventLogTags() {
    }

    public static void writeTtsSpeakFailure(String str, int i2, int i3, int i4, String str2, int i5, int i6) {
        EventLog.writeEvent(TTS_SPEAK_FAILURE, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str2, Integer.valueOf(i5), Integer.valueOf(i6));
    }

    public static void writeTtsSpeakSuccess(String str, int i2, int i3, int i4, String str2, int i5, int i6, long j2, long j3, long j4) {
        EventLog.writeEvent(TTS_SPEAK_SUCCESS, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str2, Integer.valueOf(i5), Integer.valueOf(i6), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4));
    }

    public static void writeTtsV2SpeakFailure(String str, int i2, int i3, int i4, String str2, int i5) {
        EventLog.writeEvent(TTS_V2_SPEAK_FAILURE, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str2, Integer.valueOf(i5));
    }

    public static void writeTtsV2SpeakSuccess(String str, int i2, int i3, int i4, String str2, long j2, long j3, long j4) {
        EventLog.writeEvent(TTS_V2_SPEAK_SUCCESS, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), str2, Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4));
    }
}
