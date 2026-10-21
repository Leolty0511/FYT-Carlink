package android.speech.tts;

import android.app.Service;
import android.content.Intent;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TextToSpeechService extends Service {
    private static final boolean DBG = false;
    private static final String SYNTH_THREAD_NAME = "SynthThread";
    private static final String TAG = "TextToSpeechService";
    private AudioPlaybackHandler mAudioPlaybackHandler;
    private CallbackMap mCallbacks;
    private TtsEngines mEngineHelper;
    private String mPackageName;
    private SynthHandler mSynthHandler;
    private final Object mVoicesInfoLock = new Object();
    private final ITextToSpeechService.Stub mBinder = new ITextToSpeechService.Stub() { // from class: android.speech.tts.TextToSpeechService.1
        private boolean checkNonNull(Object... objArr) {
            for (Object obj : objArr) {
                if (obj == null) {
                    return false;
                }
            }
            return true;
        }

        private String intern(String str) {
            return str.intern();
        }

        @Override // android.speech.tts.ITextToSpeechService
        public String[] getClientDefaultLanguage() {
            return TextToSpeechService.this.getSettingsLocale();
        }

        @Override // android.speech.tts.ITextToSpeechService
        public String getDefaultVoiceNameFor(String str, String str2, String str3) {
            if (!checkNonNull(str)) {
                return null;
            }
            int iOnIsLanguageAvailable = TextToSpeechService.this.onIsLanguageAvailable(str, str2, str3);
            if (iOnIsLanguageAvailable == 0 || iOnIsLanguageAvailable == 1 || iOnIsLanguageAvailable == 2) {
                return TextToSpeechService.this.onGetDefaultVoiceNameFor(str, str2, str3);
            }
            return null;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public String[] getFeaturesForLanguage(String str, String str2, String str3) {
            Set<String> setOnGetFeaturesForLanguage = TextToSpeechService.this.onGetFeaturesForLanguage(str, str2, str3);
            if (setOnGetFeaturesForLanguage == null) {
                return new String[0];
            }
            String[] strArr = new String[setOnGetFeaturesForLanguage.size()];
            setOnGetFeaturesForLanguage.toArray(strArr);
            return strArr;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public String[] getLanguage() {
            return TextToSpeechService.this.onGetLanguage();
        }

        @Override // android.speech.tts.ITextToSpeechService
        public List<Voice> getVoices() {
            return TextToSpeechService.this.onGetVoices();
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int isLanguageAvailable(String str, String str2, String str3) {
            if (checkNonNull(str)) {
                return TextToSpeechService.this.onIsLanguageAvailable(str, str2, str3);
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public boolean isSpeaking() {
            return TextToSpeechService.this.mSynthHandler.isSpeaking() || TextToSpeechService.this.mAudioPlaybackHandler.isSpeaking();
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int loadLanguage(IBinder iBinder, String str, String str2, String str3) {
            if (!checkNonNull(str)) {
                return -1;
            }
            int iOnIsLanguageAvailable = TextToSpeechService.this.onIsLanguageAvailable(str, str2, str3);
            if ((iOnIsLanguageAvailable == 0 || iOnIsLanguageAvailable == 1 || iOnIsLanguageAvailable == 2) && TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(1, TextToSpeechService.this.new LoadLanguageItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), str, str2, str3)) != 0) {
                return -1;
            }
            return iOnIsLanguageAvailable;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int loadVoice(IBinder iBinder, String str) {
            if (!checkNonNull(str)) {
                return -1;
            }
            int iOnIsValidVoiceName = TextToSpeechService.this.onIsValidVoiceName(str);
            if (iOnIsValidVoiceName != 0 || TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(1, TextToSpeechService.this.new LoadVoiceItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), str)) == 0) {
                return iOnIsValidVoiceName;
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int playAudio(IBinder iBinder, Uri uri, int i2, Bundle bundle, String str) {
            if (checkNonNull(iBinder, uri, bundle)) {
                return TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(i2, TextToSpeechService.this.new AudioSpeechItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), bundle, str, uri));
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int playSilence(IBinder iBinder, long j2, int i2, String str) {
            if (checkNonNull(iBinder)) {
                return TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(i2, TextToSpeechService.this.new SilenceSpeechItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), str, j2));
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public void setCallback(IBinder iBinder, ITextToSpeechCallback iTextToSpeechCallback) {
            if (checkNonNull(iBinder)) {
                TextToSpeechService.this.mCallbacks.setCallback(iBinder, iTextToSpeechCallback);
            }
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int speak(IBinder iBinder, CharSequence charSequence, int i2, Bundle bundle, String str) {
            if (checkNonNull(iBinder, charSequence, bundle)) {
                return TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(i2, TextToSpeechService.this.new SynthesisSpeechItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), bundle, str, charSequence));
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int stop(IBinder iBinder) {
            if (checkNonNull(iBinder)) {
                return TextToSpeechService.this.mSynthHandler.stopForApp(iBinder);
            }
            return -1;
        }

        @Override // android.speech.tts.ITextToSpeechService
        public int synthesizeToFileDescriptor(IBinder iBinder, CharSequence charSequence, ParcelFileDescriptor parcelFileDescriptor, Bundle bundle, String str) {
            if (checkNonNull(iBinder, charSequence, parcelFileDescriptor, bundle)) {
                return TextToSpeechService.this.mSynthHandler.enqueueSpeechItem(1, TextToSpeechService.this.new SynthesisToFileOutputStreamSpeechItem(iBinder, Binder.getCallingUid(), Binder.getCallingPid(), bundle, str, charSequence, new ParcelFileDescriptor.AutoCloseOutputStream(ParcelFileDescriptor.adoptFd(parcelFileDescriptor.detachFd()))));
            }
            return -1;
        }
    };

    public class AudioSpeechItem extends UtteranceSpeechItemWithParams {
        private final AudioPlaybackQueueItem mItem;

        public AudioSpeechItem(Object obj, int i2, int i3, Bundle bundle, String str, Uri uri) {
            super(obj, i2, i3, bundle, str);
            this.mItem = new AudioPlaybackQueueItem(this, getCallerIdentity(), TextToSpeechService.this, uri, getAudioParams());
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceSpeechItemWithParams
        public AudioOutputParams getAudioParams() {
            return AudioOutputParams.createFromParamsBundle(this.mParams, false);
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceSpeechItemWithParams, android.speech.tts.TextToSpeechService.UtteranceSpeechItem
        public String getUtteranceId() {
            return getStringParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_UTTERANCE_ID, null);
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public boolean isValid() {
            return true;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            TextToSpeechService.this.mAudioPlaybackHandler.enqueue(this.mItem);
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void stopImpl() {
        }
    }

    public class CallbackMap extends RemoteCallbackList<ITextToSpeechCallback> {
        private final HashMap<IBinder, ITextToSpeechCallback> mCallerToCallback;

        private CallbackMap() {
            this.mCallerToCallback = new HashMap<>();
        }

        private ITextToSpeechCallback getCallbackFor(Object obj) {
            ITextToSpeechCallback iTextToSpeechCallback;
            IBinder iBinder = (IBinder) obj;
            synchronized (this.mCallerToCallback) {
                iTextToSpeechCallback = this.mCallerToCallback.get(iBinder);
            }
            return iTextToSpeechCallback;
        }

        public void dispatchOnAudioAvailable(Object obj, String str, byte[] bArr) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onAudioAvailable(str, bArr);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback dispatchOnAudioAvailable(String, byte[]) failed: " + e2);
            }
        }

        public void dispatchOnBeginSynthesis(Object obj, String str, int i2, int i3, int i4) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onBeginSynthesis(str, i2, i3, i4);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback dispatchOnBeginSynthesis(String, int, int, int) failed: " + e2);
            }
        }

        public void dispatchOnError(Object obj, String str, int i2) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onError(str, i2);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback onError failed: " + e2);
            }
        }

        public void dispatchOnRangeStart(Object obj, String str, int i2, int i3, int i4) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onRangeStart(str, i2, i3, i4);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback dispatchOnRangeStart(String, int, int, int) failed: " + e2);
            }
        }

        public void dispatchOnStart(Object obj, String str) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onStart(str);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback onStart failed: " + e2);
            }
        }

        public void dispatchOnStop(Object obj, String str, boolean z2) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onStop(str, z2);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback onStop failed: " + e2);
            }
        }

        public void dispatchOnSuccess(Object obj, String str) {
            ITextToSpeechCallback callbackFor = getCallbackFor(obj);
            if (callbackFor == null) {
                return;
            }
            try {
                callbackFor.onSuccess(str);
            } catch (RemoteException e2) {
                Log.e(TextToSpeechService.TAG, "Callback onDone failed: " + e2);
            }
        }

        @Override // android.os.RemoteCallbackList
        public void kill() {
            synchronized (this.mCallerToCallback) {
                this.mCallerToCallback.clear();
                super.kill();
            }
        }

        public void setCallback(IBinder iBinder, ITextToSpeechCallback iTextToSpeechCallback) {
            ITextToSpeechCallback iTextToSpeechCallbackRemove;
            synchronized (this.mCallerToCallback) {
                try {
                    if (iTextToSpeechCallback != null) {
                        register(iTextToSpeechCallback, iBinder);
                        iTextToSpeechCallbackRemove = this.mCallerToCallback.put(iBinder, iTextToSpeechCallback);
                    } else {
                        iTextToSpeechCallbackRemove = this.mCallerToCallback.remove(iBinder);
                    }
                    if (iTextToSpeechCallbackRemove != null && iTextToSpeechCallbackRemove != iTextToSpeechCallback) {
                        unregister(iTextToSpeechCallbackRemove);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(ITextToSpeechCallback iTextToSpeechCallback, Object obj) {
            IBinder iBinder = (IBinder) obj;
            synchronized (this.mCallerToCallback) {
                this.mCallerToCallback.remove(iBinder);
            }
        }
    }

    public class LoadLanguageItem extends SpeechItem {
        private final String mCountry;
        private final String mLanguage;
        private final String mVariant;

        public LoadLanguageItem(Object obj, int i2, int i3, String str, String str2, String str3) {
            super(obj, i2, i3);
            this.mLanguage = str;
            this.mCountry = str2;
            this.mVariant = str3;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public boolean isValid() {
            return true;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            TextToSpeechService.this.onLoadLanguage(this.mLanguage, this.mCountry, this.mVariant);
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void stopImpl() {
        }
    }

    public class LoadVoiceItem extends SpeechItem {
        private final String mVoiceName;

        public LoadVoiceItem(Object obj, int i2, int i3, String str) {
            super(obj, i2, i3);
            this.mVoiceName = str;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public boolean isValid() {
            return true;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            TextToSpeechService.this.onLoadVoice(this.mVoiceName);
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void stopImpl() {
        }
    }

    public class SilenceSpeechItem extends UtteranceSpeechItem {
        private final long mDuration;
        private final String mUtteranceId;

        public SilenceSpeechItem(Object obj, int i2, int i3, String str, long j2) {
            super(obj, i2, i3);
            this.mUtteranceId = str;
            this.mDuration = j2;
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceSpeechItem
        public String getUtteranceId() {
            return this.mUtteranceId;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public boolean isValid() {
            return true;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            TextToSpeechService.this.mAudioPlaybackHandler.enqueue(new SilencePlaybackQueueItem(this, getCallerIdentity(), this.mDuration));
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void stopImpl() {
        }
    }

    public abstract class SpeechItem {
        private final Object mCallerIdentity;
        private final int mCallerPid;
        private final int mCallerUid;
        private boolean mStarted = false;
        private boolean mStopped = false;

        public SpeechItem(Object obj, int i2, int i3) {
            this.mCallerIdentity = obj;
            this.mCallerUid = i2;
            this.mCallerPid = i3;
        }

        public Object getCallerIdentity() {
            return this.mCallerIdentity;
        }

        public int getCallerPid() {
            return this.mCallerPid;
        }

        public int getCallerUid() {
            return this.mCallerUid;
        }

        public synchronized boolean isStarted() {
            return this.mStarted;
        }

        public synchronized boolean isStopped() {
            return this.mStopped;
        }

        public abstract boolean isValid();

        public void play() {
            synchronized (this) {
                if (this.mStarted) {
                    throw new IllegalStateException("play() called twice");
                }
                this.mStarted = true;
            }
            playImpl();
        }

        public abstract void playImpl();

        public void stop() {
            synchronized (this) {
                if (this.mStopped) {
                    throw new IllegalStateException("stop() called twice");
                }
                this.mStopped = true;
            }
            stopImpl();
        }

        public abstract void stopImpl();
    }

    public class SynthHandler extends Handler {
        private SpeechItem mCurrentSpeechItem;
        private int mFlushAll;
        private List<Object> mFlushedObjects;

        public SynthHandler(Looper looper) {
            super(looper);
            this.mCurrentSpeechItem = null;
            this.mFlushedObjects = new ArrayList();
            this.mFlushAll = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endFlushingSpeechItems(Object obj) {
            synchronized (this.mFlushedObjects) {
                try {
                    if (obj == null) {
                        this.mFlushAll--;
                    } else {
                        this.mFlushedObjects.remove(obj);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private synchronized SpeechItem getCurrentSpeechItem() {
            return this.mCurrentSpeechItem;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isFlushed(SpeechItem speechItem) {
            boolean z2;
            synchronized (this.mFlushedObjects) {
                z2 = this.mFlushAll > 0 || this.mFlushedObjects.contains(speechItem.getCallerIdentity());
            }
            return z2;
        }

        private synchronized SpeechItem maybeRemoveCurrentSpeechItem(Object obj) {
            SpeechItem speechItem = this.mCurrentSpeechItem;
            if (speechItem == null || speechItem.getCallerIdentity() != obj) {
                return null;
            }
            SpeechItem speechItem2 = this.mCurrentSpeechItem;
            this.mCurrentSpeechItem = null;
            return speechItem2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized SpeechItem setCurrentSpeechItem(SpeechItem speechItem) {
            SpeechItem speechItem2;
            speechItem2 = this.mCurrentSpeechItem;
            this.mCurrentSpeechItem = speechItem;
            return speechItem2;
        }

        private void startFlushingSpeechItems(Object obj) {
            synchronized (this.mFlushedObjects) {
                try {
                    if (obj == null) {
                        this.mFlushAll++;
                    } else {
                        this.mFlushedObjects.add(obj);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int enqueueSpeechItem(int i2, final SpeechItem speechItem) {
            UtteranceProgressDispatcher utteranceProgressDispatcher = speechItem instanceof UtteranceProgressDispatcher ? (UtteranceProgressDispatcher) speechItem : null;
            if (!speechItem.isValid()) {
                if (utteranceProgressDispatcher != null) {
                    utteranceProgressDispatcher.dispatchOnError(-8);
                }
                return -1;
            }
            if (i2 == 0) {
                stopForApp(speechItem.getCallerIdentity());
            } else if (i2 == 2) {
                stopAll();
            }
            Message messageObtain = Message.obtain(this, new Runnable() { // from class: android.speech.tts.TextToSpeechService.SynthHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SynthHandler.this.isFlushed(speechItem)) {
                        speechItem.stop();
                        return;
                    }
                    SynthHandler.this.setCurrentSpeechItem(speechItem);
                    speechItem.play();
                    SynthHandler.this.setCurrentSpeechItem(null);
                }
            });
            messageObtain.obj = speechItem.getCallerIdentity();
            if (sendMessage(messageObtain)) {
                return 0;
            }
            Log.w(TextToSpeechService.TAG, "SynthThread has quit");
            if (utteranceProgressDispatcher != null) {
                utteranceProgressDispatcher.dispatchOnError(-4);
            }
            return -1;
        }

        public boolean isSpeaking() {
            return getCurrentSpeechItem() != null;
        }

        public void quit() {
            getLooper().quit();
            SpeechItem currentSpeechItem = setCurrentSpeechItem(null);
            if (currentSpeechItem != null) {
                currentSpeechItem.stop();
            }
        }

        public int stopAll() {
            startFlushingSpeechItems(null);
            SpeechItem currentSpeechItem = setCurrentSpeechItem(null);
            if (currentSpeechItem != null) {
                currentSpeechItem.stop();
            }
            TextToSpeechService.this.mAudioPlaybackHandler.stop();
            sendMessage(Message.obtain(this, new Runnable() { // from class: android.speech.tts.TextToSpeechService.SynthHandler.3
                @Override // java.lang.Runnable
                public void run() {
                    SynthHandler.this.endFlushingSpeechItems(null);
                }
            }));
            return 0;
        }

        public int stopForApp(final Object obj) {
            if (obj == null) {
                return -1;
            }
            startFlushingSpeechItems(obj);
            SpeechItem speechItemMaybeRemoveCurrentSpeechItem = maybeRemoveCurrentSpeechItem(obj);
            if (speechItemMaybeRemoveCurrentSpeechItem != null) {
                speechItemMaybeRemoveCurrentSpeechItem.stop();
            }
            TextToSpeechService.this.mAudioPlaybackHandler.stopForApp(obj);
            sendMessage(Message.obtain(this, new Runnable() { // from class: android.speech.tts.TextToSpeechService.SynthHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    SynthHandler.this.endFlushingSpeechItems(obj);
                }
            }));
            return 0;
        }
    }

    public class SynthThread extends HandlerThread implements MessageQueue.IdleHandler {
        private boolean mFirstIdle;

        public SynthThread() {
            super(TextToSpeechService.SYNTH_THREAD_NAME, 0);
            this.mFirstIdle = true;
        }

        private void broadcastTtsQueueProcessingCompleted() {
            TextToSpeechService.this.sendBroadcast(new Intent(TextToSpeech.ACTION_TTS_QUEUE_PROCESSING_COMPLETED));
        }

        @Override // android.os.HandlerThread
        public void onLooperPrepared() {
            getLooper().getQueue().addIdleHandler(this);
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            if (this.mFirstIdle) {
                this.mFirstIdle = false;
                return true;
            }
            broadcastTtsQueueProcessingCompleted();
            return true;
        }
    }

    public class SynthesisSpeechItem extends UtteranceSpeechItemWithParams {
        private final int mCallerUid;
        private final String[] mDefaultLocale;
        private final EventLogger mEventLogger;
        private AbstractSynthesisCallback mSynthesisCallback;
        private final SynthesisRequest mSynthesisRequest;
        private final CharSequence mText;

        public SynthesisSpeechItem(Object obj, int i2, int i3, Bundle bundle, String str, CharSequence charSequence) {
            super(obj, i2, i3, bundle, str);
            this.mText = charSequence;
            this.mCallerUid = i2;
            SynthesisRequest synthesisRequest = new SynthesisRequest(charSequence, this.mParams);
            this.mSynthesisRequest = synthesisRequest;
            this.mDefaultLocale = TextToSpeechService.this.getSettingsLocale();
            setRequestParams(synthesisRequest);
            this.mEventLogger = new EventLogger(synthesisRequest, i2, i3, TextToSpeechService.this.mPackageName);
        }

        private String getCountry() {
            return !hasLanguage() ? this.mDefaultLocale[1] : getStringParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_COUNTRY, "");
        }

        private String getVariant() {
            return !hasLanguage() ? this.mDefaultLocale[2] : getStringParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_VARIANT, "");
        }

        private void setRequestParams(SynthesisRequest synthesisRequest) {
            String voiceName = getVoiceName();
            synthesisRequest.setLanguage(getLanguage(), getCountry(), getVariant());
            if (!TextUtils.isEmpty(voiceName)) {
                synthesisRequest.setVoiceName(getVoiceName());
            }
            synthesisRequest.setSpeechRate(getSpeechRate());
            synthesisRequest.setCallerUid(this.mCallerUid);
            synthesisRequest.setPitch(getPitch());
        }

        public AbstractSynthesisCallback createSynthesisCallback() {
            return new PlaybackSynthesisCallback(getAudioParams(), TextToSpeechService.this.mAudioPlaybackHandler, this, getCallerIdentity(), this.mEventLogger, false);
        }

        public String getLanguage() {
            return getStringParam(this.mParams, "language", this.mDefaultLocale[0]);
        }

        public CharSequence getText() {
            return this.mText;
        }

        public String getVoiceName() {
            return getStringParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_VOICE_NAME, "");
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public boolean isValid() {
            CharSequence charSequence = this.mText;
            if (charSequence == null) {
                Log.e(TextToSpeechService.TAG, "null synthesis text");
                return false;
            }
            if (charSequence.length() < TextToSpeech.getMaxSpeechInputLength()) {
                return true;
            }
            Log.w(TextToSpeechService.TAG, "Text too long: " + this.mText.length() + " chars");
            return false;
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            this.mEventLogger.onRequestProcessingStart();
            synchronized (this) {
                if (isStopped()) {
                    return;
                }
                AbstractSynthesisCallback abstractSynthesisCallbackCreateSynthesisCallback = createSynthesisCallback();
                this.mSynthesisCallback = abstractSynthesisCallbackCreateSynthesisCallback;
                TextToSpeechService.this.onSynthesizeText(this.mSynthesisRequest, abstractSynthesisCallbackCreateSynthesisCallback);
                if (!abstractSynthesisCallbackCreateSynthesisCallback.hasStarted() || abstractSynthesisCallbackCreateSynthesisCallback.hasFinished()) {
                    return;
                }
                abstractSynthesisCallbackCreateSynthesisCallback.done();
            }
        }

        @Override // android.speech.tts.TextToSpeechService.SpeechItem
        public void stopImpl() {
            AbstractSynthesisCallback abstractSynthesisCallback;
            synchronized (this) {
                abstractSynthesisCallback = this.mSynthesisCallback;
            }
            if (abstractSynthesisCallback == null) {
                dispatchOnStop();
            } else {
                abstractSynthesisCallback.stop();
                TextToSpeechService.this.onStop();
            }
        }
    }

    public class SynthesisToFileOutputStreamSpeechItem extends SynthesisSpeechItem {
        private final FileOutputStream mFileOutputStream;

        public SynthesisToFileOutputStreamSpeechItem(Object obj, int i2, int i3, Bundle bundle, String str, CharSequence charSequence, FileOutputStream fileOutputStream) {
            super(obj, i2, i3, bundle, str, charSequence);
            this.mFileOutputStream = fileOutputStream;
        }

        @Override // android.speech.tts.TextToSpeechService.SynthesisSpeechItem
        public AbstractSynthesisCallback createSynthesisCallback() {
            return new FileSynthesisCallback(this.mFileOutputStream.getChannel(), this, false);
        }

        @Override // android.speech.tts.TextToSpeechService.SynthesisSpeechItem, android.speech.tts.TextToSpeechService.SpeechItem
        public void playImpl() {
            dispatchOnStart();
            super.playImpl();
            try {
                this.mFileOutputStream.close();
            } catch (IOException e2) {
                Log.w(TextToSpeechService.TAG, "Failed to close output file", e2);
            }
        }
    }

    public interface UtteranceProgressDispatcher {
        void dispatchOnAudioAvailable(byte[] bArr);

        void dispatchOnBeginSynthesis(int i2, int i3, int i4);

        void dispatchOnError(int i2);

        void dispatchOnRangeStart(int i2, int i3, int i4);

        void dispatchOnStart();

        void dispatchOnStop();

        void dispatchOnSuccess();
    }

    public abstract class UtteranceSpeechItem extends SpeechItem implements UtteranceProgressDispatcher {
        public UtteranceSpeechItem(Object obj, int i2, int i3) {
            super(obj, i2, i3);
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnAudioAvailable(byte[] bArr) {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnAudioAvailable(getCallerIdentity(), utteranceId, bArr);
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnBeginSynthesis(int i2, int i3, int i4) {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnBeginSynthesis(getCallerIdentity(), utteranceId, i2, i3, i4);
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnError(int i2) {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnError(getCallerIdentity(), utteranceId, i2);
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnRangeStart(int i2, int i3, int i4) {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnRangeStart(getCallerIdentity(), utteranceId, i2, i3, i4);
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnStart() {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnStart(getCallerIdentity(), utteranceId);
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnStop() {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnStop(getCallerIdentity(), utteranceId, isStarted());
            }
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceProgressDispatcher
        public void dispatchOnSuccess() {
            String utteranceId = getUtteranceId();
            if (utteranceId != null) {
                TextToSpeechService.this.mCallbacks.dispatchOnSuccess(getCallerIdentity(), utteranceId);
            }
        }

        public float getFloatParam(Bundle bundle, String str, float f2) {
            return bundle == null ? f2 : bundle.getFloat(str, f2);
        }

        public int getIntParam(Bundle bundle, String str, int i2) {
            return bundle == null ? i2 : bundle.getInt(str, i2);
        }

        public String getStringParam(Bundle bundle, String str, String str2) {
            return bundle == null ? str2 : bundle.getString(str, str2);
        }

        public abstract String getUtteranceId();
    }

    public abstract class UtteranceSpeechItemWithParams extends UtteranceSpeechItem {
        protected final Bundle mParams;
        protected final String mUtteranceId;

        public UtteranceSpeechItemWithParams(Object obj, int i2, int i3, Bundle bundle, String str) {
            super(obj, i2, i3);
            this.mParams = bundle;
            this.mUtteranceId = str;
        }

        public AudioOutputParams getAudioParams() {
            return AudioOutputParams.createFromParamsBundle(this.mParams, true);
        }

        public int getPitch() {
            return getIntParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_PITCH, TextToSpeechService.this.getDefaultPitch());
        }

        public int getSpeechRate() {
            return getIntParam(this.mParams, TextToSpeech.Engine.KEY_PARAM_RATE, TextToSpeechService.this.getDefaultSpeechRate());
        }

        @Override // android.speech.tts.TextToSpeechService.UtteranceSpeechItem
        public String getUtteranceId() {
            return this.mUtteranceId;
        }

        public boolean hasLanguage() {
            return !TextUtils.isEmpty(getStringParam(this.mParams, "language", null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDefaultPitch() {
        return getSecureSettingInt(Settings.Secure.TTS_DEFAULT_PITCH, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDefaultSpeechRate() {
        return getSecureSettingInt(Settings.Secure.TTS_DEFAULT_RATE, 100);
    }

    private int getExpectedLanguageAvailableStatus(Locale locale) {
        if (locale.getVariant().isEmpty()) {
            return locale.getCountry().isEmpty() ? 0 : 1;
        }
        return 2;
    }

    private int getSecureSettingInt(String str, int i2) {
        return Settings.Secure.getInt(getContentResolver(), str, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getSettingsLocale() {
        return TtsEngines.toOldLocaleStringFormat(this.mEngineHelper.getLocalePrefForEngine(this.mPackageName));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (TextToSpeech.Engine.INTENT_ACTION_TTS_SERVICE.equals(intent.getAction())) {
            return this.mBinder;
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        SynthThread synthThread = new SynthThread();
        synthThread.start();
        this.mSynthHandler = new SynthHandler(synthThread.getLooper());
        AudioPlaybackHandler audioPlaybackHandler = new AudioPlaybackHandler();
        this.mAudioPlaybackHandler = audioPlaybackHandler;
        audioPlaybackHandler.start();
        this.mEngineHelper = new TtsEngines(this);
        this.mCallbacks = new CallbackMap();
        this.mPackageName = getApplicationInfo().packageName;
        String[] settingsLocale = getSettingsLocale();
        onLoadLanguage(settingsLocale[0], settingsLocale[1], settingsLocale[2]);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mSynthHandler.quit();
        this.mAudioPlaybackHandler.quit();
        this.mCallbacks.kill();
        super.onDestroy();
    }

    public String onGetDefaultVoiceNameFor(String str, String str2, String str3) {
        Locale locale;
        int iOnIsLanguageAvailable = onIsLanguageAvailable(str, str2, str3);
        if (iOnIsLanguageAvailable == 0) {
            locale = new Locale(str);
        } else if (iOnIsLanguageAvailable == 1) {
            locale = new Locale(str, str2);
        } else {
            if (iOnIsLanguageAvailable != 2) {
                return null;
            }
            locale = new Locale(str, str2, str3);
        }
        String languageTag = TtsEngines.normalizeTTSLocale(locale).toLanguageTag();
        if (onIsValidVoiceName(languageTag) == 0) {
            return languageTag;
        }
        return null;
    }

    public Set<String> onGetFeaturesForLanguage(String str, String str2, String str3) {
        return new HashSet();
    }

    public abstract String[] onGetLanguage();

    public List<Voice> onGetVoices() {
        ArrayList arrayList = new ArrayList();
        for (Locale locale : Locale.getAvailableLocales()) {
            try {
                if (onIsLanguageAvailable(locale.getISO3Language(), locale.getISO3Country(), locale.getVariant()) == getExpectedLanguageAvailableStatus(locale)) {
                    arrayList.add(new Voice(onGetDefaultVoiceNameFor(locale.getISO3Language(), locale.getISO3Country(), locale.getVariant()), locale, 300, 300, false, onGetFeaturesForLanguage(locale.getISO3Language(), locale.getISO3Country(), locale.getVariant())));
                }
            } catch (MissingResourceException unused) {
            }
        }
        return arrayList;
    }

    public abstract int onIsLanguageAvailable(String str, String str2, String str3);

    public int onIsValidVoiceName(String str) {
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        if (localeForLanguageTag == null) {
            return -1;
        }
        try {
            return onIsLanguageAvailable(localeForLanguageTag.getISO3Language(), localeForLanguageTag.getISO3Country(), localeForLanguageTag.getVariant()) != getExpectedLanguageAvailableStatus(localeForLanguageTag) ? -1 : 0;
        } catch (MissingResourceException unused) {
            return -1;
        }
    }

    public abstract int onLoadLanguage(String str, String str2, String str3);

    public int onLoadVoice(String str) {
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        if (localeForLanguageTag == null) {
            return -1;
        }
        try {
            if (onIsLanguageAvailable(localeForLanguageTag.getISO3Language(), localeForLanguageTag.getISO3Country(), localeForLanguageTag.getVariant()) != getExpectedLanguageAvailableStatus(localeForLanguageTag)) {
                return -1;
            }
            onLoadLanguage(localeForLanguageTag.getISO3Language(), localeForLanguageTag.getISO3Country(), localeForLanguageTag.getVariant());
            return 0;
        } catch (MissingResourceException unused) {
            return -1;
        }
    }

    public abstract void onStop();

    public abstract void onSynthesizeText(SynthesisRequest synthesisRequest, SynthesisCallback synthesisCallback);

    public static class AudioOutputParams {
        public final AudioAttributes mAudioAttributes;
        public final float mPan;
        public final int mSessionId;
        public final float mVolume;

        public AudioOutputParams() {
            this.mSessionId = 0;
            this.mVolume = 1.0f;
            this.mPan = 0.0f;
            this.mAudioAttributes = null;
        }

        public static AudioOutputParams createFromParamsBundle(Bundle bundle, boolean z2) {
            if (bundle == null) {
                return new AudioOutputParams();
            }
            AudioAttributes audioAttributesBuild = (AudioAttributes) bundle.getParcelable(TextToSpeech.Engine.KEY_PARAM_AUDIO_ATTRIBUTES);
            if (audioAttributesBuild == null) {
                audioAttributesBuild = new AudioAttributes.Builder().setLegacyStreamType(bundle.getInt(TextToSpeech.Engine.KEY_PARAM_STREAM, 3)).setContentType(z2 ? 1 : 4).build();
            }
            return new AudioOutputParams(bundle.getInt(TextToSpeech.Engine.KEY_PARAM_SESSION_ID, 0), bundle.getFloat("volume", 1.0f), bundle.getFloat(TextToSpeech.Engine.KEY_PARAM_PAN, 0.0f), audioAttributesBuild);
        }

        public AudioOutputParams(int i2, float f2, float f3, AudioAttributes audioAttributes) {
            this.mSessionId = i2;
            this.mVolume = f2;
            this.mPan = f3;
            this.mAudioAttributes = audioAttributes;
        }
    }
}
