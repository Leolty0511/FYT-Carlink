package android.hardware.cas.V1_0;

import android.app.m;
import android.hidl.base.V1_0.DebugInfo;
import android.hidl.base.V1_0.IBase;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import android.os.SystemProperties;
import com.android.internal.midi.MidiConstants;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaCasService extends IBase {
    public static final String kInterfaceName = "android.hardware.cas@1.0::IMediaCasService";

    public static final class Proxy implements IMediaCasService {
        private IHwBinder mRemote;

        public Proxy(IHwBinder iHwBinder) {
            Objects.requireNonNull(iHwBinder);
            this.mRemote = iHwBinder;
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService
        public IDescramblerBase createDescrambler(int i2) {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IMediaCasService.kInterfaceName);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(5, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return c.a(hwParcel2.readStrongBinder());
            } finally {
                hwParcel2.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService
        public ICas createPlugin(int i2, ICasListener iCasListener) {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IMediaCasService.kInterfaceName);
            hwParcel.writeInt32(i2);
            hwParcel.writeStrongBinder(iCasListener == null ? null : iCasListener.asBinder());
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(3, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return a.a(hwParcel2.readStrongBinder());
            } finally {
                hwParcel2.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService
        public ArrayList<HidlCasPluginDescriptor> enumeratePlugins() {
            HwParcel hwParcelC = m.c(IMediaCasService.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(1, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
                return HidlCasPluginDescriptor.readVectorFromParcel(hwParcel);
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(257049926, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
                DebugInfo debugInfo = new DebugInfo();
                debugInfo.readFromParcel(hwParcel);
                return debugInfo;
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(256398152, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
                ArrayList<byte[]> arrayList = new ArrayList<>();
                HwBlob buffer = hwParcel.readBuffer(16L);
                int int32 = buffer.getInt32(8L);
                HwBlob embeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 32, buffer.handle(), 0L, true);
                arrayList.clear();
                for (int i2 = 0; i2 < int32; i2++) {
                    byte[] bArr = new byte[32];
                    long j2 = i2 * 32;
                    for (int i3 = 0; i3 < 32; i3++) {
                        bArr[i3] = embeddedBuffer.getInt8(j2);
                        j2++;
                    }
                    arrayList.add(bArr);
                }
                return arrayList;
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(256067662, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
                return hwParcel.readStringVector();
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public String interfaceDescriptor() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(256136003, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
                return hwParcel.readString();
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService
        public boolean isDescramblerSupported(int i2) {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IMediaCasService.kInterfaceName);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(4, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readBool();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService
        public boolean isSystemIdSupported(int i2) {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IMediaCasService.kInterfaceName);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(2, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readBool();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2) {
            return this.mRemote.linkToDeath(deathRecipient, j2);
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(257120595, hwParcelC, hwParcel, 1);
                hwParcelC.releaseTemporaryStorage();
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public void ping() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(256921159, hwParcelC, hwParcel, 0);
                hwParcel.verifySuccess();
                hwParcelC.releaseTemporaryStorage();
            } finally {
                hwParcel.release();
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public void setHALInstrumentation() {
            HwParcel hwParcelC = m.c(IBase.kInterfaceName);
            HwParcel hwParcel = new HwParcel();
            try {
                this.mRemote.transact(256462420, hwParcelC, hwParcel, 1);
                hwParcelC.releaseTemporaryStorage();
            } finally {
                hwParcel.release();
            }
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException unused) {
                return "[class or subclass of android.hardware.cas@1.0::IMediaCasService]@Proxy";
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) {
            return this.mRemote.unlinkToDeath(deathRecipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IMediaCasService {
        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.pid = -1;
            debugInfo.ptr = 0L;
            debugInfo.arch = 0;
            return debugInfo;
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-122, -70, -100, 3, -105, -117, 121, -89, 66, -23, MidiConstants.STATUS_NOTE_ON, 66, Ascii.VT, -59, -50, MidiConstants.STATUS_CHANNEL_PRESSURE, 103, 61, 37, -87, 57, -8, 37, 114, -103, 107, -17, -110, 98, Ascii.RS, 32, Ascii.DC4}, new byte[]{-67, -38, -74, Ascii.CAN, 77, 122, 52, 109, -90, MidiConstants.STATUS_POLYPHONIC_AFTERTOUCH, 125, -64, -126, -116, MidiConstants.STATUS_MIDI_TIME_CODE, -102, 105, 111, 76, -86, 54, 17, -59, Ascii.US, 46, Ascii.DC4, 86, 90, Ascii.DC4, -76, 15, -39}));
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IMediaCasService.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IMediaCasService.kInterfaceName;
        }

        @Override // android.os.IHwBinder, android.hardware.cas.V1_0.ICas, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2) {
            return true;
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            SystemProperties.reportSyspropChanged();
        }

        @Override // android.os.HwBinder
        public void onTransact(int i2, HwParcel hwParcel, HwParcel hwParcel2, int i3) {
            if (i2 == 1) {
                hwParcel.enforceInterface(IMediaCasService.kInterfaceName);
                ArrayList<HidlCasPluginDescriptor> arrayListEnumeratePlugins = enumeratePlugins();
                hwParcel2.writeStatus(0);
                HidlCasPluginDescriptor.writeVectorToParcel(hwParcel2, arrayListEnumeratePlugins);
                hwParcel2.send();
            }
            if (i2 == 2) {
                hwParcel.enforceInterface(IMediaCasService.kInterfaceName);
                boolean zIsSystemIdSupported = isSystemIdSupported(hwParcel.readInt32());
                hwParcel2.writeStatus(0);
                hwParcel2.writeBool(zIsSystemIdSupported);
                hwParcel2.send();
                return;
            }
            if (i2 == 3) {
                hwParcel.enforceInterface(IMediaCasService.kInterfaceName);
                ICas iCasCreatePlugin = createPlugin(hwParcel.readInt32(), b.a(hwParcel.readStrongBinder()));
                hwParcel2.writeStatus(0);
                hwParcel2.writeStrongBinder(iCasCreatePlugin != null ? iCasCreatePlugin.asBinder() : null);
                hwParcel2.send();
                return;
            }
            if (i2 == 4) {
                hwParcel.enforceInterface(IMediaCasService.kInterfaceName);
                boolean zIsDescramblerSupported = isDescramblerSupported(hwParcel.readInt32());
                hwParcel2.writeStatus(0);
                hwParcel2.writeBool(zIsDescramblerSupported);
                hwParcel2.send();
                return;
            }
            if (i2 == 5) {
                hwParcel.enforceInterface(IMediaCasService.kInterfaceName);
                IDescramblerBase iDescramblerBaseCreateDescrambler = createDescrambler(hwParcel.readInt32());
                hwParcel2.writeStatus(0);
                hwParcel2.writeStrongBinder(iDescramblerBaseCreateDescrambler != null ? iDescramblerBaseCreateDescrambler.asBinder() : null);
                hwParcel2.send();
                return;
            }
            switch (i2) {
                case 256067662:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    ArrayList<String> arrayListInterfaceChain = interfaceChain();
                    hwParcel2.writeStatus(0);
                    hwParcel2.writeStringVector(arrayListInterfaceChain);
                    hwParcel2.send();
                    break;
                case 256131655:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    hwParcel2.writeStatus(0);
                    hwParcel2.send();
                    break;
                case 256136003:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    String strInterfaceDescriptor = interfaceDescriptor();
                    hwParcel2.writeStatus(0);
                    hwParcel2.writeString(strInterfaceDescriptor);
                    hwParcel2.send();
                    break;
                case 256398152:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    ArrayList<byte[]> hashChain = getHashChain();
                    hwParcel2.writeStatus(0);
                    HwBlob hwBlob = new HwBlob(16);
                    int size = hashChain.size();
                    hwBlob.putInt32(8L, size);
                    hwBlob.putBool(12L, false);
                    HwBlob hwBlob2 = new HwBlob(size * 32);
                    for (int i4 = 0; i4 < size; i4++) {
                        long j2 = i4 * 32;
                        for (int i5 = 0; i5 < 32; i5++) {
                            hwBlob2.putInt8(j2, hashChain.get(i4)[i5]);
                            j2++;
                        }
                    }
                    hwBlob.putBlob(0L, hwBlob2);
                    hwParcel2.writeBuffer(hwBlob);
                    hwParcel2.send();
                    break;
                case 256462420:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    setHALInstrumentation();
                    break;
                case 257049926:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    DebugInfo debugInfo = getDebugInfo();
                    hwParcel2.writeStatus(0);
                    debugInfo.writeToParcel(hwParcel2);
                    hwParcel2.send();
                    break;
                case 257120595:
                    hwParcel.enforceInterface(IBase.kInterfaceName);
                    notifySyspropsChanged();
                    break;
            }
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String str) {
            if (IMediaCasService.kInterfaceName.equals(str)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String str) {
            registerService(str);
        }

        @Override // android.hardware.cas.V1_0.IMediaCasService, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        @Override // android.os.IHwBinder, android.hardware.cas.V1_0.ICas, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) {
            return true;
        }
    }

    @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    IDescramblerBase createDescrambler(int i2);

    ICas createPlugin(int i2, ICasListener iCasListener);

    ArrayList<HidlCasPluginDescriptor> enumeratePlugins();

    @Override // android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo();

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain();

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain();

    @Override // android.hidl.base.V1_0.IBase
    String interfaceDescriptor();

    boolean isDescramblerSupported(int i2);

    boolean isSystemIdSupported(int i2);

    @Override // android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2);

    @Override // android.hidl.base.V1_0.IBase
    void notifySyspropsChanged();

    @Override // android.hidl.base.V1_0.IBase
    void ping();

    @Override // android.hidl.base.V1_0.IBase
    void setHALInstrumentation();

    @Override // android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient);
}
