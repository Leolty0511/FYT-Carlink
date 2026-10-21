.class public Lmodule/sound/AudioDevice$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/AudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/AudioDevice;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$j;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$j;->a:Lmodule/sound/AudioDevice;

    iget v1, v0, Lmodule/sound/AudioDevice;->U:I

    if-eq p1, v1, :cond_0

    iget v1, v0, Lmodule/sound/AudioDevice;->T:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lmodule/sound/AudioDevice;->T:I

    iget v2, v0, Lmodule/sound/AudioDevice;->Y:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->C1(I)V

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice$j;->a:Lmodule/sound/AudioDevice;

    iget v1, v0, Lmodule/sound/AudioDevice;->U:I

    if-ne p1, v1, :cond_1

    const/high16 p1, -0x80000000

    .line 5
    iput p1, v0, Lmodule/sound/AudioDevice;->U:I

    :cond_1
    return-void
.end method
