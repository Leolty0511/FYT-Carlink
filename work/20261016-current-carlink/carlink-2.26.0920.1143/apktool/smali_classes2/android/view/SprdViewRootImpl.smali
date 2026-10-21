.class public Landroid/view/SprdViewRootImpl;
.super Landroid/view/ViewRootImpl;
.source "SourceFile"


# static fields
.field static final HEIGHT_TO_SKIP:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SprdViewRootImpl"


# instance fields
.field mCanHaveNavigationBar:Z

.field mDisplayHeight:I

.field mSwipeFromBottom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mCanHaveNavigationBar:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    iput p2, p0, Landroid/view/SprdViewRootImpl;->mDisplayHeight:I

    .line 11
    .line 12
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Landroid/view/SprdViewRootImpl;->mDisplayHeight:I

    .line 23
    .line 24
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const v0, 0x1120099

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput-boolean p2, p0, Landroid/view/SprdViewRootImpl;->mCanHaveNavigationBar:Z

    .line 38
    .line 39
    const-string p2, "qemu.hw.mainkeys"

    .line 40
    .line 41
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, "1"

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iput-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mCanHaveNavigationBar:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "0"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mCanHaveNavigationBar:Z

    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dropIfNeeded(Landroid/view/InputEvent;)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "throw exception, "

    .line 2
    .line 3
    .line 4
    const-string v1, "SprdViewRootImpl"

    .line 5
    .line 6
    iget-boolean v2, p0, Landroid/view/SprdViewRootImpl;->mCanHaveNavigationBar:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    instance-of v2, p1, Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast p1, Landroid/view/MotionEvent;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-eq v2, v4, :cond_0

    .line 25
    .line 26
    iget-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 27
    .line 28
    if-ne p1, v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean p1, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 32
    .line 33
    if-ne p1, v4, :cond_2

    .line 34
    .line 35
    iput-boolean v3, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 36
    .line 37
    :goto_0
    move v3, v4

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    iput-boolean v3, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 40
    .line 41
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 42
    .line 43
    invoke-interface {v2}, Landroid/view/IWindowSession;->canNavigationBarMove()Z

    .line 44
    .line 45
    .line 46
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move v2, v3

    .line 65
    :goto_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/view/Display;->getOrientation()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p0, v5, v2, p1}, Landroid/view/SprdViewRootImpl;->shouldDropPoint(IZLandroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    :try_start_1
    iget-object p1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 78
    .line 79
    invoke-interface {p1}, Landroid/view/IWindowSession;->isKeyguardShowingAndNotOccluded()Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 84
    .line 85
    invoke-interface {v2}, Landroid/view/IWindowSession;->isNavigationBarShowing()Z

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-exception v2

    .line 91
    goto :goto_2

    .line 92
    :catch_2
    move-exception v2

    .line 93
    move p1, v3

    .line 94
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move v0, v3

    .line 110
    :goto_3
    if-nez p1, :cond_2

    .line 111
    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    iput-boolean v4, p0, Landroid/view/SprdViewRootImpl;->mSwipeFromBottom:Z

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    :goto_4
    return v3
.end method

.method public shouldDropPoint(IZLandroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    rem-int/lit8 v2, p1, 0x2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Landroid/view/SprdViewRootImpl;->mDisplayHeight:I

    .line 14
    .line 15
    add-int/lit8 v3, v3, -0x14

    .line 16
    .line 17
    int-to-float v3, v3

    .line 18
    cmpl-float v2, v2, v3

    .line 19
    .line 20
    if-gtz v2, :cond_2

    .line 21
    .line 22
    :cond_0
    rem-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroid/view/SprdViewRootImpl;->mDisplayHeight:I

    .line 31
    .line 32
    add-int/lit8 v3, v3, -0x14

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    cmpl-float v2, v2, v3

    .line 36
    .line 37
    if-gtz v2, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 v2, 0x3

    .line 40
    if-ne p1, v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/high16 v2, 0x41a00000    # 20.0f

    .line 47
    .line 48
    cmpg-float p1, p1, v2

    .line 49
    .line 50
    if-gez p1, :cond_3

    .line 51
    .line 52
    :cond_2
    move p1, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move p1, v0

    .line 55
    :goto_0
    if-nez p2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iget p3, p0, Landroid/view/SprdViewRootImpl;->mDisplayHeight:I

    .line 62
    .line 63
    add-int/lit8 p3, p3, -0x14

    .line 64
    .line 65
    int-to-float p3, p3

    .line 66
    cmpl-float p2, p2, p3

    .line 67
    .line 68
    if-lez p2, :cond_4

    .line 69
    .line 70
    move p2, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move p2, v0

    .line 73
    :goto_1
    if-nez p1, :cond_5

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    :cond_5
    move v0, v1

    .line 78
    :cond_6
    return v0
.end method
