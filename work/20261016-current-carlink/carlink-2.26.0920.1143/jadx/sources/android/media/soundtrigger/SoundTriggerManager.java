package android.media.soundtrigger;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.soundtrigger.SoundTrigger;
import android.os.Handler;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Slog;
import com.android.internal.app.ISoundTriggerService;
import java.util.HashMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class SoundTriggerManager {
    private static final boolean DBG = false;
    public static final String EXTRA_MESSAGE_TYPE = "android.media.soundtrigger.MESSAGE_TYPE";
    public static final String EXTRA_RECOGNITION_EVENT = "android.media.soundtrigger.RECOGNITION_EVENT";
    public static final String EXTRA_STATUS = "android.media.soundtrigger.STATUS";
    public static final int FLAG_MESSAGE_TYPE_RECOGNITION_ERROR = 1;
    public static final int FLAG_MESSAGE_TYPE_RECOGNITION_EVENT = 0;
    public static final int FLAG_MESSAGE_TYPE_RECOGNITION_PAUSED = 2;
    public static final int FLAG_MESSAGE_TYPE_RECOGNITION_RESUMED = 3;
    public static final int FLAG_MESSAGE_TYPE_UNKNOWN = -1;
    private static final String TAG = "SoundTriggerManager";
    private final Context mContext;
    private final HashMap<UUID, SoundTriggerDetector> mReceiverInstanceMap = new HashMap<>();
    private final ISoundTriggerService mSoundTriggerService;

    public static class Model {
        private SoundTrigger.GenericSoundModel mGenericSoundModel;

        public Model(SoundTrigger.GenericSoundModel genericSoundModel) {
            this.mGenericSoundModel = genericSoundModel;
        }

        public static Model create(UUID uuid, UUID uuid2, byte[] bArr) {
            return new Model(new SoundTrigger.GenericSoundModel(uuid, uuid2, bArr));
        }

        public SoundTrigger.GenericSoundModel getGenericSoundModel() {
            return this.mGenericSoundModel;
        }

        public byte[] getModelData() {
            return this.mGenericSoundModel.data;
        }

        public UUID getModelUuid() {
            return this.mGenericSoundModel.uuid;
        }

        public UUID getVendorUuid() {
            return this.mGenericSoundModel.vendorUuid;
        }
    }

    public SoundTriggerManager(Context context, ISoundTriggerService iSoundTriggerService) {
        this.mSoundTriggerService = iSoundTriggerService;
        this.mContext = context;
    }

    public SoundTriggerDetector createSoundTriggerDetector(UUID uuid, SoundTriggerDetector.Callback callback, Handler handler) {
        if (uuid == null) {
            return null;
        }
        this.mReceiverInstanceMap.get(uuid);
        SoundTriggerDetector soundTriggerDetector = new SoundTriggerDetector(this.mSoundTriggerService, uuid, callback, handler);
        this.mReceiverInstanceMap.put(uuid, soundTriggerDetector);
        return soundTriggerDetector;
    }

    public void deleteModel(UUID uuid) {
        try {
            this.mSoundTriggerService.deleteSoundModel(new ParcelUuid(uuid));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Model getModel(UUID uuid) {
        try {
            return new Model(this.mSoundTriggerService.getSoundModel(new ParcelUuid(uuid)));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isRecognitionActive(UUID uuid) {
        if (uuid == null) {
            return false;
        }
        try {
            return this.mSoundTriggerService.isRecognitionActive(new ParcelUuid(uuid));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int loadSoundModel(SoundTrigger.SoundModel soundModel) {
        if (soundModel == null) {
            return Integer.MIN_VALUE;
        }
        try {
            int i2 = soundModel.type;
            if (i2 == 0) {
                return this.mSoundTriggerService.loadKeyphraseSoundModel((SoundTrigger.KeyphraseSoundModel) soundModel);
            }
            if (i2 == 1) {
                return this.mSoundTriggerService.loadGenericSoundModel((SoundTrigger.GenericSoundModel) soundModel);
            }
            Slog.e(TAG, "Unkown model type");
            return Integer.MIN_VALUE;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int startRecognition(UUID uuid, PendingIntent pendingIntent, SoundTrigger.RecognitionConfig recognitionConfig) {
        if (uuid == null || pendingIntent == null || recognitionConfig == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return this.mSoundTriggerService.startRecognitionForIntent(new ParcelUuid(uuid), pendingIntent, recognitionConfig);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int stopRecognition(UUID uuid) {
        if (uuid == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return this.mSoundTriggerService.stopRecognitionForIntent(new ParcelUuid(uuid));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int unloadSoundModel(UUID uuid) {
        if (uuid == null) {
            return Integer.MIN_VALUE;
        }
        try {
            return this.mSoundTriggerService.unloadSoundModel(new ParcelUuid(uuid));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void updateModel(Model model) {
        try {
            this.mSoundTriggerService.updateSoundModel(model.getGenericSoundModel());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
