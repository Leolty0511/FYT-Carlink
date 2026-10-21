.class public final Lf/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lf/v;->d:Lcom/syu/carlink/auto/AutoFragment;

    iput p2, p0, Lf/v;->b:I

    iput-object p3, p0, Lf/v;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lf/v;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lf/v;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Lf/v;->d:Lcom/syu/carlink/auto/AutoFragment;

    invoke-static {v2, v0, v1}, Lcom/syu/carlink/auto/AutoFragment;->a(Lcom/syu/carlink/auto/AutoFragment;ILjava/lang/Runnable;)V

    return-void
.end method
