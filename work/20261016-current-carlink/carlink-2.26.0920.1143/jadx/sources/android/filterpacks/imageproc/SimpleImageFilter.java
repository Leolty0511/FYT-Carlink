package android.filterpacks.imageproc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.Program;
import android.filterfw.format.ImageFormat;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleImageFilter extends Filter {
    protected int mCurrentTarget;
    protected String mParameterName;
    protected Program mProgram;

    public SimpleImageFilter(String str, String str2) {
        super(str);
        this.mCurrentTarget = 0;
        this.mParameterName = str2;
    }

    public abstract Program getNativeProgram(FilterContext filterContext);

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public abstract Program getShaderProgram(FilterContext filterContext);

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        FrameFormat format = framePullInput.getFormat();
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(format);
        updateProgramWithTarget(format.getTarget(), filterContext);
        this.mProgram.process(framePullInput, frameNewFrame);
        pushOutput("image", frameNewFrame);
        frameNewFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        if (this.mParameterName != null) {
            try {
                Field declaredField = SimpleImageFilter.class.getDeclaredField("mProgram");
                String str = this.mParameterName;
                addProgramPort(str, str, declaredField, Float.TYPE, false);
            } catch (NoSuchFieldException unused) {
                throw new RuntimeException("Internal Error: mProgram field not found!");
            }
        }
        addMaskedInputPort("image", ImageFormat.create(3));
        addOutputBasedOnInput("image", "image");
    }

    public void updateProgramWithTarget(int i2, FilterContext filterContext) {
        if (i2 != this.mCurrentTarget) {
            if (i2 == 2) {
                this.mProgram = getNativeProgram(filterContext);
            } else if (i2 != 3) {
                this.mProgram = null;
            } else {
                this.mProgram = getShaderProgram(filterContext);
            }
            Program program = this.mProgram;
            if (program != null) {
                initProgramInputs(program, filterContext);
                this.mCurrentTarget = i2;
            } else {
                throw new RuntimeException("Could not create a program for image filter " + this + "!");
            }
        }
    }
}
