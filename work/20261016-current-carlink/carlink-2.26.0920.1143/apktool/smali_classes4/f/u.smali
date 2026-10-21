.class public final Lf/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/u;->b:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lf/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lf/n;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lf/u;->b:Lcom/syu/carlink/auto/AutoFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/syu/carlink/auto/AutoFragment;->a(Lcom/syu/carlink/auto/AutoFragment;ILjava/lang/Runnable;)V

    return-void
.end method
