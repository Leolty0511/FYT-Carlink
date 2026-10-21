.class Landroid/graphics/drawable/AnimatedVectorDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$700(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 24
    .line 25
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$700(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 24
    .line 25
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
