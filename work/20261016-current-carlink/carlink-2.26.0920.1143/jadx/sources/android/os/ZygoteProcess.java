package android.os;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ZygoteProcess {
    private static final String LOG_TAG = "ZygoteProcess";
    static final int ZYGOTE_RETRY_MILLIS = 500;
    private final Object mLock = new Object();
    private final String mSecondarySocket;
    private final String mSocket;
    private ZygoteState primaryZygoteState;
    private ZygoteState secondaryZygoteState;

    public static class ZygoteState {
        final List<String> abiList;
        final DataInputStream inputStream;
        boolean mClosed;
        final LocalSocket socket;
        final BufferedWriter writer;

        private ZygoteState(LocalSocket localSocket, DataInputStream dataInputStream, BufferedWriter bufferedWriter, List<String> list) {
            this.socket = localSocket;
            this.inputStream = dataInputStream;
            this.writer = bufferedWriter;
            this.abiList = list;
        }

        public static ZygoteState connect(String str) throws IOException {
            LocalSocket localSocket = new LocalSocket();
            try {
                localSocket.connect(new LocalSocketAddress(str, LocalSocketAddress.Namespace.RESERVED));
                DataInputStream dataInputStream = new DataInputStream(localSocket.getInputStream());
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(localSocket.getOutputStream()), 256);
                String abiList = ZygoteProcess.getAbiList(bufferedWriter, dataInputStream);
                Log.i("Zygote", "Process: zygote socket " + str + " opened, supported ABIS: " + abiList);
                return new ZygoteState(localSocket, dataInputStream, bufferedWriter, Arrays.asList(abiList.split(",")));
            } catch (IOException e2) {
                try {
                    Log.e("Zygote", " zygote socket close " + str + " zygoteSocket " + localSocket);
                    localSocket.close();
                } catch (IOException unused) {
                    Log.e("Zygote", " IOException zygote socket close " + str + " zygoteSocket " + localSocket);
                }
                throw e2;
            }
        }

        public void close() {
            try {
                this.socket.close();
            } catch (IOException e2) {
                Log.e(ZygoteProcess.LOG_TAG, "I/O exception on routine close", e2);
            }
            this.mClosed = true;
        }

        public boolean isClosed() {
            return this.mClosed;
        }

        public boolean matches(String str) {
            return this.abiList.contains(str);
        }
    }

    public ZygoteProcess(String str, String str2) {
        this.mSocket = str;
        this.mSecondarySocket = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public static String getAbiList(BufferedWriter bufferedWriter, DataInputStream dataInputStream) throws IOException {
        bufferedWriter.write(WifiEnterpriseConfig.ENGINE_ENABLE);
        bufferedWriter.newLine();
        bufferedWriter.write("--query-abi-list");
        bufferedWriter.newLine();
        bufferedWriter.flush();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        return new String(bArr, StandardCharsets.US_ASCII);
    }

    @GuardedBy("mLock")
    private ZygoteState openZygoteSocketIfNeeded(String str) throws ZygoteStartFailedEx {
        Preconditions.checkState(Thread.holdsLock(this.mLock), "ZygoteProcess lock not held");
        ZygoteState zygoteState = this.primaryZygoteState;
        if (zygoteState == null || zygoteState.isClosed()) {
            try {
                this.primaryZygoteState = ZygoteState.connect(this.mSocket);
            } catch (IOException e2) {
                throw new ZygoteStartFailedEx("Error connecting to primary zygote", e2);
            }
        }
        if (this.primaryZygoteState.matches(str)) {
            return this.primaryZygoteState;
        }
        ZygoteState zygoteState2 = this.secondaryZygoteState;
        if (zygoteState2 == null || zygoteState2.isClosed()) {
            try {
                this.secondaryZygoteState = ZygoteState.connect(this.mSecondarySocket);
            } catch (IOException e3) {
                throw new ZygoteStartFailedEx("Error connecting to secondary zygote", e3);
            }
        }
        if (this.secondaryZygoteState.matches(str)) {
            return this.secondaryZygoteState;
        }
        throw new ZygoteStartFailedEx(android.accessibilityservice.c.j("Unsupported zygote ABI: ", str));
    }

    private Process.ProcessStartResult startViaZygote(String str, String str2, int i2, int i3, int[] iArr, int i4, int i5, int i6, String str3, String str4, String str5, String str6, String str7, String[] strArr) {
        Process.ProcessStartResult processStartResultZygoteSendArgsAndGetResult;
        ArrayList arrayList = new ArrayList();
        arrayList.add("--runtime-args");
        arrayList.add("--setuid=" + i2);
        arrayList.add("--setgid=" + i3);
        if ((i4 & 16) != 0) {
            arrayList.add("--enable-jni-logging");
        }
        if ((i4 & 8) != 0) {
            arrayList.add("--enable-safemode");
        }
        if ((i4 & 1) != 0) {
            arrayList.add("--enable-jdwp");
        }
        if ((i4 & 2) != 0) {
            arrayList.add("--enable-checkjni");
        }
        if ((i4 & 32) != 0) {
            arrayList.add("--generate-debug-info");
        }
        if ((i4 & 64) != 0) {
            arrayList.add("--always-jit");
        }
        if ((i4 & 128) != 0) {
            arrayList.add("--native-debuggable");
        }
        if ((i4 & 256) != 0) {
            arrayList.add("--java-debuggable");
        }
        if ((i4 & 4) != 0) {
            arrayList.add("--enable-assert");
        }
        if (i5 == 1) {
            arrayList.add("--mount-external-default");
        } else if (i5 == 2) {
            arrayList.add("--mount-external-read");
        } else if (i5 == 3) {
            arrayList.add("--mount-external-write");
        }
        arrayList.add("--target-sdk-version=" + i6);
        if (iArr != null && iArr.length > 0) {
            StringBuilder sb = new StringBuilder("--setgroups=");
            int length = iArr.length;
            for (int i7 = 0; i7 < length; i7++) {
                if (i7 != 0) {
                    sb.append(',');
                }
                sb.append(iArr[i7]);
            }
            arrayList.add(sb.toString());
        }
        if (str2 != null) {
            arrayList.add("--nice-name=".concat(str2));
        }
        if (str3 != null) {
            arrayList.add("--seinfo=".concat(str3));
        }
        if (str5 != null) {
            arrayList.add("--instruction-set=".concat(str5));
        }
        if (str6 != null) {
            arrayList.add("--app-data-dir=".concat(str6));
        }
        if (str7 != null) {
            arrayList.add("--invoke-with");
            arrayList.add(str7);
        }
        arrayList.add(str);
        if (strArr != null) {
            for (String str8 : strArr) {
                arrayList.add(str8);
            }
        }
        synchronized (this.mLock) {
            processStartResultZygoteSendArgsAndGetResult = zygoteSendArgsAndGetResult(openZygoteSocketIfNeeded(str4), arrayList);
        }
        return processStartResultZygoteSendArgsAndGetResult;
    }

    public static void waitForConnectionToZygote(String str) {
        while (true) {
            try {
                Log.w(LOG_TAG, " Zygote connect socketName is " + str);
                ZygoteState.connect(str).close();
                return;
            } catch (IOException e2) {
                Log.w(LOG_TAG, "Got error connecting to zygote, retrying. msg= " + e2.getMessage());
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    @GuardedBy("mLock")
    private static Process.ProcessStartResult zygoteSendArgsAndGetResult(ZygoteState zygoteState, ArrayList<String> arrayList) throws ZygoteStartFailedEx {
        try {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).indexOf(10) >= 0) {
                    throw new ZygoteStartFailedEx("embedded newlines not allowed");
                }
            }
            BufferedWriter bufferedWriter = zygoteState.writer;
            DataInputStream dataInputStream = zygoteState.inputStream;
            bufferedWriter.write(Integer.toString(arrayList.size()));
            bufferedWriter.newLine();
            for (int i3 = 0; i3 < size; i3++) {
                bufferedWriter.write(arrayList.get(i3));
                bufferedWriter.newLine();
            }
            bufferedWriter.flush();
            Process.ProcessStartResult processStartResult = new Process.ProcessStartResult();
            processStartResult.pid = dataInputStream.readInt();
            processStartResult.usingWrapper = dataInputStream.readBoolean();
            if (processStartResult.pid >= 0) {
                return processStartResult;
            }
            throw new ZygoteStartFailedEx("fork() failed");
        } catch (IOException e2) {
            zygoteState.close();
            throw new ZygoteStartFailedEx(e2);
        }
    }

    public void establishZygoteConnectionForAbi(String str) {
        try {
            synchronized (this.mLock) {
                openZygoteSocketIfNeeded(str);
            }
        } catch (ZygoteStartFailedEx e2) {
            throw new RuntimeException(android.accessibilityservice.c.j("Unable to connect to zygote for abi: ", str), e2);
        }
    }

    public boolean preloadDefault(String str) {
        boolean z2;
        synchronized (this.mLock) {
            ZygoteState zygoteStateOpenZygoteSocketIfNeeded = openZygoteSocketIfNeeded(str);
            zygoteStateOpenZygoteSocketIfNeeded.writer.write(WifiEnterpriseConfig.ENGINE_ENABLE);
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.write("--preload-default");
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.flush();
            z2 = zygoteStateOpenZygoteSocketIfNeeded.inputStream.readInt() == 0;
        }
        return z2;
    }

    public boolean preloadPackageForAbi(String str, String str2, String str3, String str4) {
        boolean z2;
        synchronized (this.mLock) {
            ZygoteState zygoteStateOpenZygoteSocketIfNeeded = openZygoteSocketIfNeeded(str4);
            zygoteStateOpenZygoteSocketIfNeeded.writer.write("4");
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.write("--preload-package");
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.write(str);
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.write(str2);
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.write(str3);
            zygoteStateOpenZygoteSocketIfNeeded.writer.newLine();
            zygoteStateOpenZygoteSocketIfNeeded.writer.flush();
            z2 = zygoteStateOpenZygoteSocketIfNeeded.inputStream.readInt() == 0;
        }
        return z2;
    }

    public final Process.ProcessStartResult start(String str, String str2, int i2, int i3, int[] iArr, int i4, int i5, int i6, String str3, String str4, String str5, String str6, String str7, String[] strArr) {
        try {
            return startViaZygote(str, str2, i2, i3, iArr, i4, i5, i6, str3, str4, str5, str6, str7, strArr);
        } catch (ZygoteStartFailedEx e2) {
            Log.e(LOG_TAG, "Starting VM process through Zygote failed");
            throw new RuntimeException("Starting VM process through Zygote failed", e2);
        }
    }
}
