.class public final Lf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf/t;


# direct methods
.method public constructor <init>(Lf/t;)V
    .locals 0

    iput-object p1, p0, Lf/p;->b:Lf/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->b:Lf/t;

    .line 2
    .line 3
    iget-object v0, v0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->start()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
