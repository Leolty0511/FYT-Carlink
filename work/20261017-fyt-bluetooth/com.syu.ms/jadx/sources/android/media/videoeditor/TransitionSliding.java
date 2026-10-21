package android.media.videoeditor;

/* JADX INFO: loaded from: classes.dex */
public class TransitionSliding extends Transition {
    public static final int DIRECTION_BOTTOM_OUT_TOP_IN = 3;
    public static final int DIRECTION_LEFT_OUT_RIGHT_IN = 1;
    public static final int DIRECTION_RIGHT_OUT_LEFT_IN = 0;
    public static final int DIRECTION_TOP_OUT_BOTTOM_IN = 2;
    private final int mSlidingDirection;

    private TransitionSliding() {
        this(null, null, null, 0L, 0, 0);
    }

    @Override // android.media.videoeditor.Transition
    public void generate() {
        super.generate();
    }

    public int getDirection() {
        return this.mSlidingDirection;
    }

    public TransitionSliding(String str, MediaItem mediaItem, MediaItem mediaItem2, long j2, int i2, int i3) {
        super(str, mediaItem, mediaItem2, j2, i2);
        if (i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3) {
            throw new IllegalArgumentException("Invalid direction");
        }
        this.mSlidingDirection = i3;
    }
}
