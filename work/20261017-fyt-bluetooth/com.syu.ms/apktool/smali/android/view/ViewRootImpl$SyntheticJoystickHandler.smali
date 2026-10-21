.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field public final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v2

    :cond_0
    move v13, v2

    const/16 v2, 0x10

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v2

    :cond_1
    move v12, v2

    .line 9
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eq v13, v1, :cond_5

    .line 10
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v8, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x400

    move-object v1, v8

    move-wide v2, v14

    move-wide v4, v14

    move-object/from16 v22, v8

    move/from16 v8, v19

    move-object/from16 v23, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v20

    move/from16 v24, v12

    move/from16 v12, v21

    move-wide/from16 v19, v14

    move v14, v13

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v15, 0x0

    .line 13
    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    goto :goto_0

    :cond_2
    move/from16 v24, v12

    move-wide/from16 v19, v14

    move v15, v11

    move v14, v13

    .line 14
    :goto_0
    iput v14, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    if-eqz v14, :cond_4

    if-eqz p2, :cond_4

    if-lez v14, :cond_3

    const/16 v1, 0x16

    goto :goto_1

    :cond_3
    const/16 v1, 0x15

    .line 15
    :goto_1
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 16
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-object v1, v14

    move-wide/from16 v2, v19

    move-wide/from16 v4, v19

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 17
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v13, 0x1

    .line 18
    invoke-virtual {v0, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v13}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    move v13, v10

    move/from16 v24, v12

    move-wide/from16 v19, v14

    move v15, v11

    .line 21
    :goto_2
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    move/from16 v14, v24

    if-eq v14, v1, :cond_8

    .line 22
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    const/4 v12, 0x2

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object v11, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v10, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x400

    move-object v1, v10

    move-wide/from16 v2, v19

    move-wide/from16 v4, v19

    move/from16 v9, v16

    move-object v15, v10

    move/from16 v10, v17

    move-object/from16 v25, v11

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v25

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v1, 0x0

    .line 25
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 26
    :cond_6
    iput v14, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    if-eqz v14, :cond_8

    if-eqz p2, :cond_8

    if-lez v14, :cond_7

    const/16 v1, 0x14

    goto :goto_3

    :cond_7
    const/16 v1, 0x13

    .line 27
    :goto_3
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 28
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-object v1, v14

    move-wide/from16 v2, v19

    move-wide/from16 v4, v19

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 29
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v0, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    return-void
.end method
