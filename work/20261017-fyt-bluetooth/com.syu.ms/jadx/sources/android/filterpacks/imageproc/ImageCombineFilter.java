package android.filterpacks.imageproc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.Program;
import android.filterfw.format.ImageFormat;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageCombineFilter extends Filter {
    public int mCurrentTarget;
    public String[] mInputNames;
    public String mOutputName;
    public String mParameterName;
    public Program mProgram;

    public ImageCombineFilter(String str, String[] strArr, String str2, String str3) {
        super(str);
        this.mCurrentTarget = 0;
        this.mInputNames = strArr;
        this.mOutputName = str2;
        this.mParameterName = str3;
    }

    private void assertAllInputTargetsMatch() {
        int target = getInputFormat(this.mInputNames[0]).getTarget();
        for (String str : this.mInputNames) {
            if (target != getInputFormat(str).getTarget()) {
                throw new RuntimeException("Type mismatch of input formats in filter " + this + ". All input frames must have the same target!");
            }
        }
    }

    public abstract Program getNativeProgram(FilterContext filterContext);

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public abstract Program getShaderProgram(FilterContext filterContext);

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        String[] strArr = this.mInputNames;
        Frame[] frameArr = new Frame[strArr.length];
        int length = strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            frameArr[i3] = pullInput(strArr[i2]);
            i2++;
            i3++;
        }
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(frameArr[0].getFormat());
        updateProgramWithTarget(frameArr[0].getFormat().getTarget(), filterContext);
        this.mProgram.process(frameArr, frameNewFrame);
        pushOutput(this.mOutputName, frameNewFrame);
        frameNewFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        if (this.mParameterName != null) {
            try {
                Field declaredField = ImageCombineFilter.class.getDeclaredField("mProgram");
                String str = this.mParameterName;
                addProgramPort(str, str, declaredField, Float.TYPE, false);
            } catch (NoSuchFieldException unused) {
                throw new RuntimeException("Internal Error: mProgram field not found!");
            }
        }
        for (String str2 : this.mInputNames) {
            addMaskedInputPort(str2, ImageFormat.create(3));
        }
        addOutputBasedOnInput(this.mOutputName, this.mInputNames[0]);
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
