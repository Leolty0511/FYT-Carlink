.class public Lk0/hj$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hj;


# direct methods
.method public constructor <init>(Lk0/hj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hj$i;->a:Lk0/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hj$i;->a:Lk0/hj;

    invoke-static {v0}, Lk0/hj;->o3(Lk0/hj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/hj$i;->a:Lk0/hj;

    invoke-static {}, Lk0/hj;->p3()I

    move-result v1

    invoke-static {v0, v1}, Lk0/hj;->q3(Lk0/hj;I)V

    .line 3
    iget-object v0, p0, Lk0/hj$i;->a:Lk0/hj;

    invoke-static {v0}, Lk0/hj;->r3(Lk0/hj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
