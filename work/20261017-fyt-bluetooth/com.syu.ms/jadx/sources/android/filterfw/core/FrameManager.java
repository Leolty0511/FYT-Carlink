package android.filterfw.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class FrameManager {
    private FilterContext mContext;

    public Frame duplicateFrame(Frame frame) {
        Frame frameNewFrame = newFrame(frame.getFormat());
        frameNewFrame.setDataFromFrame(frame);
        return frameNewFrame;
    }

    public Frame duplicateFrameToTarget(Frame frame, int i2) {
        MutableFrameFormat mutableFrameFormatMutableCopy = frame.getFormat().mutableCopy();
        mutableFrameFormatMutableCopy.setTarget(i2);
        Frame frameNewFrame = newFrame(mutableFrameFormatMutableCopy);
        frameNewFrame.setDataFromFrame(frame);
        return frameNewFrame;
    }

    public FilterContext getContext() {
        return this.mContext;
    }

    public GLEnvironment getGLEnvironment() {
        FilterContext filterContext = this.mContext;
        if (filterContext != null) {
            return filterContext.getGLEnvironment();
        }
        return null;
    }

    public abstract Frame newBoundFrame(FrameFormat frameFormat, int i2, long j2);

    public abstract Frame newFrame(FrameFormat frameFormat);

    public abstract Frame releaseFrame(Frame frame);

    public abstract Frame retainFrame(Frame frame);

    public void setContext(FilterContext filterContext) {
        this.mContext = filterContext;
    }

    public void tearDown() {
    }
}
