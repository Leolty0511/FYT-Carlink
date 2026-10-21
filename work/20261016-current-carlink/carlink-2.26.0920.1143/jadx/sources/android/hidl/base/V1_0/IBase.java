package android.hidl.base.V1_0;

import android.app.m;
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
public interface IBase extends IHwInterface {
    public static final String kInterfaceName = "android.hidl.base@1.0::IBase";

    public static final class Proxy implements IBase {
        private IHwBinder mRemote;

        public Proxy(IHwBinder iHwBinder) {
            Objects.requireNonNull(iHwBinder);
            this.mRemote = iHwBinder;
        }

        @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2) {
            return this.mRemote.linkToDeath(deathRecipient, j2);
        }

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
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

        @Override // android.hidl.base.V1_0.IBase
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
                return "[class or subclass of android.hidl.base@1.0::IBase]@Proxy";
            }
        }

        @Override // android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) {
            return this.mRemote.unlinkToDeath(deathRecipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IBase {
        @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.pid = -1;
            debugInfo.ptr = 0L;
            debugInfo.arch = 0;
            return debugInfo;
        }

        @Override // android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-67, -38, -74, Ascii.CAN, 77, 122, 52, 109, -90, MidiConstants.STATUS_POLYPHONIC_AFTERTOUCH, 125, -64, -126, -116, MidiConstants.STATUS_MIDI_TIME_CODE, -102, 105, 111, 76, -86, 54, 17, -59, Ascii.US, 46, Ascii.DC4, 86, 90, Ascii.DC4, -76, 15, -39}));
        }

        @Override // android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IBase.kInterfaceName));
        }

        @Override // android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IBase.kInterfaceName;
        }

        @Override // android.os.IHwBinder, android.hardware.cas.V1_0.ICas, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2) {
            return true;
        }

        @Override // android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            SystemProperties.reportSyspropChanged();
        }

        @Override // android.os.HwBinder
        public void onTransact(int i2, HwParcel hwParcel, HwParcel hwParcel2, int i3) {
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

        @Override // android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String str) {
            if (IBase.kInterfaceName.equals(str)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String str) {
            registerService(str);
        }

        @Override // android.hidl.base.V1_0.IBase
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

    @Override // android.os.IHwInterface
    IHwBinder asBinder();

    DebugInfo getDebugInfo();

    ArrayList<byte[]> getHashChain();

    ArrayList<String> interfaceChain();

    String interfaceDescriptor();

    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j2);

    void notifySyspropsChanged();

    void ping();

    void setHALInstrumentation();

    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient);
}
