.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSUMED:Landroid/view/WindowInsets;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlwaysConsumeNavBar:Z

.field private mIsRound:Z

.field private mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsConsumed:Z

.field private mSystemWindowInsets:Landroid/graphics/Rect;

.field private mSystemWindowInsetsConsumed:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowDecorInsets:Landroid/graphics/Rect;

.field private mWindowDecorInsetsConsumed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 8
    .line 9
    new-instance v0, Landroid/view/WindowInsets;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v2, v0

    .line 17
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 3
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 4
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 5
    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v2, :cond_1

    .line 6
    sget-object p1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_1
    iput-object p1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 7
    :goto_1
    iput-boolean p1, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz p1, :cond_3

    .line 8
    sget-object p2, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_3
    iput-object p2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    if-nez p3, :cond_4

    move v0, v1

    .line 9
    :cond_4
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_5

    .line 10
    sget-object p3, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_5
    iput-object p3, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 11
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 12
    iput-boolean p5, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 15
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 16
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 17
    iget-object v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 18
    iget-object v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 19
    iget-object v0, p1, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 20
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 21
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    .line 22
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 23
    iget-boolean v0, p1, Landroid/view/WindowInsets;->mIsRound:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 24
    iget-boolean p1, p1, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    iput-boolean p1, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return-void
.end method


# virtual methods
.method public consumeStableInsets()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 12
    .line 13
    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2
    sget-object v1, Landroid/view/WindowInsets;->EMPTY_RECT:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return-object v0
.end method

.method public consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 3

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    iget-object p3, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    iget-object p4, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-direct {v1, p1, p2, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public consumeWindowDecorInsets()Landroid/view/WindowInsets;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2
    iget-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    return-object v0
.end method

.method public consumeWindowDecorInsets(ZZZZ)Landroid/view/WindowInsets;
    .locals 3

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    iget-object p3, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    iget-object p4, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-direct {v1, p1, p2, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    return-object v0
.end method

.method public getWindowDecorInsetBottom()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getWindowDecorInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getWindowDecorInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getWindowDecorInsetTop()I
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public hasInsets()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasWindowDecorInsets()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStableInsets()Z
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowDecorInsets()Z
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mWindowDecorInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRound()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 2

    .line 3
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public replaceWindowDecorInsets(IIII)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-object v0
.end method

.method public shouldAlwaysConsumeNavBar()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mAlwaysConsumeNavBar:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WindowInsets{systemWindowInsets="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/WindowInsets;->mSystemWindowInsets:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " windowDecorInsets="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/view/WindowInsets;->mWindowDecorInsets:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " stableInsets="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/view/WindowInsets;->mStableInsets:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, " round}"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string/jumbo v1, "}"

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
