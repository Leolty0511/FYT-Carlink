package android.media;

import android.content.Context;
import android.net.Uri;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class AsyncPlayer {
    private static final int PLAY = 1;
    private static final int STOP = 2;
    private static final boolean mDebug = false;
    private MediaPlayer mPlayer;
    private String mTag;
    private Thread mThread;
    private PowerManager.WakeLock mWakeLock;
    private final LinkedList<Command> mCmdQueue = new LinkedList<>();
    private int mState = 2;

    public static final class Command {
        AudioAttributes attributes;
        int code;
        Context context;
        boolean looping;
        long requestTime;
        Uri uri;

        private Command() {
        }

        public String toString() {
            return "{ code=" + this.code + " looping=" + this.looping + " attr=" + this.attributes + " uri=" + this.uri + " }";
        }
    }

    public final class Thread extends java.lang.Thread {
        public Thread() {
            super("AsyncPlayer-" + AsyncPlayer.this.mTag);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Command command;
            while (true) {
                synchronized (AsyncPlayer.this.mCmdQueue) {
                    command = (Command) AsyncPlayer.this.mCmdQueue.removeFirst();
                }
                int i2 = command.code;
                if (i2 == 1) {
                    AsyncPlayer.this.startSound(command);
                } else if (i2 == 2) {
                    if (AsyncPlayer.this.mPlayer != null) {
                        long jUptimeMillis = SystemClock.uptimeMillis() - command.requestTime;
                        if (jUptimeMillis > 1000) {
                            Log.w(AsyncPlayer.this.mTag, "Notification stop delayed by " + jUptimeMillis + "msecs");
                        }
                        AsyncPlayer.this.mPlayer.stop();
                        AsyncPlayer.this.mPlayer.release();
                        AsyncPlayer.this.mPlayer = null;
                    } else {
                        Log.w(AsyncPlayer.this.mTag, "STOP command without a player");
                    }
                }
                synchronized (AsyncPlayer.this.mCmdQueue) {
                    if (AsyncPlayer.this.mCmdQueue.size() == 0) {
                        AsyncPlayer.this.mThread = null;
                        AsyncPlayer.this.releaseWakeLock();
                        return;
                    }
                }
            }
        }
    }

    public AsyncPlayer(String str) {
        if (str != null) {
            this.mTag = str;
        } else {
            this.mTag = "AsyncPlayer";
        }
    }

    private void acquireWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.acquire();
        }
    }

    private void enqueueLocked(Command command) {
        this.mCmdQueue.add(command);
        if (this.mThread == null) {
            acquireWakeLock();
            Thread thread = new Thread();
            this.mThread = thread;
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWakeLock() {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            wakeLock.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSound(Command command) {
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setAudioAttributes(command.attributes);
            mediaPlayer.setDataSource(command.context, command.uri);
            mediaPlayer.setLooping(command.looping);
            mediaPlayer.prepare();
            mediaPlayer.start();
            MediaPlayer mediaPlayer2 = this.mPlayer;
            if (mediaPlayer2 != null) {
                mediaPlayer2.release();
            }
            this.mPlayer = mediaPlayer;
            long jUptimeMillis = SystemClock.uptimeMillis() - command.requestTime;
            if (jUptimeMillis > 1000) {
                Log.w(this.mTag, "Notification sound delayed by " + jUptimeMillis + "msecs");
            }
        } catch (Exception e2) {
            Log.w(this.mTag, "error loading sound for " + command.uri, e2);
        }
    }

    public void play(Context context, Uri uri, boolean z2, int i2) {
        PlayerBase.deprecateStreamTypeForPlayback(i2, "AsyncPlayer", "play()");
        if (context == null || uri == null) {
            return;
        }
        try {
            play(context, uri, z2, new AudioAttributes.Builder().setInternalLegacyStreamType(i2).build());
        } catch (IllegalArgumentException e2) {
            Log.e(this.mTag, "Call to deprecated AsyncPlayer.play() method caused:", e2);
        }
    }

    public void setUsesWakeLock(Context context) {
        if (this.mWakeLock == null && this.mThread == null) {
            this.mWakeLock = ((PowerManager) context.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, this.mTag);
            return;
        }
        throw new RuntimeException("assertion failed mWakeLock=" + this.mWakeLock + " mThread=" + this.mThread);
    }

    public void stop() {
        synchronized (this.mCmdQueue) {
            if (this.mState != 2) {
                Command command = new Command();
                command.requestTime = SystemClock.uptimeMillis();
                command.code = 2;
                enqueueLocked(command);
                this.mState = 2;
            }
        }
    }

    public void play(Context context, Uri uri, boolean z2, AudioAttributes audioAttributes) {
        if (context != null && uri != null && audioAttributes != null) {
            Command command = new Command();
            command.requestTime = SystemClock.uptimeMillis();
            command.code = 1;
            command.context = context;
            command.uri = uri;
            command.looping = z2;
            command.attributes = audioAttributes;
            synchronized (this.mCmdQueue) {
                enqueueLocked(command);
                this.mState = 1;
            }
            return;
        }
        throw new IllegalArgumentException("Illegal null AsyncPlayer.play() argument");
    }
}
