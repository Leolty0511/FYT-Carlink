package android.telecom;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.internal.telecom.IInCallAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class InCallAdapter {
    private final IInCallAdapter mAdapter;

    public InCallAdapter(IInCallAdapter iInCallAdapter) {
        this.mAdapter = iInCallAdapter;
    }

    public void answerCall(String str, int i2) {
        try {
            this.mAdapter.answerCall(str, i2);
        } catch (RemoteException unused) {
        }
    }

    public void conference(String str, String str2) {
        try {
            this.mAdapter.conference(str, str2);
        } catch (RemoteException unused) {
        }
    }

    public void disconnectCall(String str) {
        try {
            this.mAdapter.disconnectCall(str);
        } catch (RemoteException unused) {
        }
    }

    public void holdCall(String str) {
        try {
            this.mAdapter.holdCall(str);
        } catch (RemoteException unused) {
        }
    }

    public void mergeConference(String str) {
        try {
            this.mAdapter.mergeConference(str);
        } catch (RemoteException unused) {
        }
    }

    public void mute(boolean z2) {
        try {
            this.mAdapter.mute(z2);
        } catch (RemoteException unused) {
        }
    }

    public void phoneAccountSelected(String str, PhoneAccountHandle phoneAccountHandle, boolean z2) {
        try {
            this.mAdapter.phoneAccountSelected(str, phoneAccountHandle, z2);
        } catch (RemoteException unused) {
        }
    }

    public void playDtmfTone(String str, char c) {
        try {
            this.mAdapter.playDtmfTone(str, c);
        } catch (RemoteException unused) {
        }
    }

    public void postDialContinue(String str, boolean z2) {
        try {
            this.mAdapter.postDialContinue(str, z2);
        } catch (RemoteException unused) {
        }
    }

    public void pullExternalCall(String str) {
        try {
            this.mAdapter.pullExternalCall(str);
        } catch (RemoteException unused) {
        }
    }

    public void putExtra(String str, String str2, boolean z2) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean(str2, z2);
            this.mAdapter.putExtras(str, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void putExtras(String str, Bundle bundle) {
        try {
            this.mAdapter.putExtras(str, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void rejectCall(String str, boolean z2, String str2) {
        try {
            this.mAdapter.rejectCall(str, z2, str2);
        } catch (RemoteException unused) {
        }
    }

    public void removeExtras(String str, List<String> list) {
        try {
            this.mAdapter.removeExtras(str, list);
        } catch (RemoteException unused) {
        }
    }

    public void respondToRttRequest(String str, int i2, boolean z2) {
        try {
            this.mAdapter.respondToRttRequest(str, i2, z2);
        } catch (RemoteException unused) {
        }
    }

    public void sendCallEvent(String str, String str2, Bundle bundle) {
        try {
            this.mAdapter.sendCallEvent(str, str2, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void sendRttRequest(String str) {
        try {
            this.mAdapter.sendRttRequest(str);
        } catch (RemoteException unused) {
        }
    }

    public void setAudioRoute(int i2) {
        try {
            this.mAdapter.setAudioRoute(i2);
        } catch (RemoteException unused) {
        }
    }

    public void setRttMode(String str, int i2) {
        try {
            this.mAdapter.setRttMode(str, i2);
        } catch (RemoteException unused) {
        }
    }

    public void splitFromConference(String str) {
        try {
            this.mAdapter.splitFromConference(str);
        } catch (RemoteException unused) {
        }
    }

    public void stopDtmfTone(String str) {
        try {
            this.mAdapter.stopDtmfTone(str);
        } catch (RemoteException unused) {
        }
    }

    public void stopRtt(String str) {
        try {
            this.mAdapter.stopRtt(str);
        } catch (RemoteException unused) {
        }
    }

    public void swapConference(String str) {
        try {
            this.mAdapter.swapConference(str);
        } catch (RemoteException unused) {
        }
    }

    public void turnProximitySensorOff(boolean z2) {
        try {
            this.mAdapter.turnOffProximitySensor(z2);
        } catch (RemoteException unused) {
        }
    }

    public void turnProximitySensorOn() {
        try {
            this.mAdapter.turnOnProximitySensor();
        } catch (RemoteException unused) {
        }
    }

    public void unholdCall(String str) {
        try {
            this.mAdapter.unholdCall(str);
        } catch (RemoteException unused) {
        }
    }

    public void putExtra(String str, String str2, int i2) {
        try {
            Bundle bundle = new Bundle();
            bundle.putInt(str2, i2);
            this.mAdapter.putExtras(str, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void putExtra(String str, String str2, String str3) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(str2, str3);
            this.mAdapter.putExtras(str, bundle);
        } catch (RemoteException unused) {
        }
    }
}
