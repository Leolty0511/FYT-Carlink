package android.nfc.tech;

import android.nfc.FormatException;
import android.nfc.INfcTag;
import android.nfc.NdefMessage;
import android.nfc.Tag;
import android.nfc.TagLostException;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class Ndef extends BasicTagTechnology {
    public static final String EXTRA_NDEF_CARDSTATE = "ndefcardstate";
    public static final String EXTRA_NDEF_MAXLENGTH = "ndefmaxlength";
    public static final String EXTRA_NDEF_MSG = "ndefmsg";
    public static final String EXTRA_NDEF_TYPE = "ndeftype";
    public static final String ICODE_SLI = "com.nxp.ndef.icodesli";
    public static final String MIFARE_CLASSIC = "com.nxp.ndef.mifareclassic";
    public static final int NDEF_MODE_READ_ONLY = 1;
    public static final int NDEF_MODE_READ_WRITE = 2;
    public static final int NDEF_MODE_UNKNOWN = 3;
    public static final String NFC_FORUM_TYPE_1 = "org.nfcforum.ndef.type1";
    public static final String NFC_FORUM_TYPE_2 = "org.nfcforum.ndef.type2";
    public static final String NFC_FORUM_TYPE_3 = "org.nfcforum.ndef.type3";
    public static final String NFC_FORUM_TYPE_4 = "org.nfcforum.ndef.type4";
    private static final String TAG = "NFC";
    public static final int TYPE_1 = 1;
    public static final int TYPE_2 = 2;
    public static final int TYPE_3 = 3;
    public static final int TYPE_4 = 4;
    public static final int TYPE_ICODE_SLI = 102;
    public static final int TYPE_MIFARE_CLASSIC = 101;
    public static final int TYPE_OTHER = -1;
    public static final String UNKNOWN = "android.ndef.unknown";
    private final int mCardState;
    private final int mMaxNdefSize;
    private final NdefMessage mNdefMsg;
    private final int mNdefType;

    public Ndef(Tag tag) {
        super(tag, 6);
        Bundle techExtras = tag.getTechExtras(6);
        if (techExtras == null) {
            throw new NullPointerException("NDEF tech extras are null.");
        }
        this.mMaxNdefSize = techExtras.getInt(EXTRA_NDEF_MAXLENGTH);
        this.mCardState = techExtras.getInt(EXTRA_NDEF_CARDSTATE);
        this.mNdefMsg = (NdefMessage) techExtras.getParcelable(EXTRA_NDEF_MSG);
        this.mNdefType = techExtras.getInt(EXTRA_NDEF_TYPE);
    }

    public static Ndef get(Tag tag) {
        if (!tag.hasTech(6)) {
            return null;
        }
        try {
            return new Ndef(tag);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean canMakeReadOnly() {
        INfcTag tagService = this.mTag.getTagService();
        if (tagService == null) {
            return false;
        }
        try {
            return tagService.canMakeReadOnly(this.mNdefType);
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return false;
        }
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void connect() {
        super.connect();
    }

    public NdefMessage getCachedNdefMessage() {
        return this.mNdefMsg;
    }

    public int getMaxSize() {
        return this.mMaxNdefSize;
    }

    public NdefMessage getNdefMessage() throws IOException {
        checkConnected();
        try {
            INfcTag tagService = this.mTag.getTagService();
            if (tagService == null) {
                throw new IOException("Mock tags don't support this operation.");
            }
            int serviceHandle = this.mTag.getServiceHandle();
            if (!tagService.isNdef(serviceHandle)) {
                if (tagService.isPresent(serviceHandle)) {
                    return null;
                }
                throw new TagLostException();
            }
            NdefMessage ndefMessageNdefRead = tagService.ndefRead(serviceHandle);
            if (ndefMessageNdefRead == null && !tagService.isPresent(serviceHandle)) {
                throw new TagLostException();
            }
            return ndefMessageNdefRead;
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return null;
        }
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ Tag getTag() {
        return super.getTag();
    }

    public String getType() {
        int i2 = this.mNdefType;
        if (i2 == 1) {
            return NFC_FORUM_TYPE_1;
        }
        if (i2 == 2) {
            return NFC_FORUM_TYPE_2;
        }
        if (i2 == 3) {
            return NFC_FORUM_TYPE_3;
        }
        if (i2 == 4) {
            return NFC_FORUM_TYPE_4;
        }
        if (i2 != 101) {
            return i2 != 102 ? UNKNOWN : ICODE_SLI;
        }
        return MIFARE_CLASSIC;
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ boolean isConnected() {
        return super.isConnected();
    }

    public boolean isWritable() {
        return this.mCardState == 2;
    }

    public boolean makeReadOnly() throws IOException {
        checkConnected();
        try {
            INfcTag tagService = this.mTag.getTagService();
            if (tagService == null) {
                return false;
            }
            if (!tagService.isNdef(this.mTag.getServiceHandle())) {
                throw new IOException("Tag is not ndef");
            }
            int iNdefMakeReadOnly = tagService.ndefMakeReadOnly(this.mTag.getServiceHandle());
            if (iNdefMakeReadOnly == -8) {
                return false;
            }
            if (iNdefMakeReadOnly == -1) {
                throw new IOException();
            }
            if (iNdefMakeReadOnly == 0) {
                return true;
            }
            throw new IOException();
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
            return false;
        }
    }

    @Override // android.nfc.tech.BasicTagTechnology, android.nfc.tech.TagTechnology
    public /* bridge */ /* synthetic */ void reconnect() {
        super.reconnect();
    }

    public void writeNdefMessage(NdefMessage ndefMessage) throws IOException, FormatException {
        checkConnected();
        try {
            INfcTag tagService = this.mTag.getTagService();
            if (tagService == null) {
                throw new IOException("Mock tags don't support this operation.");
            }
            int serviceHandle = this.mTag.getServiceHandle();
            if (!tagService.isNdef(serviceHandle)) {
                throw new IOException("Tag is not ndef");
            }
            int iNdefWrite = tagService.ndefWrite(serviceHandle, ndefMessage);
            if (iNdefWrite == -8) {
                throw new FormatException();
            }
            if (iNdefWrite == -1) {
                throw new IOException();
            }
            if (iNdefWrite != 0) {
                throw new IOException();
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "NFC service dead", e2);
        }
    }
}
