package android.speech.srec;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Recognizer {
    public static final int EVENT_END_OF_VOICING = 6;
    public static final int EVENT_INCOMPLETE = 2;
    public static final int EVENT_INVALID = 0;
    public static final int EVENT_MAX_SPEECH = 12;
    public static final int EVENT_NEED_MORE_AUDIO = 11;
    public static final int EVENT_NO_MATCH = 1;
    public static final int EVENT_RECOGNITION_RESULT = 8;
    public static final int EVENT_RECOGNITION_TIMEOUT = 10;
    public static final int EVENT_SPOKE_TOO_SOON = 7;
    public static final int EVENT_STARTED = 3;
    public static final int EVENT_START_OF_UTTERANCE_TIMEOUT = 9;
    public static final int EVENT_START_OF_VOICING = 5;
    public static final int EVENT_STOPPED = 4;
    public static final String KEY_CONFIDENCE = "conf";
    public static final String KEY_LITERAL = "literal";
    public static final String KEY_MEANING = "meaning";
    private static String TAG;
    private Grammar mActiveGrammar = null;
    private byte[] mPutAudioBuffer = null;
    private int mRecognizer;
    private int mVocabulary;

    public class Grammar {
        private int mGrammar;

        public Grammar(String str) {
            this.mGrammar = 0;
            int iSR_GrammarLoad = Recognizer.SR_GrammarLoad(str);
            this.mGrammar = iSR_GrammarLoad;
            Recognizer.SR_GrammarSetupVocabulary(iSR_GrammarLoad, Recognizer.this.mVocabulary);
        }

        public void addWordToSlot(String str, String str2, String str3, int i2, String str4) {
            Recognizer.SR_GrammarAddWordToSlot(this.mGrammar, str, str2, str3, i2, str4);
        }

        public void compile() {
            Recognizer.SR_GrammarCompile(this.mGrammar);
        }

        public void destroy() {
            int i2 = this.mGrammar;
            if (i2 != 0) {
                Recognizer.SR_GrammarDestroy(i2);
                this.mGrammar = 0;
            }
        }

        public void finalize() {
            if (this.mGrammar == 0) {
                return;
            }
            destroy();
            throw new IllegalStateException("someone forgot to destroy Grammar");
        }

        public void resetAllSlots() {
            Recognizer.SR_GrammarResetAllSlots(this.mGrammar);
        }

        public void save(String str) {
            Recognizer.SR_GrammarSave(this.mGrammar, str);
        }

        public void setupRecognizer() {
            Recognizer.SR_GrammarSetupRecognizer(this.mGrammar, Recognizer.this.mRecognizer);
            Recognizer.this.mActiveGrammar = this;
        }
    }

    static {
        System.loadLibrary("srec_jni");
        TAG = "Recognizer";
    }

    public Recognizer(String str) {
        this.mVocabulary = 0;
        this.mRecognizer = 0;
        PMemInit();
        SR_SessionCreate(str);
        int iSR_RecognizerCreate = SR_RecognizerCreate();
        this.mRecognizer = iSR_RecognizerCreate;
        SR_RecognizerSetup(iSR_RecognizerCreate);
        this.mVocabulary = SR_VocabularyLoad();
    }

    private static native void PMemInit();

    private static native void PMemShutdown();

    private static native String SR_AcousticStateGet(int i2);

    private static native void SR_AcousticStateReset(int i2);

    private static native void SR_AcousticStateSet(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarAddWordToSlot(int i2, String str, String str2, String str3, int i3, String str4);

    private static native void SR_GrammarAllowAll(int i2);

    private static native void SR_GrammarAllowOnly(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarCompile(int i2);

    private static native int SR_GrammarCreate();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarDestroy(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int SR_GrammarLoad(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarResetAllSlots(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarSave(int i2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarSetupRecognizer(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void SR_GrammarSetupVocabulary(int i2, int i3);

    private static native void SR_GrammarUnsetupRecognizer(int i2);

    private static native void SR_RecognizerActivateRule(int i2, int i3, String str, int i4);

    private static native int SR_RecognizerAdvance(int i2);

    private static native boolean SR_RecognizerCheckGrammarConsistency(int i2, int i3);

    private static native int SR_RecognizerCreate();

    private static native void SR_RecognizerDeactivateAllRules(int i2);

    private static native void SR_RecognizerDeactivateRule(int i2, int i3, String str);

    private static native void SR_RecognizerDestroy(int i2);

    private static native boolean SR_RecognizerGetBoolParameter(int i2, String str);

    private static native String SR_RecognizerGetParameter(int i2, String str);

    private static native int SR_RecognizerGetSize_tParameter(int i2, String str);

    private static native boolean SR_RecognizerHasSetupRules(int i2);

    private static native boolean SR_RecognizerIsActiveRule(int i2, int i3, String str);

    private static native boolean SR_RecognizerIsSetup(int i2);

    private static native boolean SR_RecognizerIsSignalClipping(int i2);

    private static native boolean SR_RecognizerIsSignalDCOffset(int i2);

    private static native boolean SR_RecognizerIsSignalNoisy(int i2);

    private static native boolean SR_RecognizerIsSignalTooFewSamples(int i2);

    private static native boolean SR_RecognizerIsSignalTooManySamples(int i2);

    private static native boolean SR_RecognizerIsSignalTooQuiet(int i2);

    private static native int SR_RecognizerPutAudio(int i2, byte[] bArr, int i3, int i4, boolean z2);

    private static native int SR_RecognizerResultGetKeyCount(int i2, int i3);

    private static native String[] SR_RecognizerResultGetKeyList(int i2, int i3);

    private static native int SR_RecognizerResultGetSize(int i2);

    private static native String SR_RecognizerResultGetValue(int i2, int i3, String str);

    private static native byte[] SR_RecognizerResultGetWaveform(int i2);

    private static native void SR_RecognizerSetBoolParameter(int i2, String str, boolean z2);

    private static native void SR_RecognizerSetParameter(int i2, String str, String str2);

    private static native void SR_RecognizerSetSize_tParameter(int i2, String str, int i3);

    private static native void SR_RecognizerSetup(int i2);

    private static native void SR_RecognizerSetupRule(int i2, int i3, String str);

    private static native void SR_RecognizerStart(int i2);

    private static native void SR_RecognizerStop(int i2);

    private static native void SR_RecognizerUnsetup(int i2);

    private static native void SR_SessionCreate(String str);

    private static native void SR_SessionDestroy();

    private static native void SR_VocabularyDestroy(int i2);

    private static native String SR_VocabularyGetPronunciation(int i2, String str);

    private static native int SR_VocabularyLoad();

    public static String eventToString(int i2) {
        switch (i2) {
            case 0:
                return "EVENT_INVALID";
            case 1:
                return "EVENT_NO_MATCH";
            case 2:
                return "EVENT_INCOMPLETE";
            case 3:
                return "EVENT_STARTED";
            case 4:
                return "EVENT_STOPPED";
            case 5:
                return "EVENT_START_OF_VOICING";
            case 6:
                return "EVENT_END_OF_VOICING";
            case 7:
                return "EVENT_SPOKE_TOO_SOON";
            case 8:
                return "EVENT_RECOGNITION_RESULT";
            case 9:
                return "EVENT_START_OF_UTTERANCE_TIMEOUT";
            case 10:
                return "EVENT_RECOGNITION_TIMEOUT";
            case 11:
                return "EVENT_NEED_MORE_AUDIO";
            case 12:
                return "EVENT_MAX_SPEECH";
            default:
                return "EVENT_" + i2;
        }
    }

    public static String getConfigDir(Locale locale) {
        if (locale == null) {
            locale = Locale.US;
        }
        String str = "/system/usr/srec/config/" + locale.toString().replace('_', '.').toLowerCase(Locale.ROOT);
        if (new File(str).isDirectory()) {
            return str;
        }
        return null;
    }

    public int advance() {
        return SR_RecognizerAdvance(this.mRecognizer);
    }

    public void destroy() {
        try {
            int i2 = this.mVocabulary;
            if (i2 != 0) {
                SR_VocabularyDestroy(i2);
            }
            this.mVocabulary = 0;
            try {
                int i3 = this.mRecognizer;
                if (i3 != 0) {
                    SR_RecognizerUnsetup(i3);
                }
                try {
                    int i4 = this.mRecognizer;
                    if (i4 != 0) {
                        SR_RecognizerDestroy(i4);
                    }
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                    } finally {
                        PMemShutdown();
                    }
                } catch (Throwable th) {
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th;
                    } finally {
                        PMemShutdown();
                    }
                }
            } catch (Throwable th2) {
                try {
                    int i5 = this.mRecognizer;
                    if (i5 != 0) {
                        SR_RecognizerDestroy(i5);
                    }
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th2;
                    } finally {
                        PMemShutdown();
                    }
                } catch (Throwable th3) {
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th3;
                    } finally {
                        PMemShutdown();
                    }
                }
            }
        } catch (Throwable th4) {
            this.mVocabulary = 0;
            try {
                int i6 = this.mRecognizer;
                if (i6 != 0) {
                    SR_RecognizerUnsetup(i6);
                }
                try {
                    int i7 = this.mRecognizer;
                    if (i7 != 0) {
                        SR_RecognizerDestroy(i7);
                    }
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th4;
                    } finally {
                        PMemShutdown();
                    }
                } catch (Throwable th5) {
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th5;
                    } finally {
                        PMemShutdown();
                    }
                }
            } catch (Throwable th6) {
                try {
                    int i8 = this.mRecognizer;
                    if (i8 != 0) {
                        SR_RecognizerDestroy(i8);
                    }
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th6;
                    } finally {
                        PMemShutdown();
                    }
                } catch (Throwable th7) {
                    this.mRecognizer = 0;
                    try {
                        SR_SessionDestroy();
                        throw th7;
                    } finally {
                        PMemShutdown();
                    }
                }
            }
        }
    }

    public void finalize() {
        if (this.mVocabulary == 0 && this.mRecognizer == 0) {
            return;
        }
        destroy();
        throw new IllegalStateException("someone forgot to destroy Recognizer");
    }

    public String getAcousticState() {
        return SR_AcousticStateGet(this.mRecognizer);
    }

    public String getResult(int i2, String str) {
        return SR_RecognizerResultGetValue(this.mRecognizer, i2, str);
    }

    public int getResultCount() {
        return SR_RecognizerResultGetSize(this.mRecognizer);
    }

    public String[] getResultKeys(int i2) {
        return SR_RecognizerResultGetKeyList(this.mRecognizer, i2);
    }

    public int putAudio(byte[] bArr, int i2, int i3, boolean z2) {
        return SR_RecognizerPutAudio(this.mRecognizer, bArr, i2, i3, z2);
    }

    public void resetAcousticState() {
        SR_AcousticStateReset(this.mRecognizer);
    }

    public void setAcousticState(String str) {
        SR_AcousticStateSet(this.mRecognizer, str);
    }

    public void start() {
        SR_RecognizerActivateRule(this.mRecognizer, this.mActiveGrammar.mGrammar, "trash", 1);
        SR_RecognizerStart(this.mRecognizer);
    }

    public void stop() {
        SR_RecognizerStop(this.mRecognizer);
        SR_RecognizerDeactivateRule(this.mRecognizer, this.mActiveGrammar.mGrammar, "trash");
    }

    public void putAudio(InputStream inputStream) throws IOException {
        if (this.mPutAudioBuffer == null) {
            this.mPutAudioBuffer = new byte[512];
        }
        int i2 = inputStream.read(this.mPutAudioBuffer);
        if (i2 == -1) {
            SR_RecognizerPutAudio(this.mRecognizer, this.mPutAudioBuffer, 0, 0, true);
        } else {
            if (i2 == SR_RecognizerPutAudio(this.mRecognizer, this.mPutAudioBuffer, 0, i2, false)) {
                return;
            }
            throw new IOException("SR_RecognizerPutAudio failed nbytes=" + i2);
        }
    }
}
