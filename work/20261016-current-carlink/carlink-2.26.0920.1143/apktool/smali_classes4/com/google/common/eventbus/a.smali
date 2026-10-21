.class public final synthetic Lcom/google/common/eventbus/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/eventbus/Subscriber;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/eventbus/a;->b:Lcom/google/common/eventbus/Subscriber;

    iput-object p1, p0, Lcom/google/common/eventbus/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/eventbus/a;->b:Lcom/google/common/eventbus/Subscriber;

    iget-object v1, p0, Lcom/google/common/eventbus/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/eventbus/Subscriber;->a(Ljava/lang/Object;Lcom/google/common/eventbus/Subscriber;)V

    return-void
.end method
