package android.filterfw.core;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class FinalPort extends FieldPort {
    public FinalPort(Filter filter, String str, Field field, boolean z2) {
        super(filter, str, field, z2);
    }

    @Override // android.filterfw.core.FieldPort
    public synchronized void setFieldFrame(Frame frame, boolean z2) {
        assertPortIsOpen();
        checkFrameType(frame, z2);
        if (this.mFilter.getStatus() != 0) {
            throw new RuntimeException("Attempting to modify " + this + "!");
        }
        super.setFieldFrame(frame, z2);
        super.transfer(null);
    }

    @Override // android.filterfw.core.FieldPort, android.filterfw.core.FilterPort
    public String toString() {
        return "final " + super.toString();
    }
}
