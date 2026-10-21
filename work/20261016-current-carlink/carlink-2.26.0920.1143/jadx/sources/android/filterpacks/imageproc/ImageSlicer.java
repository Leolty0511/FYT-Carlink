package android.filterpacks.imageproc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* JADX INFO: loaded from: classes.dex */
public class ImageSlicer extends Filter {
    private int mInputHeight;
    private int mInputWidth;
    private Frame mOriginalFrame;
    private int mOutputHeight;
    private int mOutputWidth;

    @GenerateFieldPort(name = "padSize")
    private int mPadSize;
    private Program mProgram;
    private int mSliceHeight;
    private int mSliceIndex;
    private int mSliceWidth;

    @GenerateFieldPort(name = "xSlices")
    private int mXSlices;

    @GenerateFieldPort(name = "ySlices")
    private int mYSlices;

    public ImageSlicer(String str) {
        super(str);
        this.mSliceIndex = 0;
    }

    private void calcOutputFormatForInput(Frame frame) {
        this.mInputWidth = frame.getFormat().getWidth();
        int height = frame.getFormat().getHeight();
        this.mInputHeight = height;
        int i2 = this.mInputWidth;
        int i3 = this.mXSlices;
        int i4 = ((i2 + i3) - 1) / i3;
        this.mSliceWidth = i4;
        int i5 = this.mYSlices;
        int i6 = ((height + i5) - 1) / i5;
        this.mSliceHeight = i6;
        int i7 = this.mPadSize;
        this.mOutputWidth = (i7 * 2) + i4;
        this.mOutputHeight = (i7 * 2) + i6;
    }

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (this.mSliceIndex == 0) {
            Frame framePullInput = pullInput("image");
            this.mOriginalFrame = framePullInput;
            calcOutputFormatForInput(framePullInput);
        }
        MutableFrameFormat mutableFrameFormatMutableCopy = this.mOriginalFrame.getFormat().mutableCopy();
        mutableFrameFormatMutableCopy.setDimensions(this.mOutputWidth, this.mOutputHeight);
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(mutableFrameFormatMutableCopy);
        if (this.mProgram == null) {
            this.mProgram = ShaderProgram.createIdentity(filterContext);
        }
        int i2 = this.mSliceIndex;
        int i3 = this.mXSlices;
        int i4 = i2 % i3;
        int i5 = i2 / i3;
        int i6 = i4 * this.mSliceWidth;
        int i7 = this.mPadSize;
        int i8 = this.mInputWidth;
        float f2 = (i6 - i7) / i8;
        float f3 = (i5 * this.mSliceHeight) - i7;
        int i9 = this.mInputHeight;
        ((ShaderProgram) this.mProgram).setSourceRect(f2, f3 / i9, this.mOutputWidth / i8, this.mOutputHeight / i9);
        this.mProgram.process(this.mOriginalFrame, frameNewFrame);
        int i10 = this.mSliceIndex + 1;
        this.mSliceIndex = i10;
        if (i10 == this.mXSlices * this.mYSlices) {
            this.mSliceIndex = 0;
            this.mOriginalFrame.release();
            setWaitsOnInputPort("image", true);
        } else {
            this.mOriginalFrame.retain();
            setWaitsOnInputPort("image", false);
        }
        pushOutput("image", frameNewFrame);
        frameNewFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort("image", ImageFormat.create(3, 3));
        addOutputBasedOnInput("image", "image");
    }
}
