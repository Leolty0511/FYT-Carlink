package com.syu.bt.recsound;

import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.AsyncTask;
import com.syu.bt.App_Bt;
import com.syu.bt.InterfaceBt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class RecSound {
    private File iRecAudioFile;
    private PlayTask player;
    private RecordTask recorder;
    private String iRecFileNameString = "recording_";
    private boolean isRecording = true;
    private boolean isPlaying = false;
    private int frequence = 8000;
    private int channelConfig = 2;
    private int audioEncoding = 2;

    public void startRecord() {
        try {
            if (this.iRecAudioFile != null && this.iRecAudioFile.exists()) {
                this.iRecAudioFile.delete();
            }
            File iRecAudioDir = new File("/mnt/sdcard");
            this.iRecAudioFile = File.createTempFile(this.iRecFileNameString, ".pcm", iRecAudioDir);
            this.recorder = new RecordTask();
            this.recorder.execute(new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void stopRecord() {
        try {
            if (this.iRecAudioFile != null) {
                this.isRecording = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void playRecord() {
        this.player = new PlayTask();
        this.player.execute(new Void[0]);
    }

    class RecordTask extends AsyncTask<Void, Integer, Void> {
        RecordTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... arg0) {
            RecSound.this.isRecording = true;
            try {
                DataOutputStream dos = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(RecSound.this.iRecAudioFile)));
                int bufferSize = AudioRecord.getMinBufferSize(RecSound.this.frequence, RecSound.this.channelConfig, RecSound.this.audioEncoding);
                AudioRecord record = new AudioRecord(1, RecSound.this.frequence, RecSound.this.channelConfig, RecSound.this.audioEncoding, bufferSize);
                short[] buffer = new short[bufferSize];
                record.startRecording();
                int r = 0;
                while (RecSound.this.isRecording) {
                    int bufferReadResult = record.read(buffer, 0, buffer.length);
                    for (int i = 0; i < bufferReadResult; i++) {
                        dos.writeShort(buffer[i]);
                    }
                    publishProgress(Integer.valueOf(r));
                    r++;
                }
                record.stop();
                dos.close();
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }

    class PlayTask extends AsyncTask<Void, Integer, Void> {
        PlayTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... arg0) {
            RecSound.this.isPlaying = true;
            int bufferSize = AudioTrack.getMinBufferSize(RecSound.this.frequence, RecSound.this.channelConfig, RecSound.this.audioEncoding);
            short[] buffer = new short[bufferSize / 4];
            try {
                DataInputStream dis = new DataInputStream(new BufferedInputStream(new FileInputStream(RecSound.this.iRecAudioFile)));
                AudioTrack track = new AudioTrack(0, RecSound.this.frequence, RecSound.this.channelConfig, RecSound.this.audioEncoding, bufferSize, 1);
                track.play();
                while (RecSound.this.isPlaying && dis.available() > 0) {
                    for (int i = 0; dis.available() > 0 && i < buffer.length; i++) {
                        buffer[i] = dis.readShort();
                    }
                    track.write(buffer, 0, buffer.length);
                }
                track.stop();
                RecSound.this.isPlaying = false;
                dis.close();
                for (InterfaceBt interfaceBt : App_Bt.mInterfaceBt) {
                    interfaceBt.dismissRecordDlg();
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }
}
