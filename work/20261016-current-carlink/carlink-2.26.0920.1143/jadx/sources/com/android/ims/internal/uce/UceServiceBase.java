package com.android.ims.internal.uce;

import com.android.ims.internal.uce.common.UceLong;
import com.android.ims.internal.uce.options.IOptionsListener;
import com.android.ims.internal.uce.options.IOptionsService;
import com.android.ims.internal.uce.presence.IPresenceListener;
import com.android.ims.internal.uce.presence.IPresenceService;
import com.android.ims.internal.uce.uceservice.IUceListener;
import com.android.ims.internal.uce.uceservice.IUceService;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UceServiceBase {
    private UceServiceBinder mBinder;

    public final class UceServiceBinder extends IUceService.Stub {
        private UceServiceBinder() {
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public int createOptionsService(IOptionsListener iOptionsListener, UceLong uceLong) {
            return UceServiceBase.this.onCreateOptionsService(iOptionsListener, uceLong);
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public int createPresenceService(IPresenceListener iPresenceListener, UceLong uceLong) {
            return UceServiceBase.this.onCreatePresService(iPresenceListener, uceLong);
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public void destroyOptionsService(int i2) {
            UceServiceBase.this.onDestroyOptionsService(i2);
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public void destroyPresenceService(int i2) {
            UceServiceBase.this.onDestroyPresService(i2);
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public IOptionsService getOptionsService() {
            return UceServiceBase.this.onGetOptionsService();
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public IPresenceService getPresenceService() {
            return UceServiceBase.this.onGetPresenceService();
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public boolean getServiceStatus() {
            return UceServiceBase.this.onGetServiceStatus();
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public boolean isServiceStarted() {
            return UceServiceBase.this.onIsServiceStarted();
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public boolean startService(IUceListener iUceListener) {
            return UceServiceBase.this.onServiceStart(iUceListener);
        }

        @Override // com.android.ims.internal.uce.uceservice.IUceService
        public boolean stopService() {
            return UceServiceBase.this.onStopService();
        }
    }

    public UceServiceBinder getBinder() {
        if (this.mBinder == null) {
            this.mBinder = new UceServiceBinder();
        }
        return this.mBinder;
    }

    public int onCreateOptionsService(IOptionsListener iOptionsListener, UceLong uceLong) {
        return 0;
    }

    public int onCreatePresService(IPresenceListener iPresenceListener, UceLong uceLong) {
        return 0;
    }

    public void onDestroyOptionsService(int i2) {
    }

    public void onDestroyPresService(int i2) {
    }

    public IOptionsService onGetOptionsService() {
        return null;
    }

    public IPresenceService onGetPresenceService() {
        return null;
    }

    public boolean onGetServiceStatus() {
        return false;
    }

    public boolean onIsServiceStarted() {
        return false;
    }

    public boolean onServiceStart(IUceListener iUceListener) {
        return false;
    }

    public boolean onStopService() {
        return false;
    }
}
