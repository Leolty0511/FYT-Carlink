.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionListener"
.end annotation


# static fields
.field private static final MAXIMUM_NUMBER_OF_LISTENERS:I = 0x7


# instance fields
.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionXOnScreen:I

.field private mPositionY:I

.field private mPositionYOnScreen:I

.field private mScrollHasChanged:Z

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array v0, p1, [Landroid/widget/Editor$TextViewPositionListener;

    .line 2
    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private updatePosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    aget v3, v0, v4

    .line 23
    .line 24
    iget v5, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 25
    .line 26
    if-eq v3, v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v3, v4

    .line 32
    :goto_1
    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 33
    .line 34
    iput v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 35
    .line 36
    aget v0, v0, v4

    .line 37
    .line 38
    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 52
    .line 53
    aget v1, v0, v1

    .line 54
    .line 55
    iput v1, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    .line 56
    .line 57
    aget v0, v0, v4

    .line 58
    .line 59
    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    const/4 v2, 0x7

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 27
    .line 28
    aget-object v2, v2, v1

    .line 29
    .line 30
    if-ne v2, p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    if-gez v0, :cond_2

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 42
    .line 43
    aput-object p1, v1, v0

    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 46
    .line 47
    aput-boolean p2, p1, v0

    .line 48
    .line 49
    iget p1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput p1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 54
    .line 55
    return-void
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionXOnScreen()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public getPositionYOnScreen()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x7

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 18
    .line 19
    aget-boolean v3, v3, v1

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 24
    .line 25
    aget-object v3, v3, v1

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 30
    .line 31
    iget v5, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 32
    .line 33
    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 34
    .line 35
    invoke-interface {v3, v4, v5, v2, v6}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x7

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    if-ne v2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    aput-object p1, v1, v0

    .line 13
    .line 14
    iget p1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    iput p1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    iget p1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
