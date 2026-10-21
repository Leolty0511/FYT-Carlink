.class public final synthetic Lcom/google/common/cache/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/cache/LocalCache$Segment;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Lcom/google/common/cache/LocalCache$LoadingValueReference;

.field public final synthetic f:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/g;->b:Lcom/google/common/cache/LocalCache$Segment;

    iput-object p2, p0, Lcom/google/common/cache/g;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/g;->d:I

    iput-object p4, p0, Lcom/google/common/cache/g;->e:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iput-object p5, p0, Lcom/google/common/cache/g;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/cache/g;->e:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iget-object v1, p0, Lcom/google/common/cache/g;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/common/cache/g;->b:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v3, p0, Lcom/google/common/cache/g;->c:Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/cache/g;->d:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->a(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
