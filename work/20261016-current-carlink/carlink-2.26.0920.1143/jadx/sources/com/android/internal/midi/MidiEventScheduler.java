package com.android.internal.midi;

import android.accessibilityservice.c;
import android.media.midi.MidiReceiver;

/* JADX INFO: loaded from: classes2.dex */
public class MidiEventScheduler extends EventScheduler {
    private static final int POOL_EVENT_SIZE = 16;
    private static final String TAG = "MidiEventScheduler";
    private MidiReceiver mReceiver = new SchedulingReceiver();

    public class SchedulingReceiver extends MidiReceiver {
        private SchedulingReceiver() {
        }

        @Override // android.media.midi.MidiReceiver
        public void onFlush() {
            MidiEventScheduler.this.flush();
        }

        @Override // android.media.midi.MidiReceiver
        public void onSend(byte[] bArr, int i2, int i3, long j2) {
            MidiEvent midiEventCreateScheduledEvent = MidiEventScheduler.this.createScheduledEvent(bArr, i2, i3, j2);
            if (midiEventCreateScheduledEvent != null) {
                MidiEventScheduler.this.add(midiEventCreateScheduledEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MidiEvent createScheduledEvent(byte[] bArr, int i2, int i3, long j2) {
        int i4 = 16;
        if (i3 > 16) {
            return new MidiEvent(bArr, i2, i3, j2);
        }
        MidiEvent midiEvent = (MidiEvent) removeEventfromPool();
        if (midiEvent == null) {
            midiEvent = new MidiEvent(i4);
        }
        MidiEvent midiEvent2 = midiEvent;
        System.arraycopy(bArr, i2, midiEvent2.data, 0, i3);
        midiEvent2.count = i3;
        midiEvent2.setTimestamp(j2);
        return midiEvent2;
    }

    @Override // com.android.internal.midi.EventScheduler
    public void addEventToPool(EventScheduler.SchedulableEvent schedulableEvent) {
        if ((schedulableEvent instanceof MidiEvent) && ((MidiEvent) schedulableEvent).data.length == 16) {
            super.addEventToPool(schedulableEvent);
        }
    }

    public MidiReceiver getReceiver() {
        return this.mReceiver;
    }

    public static class MidiEvent extends EventScheduler.SchedulableEvent {
        public int count;
        public byte[] data;

        public String toString() {
            String strM = "Event: ";
            for (int i2 = 0; i2 < this.count; i2++) {
                strM = c.m(c.r(strM), this.data[i2], ", ");
            }
            return strM;
        }

        private MidiEvent(int i2) {
            super(0L);
            this.count = 0;
            this.data = new byte[i2];
        }

        private MidiEvent(byte[] bArr, int i2, int i3, long j2) {
            super(j2);
            this.count = 0;
            byte[] bArr2 = new byte[i3];
            this.data = bArr2;
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            this.count = i3;
        }
    }
}
