.class public Lk0/gh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gh;


# direct methods
.method public constructor <init>(Lk0/gh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gh$c;->a:Lk0/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/gh$c;->a:Lk0/gh;

    iget v1, v0, Lk0/gh;->B:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_3

    .line 2
    iput v2, v0, Lk0/gh;->B:I

    .line 3
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 4
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 5
    sget v1, Lu0/b;->j4:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, v2}, Lk0/gh;->o3(Lk0/gh;Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget v1, Ly0/f;->Q0:I

    if-nez v1, :cond_3

    .line 8
    invoke-static {v0, v3}, Lk0/gh;->o3(Lk0/gh;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean v1, v0, Lk0/gh;->E:Z

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0, v3}, Lk0/gh;->o3(Lk0/gh;Z)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
