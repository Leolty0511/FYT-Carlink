.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field public final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 3
    new-instance p1, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {p1}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2

    const-wide/32 v0, -0x80000000

    .line 1
    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 2
    iget-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 35

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2
    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    cmp-long v1, v1, v14

    const/4 v13, 0x0

    if-gez v1, :cond_0

    .line 3
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5
    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v29

    const/4 v12, 0x2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move/from16 v16, v13

    move-wide/from16 v17, v14

    move v14, v12

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v12}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 9
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v12}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 10
    iget-object v11, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v10, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x400

    const/16 v19, 0x101

    move-object v1, v10

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v29

    move-object/from16 v30, v10

    move/from16 v10, v16

    move-object/from16 v31, v11

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v16, v13

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v30

    move-object/from16 v1, v31

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move-wide/from16 v17, v14

    const/4 v14, 0x2

    goto :goto_0

    :cond_2
    move/from16 v16, v13

    .line 11
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 12
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 13
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x400

    const/16 v19, 0x101

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v29

    move-object/from16 v32, v11

    move/from16 v11, v17

    move-object/from16 v33, v12

    move/from16 v12, v18

    move-wide/from16 v17, v14

    move v14, v13

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 14
    :goto_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "X"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v1

    .line 15
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const-string v6, "Y"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 16
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v13

    if-eqz v13, :cond_4

    if-lez v13, :cond_3

    const/16 v1, 0x16

    goto :goto_1

    :cond_3
    const/16 v1, 0x15

    .line 17
    :goto_1
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 18
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v2, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    :goto_2
    move v14, v1

    goto :goto_4

    :cond_4
    move/from16 v14, v16

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7

    .line 19
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v13

    if-eqz v13, :cond_4

    if-lez v13, :cond_6

    const/16 v1, 0x14

    goto :goto_3

    :cond_6
    const/16 v1, 0x13

    .line 20
    :goto_3
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v2, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 21
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v2, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto :goto_2

    :cond_7
    move/from16 v13, v16

    move v14, v13

    :goto_4
    if-eqz v14, :cond_b

    if-gez v13, :cond_8

    neg-int v13, v13

    :cond_8
    int-to-float v1, v13

    mul-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v13, :cond_9

    add-int/lit8 v15, v13, -0x1

    sub-int v8, v1, v15

    .line 22
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x400

    const/16 v19, 0x101

    move-object v1, v12

    move-wide/from16 v2, v17

    move-wide/from16 v4, v17

    move v7, v14

    move/from16 v9, v29

    move-object/from16 v34, v12

    move/from16 v12, v16

    move/from16 p1, v15

    move-object v15, v13

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v34

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v13, p1

    :cond_9
    move-wide/from16 v1, v17

    :goto_5
    if-lez v13, :cond_a

    add-int/lit8 v13, v13, -0x1

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 24
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x400

    const/16 v28, 0x101

    move-object/from16 v16, v4

    move-wide/from16 v17, v1

    move-wide/from16 v19, v1

    move/from16 v22, v14

    move/from16 v24, v29

    invoke-direct/range {v16 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 25
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v21, 0x1

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_5

    .line 26
    :cond_a
    iput-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    :cond_b
    return-void
.end method
