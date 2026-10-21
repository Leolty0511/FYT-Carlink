.class final Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/carlink/fragment/CarplayFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/p;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/syu/carlink/fragment/CarplayFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/fragment/CarplayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;->b:Lcom/syu/carlink/fragment/CarplayFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/MotionEvent;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    const-string v4, "me"

    if-eqz v1, :cond_18

    .line 2
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v1, :cond_0

    .line 4
    iget v1, v1, Lh/c;->c:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v5

    .line 5
    :goto_0
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v6, :cond_17

    .line 6
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7
    iget-object v6, v6, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v6, :cond_1

    .line 8
    iget v6, v6, Lh/c;->b:I

    int-to-float v6, v6

    goto :goto_1

    :cond_1
    move v6, v5

    .line 9
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v6, v7

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v1, v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 12
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 13
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "-------onTouchEvent =>> view : ["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]  display:["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_16

    .line 15
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v2, :cond_2

    .line 17
    iget v2, v2, Lh/c;->b:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v2, :cond_15

    .line 20
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 21
    iget-object v2, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v2, :cond_3

    .line 22
    iget v2, v2, Lh/c;->c:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Touch"

    invoke-static {v13, v11}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "-------onTouchEvent =>> touchHandle it.actionMasked: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " touchHandle  index: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  id: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " pointerCount: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " - ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-float v2, v7, v5

    const/4 v11, 0x1

    if-nez v2, :cond_4

    move-object/from16 v2, p0

    move v14, v11

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v2, p0

    .line 25
    :goto_4
    iget-object v15, v2, Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;->b:Lcom/syu/carlink/fragment/CarplayFragment;

    if-nez v14, :cond_12

    cmpg-float v5, v8, v5

    if-nez v5, :cond_5

    move v5, v11

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    goto/16 :goto_8

    .line 26
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v14, 0x3

    const/16 v16, 0x4

    const/4 v3, 0x2

    if-eqz v5, :cond_11

    const/4 v12, -0x1

    if-eq v5, v11, :cond_f

    if-eq v5, v3, :cond_b

    if-eq v5, v14, :cond_a

    const/4 v3, 0x5

    if-eq v5, v3, :cond_9

    const/4 v3, 0x6

    if-eq v5, v3, :cond_7

    goto/16 :goto_8

    .line 27
    :cond_7
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    iget-object v5, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    if-ne v10, v3, :cond_8

    float-to-int v3, v6

    .line 28
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v5, v14

    float-to-int v1, v1

    .line 29
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v5, v16

    const/4 v1, 0x5

    .line 30
    aput v6, v5, v1

    .line 31
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    goto/16 :goto_8

    :cond_8
    const/4 v3, 0x0

    .line 32
    iget v14, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    if-ne v10, v14, :cond_12

    float-to-int v6, v6

    .line 33
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    mul-float/2addr v10, v7

    float-to-int v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v5, v3

    float-to-int v1, v1

    .line 34
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v5, v11

    const/4 v1, 0x2

    .line 35
    aput v3, v5, v1

    .line 36
    iget v1, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    .line 37
    iput v1, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    const/4 v1, 0x5

    .line 38
    aput v3, v5, v1

    .line 39
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    goto/16 :goto_8

    .line 40
    :cond_9
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    if-gez v3, :cond_12

    .line 41
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    if-eq v10, v3, :cond_12

    .line 42
    iput v10, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    float-to-int v3, v6

    .line 43
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    aput v3, v6, v14

    float-to-int v1, v1

    .line 44
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v6, v16

    .line 45
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    const/4 v3, 0x5

    aput v1, v6, v3

    goto/16 :goto_8

    :cond_a
    const/4 v3, 0x5

    const/4 v5, 0x0

    .line 46
    iget-object v1, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    const/4 v6, 0x2

    .line 47
    aput v5, v1, v6

    .line 48
    aput v5, v1, v3

    .line 49
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    .line 50
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    goto/16 :goto_8

    .line 51
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 52
    iget v5, v15, Lcom/syu/carlink/fragment/CarplayFragment;->b:I

    if-le v3, v5, :cond_c

    move v3, v5

    :cond_c
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_12

    .line 53
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 54
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    .line 55
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    mul-float/2addr v12, v8

    float-to-int v12, v12

    .line 56
    iget v14, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    iget-object v11, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    if-ne v9, v14, :cond_d

    float-to-int v9, v6

    .line 57
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v14, 0x0

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v11, v14

    float-to-int v9, v1

    .line 58
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x1

    aput v9, v11, v10

    .line 59
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v9

    const/4 v10, 0x2

    aput v9, v11, v10

    goto :goto_7

    .line 60
    :cond_d
    iget v14, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    if-ne v9, v14, :cond_e

    float-to-int v9, v6

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v14, 0x3

    aput v9, v11, v14

    float-to-int v9, v1

    .line 62
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v11, v16

    .line 63
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v9

    const/4 v10, 0x5

    aput v9, v11, v10

    :cond_e
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x3

    goto :goto_6

    .line 64
    :cond_f
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    iget-object v5, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    if-ne v10, v3, :cond_10

    float-to-int v3, v6

    .line 65
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v5, v6

    float-to-int v1, v1

    .line 66
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v5, v3

    const/4 v1, 0x2

    .line 67
    aput v6, v5, v1

    .line 68
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    .line 69
    iget v7, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    if-ltz v7, :cond_12

    .line 70
    iput v7, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    const/4 v7, 0x3

    .line 71
    aget v7, v5, v7

    aput v7, v5, v6

    .line 72
    aget v6, v5, v16

    aput v6, v5, v3

    const/4 v3, 0x5

    .line 73
    aget v3, v5, v3

    aput v3, v5, v1

    .line 74
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    goto :goto_8

    .line 75
    :cond_10
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    if-ne v10, v3, :cond_12

    float-to-int v3, v6

    .line 76
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v5, v7

    float-to-int v1, v1

    .line 77
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v5, v16

    const/4 v1, 0x5

    .line 78
    aput v6, v5, v1

    .line 79
    iput v12, v15, Lcom/syu/carlink/fragment/CarplayFragment;->e:I

    goto :goto_8

    .line 80
    :cond_11
    iget v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    if-gez v3, :cond_12

    .line 81
    iput v10, v15, Lcom/syu/carlink/fragment/CarplayFragment;->d:I

    float-to-int v3, v6

    .line 82
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    aput v3, v6, v5

    float-to-int v1, v1

    .line 83
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v6, v3

    .line 84
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    const/4 v7, 0x2

    aput v1, v6, v7

    .line 85
    aget v1, v6, v5

    const/4 v7, 0x3

    aput v1, v6, v7

    .line 86
    aget v1, v6, v3

    aput v1, v6, v16

    const/4 v1, 0x5

    .line 87
    aput v5, v6, v1

    .line 88
    :cond_12
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    .line 90
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "toString(this)"

    invoke-static {v3, v5}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pointers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event.actionMasked:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_14

    .line 92
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v0, :cond_13

    const-string v1, "coords"

    .line 94
    iget-object v3, v15, Lcom/syu/carlink/fragment/CarplayFragment;->c:[I

    invoke-static {v3, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/16 v3, 0xca

    const/4 v5, 0x0

    .line 96
    invoke-virtual {v0, v3, v5, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 97
    :cond_13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_14
    const/4 v5, 0x0

    .line 98
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    throw v5

    :cond_15
    move-object/from16 v2, p0

    const/4 v5, 0x0

    .line 99
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    throw v5

    :cond_16
    move-object/from16 v2, p0

    const/4 v5, 0x0

    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    throw v5

    :cond_17
    move-object/from16 v2, p0

    const/4 v5, 0x0

    .line 100
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    throw v5

    :cond_18
    move-object/from16 v2, p0

    const/4 v5, 0x0

    .line 101
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    throw v5
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, Landroid/view/MotionEvent;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/syu/carlink/fragment/CarplayFragment$touchHandle$1;->invoke(Landroid/view/MotionEvent;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
