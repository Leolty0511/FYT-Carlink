.class Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState<",
        "Landroid/animation/StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/StateListAnimator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    .line 5
    .line 6
    invoke-static {p1, p0}, Landroid/animation/StateListAnimator;->access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public newInstance()Landroid/animation/StateListAnimator;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 3
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->access$202(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->newInstance()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method
