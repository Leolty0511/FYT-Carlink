package com.android.internal.midi;

import android.media.midi.MidiReceiver;
import android.media.midi.MidiSender;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class MidiDispatcher extends MidiReceiver {
    private final MidiReceiverFailureHandler mFailureHandler;
    private final CopyOnWriteArrayList<MidiReceiver> mReceivers;
    private final MidiSender mSender;

    public interface MidiReceiverFailureHandler {
        void onReceiverFailure(MidiReceiver midiReceiver, IOException iOException);
    }

    public MidiDispatcher() {
        this(null);
    }

    public int getReceiverCount() {
        return this.mReceivers.size();
    }

    public MidiSender getSender() {
        return this.mSender;
    }

    @Override // android.media.midi.MidiReceiver
    public void onFlush() {
        for (MidiReceiver midiReceiver : this.mReceivers) {
            try {
                midiReceiver.flush();
            } catch (IOException e2) {
                this.mReceivers.remove(midiReceiver);
                if (this.mFailureHandler != null) {
                    this.mFailureHandler.onReceiverFailure(midiReceiver, e2);
                }
            }
        }
    }

    @Override // android.media.midi.MidiReceiver
    public void onSend(byte[] bArr, int i2, int i3, long j2) {
        for (MidiReceiver midiReceiver : this.mReceivers) {
            try {
                midiReceiver.send(bArr, i2, i3, j2);
            } catch (IOException e2) {
                this.mReceivers.remove(midiReceiver);
                if (this.mFailureHandler != null) {
                    this.mFailureHandler.onReceiverFailure(midiReceiver, e2);
                }
            }
        }
    }

    public MidiDispatcher(MidiReceiverFailureHandler midiReceiverFailureHandler) {
        this.mReceivers = new CopyOnWriteArrayList<>();
        this.mSender = new MidiSender() { // from class: com.android.internal.midi.MidiDispatcher.1
            @Override // android.media.midi.MidiSender
            public void onConnect(MidiReceiver midiReceiver) {
                MidiDispatcher.this.mReceivers.add(midiReceiver);
            }

            @Override // android.media.midi.MidiSender
            public void onDisconnect(MidiReceiver midiReceiver) {
                MidiDispatcher.this.mReceivers.remove(midiReceiver);
            }
        };
        this.mFailureHandler = midiReceiverFailureHandler;
    }
}
