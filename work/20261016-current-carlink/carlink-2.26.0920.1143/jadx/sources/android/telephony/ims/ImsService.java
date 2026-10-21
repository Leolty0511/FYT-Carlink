package android.telephony.ims;

import android.Manifest;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Message;
import android.telephony.ims.feature.ImsFeature;
import android.telephony.ims.feature.MMTelFeature;
import android.telephony.ims.feature.RcsFeature;
import android.util.Log;
import android.util.SparseArray;
import com.android.ims.ImsCallProfile;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsFeatureStatusCallback;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsServiceController;
import com.android.ims.internal.IImsUt;

/* JADX INFO: loaded from: classes2.dex */
public class ImsService extends Service {
    private static final String LOG_TAG = "ImsService";
    public static final String SERVICE_INTERFACE = "android.telephony.ims.ImsService";
    private final SparseArray<SparseArray<ImsFeature>> mFeatures = new SparseArray<>();
    protected final IBinder mImsServiceController = new IImsServiceController.Stub() { // from class: android.telephony.ims.ImsService.1
        @Override // com.android.ims.internal.IImsServiceController
        public void addRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener) {
            ImsService.this.enforceReadPhoneStatePermission("addRegistrationListener");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.addRegistrationListener(iImsRegistrationListener);
                }
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public ImsCallProfile createCallProfile(int i2, int i3, int i4, int i5, int i6) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "createCallProfile");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.createCallProfile(i4, i5, i6);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsCallSession createCallSession(int i2, int i3, int i4, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "createCallSession");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.createCallSession(i4, imsCallProfile, iImsCallSessionListener);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void createImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
            synchronized (ImsService.this.mFeatures) {
                ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "createImsFeature");
                ImsService.this.onCreateImsFeatureInternal(i2, i3, iImsFeatureStatusCallback);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void endSession(int i2, int i3, int i4) {
            synchronized (ImsService.this.mFeatures) {
                ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "endSession");
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.endSession(i4);
                }
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsConfig getConfigInterface(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "getConfigInterface");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.getConfigInterface();
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsEcbm getEcbmInterface(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "getEcbmInterface");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.getEcbmInterface();
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public int getFeatureStatus(int i2, int i3) {
            int featureState;
            ImsFeature imsFeatureFromType;
            ImsService.this.enforceReadPhoneStatePermission("getFeatureStatus");
            synchronized (ImsService.this.mFeatures) {
                SparseArray<ImsFeature> sparseArray = (SparseArray) ImsService.this.mFeatures.get(i2);
                featureState = (sparseArray == null || (imsFeatureFromType = ImsService.this.getImsFeatureFromType(sparseArray, i3)) == null) ? 0 : imsFeatureFromType.getFeatureState();
            }
            return featureState;
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsMultiEndpoint getMultiEndpointInterface(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "getMultiEndpointInterface");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.getMultiEndpointInterface();
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsCallSession getPendingCallSession(int i2, int i3, int i4, String str) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "getPendingCallSession");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.getPendingCallSession(i4, str);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public IImsUt getUtInterface(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "getUtInterface");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return null;
                }
                return mMTelFeatureResolveMMTelFeature.getUtInterface();
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public boolean isConnected(int i2, int i3, int i4, int i5) {
            ImsService.this.enforceReadPhoneStatePermission("isConnected");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return false;
                }
                return mMTelFeatureResolveMMTelFeature.isConnected(i4, i5);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public boolean isOpened(int i2, int i3) {
            ImsService.this.enforceReadPhoneStatePermission("isOpened");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return false;
                }
                return mMTelFeatureResolveMMTelFeature.isOpened();
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void removeImsFeature(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
            synchronized (ImsService.this.mFeatures) {
                ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "removeImsFeature");
                ImsService.this.onRemoveImsFeatureInternal(i2, i3, iImsFeatureStatusCallback);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void removeRegistrationListener(int i2, int i3, IImsRegistrationListener iImsRegistrationListener) {
            ImsService.this.enforceReadPhoneStatePermission("removeRegistrationListener");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.removeRegistrationListener(iImsRegistrationListener);
                }
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void setUiTTYMode(int i2, int i3, int i4, Message message) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "setUiTTYMode");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.setUiTTYMode(i4, message);
                }
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public int startSession(int i2, int i3, PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "startSession");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature == null) {
                    return 0;
                }
                return mMTelFeatureResolveMMTelFeature.startSession(pendingIntent, iImsRegistrationListener);
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void turnOffIms(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "turnOffIms");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.turnOffIms();
                }
            }
        }

        @Override // com.android.ims.internal.IImsServiceController
        public void turnOnIms(int i2, int i3) {
            ImsService.this.enforceCallingOrSelfPermission(Manifest.permission.MODIFY_PHONE_STATE, "turnOnIms");
            synchronized (ImsService.this.mFeatures) {
                MMTelFeature mMTelFeatureResolveMMTelFeature = ImsService.this.resolveMMTelFeature(i2, i3);
                if (mMTelFeatureResolveMMTelFeature != null) {
                    mMTelFeatureResolveMMTelFeature.turnOnIms();
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceReadPhoneStatePermission(String str) {
        if (checkCallingOrSelfPermission(Manifest.permission.READ_PRIVILEGED_PHONE_STATE) != 0) {
            enforceCallingOrSelfPermission(Manifest.permission.READ_PHONE_STATE, str);
        }
    }

    private ImsFeature makeImsFeature(int i2, int i3) {
        if (i3 == 0) {
            return onCreateEmergencyMMTelImsFeature(i2);
        }
        if (i3 == 1) {
            return onCreateMMTelImsFeature(i2);
        }
        if (i3 != 2) {
            return null;
        }
        return onCreateRcsFeature(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCreateImsFeatureInternal(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        SparseArray<ImsFeature> sparseArray = this.mFeatures.get(i2);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.mFeatures.put(i2, sparseArray);
        }
        ImsFeature imsFeatureMakeImsFeature = makeImsFeature(i2, i3);
        if (imsFeatureMakeImsFeature != null) {
            imsFeatureMakeImsFeature.setContext(this);
            imsFeatureMakeImsFeature.setSlotId(i2);
            imsFeatureMakeImsFeature.addImsFeatureStatusCallback(iImsFeatureStatusCallback);
            sparseArray.put(i3, imsFeatureMakeImsFeature);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveImsFeatureInternal(int i2, int i3, IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        ImsFeature imsFeatureFromType;
        SparseArray<ImsFeature> sparseArray = this.mFeatures.get(i2);
        if (sparseArray == null || (imsFeatureFromType = getImsFeatureFromType(sparseArray, i3)) == null) {
            return;
        }
        sparseArray.remove(i3);
        imsFeatureFromType.notifyFeatureRemoved(i2);
        imsFeatureFromType.removeImsFeatureStatusCallback(iImsFeatureStatusCallback);
    }

    private <T extends ImsFeature> T resolveImsFeature(SparseArray<ImsFeature> sparseArray, int i2, Class<T> cls) {
        ImsFeature imsFeatureFromType = getImsFeatureFromType(sparseArray, i2);
        if (imsFeatureFromType == null) {
            return null;
        }
        try {
            return cls.cast(imsFeatureFromType);
        } catch (ClassCastException e2) {
            Log.e(LOG_TAG, "Can not cast ImsFeature! Exception: " + e2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MMTelFeature resolveMMTelFeature(int i2, int i3) {
        SparseArray<ImsFeature> imsFeatureMap = getImsFeatureMap(i2);
        if (imsFeatureMap != null) {
            return (MMTelFeature) resolveImsFeature(imsFeatureMap, i3, MMTelFeature.class);
        }
        return null;
    }

    public ImsFeature getImsFeatureFromType(SparseArray<ImsFeature> sparseArray, int i2) {
        return sparseArray.get(i2);
    }

    public SparseArray<ImsFeature> getImsFeatureMap(int i2) {
        return this.mFeatures.get(i2);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (SERVICE_INTERFACE.equals(intent.getAction())) {
            return this.mImsServiceController;
        }
        return null;
    }

    public MMTelFeature onCreateEmergencyMMTelImsFeature(int i2) {
        return null;
    }

    public MMTelFeature onCreateMMTelImsFeature(int i2) {
        return null;
    }

    public RcsFeature onCreateRcsFeature(int i2) {
        return null;
    }
}
