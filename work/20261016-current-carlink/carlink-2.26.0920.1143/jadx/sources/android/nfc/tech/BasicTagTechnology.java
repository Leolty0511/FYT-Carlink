package android.nfc.tech;

import android.nfc.Tag;
import android.nfc.TransceiveResult;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
abstract class BasicTagTechnology implements TagTechnology {
    private static final String TAG = "NFC";
    boolean mIsConnected;
    int mSelectedTechnology;
    final Tag mTag;

    public BasicTagTechnology(Tag tag, int i2) {
        this.mTag = tag;
        this.mSelectedTechnology = i2;
    }

    public void checkConnected() {
        if (this.mTag.getConnectedTechnology() != this.mSelectedTechnology || this.mTag.getConnectedTechnology() == -1) {
            throw new IllegalStateException("Call connect() first!");
        }
    }

    @Override // android.nfc.tech.TagTechnology, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            try {
                this.mTag.getTagService().resetTimeouts();
                this.mTag.getTagService().reconnect(this.mTag.getServiceHandle());
            } catch (RemoteException e2) {
                Log.e(TAG, "NFC service dead", e2);
            }
        } finally {
            this.mIsConnected = false;
            this.mTag.setTechnologyDisconnected();
        }
    }

    @Override // android.nfc.tech.TagTechnology
    public void connect() {
        try {
            int iConnect = this.mTag.getTagService().connect(this.mTag.getServiceHandle(), this.mSelectedTechnology);
            if (iConnect == 0) {
                this.mTag.setConnectedTechnology(this.mSelectedTechnology);
                this.mIsConnected = true;
            } else {
                if (iConnect != -21) {
                    throw new IOException();
                }
                throw new UnsupportedOperationException("Connecting to this technology is not supported by the NFC adapter.");
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            throw new IOException("NFC service died");
        }
    }

    public int getMaxTransceiveLengthInternal() {
        try {
            return this.mTag.getTagService().getMaxTransceiveLength(this.mSelectedTechnology);
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return 0;
        }
    }

    @Override // android.nfc.tech.TagTechnology
    public Tag getTag() {
        return this.mTag;
    }

    @Override // android.nfc.tech.TagTechnology
    public boolean isConnected() {
        if (!this.mIsConnected) {
            return false;
        }
        try {
            return this.mTag.getTagService().isPresent(this.mTag.getServiceHandle());
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return false;
        }
    }

    @Override // android.nfc.tech.TagTechnology
    public void reconnect() {
        if (!this.mIsConnected) {
            throw new IllegalStateException("Technology not connected yet");
        }
        try {
            if (this.mTag.getTagService().reconnect(this.mTag.getServiceHandle()) == 0) {
                return;
            }
            this.mIsConnected = false;
            this.mTag.setTechnologyDisconnected();
            throw new IOException();
        } catch (RemoteException e2) {
            this.mIsConnected = false;
            this.mTag.setTechnologyDisconnected();
            Log.e(TAG, "NFC service dead", e2);
            throw new IOException("NFC service died");
        }
    }

    public byte[] transceive(byte[] bArr, boolean z2) {
        checkConnected();
        try {
            TransceiveResult transceiveResultTransceive = this.mTag.getTagService().transceive(this.mTag.getServiceHandle(), bArr, z2);
            if (transceiveResultTransceive != null) {
                return transceiveResultTransceive.getResponseOrThrow();
            }
            throw new IOException("transceive failed");
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            throw new IOException("NFC service died");
        }
    }
}
