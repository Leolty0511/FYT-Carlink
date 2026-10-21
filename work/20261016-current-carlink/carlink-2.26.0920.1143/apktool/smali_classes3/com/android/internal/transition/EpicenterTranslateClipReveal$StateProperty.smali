.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final TARGET_X:C = 'x'

.field public static final TARGET_Y:C = 'y'


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor <init>(C)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "state_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 16
    .line 17
    invoke-direct {p0, v1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 33
    .line 34
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 6
    iget v2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 8
    iget v2, v0, Landroid/graphics/Rect;->left:I

    float-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 9
    iget v0, v0, Landroid/graphics/Rect;->right:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 11
    iget v2, v0, Landroid/graphics/Rect;->top:I

    float-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/16 v2, 0x78

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_0

    .line 5
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v4, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v4, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v0, v2, :cond_2

    .line 11
    iget p2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 12
    :cond_2
    iget p2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V

    return-void
.end method
