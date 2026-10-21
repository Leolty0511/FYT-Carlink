.class public Lk0/il$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/il;


# direct methods
.method public constructor <init>(Lk0/il;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/il$h;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/il;->h3()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lk0/il$h;->a:Lk0/il;

    iget-boolean v0, v0, Lk0/il;->C:Z

    if-ne v0, v2, :cond_2

    .line 4
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lk0/il$h;->a:Lk0/il;

    invoke-static {v0, v1}, Lk0/il;->c3(Lk0/il;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/il$h;->a:Lk0/il;

    iput-boolean v1, v0, Lk0/il;->C:Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    iget-object v0, p0, Lk0/il$h;->a:Lk0/il;

    invoke-static {v0, v2}, Lk0/il;->c3(Lk0/il;Z)V

    .line 11
    iget-object v0, p0, Lk0/il$h;->a:Lk0/il;

    iput-boolean v2, v0, Lk0/il;->C:Z

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data
.end method
