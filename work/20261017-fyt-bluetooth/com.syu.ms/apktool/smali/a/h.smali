.class public La/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/h$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lj1/c;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/syu/jni/SyuUInput;

.field public e:La/h$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, La/h;->a:J

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lcom/syu/jni/SyuUInput;

    invoke-direct {v0}, Lcom/syu/jni/SyuUInput;-><init>()V

    iput-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La/h;->e:La/h$a;

    return-void
.end method


# virtual methods
.method public a(IFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 2
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 6
    iget-object p2, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, La/h;->e:La/h$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/h$a;

    invoke-direct {v0}, La/h$a;-><init>()V

    iput-object v0, p0, La/h;->e:La/h$a;

    const/16 v1, 0xa

    .line 3
    invoke-virtual {v0, v1, v1}, La/h$a;->a(II)V

    .line 4
    iget-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    invoke-virtual {v0}, Lcom/syu/jni/SyuUInput;->openDev()I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====>> result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mouse"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    iget-object v1, p0, La/h;->e:La/h$a;

    iget v2, v1, La/h$a;->a:I

    iget v1, v1, La/h$a;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/SyuUInput;->move(II)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/InputEvent;)Z
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, La/h;->d(Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public final d(Landroid/view/InputEvent;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, La/h;->b:Lj1/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, La/f;->l()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 3
    new-instance v4, Lj1/c;

    const-string v5, "injectInputEvent"

    invoke-direct {v4, v5}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4, v0}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/InputEvent;

    aput-object v5, v4, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 5
    invoke-virtual {v0, v4}, Lj1/c;->c([Ljava/lang/Class;)Lj1/c;

    move-result-object v0

    iput-object v0, p0, La/h;->b:Lj1/c;

    .line 6
    :cond_0
    iget-object v0, p0, La/h;->b:Lj1/c;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object p1

    invoke-virtual {p1}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    const-string v0, "Mouse"

    const-string v1, "mouseLeftDown"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, La/h;->b()V

    .line 5
    iget-object v0, p0, La/h;->e:La/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La/h$a;->b(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    invoke-virtual {v0, v2, v1}, Lcom/syu/jni/SyuUInput;->keyEvent(II)V

    return v1
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    const-string v0, "Mouse"

    const-string v1, "mouseLeftUp"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, La/h;->b()V

    .line 5
    iget-object v0, p0, La/h;->e:La/h$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/h$a;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    invoke-virtual {v0, v1, v1}, Lcom/syu/jni/SyuUInput;->keyEvent(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public g(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3
    :cond_0
    invoke-virtual {p0}, La/h;->b()V

    .line 4
    iget-object v0, p0, La/h;->e:La/h$a;

    iget v1, v0, La/h$a;->a:I

    if-ne v1, p1, :cond_1

    iget v0, v0, La/h$a;->b:I

    if-ne v0, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, La/h;->d:Lcom/syu/jni/SyuUInput;

    invoke-virtual {v0, p1, p2}, Lcom/syu/jni/SyuUInput;->move(II)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move : x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", y: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mouse"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public i(II)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    .line 1
    iget-object v1, v0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v1, 0x0

    if-nez v6, :cond_0

    return v1

    .line 2
    :cond_0
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 3
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    :goto_0
    const/4 v13, 0x1

    if-ge v1, v6, :cond_1

    .line 4
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 5
    aget-object v2, v7, v1

    iget-object v3, v0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 6
    aget-object v2, v7, v1

    iput v13, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 7
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    iget-object v3, v0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2, v3}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    if-nez v15, :cond_2

    .line 9
    iput-wide v3, v0, La/h;->a:J

    .line 10
    :cond_2
    iget-wide v1, v0, La/h;->a:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1002

    const/16 v19, 0x0

    move/from16 v5, p1

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    move/from16 v4, p1

    if-eq v4, v2, :cond_4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v2, p2

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v2, p2

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v5, v4

    .line 11
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 12
    :goto_2
    invoke-virtual {v0, v1}, La/h;->c(Landroid/view/InputEvent;)Z

    move-result v5

    .line 13
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x1

    if-eq v4, v1, :cond_6

    const/4 v1, 0x3

    if-ne v4, v1, :cond_5

    goto :goto_3

    :cond_5
    if-ne v4, v3, :cond_7

    .line 14
    iget-object v1, v0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    :cond_6
    :goto_3
    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, v0, La/h;->a:J

    .line 16
    iget-object v1, v0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_7
    :goto_4
    return v5
.end method

.method public j(IFF)V
    .locals 1

    .line 1
    iget-object v0, p0, La/h;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent$PointerCoords;

    if-eqz p1, :cond_0

    .line 2
    iput p2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3
    iput p3, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_0
    return-void
.end method
