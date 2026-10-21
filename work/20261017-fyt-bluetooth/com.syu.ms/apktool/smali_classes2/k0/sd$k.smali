.class public Lk0/sd$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sd;


# direct methods
.method public constructor <init>(Lk0/sd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f2:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->e3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->u3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->t3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->s3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->r3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_5
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->q3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 8
    :cond_6
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->p3(Lk0/sd;)I

    move-result v0

    goto :goto_0

    .line 9
    :cond_7
    iget-object v0, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v0}, Lk0/sd;->o3(Lk0/sd;)I

    move-result v0

    .line 10
    :goto_0
    iget-object v1, p0, Lk0/sd$k;->a:Lk0/sd;

    invoke-static {v1, v0}, Lk0/sd;->f3(Lk0/sd;I)V

    return-void
.end method
