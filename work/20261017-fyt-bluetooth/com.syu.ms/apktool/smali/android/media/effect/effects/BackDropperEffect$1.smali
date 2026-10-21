.class Landroid/media/effect/effects/BackDropperEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/effect/effects/BackDropperEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/effect/effects/BackDropperEffect;


# direct methods
.method public constructor <init>(Landroid/media/effect/effects/BackDropperEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-static {p1}, Landroid/media/effect/effects/BackDropperEffect;->access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-static {p1}, Landroid/media/effect/effects/BackDropperEffect;->access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object p1

    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/media/effect/EffectUpdateListener;->onEffectUpdated(Landroid/media/effect/Effect;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
