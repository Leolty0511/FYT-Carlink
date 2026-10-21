.class public Lk0/l1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l1;


# direct methods
.method public constructor <init>(Lk0/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l1$d;->a:Lk0/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/l1$d;->a:Lk0/l1;

    sget v1, Lu0/b;->s0:I

    invoke-static {v0, v1}, Lk0/l1;->l3(Lk0/l1;I)I

    move-result v1

    invoke-static {v0, v1}, Lk0/l1;->k3(Lk0/l1;I)I

    .line 2
    iget-object v0, p0, Lk0/l1$d;->a:Lk0/l1;

    invoke-static {v0}, Lk0/l1;->j3(Lk0/l1;)I

    move-result v0

    iget-object v1, p0, Lk0/l1$d;->a:Lk0/l1;

    invoke-static {v1}, Lk0/l1;->m3(Lk0/l1;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/l1$d;->a:Lk0/l1;

    invoke-static {v0}, Lk0/l1;->j3(Lk0/l1;)I

    move-result v1

    invoke-static {v0, v1}, Lk0/l1;->n3(Lk0/l1;I)I

    :cond_0
    return-void
.end method
