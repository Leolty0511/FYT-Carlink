.class public Lk0/gh$g;
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
    iput-object p1, p0, Lk0/gh$g;->a:Lk0/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/gh$g;->a:Lk0/gh;

    iget v1, v1, Lk0/gh;->e0:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0xd

    if-ne v1, v0, :cond_2

    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 2
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lk0/gh;->r3()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v1, 0x32

    .line 6
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v3, v0, [I

    .line 7
    fill-array-data v3, :array_1

    invoke-static {v3}, Lz/k;->s([I)V

    .line 8
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v3, v0, [I

    .line 9
    fill-array-data v3, :array_2

    invoke-static {v3}, Lz/k;->s([I)V

    .line 10
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v3, v0, [I

    .line 11
    fill-array-data v3, :array_3

    invoke-static {v3}, Lz/k;->s([I)V

    .line 12
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    :cond_1
    invoke-static {}, Lk0/gh;->j3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 15
    iget-object v0, p0, Lk0/gh$g;->a:Lk0/gh;

    iget-boolean v1, v0, Lk0/gh;->E:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lk0/gh;->o3(Lk0/gh;Z)V

    .line 17
    :cond_2
    iget-object v0, p0, Lk0/gh$g;->a:Lk0/gh;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/gh;->e0:I

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x83
        0x2
        0x2a
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0x2a
        0x6
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0x2a
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0x2a
        0x6
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x2
        0x2a
        0x6
    .end array-data
.end method
