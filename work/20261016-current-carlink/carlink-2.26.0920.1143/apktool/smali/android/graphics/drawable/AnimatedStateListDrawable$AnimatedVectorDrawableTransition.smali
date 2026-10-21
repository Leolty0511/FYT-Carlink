.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mHasReversibleFlag:Z

.field private final mReversed:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 6
    .line 7
    iput-boolean p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mHasReversibleFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reverse()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->canReverse()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reverse()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AnimatedStateListDrawable;->access$100()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Can\'t reverse, either the reversible is set to false, or the AnimatedVectorDrawable can\'t reverse"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mReversed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->reverse()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;->mAvd:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method
