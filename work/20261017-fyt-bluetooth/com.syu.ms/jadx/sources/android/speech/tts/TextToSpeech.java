package android.speech.tts;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class TextToSpeech {
    public static final String ACTION_TTS_QUEUE_PROCESSING_COMPLETED = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED";
    public static final int ERROR = -1;
    public static final int LANG_AVAILABLE = 0;
    public static final int LANG_COUNTRY_AVAILABLE = 1;
    public static final int LANG_COUNTRY_VAR_AVAILABLE = 2;
    public static final int LANG_MISSING_DATA = -1;
    public static final int LANG_NOT_SUPPORTED = -2;
    public static final int QUEUE_ADD = 1;
    public static final int QUEUE_DESTROY = 2;
    public static final int QUEUE_FLUSH = 0;
    public static final int SUCCESS = 0;
    private static final String TAG = "TextToSpeech";
    private Connection mConnectingServiceConnection;
    private final Context mContext;
    private volatile String mCurrentEngine;
    private final Map<String, Uri> mEarcons;
    private final TtsEngines mEnginesHelper;
    private OnInitListener mInitListener;
    private final String mPackageName;
    private final Bundle mParams;
    private String mRequestedEngine;
    private Connection mServiceConnection;
    private final Object mStartLock;
    private final boolean mUseFallback;
    private volatile UtteranceProgressListener mUtteranceProgressListener;
    private final Map<String, Uri> mUtterances;

    public interface Action<R> {
        R run(ITextToSpeechService iTextToSpeechService);
    }

    public class Connection implements ServiceConnection {
        private final ITextToSpeechCallback.Stub mCallback;
        private boolean mEstablished;
        private SetupConnectionAsyncTask mOnSetupConnectionAsyncTask;
        private ITextToSpeechService mService;

        public class SetupConnectionAsyncTask extends AsyncTask<Void, Void, Integer> {
            private final ComponentName mName;

            public SetupConnectionAsyncTask(ComponentName componentName) {
                this.mName = componentName;
            }

            @Override // android.os.AsyncTask
            public Integer doInBackground(Void... voidArr) {
                synchronized (TextToSpeech.this.mStartLock) {
                    if (isCancelled()) {
                        return null;
                    }
                    try {
                        Connection.this.mService.setCallback(Connection.this.getCallerIdentity(), Connection.this.mCallback);
                        String[] clientDefaultLanguage = Connection.this.mService.getClientDefaultLanguage();
                        TextToSpeech.this.mParams.putString("language", clientDefaultLanguage[0]);
                        TextToSpeech.this.mParams.putString(Engine.KEY_PARAM_COUNTRY, clientDefaultLanguage[1]);
                        TextToSpeech.this.mParams.putString(Engine.KEY_PARAM_VARIANT, clientDefaultLanguage[2]);
                        Log.i(TextToSpeech.TAG, "Set up connection to " + this.mName);
                        return 0;
                    } catch (RemoteException unused) {
                        Log.e(TextToSpeech.TAG, "Error connecting to service, setCallback() failed");
                        return -1;
                    }
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Integer num) {
                synchronized (TextToSpeech.this.mStartLock) {
                    if (Connection.this.mOnSetupConnectionAsyncTask == this) {
                        Connection.this.mOnSetupConnectionAsyncTask = null;
                    }
                    Connection.this.mEstablished = true;
                    TextToSpeech.this.dispatchOnInit(num.intValue());
                }
            }
        }

        private Connection() {
            this.mCallback = new ITextToSpeechCallback.Stub() { // from class: android.speech.tts.TextToSpeech.Connection.1
                @Override // android.speech.tts.ITextToSpeechCallback
                public void onDone(String str) {
                    UtteranceProgressListener utteranceProgressListener = TextToSpeech.this.mUtteranceProgressListener;
                    if (utteranceProgressListener != null) {
                        utteranceProgressListener.onDone(str);
                    }
                }

                @Override // android.speech.tts.ITextToSpeechCallback
                public void onError(String str) {
                    UtteranceProgressListener utteranceProgressListener = TextToSpeech.this.mUtteranceProgressListener;
                    if (utteranceProgressListener != null) {
                        utteranceProgressListener.onError(str);
                    }
                }

                @Override // android.speech.tts.ITextToSpeechCallback
                public void onStart(String str) {
                    UtteranceProgressListener utteranceProgressListener = TextToSpeech.this.mUtteranceProgressListener;
                    if (utteranceProgressListener != null) {
                        utteranceProgressListener.onStart(str);
                    }
                }
            };
        }

        private boolean clearServiceConnection() {
            boolean zCancel;
            synchronized (TextToSpeech.this.mStartLock) {
                SetupConnectionAsyncTask setupConnectionAsyncTask = this.mOnSetupConnectionAsyncTask;
                zCancel = false;
                if (setupConnectionAsyncTask != null) {
                    zCancel = setupConnectionAsyncTask.cancel(false);
                    this.mOnSetupConnectionAsyncTask = null;
                }
                this.mService = null;
                if (TextToSpeech.this.mServiceConnection == this) {
                    TextToSpeech.this.mServiceConnection = null;
                }
            }
            return zCancel;
        }

        public void disconnect() {
            TextToSpeech.this.mContext.unbindService(this);
            clearServiceConnection();
        }

        public IBinder getCallerIdentity() {
            return this.mCallback;
        }

        public boolean isEstablished() {
            return this.mService != null && this.mEstablished;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (TextToSpeech.this.mStartLock) {
                TextToSpeech.this.mConnectingServiceConnection = null;
                Log.i(TextToSpeech.TAG, "Connected to " + componentName);
                SetupConnectionAsyncTask setupConnectionAsyncTask = this.mOnSetupConnectionAsyncTask;
                if (setupConnectionAsyncTask != null) {
                    setupConnectionAsyncTask.cancel(false);
                }
                this.mService = ITextToSpeechService.Stub.asInterface(iBinder);
                TextToSpeech.this.mServiceConnection = this;
                this.mEstablished = false;
                SetupConnectionAsyncTask setupConnectionAsyncTask2 = new SetupConnectionAsyncTask(componentName);
                this.mOnSetupConnectionAsyncTask = setupConnectionAsyncTask2;
                setupConnectionAsyncTask2.execute(new Void[0]);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(TextToSpeech.TAG, "Asked to disconnect from " + componentName);
            if (clearServiceConnection()) {
                TextToSpeech.this.dispatchOnInit(-1);
            }
        }

        public <R> R runAction(Action<R> action, R r2, String str, boolean z2, boolean z3) {
            synchronized (TextToSpeech.this.mStartLock) {
                try {
                    try {
                        if (this.mService == null) {
                            Log.w(TextToSpeech.TAG, str + " failed: not connected to TTS engine");
                            return r2;
                        }
                        if (!z3 || isEstablished()) {
                            return action.run(this.mService);
                        }
                        Log.w(TextToSpeech.TAG, str + " failed: TTS engine connection not fully set up");
                        return r2;
                    } catch (RemoteException e2) {
                        Log.e(TextToSpeech.TAG, str + " failed", e2);
                        if (z2) {
                            disconnect();
                            TextToSpeech.this.initTts();
                        }
                        return r2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public class Engine {
        public static final String ACTION_CHECK_TTS_DATA = "android.speech.tts.engine.CHECK_TTS_DATA";
        public static final String ACTION_GET_SAMPLE_TEXT = "android.speech.tts.engine.GET_SAMPLE_TEXT";
        public static final String ACTION_INSTALL_TTS_DATA = "android.speech.tts.engine.INSTALL_TTS_DATA";
        public static final String ACTION_TTS_DATA_INSTALLED = "android.speech.tts.engine.TTS_DATA_INSTALLED";

        @Deprecated
        public static final int CHECK_VOICE_DATA_BAD_DATA = -1;
        public static final int CHECK_VOICE_DATA_FAIL = 0;

        @Deprecated
        public static final int CHECK_VOICE_DATA_MISSING_DATA = -2;

        @Deprecated
        public static final int CHECK_VOICE_DATA_MISSING_VOLUME = -3;
        public static final int CHECK_VOICE_DATA_PASS = 1;

        @Deprecated
        public static final String DEFAULT_ENGINE = "com.svox.pico";
        public static final float DEFAULT_PAN = 0.0f;
        public static final int DEFAULT_PITCH = 100;
        public static final int DEFAULT_RATE = 100;
        public static final int DEFAULT_STREAM = 3;
        public static final float DEFAULT_VOLUME = 1.0f;
        public static final String EXTRA_AVAILABLE_VOICES = "availableVoices";

        @Deprecated
        public static final String EXTRA_CHECK_VOICE_DATA_FOR = "checkVoiceDataFor";
        public static final String EXTRA_SAMPLE_TEXT = "sampleText";

        @Deprecated
        public static final String EXTRA_TTS_DATA_INSTALLED = "dataInstalled";
        public static final String EXTRA_UNAVAILABLE_VOICES = "unavailableVoices";

        @Deprecated
        public static final String EXTRA_VOICE_DATA_FILES = "dataFiles";

        @Deprecated
        public static final String EXTRA_VOICE_DATA_FILES_INFO = "dataFilesInfo";

        @Deprecated
        public static final String EXTRA_VOICE_DATA_ROOT_DIRECTORY = "dataRoot";
        public static final String INTENT_ACTION_TTS_SERVICE = "android.intent.action.TTS_SERVICE";
        public static final String KEY_FEATURE_EMBEDDED_SYNTHESIS = "embeddedTts";
        public static final String KEY_FEATURE_NETWORK_SYNTHESIS = "networkTts";
        public static final String KEY_PARAM_COUNTRY = "country";
        public static final String KEY_PARAM_ENGINE = "engine";
        public static final String KEY_PARAM_LANGUAGE = "language";
        public static final String KEY_PARAM_PAN = "pan";
        public static final String KEY_PARAM_PITCH = "pitch";
        public static final String KEY_PARAM_RATE = "rate";
        public static final String KEY_PARAM_STREAM = "streamType";
        public static final String KEY_PARAM_UTTERANCE_ID = "utteranceId";
        public static final String KEY_PARAM_VARIANT = "variant";
        public static final String KEY_PARAM_VOLUME = "volume";
        public static final String SERVICE_META_DATA = "android.speech.tts";
        public static final int USE_DEFAULTS = 0;

        public Engine() {
        }
    }

    public static class EngineInfo {
        public int icon;
        public String label;
        public String name;
        public int priority;
        public boolean system;

        public String toString() {
            return "EngineInfo{name=" + this.name + "}";
        }
    }

    public interface OnInitListener {
        void onInit(int i2);
    }

    @Deprecated
    public interface OnUtteranceCompletedListener {
        void onUtteranceCompleted(String str);
    }

    public TextToSpeech(Context context, OnInitListener onInitListener) {
        this(context, onInitListener, null);
    }

    private boolean connectToEngine(String str) {
        Connection connection = new Connection();
        Intent intent = new Intent(Engine.INTENT_ACTION_TTS_SERVICE);
        intent.setPackage(str);
        if (!this.mContext.bindService(intent, connection, 1)) {
            Log.e(TAG, "Failed to bind to " + str);
            return false;
        }
        Log.i(TAG, "Sucessfully bound to " + str);
        this.mConnectingServiceConnection = connection;
        return true;
    }

    private void copyFloatParam(Bundle bundle, HashMap<String, String> map, String str) {
        String str2 = map.get(str);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            bundle.putFloat(str, Float.parseFloat(str2));
        } catch (NumberFormatException unused) {
        }
    }

    private void copyIntParam(Bundle bundle, HashMap<String, String> map, String str) {
        String str2 = map.get(str);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            bundle.putInt(str, Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
        }
    }

    private void copyStringParam(Bundle bundle, HashMap<String, String> map, String str) {
        String str2 = map.get(str);
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnInit(int i2) {
        synchronized (this.mStartLock) {
            OnInitListener onInitListener = this.mInitListener;
            if (onInitListener != null) {
                onInitListener.onInit(i2);
                this.mInitListener = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IBinder getCallerIdentity() {
        return this.mServiceConnection.getCallerIdentity();
    }

    public static int getMaxSpeechInputLength() {
        return 4000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle getParams(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return this.mParams;
        }
        Bundle bundle = new Bundle(this.mParams);
        copyIntParam(bundle, map, Engine.KEY_PARAM_STREAM);
        copyStringParam(bundle, map, Engine.KEY_PARAM_UTTERANCE_ID);
        copyFloatParam(bundle, map, "volume");
        copyFloatParam(bundle, map, Engine.KEY_PARAM_PAN);
        copyStringParam(bundle, map, Engine.KEY_FEATURE_NETWORK_SYNTHESIS);
        copyStringParam(bundle, map, Engine.KEY_FEATURE_EMBEDDED_SYNTHESIS);
        if (!TextUtils.isEmpty(this.mCurrentEngine)) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && key.startsWith(this.mCurrentEngine)) {
                    bundle.putString(key, entry.getValue());
                }
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int initTts() {
        String str = this.mRequestedEngine;
        if (str != null) {
            if (this.mEnginesHelper.isEngineInstalled(str)) {
                if (connectToEngine(this.mRequestedEngine)) {
                    this.mCurrentEngine = this.mRequestedEngine;
                    return 0;
                }
                if (!this.mUseFallback) {
                    this.mCurrentEngine = null;
                    dispatchOnInit(-1);
                    return -1;
                }
            } else if (!this.mUseFallback) {
                Log.i(TAG, "Requested engine not installed: " + this.mRequestedEngine);
                this.mCurrentEngine = null;
                dispatchOnInit(-1);
                return -1;
            }
        }
        String defaultEngine = getDefaultEngine();
        if (defaultEngine != null && !defaultEngine.equals(this.mRequestedEngine) && connectToEngine(defaultEngine)) {
            this.mCurrentEngine = defaultEngine;
            return 0;
        }
        String highestRankedEngineName = this.mEnginesHelper.getHighestRankedEngineName();
        if (highestRankedEngineName != null && !highestRankedEngineName.equals(this.mRequestedEngine) && !highestRankedEngineName.equals(defaultEngine) && connectToEngine(highestRankedEngineName)) {
            this.mCurrentEngine = highestRankedEngineName;
            return 0;
        }
        this.mCurrentEngine = null;
        dispatchOnInit(-1);
        return -1;
    }

    private Uri makeResourceUri(String str, int i2) {
        return new Uri.Builder().scheme(ContentResolver.SCHEME_ANDROID_RESOURCE).encodedAuthority(str).appendEncodedPath(String.valueOf(i2)).build();
    }

    private <R> R runAction(Action<R> action, R r2, String str) {
        return (R) runAction(action, r2, str, true, true);
    }

    private <R> R runActionNoReconnect(Action<R> action, R r2, String str, boolean z2) {
        return (R) runAction(action, r2, str, false, z2);
    }

    public int addEarcon(String str, String str2, int i2) {
        synchronized (this.mStartLock) {
            this.mEarcons.put(str, makeResourceUri(str2, i2));
        }
        return 0;
    }

    public int addSpeech(String str, String str2, int i2) {
        synchronized (this.mStartLock) {
            this.mUtterances.put(str, makeResourceUri(str2, i2));
        }
        return 0;
    }

    public boolean areDefaultsEnforced() {
        return false;
    }

    public String getCurrentEngine() {
        return this.mCurrentEngine;
    }

    public String getDefaultEngine() {
        return this.mEnginesHelper.getDefaultEngine();
    }

    public Locale getDefaultLanguage() {
        return (Locale) runAction(new Action<Locale>() { // from class: android.speech.tts.TextToSpeech.8
            @Override // android.speech.tts.TextToSpeech.Action
            public Locale run(ITextToSpeechService iTextToSpeechService) {
                String[] clientDefaultLanguage = iTextToSpeechService.getClientDefaultLanguage();
                return new Locale(clientDefaultLanguage[0], clientDefaultLanguage[1], clientDefaultLanguage[2]);
            }
        }, null, "getDefaultLanguage");
    }

    public List<EngineInfo> getEngines() {
        return this.mEnginesHelper.getEngines();
    }

    public Set<String> getFeatures(final Locale locale) {
        return (Set) runAction(new Action<Set<String>>() { // from class: android.speech.tts.TextToSpeech.5
            @Override // android.speech.tts.TextToSpeech.Action
            public Set<String> run(ITextToSpeechService iTextToSpeechService) {
                try {
                    String[] featuresForLanguage = iTextToSpeechService.getFeaturesForLanguage(locale.getISO3Language(), locale.getISO3Country(), locale.getVariant());
                    if (featuresForLanguage == null) {
                        return null;
                    }
                    HashSet hashSet = new HashSet();
                    Collections.addAll(hashSet, featuresForLanguage);
                    return hashSet;
                } catch (MissingResourceException e2) {
                    Log.w(TextToSpeech.TAG, "Couldn't retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: " + locale, e2);
                    return null;
                }
            }
        }, null, "getFeatures");
    }

    public Locale getLanguage() {
        return (Locale) runAction(new Action<Locale>() { // from class: android.speech.tts.TextToSpeech.10
            @Override // android.speech.tts.TextToSpeech.Action
            public Locale run(ITextToSpeechService iTextToSpeechService) {
                return new Locale(TextToSpeech.this.mParams.getString("language", ProxyProperties.LOCAL_EXCL_LIST), TextToSpeech.this.mParams.getString(Engine.KEY_PARAM_COUNTRY, ProxyProperties.LOCAL_EXCL_LIST), TextToSpeech.this.mParams.getString(Engine.KEY_PARAM_VARIANT, ProxyProperties.LOCAL_EXCL_LIST));
            }
        }, null, "getLanguage");
    }

    public int isLanguageAvailable(final Locale locale) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                try {
                    try {
                        return Integer.valueOf(iTextToSpeechService.isLanguageAvailable(locale.getISO3Language(), locale.getISO3Country(), locale.getVariant()));
                    } catch (MissingResourceException e2) {
                        Log.w(TextToSpeech.TAG, "Couldn't retrieve ISO 3166 country code for locale: " + locale, e2);
                        return -2;
                    }
                } catch (MissingResourceException e3) {
                    Log.w(TextToSpeech.TAG, "Couldn't retrieve ISO 639-2/T language code for locale: " + locale, e3);
                    return -2;
                }
            }
        }, -2, "isLanguageAvailable")).intValue();
    }

    public boolean isSpeaking() {
        return ((Boolean) runAction(new Action<Boolean>() { // from class: android.speech.tts.TextToSpeech.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Boolean run(ITextToSpeechService iTextToSpeechService) {
                return Boolean.valueOf(iTextToSpeechService.isSpeaking());
            }
        }, Boolean.FALSE, "isSpeaking")).booleanValue();
    }

    public int playEarcon(final String str, final int i2, final HashMap<String, String> map) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                Uri uri = (Uri) TextToSpeech.this.mEarcons.get(str);
                if (uri == null) {
                    return -1;
                }
                return Integer.valueOf(iTextToSpeechService.playAudio(TextToSpeech.this.getCallerIdentity(), uri, i2, TextToSpeech.this.getParams(map)));
            }
        }, -1, "playEarcon")).intValue();
    }

    public int playSilence(final long j2, final int i2, final HashMap<String, String> map) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                return Integer.valueOf(iTextToSpeechService.playSilence(TextToSpeech.this.getCallerIdentity(), j2, i2, TextToSpeech.this.getParams(map)));
            }
        }, -1, "playSilence")).intValue();
    }

    @Deprecated
    public int setEngineByPackageName(String str) {
        this.mRequestedEngine = str;
        return initTts();
    }

    public int setLanguage(final Locale locale) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                Locale locale2 = locale;
                if (locale2 == null) {
                    return -2;
                }
                try {
                    String iSO3Language = locale2.getISO3Language();
                    try {
                        String iSO3Country = locale.getISO3Country();
                        String variant = locale.getVariant();
                        int iLoadLanguage = iTextToSpeechService.loadLanguage(TextToSpeech.this.getCallerIdentity(), iSO3Language, iSO3Country, variant);
                        if (iLoadLanguage >= 0) {
                            if (iLoadLanguage < 2) {
                                if (iLoadLanguage < 1) {
                                    iSO3Country = ProxyProperties.LOCAL_EXCL_LIST;
                                    variant = iSO3Country;
                                } else {
                                    variant = ProxyProperties.LOCAL_EXCL_LIST;
                                }
                            }
                            TextToSpeech.this.mParams.putString("language", iSO3Language);
                            TextToSpeech.this.mParams.putString(Engine.KEY_PARAM_COUNTRY, iSO3Country);
                            TextToSpeech.this.mParams.putString(Engine.KEY_PARAM_VARIANT, variant);
                        }
                        return Integer.valueOf(iLoadLanguage);
                    } catch (MissingResourceException e2) {
                        Log.w(TextToSpeech.TAG, "Couldn't retrieve ISO 3166 country code for locale: " + locale, e2);
                        return -2;
                    }
                } catch (MissingResourceException e3) {
                    Log.w(TextToSpeech.TAG, "Couldn't retrieve ISO 639-2/T language code for locale: " + locale, e3);
                    return -2;
                }
            }
        }, -2, "setLanguage")).intValue();
    }

    @Deprecated
    public int setOnUtteranceCompletedListener(OnUtteranceCompletedListener onUtteranceCompletedListener) {
        this.mUtteranceProgressListener = UtteranceProgressListener.from(onUtteranceCompletedListener);
        return 0;
    }

    public int setOnUtteranceProgressListener(UtteranceProgressListener utteranceProgressListener) {
        this.mUtteranceProgressListener = utteranceProgressListener;
        return 0;
    }

    public int setPitch(float f2) {
        int i2;
        if (f2 <= 0.0f || (i2 = (int) (f2 * 100.0f)) <= 0) {
            return -1;
        }
        synchronized (this.mStartLock) {
            this.mParams.putInt(Engine.KEY_PARAM_PITCH, i2);
        }
        return 0;
    }

    public int setSpeechRate(float f2) {
        int i2;
        if (f2 <= 0.0f || (i2 = (int) (f2 * 100.0f)) <= 0) {
            return -1;
        }
        synchronized (this.mStartLock) {
            this.mParams.putInt(Engine.KEY_PARAM_RATE, i2);
        }
        return 0;
    }

    public void shutdown() {
        synchronized (this.mStartLock) {
            Connection connection = this.mConnectingServiceConnection;
            if (connection == null) {
                runActionNoReconnect(new Action<Void>() { // from class: android.speech.tts.TextToSpeech.1
                    @Override // android.speech.tts.TextToSpeech.Action
                    public Void run(ITextToSpeechService iTextToSpeechService) {
                        iTextToSpeechService.setCallback(TextToSpeech.this.getCallerIdentity(), null);
                        iTextToSpeechService.stop(TextToSpeech.this.getCallerIdentity());
                        TextToSpeech.this.mServiceConnection.disconnect();
                        TextToSpeech.this.mServiceConnection = null;
                        TextToSpeech.this.mCurrentEngine = null;
                        return null;
                    }
                }, null, "shutdown", false);
            } else {
                this.mContext.unbindService(connection);
                this.mConnectingServiceConnection = null;
            }
        }
    }

    public int speak(final String str, final int i2, final HashMap<String, String> map) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                Uri uri = (Uri) TextToSpeech.this.mUtterances.get(str);
                return uri != null ? Integer.valueOf(iTextToSpeechService.playAudio(TextToSpeech.this.getCallerIdentity(), uri, i2, TextToSpeech.this.getParams(map))) : Integer.valueOf(iTextToSpeechService.speak(TextToSpeech.this.getCallerIdentity(), str, i2, TextToSpeech.this.getParams(map)));
            }
        }, -1, "speak")).intValue();
    }

    public int stop() {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                return Integer.valueOf(iTextToSpeechService.stop(TextToSpeech.this.getCallerIdentity()));
            }
        }, -1, "stop")).intValue();
    }

    public int synthesizeToFile(final String str, final HashMap<String, String> map, final String str2) {
        return ((Integer) runAction(new Action<Integer>() { // from class: android.speech.tts.TextToSpeech.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.speech.tts.TextToSpeech.Action
            public Integer run(ITextToSpeechService iTextToSpeechService) {
                try {
                    File file = new File(str2);
                    if (!file.exists() || file.canWrite()) {
                        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 738197504);
                        int iSynthesizeToFileDescriptor = iTextToSpeechService.synthesizeToFileDescriptor(TextToSpeech.this.getCallerIdentity(), str, parcelFileDescriptorOpen, TextToSpeech.this.getParams(map));
                        parcelFileDescriptorOpen.close();
                        return Integer.valueOf(iSynthesizeToFileDescriptor);
                    }
                    Log.e(TextToSpeech.TAG, "Can't write to " + str2);
                    return -1;
                } catch (FileNotFoundException e2) {
                    Log.e(TextToSpeech.TAG, "Opening file " + str2 + " failed", e2);
                    return -1;
                } catch (IOException e3) {
                    Log.e(TextToSpeech.TAG, "Closing file " + str2 + " failed", e3);
                    return -1;
                }
            }
        }, -1, "synthesizeToFile")).intValue();
    }

    public TextToSpeech(Context context, OnInitListener onInitListener, String str) {
        this(context, onInitListener, str, null, true);
    }

    private <R> R runAction(Action<R> action, R r2, String str, boolean z2, boolean z3) {
        synchronized (this.mStartLock) {
            Connection connection = this.mServiceConnection;
            if (connection != null) {
                return (R) connection.runAction(action, r2, str, z2, z3);
            }
            Log.w(TAG, str + " failed: not bound to TTS engine");
            return r2;
        }
    }

    public TextToSpeech(Context context, OnInitListener onInitListener, String str, String str2, boolean z2) {
        this.mStartLock = new Object();
        this.mParams = new Bundle();
        this.mCurrentEngine = null;
        this.mContext = context;
        this.mInitListener = onInitListener;
        this.mRequestedEngine = str;
        this.mUseFallback = z2;
        this.mEarcons = new HashMap();
        this.mUtterances = new HashMap();
        this.mUtteranceProgressListener = null;
        this.mEnginesHelper = new TtsEngines(context);
        if (str2 != null) {
            this.mPackageName = str2;
        } else {
            this.mPackageName = context.getPackageName();
        }
        initTts();
    }

    public int addEarcon(String str, String str2) {
        synchronized (this.mStartLock) {
            this.mEarcons.put(str, Uri.parse(str2));
        }
        return 0;
    }

    public int addSpeech(String str, String str2) {
        synchronized (this.mStartLock) {
            this.mUtterances.put(str, Uri.parse(str2));
        }
        return 0;
    }
}
