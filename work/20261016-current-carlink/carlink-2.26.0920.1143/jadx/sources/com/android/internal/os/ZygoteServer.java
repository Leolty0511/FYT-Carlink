package com.android.internal.os;

import android.accessibilityservice.c;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructPollfd;
import android.util.Log;
import android.util.Slog;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class ZygoteServer {
    private static final String ANDROID_SOCKET_PREFIX = "ANDROID_SOCKET_";
    public static final String TAG = "ZygoteServer";
    private boolean mIsForkChild;
    private LocalServerSocket mServerSocket;

    private ZygoteConnection acceptCommandPeer(String str) {
        try {
            return createNewConnection(this.mServerSocket.accept(), str);
        } catch (IOException e2) {
            throw new RuntimeException("IOException during accept()", e2);
        }
    }

    public void closeServerSocket() {
        try {
            LocalServerSocket localServerSocket = this.mServerSocket;
            if (localServerSocket != null) {
                FileDescriptor fileDescriptor = localServerSocket.getFileDescriptor();
                this.mServerSocket.close();
                if (fileDescriptor != null) {
                    Os.close(fileDescriptor);
                }
            }
        } catch (ErrnoException e2) {
            Log.e(TAG, "Zygote:  error closing descriptor", e2);
        } catch (IOException e3) {
            Log.e(TAG, "Zygote:  error closing sockets", e3);
        }
        this.mServerSocket = null;
    }

    public ZygoteConnection createNewConnection(LocalSocket localSocket, String str) {
        return new ZygoteConnection(localSocket, str);
    }

    public FileDescriptor getServerSocketFileDescriptor() {
        return this.mServerSocket.getFileDescriptor();
    }

    public void registerServerSocket(String str) {
        if (this.mServerSocket == null) {
            String strJ = c.j(ANDROID_SOCKET_PREFIX, str);
            try {
                int i2 = Integer.parseInt(System.getenv(strJ));
                try {
                    FileDescriptor fileDescriptor = new FileDescriptor();
                    fileDescriptor.setInt$(i2);
                    this.mServerSocket = new LocalServerSocket(fileDescriptor);
                } catch (IOException e2) {
                    throw new RuntimeException(c.e("Error binding to local socket '", i2, "'"), e2);
                }
            } catch (RuntimeException e3) {
                throw new RuntimeException(c.D(strJ, " unset or invalid"), e3);
            }
        }
    }

    public Runnable runSelectLoop(String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(this.mServerSocket.getFileDescriptor());
        arrayList2.add(null);
        while (true) {
            int size = arrayList.size();
            StructPollfd[] structPollfdArr = new StructPollfd[size];
            for (int i2 = 0; i2 < size; i2++) {
                StructPollfd structPollfd = new StructPollfd();
                structPollfdArr[i2] = structPollfd;
                structPollfd.fd = (FileDescriptor) arrayList.get(i2);
                structPollfdArr[i2].events = (short) OsConstants.POLLIN;
            }
            try {
                Os.poll(structPollfdArr, -1);
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    if ((structPollfdArr[i3].revents & OsConstants.POLLIN) != 0) {
                        if (i3 == 0) {
                            ZygoteConnection zygoteConnectionAcceptCommandPeer = acceptCommandPeer(str);
                            arrayList2.add(zygoteConnectionAcceptCommandPeer);
                            arrayList.add(zygoteConnectionAcceptCommandPeer.getFileDesciptor());
                        } else {
                            try {
                                ZygoteConnection zygoteConnection = (ZygoteConnection) arrayList2.get(i3);
                                Runnable runnableProcessOneCommand = zygoteConnection.processOneCommand(this);
                                if (this.mIsForkChild) {
                                    if (runnableProcessOneCommand != null) {
                                        return runnableProcessOneCommand;
                                    }
                                    throw new IllegalStateException("command == null");
                                }
                                if (runnableProcessOneCommand != null) {
                                    throw new IllegalStateException("command != null");
                                }
                                if (zygoteConnection.isClosedByPeer()) {
                                    zygoteConnection.closeSocket();
                                    arrayList2.remove(i3);
                                    arrayList.remove(i3);
                                }
                            } catch (Exception e2) {
                                if (this.mIsForkChild) {
                                    Log.e(TAG, "Caught post-fork exception in child process.", e2);
                                    throw e2;
                                }
                                Slog.e(TAG, "Exception executing zygote command: ", e2);
                                ((ZygoteConnection) arrayList2.remove(i3)).closeSocket();
                                arrayList.remove(i3);
                            }
                        }
                    }
                }
            } catch (ErrnoException e3) {
                throw new RuntimeException("poll failed", e3);
            }
        }
    }

    public void setForkChild() {
        this.mIsForkChild = true;
    }
}
