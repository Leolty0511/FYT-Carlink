package com.android.internal.os;

import android.net.Credentials;
import android.net.LocalSocket;
import android.os.FactoryTest;
import android.os.Process;
import android.os.SystemProperties;
import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructPollfd;
import android.util.Log;
import android.util.TimeUtils;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
class ZygoteConnection {
    private static final String TAG = "Zygote";
    private static final int[][] intArray2d = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 0, 0);
    private final String abiList;
    private boolean isEof;
    private final LocalSocket mSocket;
    private final DataOutputStream mSocketOutStream;
    private final BufferedReader mSocketReader;
    private final Credentials peer;

    public static class Arguments {
        boolean abiListQuery;
        String appDataDir;
        boolean capabilitiesSpecified;
        int debugFlags;
        long effectiveCapabilities;
        boolean gidSpecified;
        int[] gids;
        String instructionSet;
        String invokeWith;
        String niceName;
        long permittedCapabilities;
        boolean preloadDefault;
        String preloadPackage;
        String preloadPackageCacheKey;
        String preloadPackageLibs;
        String[] remainingArgs;
        ArrayList<int[]> rlimits;
        String seInfo;
        boolean seInfoSpecified;
        int targetSdkVersion;
        boolean targetSdkVersionSpecified;
        boolean uidSpecified;
        int uid = 0;
        int gid = 0;
        int mountExternal = 0;

        public Arguments(String[] strArr) {
            parseArgs(strArr);
        }

        private void parseArgs(String[] strArr) {
            int i2 = 0;
            boolean z2 = false;
            while (i2 < strArr.length) {
                String str = strArr[i2];
                if (str.equals("--")) {
                    i2++;
                    break;
                }
                if (str.startsWith("--setuid=")) {
                    if (this.uidSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.uidSpecified = true;
                    this.uid = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.startsWith("--setgid=")) {
                    if (this.gidSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.gidSpecified = true;
                    this.gid = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.startsWith("--target-sdk-version=")) {
                    if (this.targetSdkVersionSpecified) {
                        throw new IllegalArgumentException("Duplicate target-sdk-version specified");
                    }
                    this.targetSdkVersionSpecified = true;
                    this.targetSdkVersion = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.equals("--enable-jdwp")) {
                    this.debugFlags |= 1;
                } else if (str.equals("--enable-safemode")) {
                    this.debugFlags |= 8;
                } else if (str.equals("--enable-checkjni")) {
                    this.debugFlags |= 2;
                } else if (str.equals("--generate-debug-info")) {
                    this.debugFlags |= 32;
                } else if (str.equals("--always-jit")) {
                    this.debugFlags |= 64;
                } else if (str.equals("--native-debuggable")) {
                    this.debugFlags |= 128;
                } else if (str.equals("--java-debuggable")) {
                    this.debugFlags |= 256;
                } else if (str.equals("--enable-jni-logging")) {
                    this.debugFlags |= 16;
                } else if (str.equals("--enable-assert")) {
                    this.debugFlags |= 4;
                } else if (str.equals("--runtime-args")) {
                    z2 = true;
                } else if (str.startsWith("--seinfo=")) {
                    if (this.seInfoSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.seInfoSpecified = true;
                    this.seInfo = str.substring(str.indexOf(61) + 1);
                } else if (str.startsWith("--capabilities=")) {
                    if (this.capabilitiesSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.capabilitiesSpecified = true;
                    String[] strArrSplit = str.substring(str.indexOf(61) + 1).split(",", 2);
                    if (strArrSplit.length == 1) {
                        long jLongValue = Long.decode(strArrSplit[0]).longValue();
                        this.effectiveCapabilities = jLongValue;
                        this.permittedCapabilities = jLongValue;
                    } else {
                        this.permittedCapabilities = Long.decode(strArrSplit[0]).longValue();
                        this.effectiveCapabilities = Long.decode(strArrSplit[1]).longValue();
                    }
                } else if (str.startsWith("--rlimit=")) {
                    String[] strArrSplit2 = str.substring(str.indexOf(61) + 1).split(",");
                    if (strArrSplit2.length != 3) {
                        throw new IllegalArgumentException("--rlimit= should have 3 comma-delimited ints");
                    }
                    int[] iArr = new int[strArrSplit2.length];
                    for (int i3 = 0; i3 < strArrSplit2.length; i3++) {
                        iArr[i3] = Integer.parseInt(strArrSplit2[i3]);
                    }
                    if (this.rlimits == null) {
                        this.rlimits = new ArrayList<>();
                    }
                    this.rlimits.add(iArr);
                } else if (str.startsWith("--setgroups=")) {
                    if (this.gids != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    String[] strArrSplit3 = str.substring(str.indexOf(61) + 1).split(",");
                    this.gids = new int[strArrSplit3.length];
                    for (int length = strArrSplit3.length - 1; length >= 0; length--) {
                        this.gids[length] = Integer.parseInt(strArrSplit3[length]);
                    }
                } else if (str.equals("--invoke-with")) {
                    if (this.invokeWith != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    i2++;
                    try {
                        this.invokeWith = strArr[i2];
                    } catch (IndexOutOfBoundsException unused) {
                        throw new IllegalArgumentException("--invoke-with requires argument");
                    }
                } else if (str.startsWith("--nice-name=")) {
                    if (this.niceName != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.niceName = str.substring(str.indexOf(61) + 1);
                } else if (str.equals("--mount-external-default")) {
                    this.mountExternal = 1;
                } else if (str.equals("--mount-external-read")) {
                    this.mountExternal = 2;
                } else if (str.equals("--mount-external-write")) {
                    this.mountExternal = 3;
                } else if (str.equals("--query-abi-list")) {
                    this.abiListQuery = true;
                } else if (str.startsWith("--instruction-set=")) {
                    this.instructionSet = str.substring(str.indexOf(61) + 1);
                } else if (str.startsWith("--app-data-dir=")) {
                    this.appDataDir = str.substring(str.indexOf(61) + 1);
                } else if (str.equals("--preload-package")) {
                    int i4 = i2 + 1;
                    this.preloadPackage = strArr[i4];
                    int i5 = i4 + 1;
                    this.preloadPackageLibs = strArr[i5];
                    i2 = i5 + 1;
                    this.preloadPackageCacheKey = strArr[i2];
                } else if (!str.equals("--preload-default")) {
                    break;
                } else {
                    this.preloadDefault = true;
                }
                i2++;
            }
            if (this.abiListQuery) {
                if (strArr.length - i2 > 0) {
                    throw new IllegalArgumentException("Unexpected arguments after --query-abi-list.");
                }
                return;
            }
            if (this.preloadPackage != null) {
                if (strArr.length - i2 > 0) {
                    throw new IllegalArgumentException("Unexpected arguments after --preload-package.");
                }
            } else {
                if (this.preloadDefault) {
                    return;
                }
                if (!z2) {
                    throw new IllegalArgumentException("Unexpected argument : " + strArr[i2]);
                }
                String[] strArr2 = new String[strArr.length - i2];
                this.remainingArgs = strArr2;
                System.arraycopy(strArr, i2, strArr2, 0, strArr2.length);
            }
        }
    }

    public ZygoteConnection(LocalSocket localSocket, String str) throws IOException {
        this.mSocket = localSocket;
        this.abiList = str;
        this.mSocketOutStream = new DataOutputStream(localSocket.getOutputStream());
        this.mSocketReader = new BufferedReader(new InputStreamReader(localSocket.getInputStream()), 256);
        localSocket.setSoTimeout(1000);
        try {
            this.peer = localSocket.getPeerCredentials();
            this.isEof = false;
        } catch (IOException e2) {
            Log.e(TAG, "Cannot read peer credentials", e2);
            throw e2;
        }
    }

    public static void applyDebuggerSystemProperty(Arguments arguments) {
        if (RoSystemProperties.DEBUGGABLE) {
            arguments.debugFlags |= 1;
        }
    }

    private static void applyInvokeWithSecurityPolicy(Arguments arguments, Credentials credentials) {
        int uid = credentials.getUid();
        if (arguments.invokeWith != null && uid != 0 && (arguments.debugFlags & 1) == 0) {
            throw new ZygoteSecurityException("Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications.");
        }
    }

    public static void applyInvokeWithSystemProperty(Arguments arguments) {
        if (arguments.invokeWith != null || arguments.niceName == null) {
            return;
        }
        String str = SystemProperties.get("wrap." + arguments.niceName);
        arguments.invokeWith = str;
        if (str == null || str.length() != 0) {
            return;
        }
        arguments.invokeWith = null;
    }

    private static void applyUidSecurityPolicy(Arguments arguments, Credentials credentials) {
        if (credentials.getUid() == 1000) {
            if ((FactoryTest.getMode() == 0) && arguments.uidSpecified && arguments.uid < 1000) {
                throw new ZygoteSecurityException("System UID may not launch process with UID < 1000");
            }
        }
        if (!arguments.uidSpecified) {
            arguments.uid = credentials.getUid();
            arguments.uidSpecified = true;
        }
        if (arguments.gidSpecified) {
            return;
        }
        arguments.gid = credentials.getGid();
        arguments.gidSpecified = true;
    }

    private void handleAbiListQuery() {
        try {
            byte[] bytes = this.abiList.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(bytes.length);
            this.mSocketOutStream.write(bytes);
        } catch (IOException e2) {
            throw new IllegalStateException("Error writing to command socket", e2);
        }
    }

    private Runnable handleChildProc(Arguments arguments, FileDescriptor[] fileDescriptorArr, FileDescriptor fileDescriptor) {
        closeSocket();
        if (fileDescriptorArr != null) {
            try {
                Os.dup2(fileDescriptorArr[0], OsConstants.STDIN_FILENO);
                Os.dup2(fileDescriptorArr[1], OsConstants.STDOUT_FILENO);
                Os.dup2(fileDescriptorArr[2], OsConstants.STDERR_FILENO);
                for (FileDescriptor fileDescriptor2 : fileDescriptorArr) {
                    IoUtils.closeQuietly(fileDescriptor2);
                }
            } catch (ErrnoException e2) {
                Log.e(TAG, "Error reopening stdio", e2);
            }
        }
        String str = arguments.niceName;
        if (str != null) {
            Process.setArgV0(str);
        }
        Trace.traceEnd(64L);
        String str2 = arguments.invokeWith;
        if (str2 == null) {
            RuntimeInit.appDataDir = arguments.appDataDir;
            return ZygoteInit.zygoteInit(arguments.targetSdkVersion, arguments.remainingArgs, null);
        }
        WrapperInit.execApplication(str2, arguments.niceName, arguments.targetSdkVersion, VMRuntime.getCurrentInstructionSet(), fileDescriptor, arguments.remainingArgs);
        throw new IllegalStateException("WrapperInit.execApplication unexpectedly returned");
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d4  */
    /* JADX WARN: Instruction removed from duplicated block: B:60:0x00c0, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:61:0x00d4, please report this as an issue */
    private void handleParentProc(int i2, FileDescriptor[] fileDescriptorArr, FileDescriptor fileDescriptor) {
        boolean z2;
        int i3;
        int parentPid;
        int i4;
        int i5 = i2;
        if (i5 > 0) {
            setChildPgid(i2);
        }
        boolean z3 = false;
        if (fileDescriptorArr != null) {
            for (FileDescriptor fileDescriptor2 : fileDescriptorArr) {
                IoUtils.closeQuietly(fileDescriptor2);
            }
        }
        if (fileDescriptor != null && i5 > 0) {
            boolean z4 = true;
            try {
                StructPollfd[] structPollfdArr = {new StructPollfd()};
                int i6 = 4;
                byte[] bArr = new byte[4];
                long jNanoTime = System.nanoTime();
                int i7 = 0;
                int i8 = 30000;
                while (true) {
                    if (i7 >= i6 || i8 <= 0) {
                        z2 = z4;
                        break;
                    }
                    StructPollfd structPollfd = structPollfdArr[0];
                    structPollfd.fd = fileDescriptor;
                    structPollfd.events = (short) OsConstants.POLLIN;
                    structPollfd.revents = (short) 0;
                    structPollfd.userData = null;
                    int iPoll = Os.poll(structPollfdArr, i8);
                    try {
                        int iNanoTime = 30000 - ((int) ((System.nanoTime() - jNanoTime) / TimeUtils.NANOS_PER_MS));
                        if (iPoll <= 0) {
                            z2 = true;
                            if (iPoll == 0) {
                                Log.w(TAG, "Timed out waiting for child.");
                            }
                        } else {
                            if ((structPollfdArr[0].revents & OsConstants.POLLIN) == 0) {
                                z2 = true;
                                break;
                            }
                            z2 = true;
                            try {
                                int i9 = Os.read(fileDescriptor, bArr, i7, 1);
                                if (i9 < 0) {
                                    throw new RuntimeException("Some error");
                                }
                                i7 += i9;
                            } catch (Exception e2) {
                                e = e2;
                                i4 = -1;
                                Log.w(TAG, "Error reading pid from wrapped process, child may have died", e);
                                i3 = i4;
                                if (i3 > 0) {
                                    parentPid = i3;
                                    while (parentPid > 0) {
                                        parentPid = Process.getParentPid(parentPid);
                                    }
                                    if (parentPid > 0) {
                                        Log.i(TAG, "Wrapped process has pid " + i3);
                                        i5 = i3;
                                        z3 = z2;
                                    } else {
                                        Log.w(TAG, "Wrapped process reported a pid that is not a child of the process that we forked: childPid=" + i5 + " innerPid=" + i3);
                                    }
                                }
                                this.mSocketOutStream.writeInt(i5);
                                this.mSocketOutStream.writeBoolean(z3);
                            }
                        }
                        i8 = iNanoTime;
                        z4 = z2;
                        i6 = 4;
                    } catch (Exception e3) {
                        e = e3;
                        z2 = true;
                    }
                }
                i3 = i7 == 4 ? new DataInputStream(new ByteArrayInputStream(bArr)).readInt() : -1;
                if (i3 == -1) {
                    try {
                        Log.w(TAG, "Error reading pid from wrapped process, child may have died");
                    } catch (Exception e4) {
                        e = e4;
                        i4 = i3;
                        Log.w(TAG, "Error reading pid from wrapped process, child may have died", e);
                        i3 = i4;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                z2 = z4;
            }
            if (i3 > 0) {
                parentPid = i3;
                while (parentPid > 0 && parentPid != i5) {
                    parentPid = Process.getParentPid(parentPid);
                }
                if (parentPid > 0) {
                    Log.i(TAG, "Wrapped process has pid " + i3);
                    i5 = i3;
                    z3 = z2;
                } else {
                    Log.w(TAG, "Wrapped process reported a pid that is not a child of the process that we forked: childPid=" + i5 + " innerPid=" + i3);
                }
            }
        }
        try {
            this.mSocketOutStream.writeInt(i5);
            this.mSocketOutStream.writeBoolean(z3);
        } catch (IOException e6) {
            throw new IllegalStateException("Error writing to command socket", e6);
        }
    }

    private void handlePreload() {
        try {
            if (isPreloadComplete()) {
                this.mSocketOutStream.writeInt(1);
            } else {
                preload();
                this.mSocketOutStream.writeInt(0);
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Error writing to command socket", e2);
        }
    }

    private String[] readArgumentList() throws IOException {
        try {
            String line = this.mSocketReader.readLine();
            if (line == null) {
                return null;
            }
            int i2 = Integer.parseInt(line);
            if (i2 > 1024) {
                throw new IOException("max arg count exceeded");
            }
            String[] strArr = new String[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                String line2 = this.mSocketReader.readLine();
                strArr[i3] = line2;
                if (line2 == null) {
                    throw new IOException("truncated request");
                }
            }
            return strArr;
        } catch (NumberFormatException unused) {
            Log.e(TAG, "invalid Zygote wire format: non-int at argc");
            throw new IOException("invalid wire format");
        }
    }

    private void setChildPgid(int i2) {
        try {
            Os.setpgid(i2, Os.getpgid(this.peer.getPid()));
        } catch (ErrnoException unused) {
            Log.i(TAG, "Zygote: setpgid failed. This is normal if peer is not in our session");
        }
    }

    public void closeSocket() {
        try {
            this.mSocket.close();
        } catch (IOException e2) {
            Log.e(TAG, "Exception while closing command socket in parent", e2);
        }
    }

    public FileDescriptor getFileDesciptor() {
        return this.mSocket.getFileDescriptor();
    }

    public DataOutputStream getSocketOutputStream() {
        return this.mSocketOutStream;
    }

    public void handlePreloadPackage(String str, String str2, String str3) {
        throw new RuntimeException("Zyogte does not support package preloading");
    }

    public boolean isClosedByPeer() {
        return this.isEof;
    }

    public boolean isPreloadComplete() {
        return ZygoteInit.isPreloadComplete();
    }

    public void preload() {
        ZygoteInit.lazyPreload();
    }

    public Runnable processOneCommand(ZygoteServer zygoteServer) {
        FileDescriptor fileDescriptor;
        FileDescriptor fileDescriptor2;
        int[] iArr;
        FileDescriptor fileDescriptor3;
        FileDescriptor fileDescriptor4;
        try {
            String[] argumentList = readArgumentList();
            FileDescriptor[] ancillaryFileDescriptors = this.mSocket.getAncillaryFileDescriptors();
            if (argumentList == null) {
                this.isEof = true;
                return null;
            }
            Arguments arguments = new Arguments(argumentList);
            if (arguments.abiListQuery) {
                handleAbiListQuery();
                return null;
            }
            if (arguments.preloadDefault) {
                handlePreload();
                return null;
            }
            String str = arguments.preloadPackage;
            if (str != null) {
                handlePreloadPackage(str, arguments.preloadPackageLibs, arguments.preloadPackageCacheKey);
                return null;
            }
            if (arguments.permittedCapabilities != 0 || arguments.effectiveCapabilities != 0) {
                throw new ZygoteSecurityException("Client may not specify capabilities: permitted=0x" + Long.toHexString(arguments.permittedCapabilities) + ", effective=0x" + Long.toHexString(arguments.effectiveCapabilities));
            }
            applyUidSecurityPolicy(arguments, this.peer);
            applyInvokeWithSecurityPolicy(arguments, this.peer);
            applyDebuggerSystemProperty(arguments);
            applyInvokeWithSystemProperty(arguments);
            ArrayList<int[]> arrayList = arguments.rlimits;
            int[][] iArr2 = arrayList != null ? (int[][]) arrayList.toArray(intArray2d) : null;
            if (arguments.invokeWith != null) {
                try {
                    FileDescriptor[] fileDescriptorArrPipe2 = Os.pipe2(OsConstants.O_CLOEXEC);
                    FileDescriptor fileDescriptor5 = fileDescriptorArrPipe2[1];
                    FileDescriptor fileDescriptor6 = fileDescriptorArrPipe2[0];
                    Os.fcntlInt(fileDescriptor5, OsConstants.F_SETFD, 0);
                    fileDescriptor = fileDescriptor6;
                    fileDescriptor2 = fileDescriptor5;
                    iArr = new int[]{fileDescriptor5.getInt$(), fileDescriptor6.getInt$()};
                } catch (ErrnoException e2) {
                    throw new IllegalStateException("Unable to set up pipe for invoke-with", e2);
                }
            } else {
                iArr = null;
                fileDescriptor2 = null;
                fileDescriptor = null;
            }
            int[] iArr3 = {-1, -1};
            FileDescriptor fileDescriptor7 = this.mSocket.getFileDescriptor();
            if (fileDescriptor7 != null) {
                iArr3[0] = fileDescriptor7.getInt$();
            }
            FileDescriptor serverSocketFileDescriptor = zygoteServer.getServerSocketFileDescriptor();
            if (serverSocketFileDescriptor != null) {
                iArr3[1] = serverSocketFileDescriptor.getInt$();
            }
            FileDescriptor fileDescriptor8 = fileDescriptor2;
            FileDescriptor fileDescriptor9 = fileDescriptor;
            int iForkAndSpecialize = Zygote.forkAndSpecialize(arguments.uid, arguments.gid, arguments.gids, arguments.debugFlags, iArr2, arguments.mountExternal, arguments.seInfo, arguments.niceName, iArr3, iArr, arguments.instructionSet, arguments.appDataDir);
            if (iForkAndSpecialize == 0) {
                try {
                    zygoteServer.setForkChild();
                    zygoteServer.closeServerSocket();
                    IoUtils.closeQuietly(fileDescriptor9);
                    try {
                        Runnable runnableHandleChildProc = handleChildProc(arguments, ancillaryFileDescriptors, fileDescriptor8);
                        IoUtils.closeQuietly(fileDescriptor8);
                        IoUtils.closeQuietly((FileDescriptor) null);
                        return runnableHandleChildProc;
                    } catch (Throwable th) {
                        th = th;
                        fileDescriptor3 = fileDescriptor8;
                        fileDescriptor4 = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileDescriptor4 = fileDescriptor9;
                    fileDescriptor3 = fileDescriptor8;
                }
            } else {
                try {
                    IoUtils.closeQuietly(fileDescriptor8);
                    try {
                        handleParentProc(iForkAndSpecialize, ancillaryFileDescriptors, fileDescriptor9);
                        IoUtils.closeQuietly((FileDescriptor) null);
                        IoUtils.closeQuietly(fileDescriptor9);
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileDescriptor4 = fileDescriptor9;
                        fileDescriptor3 = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileDescriptor4 = fileDescriptor9;
                    fileDescriptor3 = fileDescriptor8;
                }
            }
            IoUtils.closeQuietly(fileDescriptor3);
            IoUtils.closeQuietly(fileDescriptor4);
            throw th;
        } catch (IOException e3) {
            throw new IllegalStateException("IOException on command socket", e3);
        }
    }
}
