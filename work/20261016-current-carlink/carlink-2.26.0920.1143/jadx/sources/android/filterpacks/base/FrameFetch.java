package android.filterpacks.base;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes.dex */
public class FrameFetch extends Filter {

    @GenerateFinalPort(hasDefault = true, name = "format")
    private FrameFormat mFormat;

    @GenerateFieldPort(name = "key")
    private String mKey;

    @GenerateFieldPort(hasDefault = true, name = "repeatFrame")
    private boolean mRepeatFrame;

    public FrameFetch(String str) {
        super(str);
        this.mRepeatFrame = false;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame frameFetchFrame = filterContext.fetchFrame(this.mKey);
        if (frameFetchFrame == null) {
            delayNextProcess(250);
            return;
        }
        pushOutput(TypedValues.AttributesType.S_FRAME, frameFetchFrame);
        if (this.mRepeatFrame) {
            return;
        }
        closeOutputPort(TypedValues.AttributesType.S_FRAME);
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        FrameFormat frameFormatUnspecified = this.mFormat;
        if (frameFormatUnspecified == null) {
            frameFormatUnspecified = FrameFormat.unspecified();
        }
        addOutputPort(TypedValues.AttributesType.S_FRAME, frameFormatUnspecified);
    }
}
