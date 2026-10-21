.class public Lk0/il$d;
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
    iput-object p1, p0, Lk0/il$d;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/il$d;->a:Lk0/il;

    iget v1, v0, Lk0/il;->u:I

    sget v2, Lu0/b;->j4:I

    if-eq v1, v2, :cond_6

    .line 2
    iput v2, v0, Lk0/il;->u:I

    .line 3
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_3

    .line 4
    :cond_0
    sget v1, Lu0/b;->j4:I

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v4}, Lk0/il;->c3(Lk0/il;Z)V

    goto :goto_0

    .line 6
    :cond_2
    sget v1, Ly0/f;->Q0:I

    if-nez v1, :cond_3

    .line 7
    invoke-static {v0, v3}, Lk0/il;->c3(Lk0/il;Z)V

    .line 8
    :cond_3
    :goto_0
    sget v0, Lu0/b;->j4:I

    const/4 v1, 0x7

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    iget-object v0, p0, Lk0/il$d;->a:Lk0/il;

    iput-boolean v4, v0, Lk0/il;->v:Z

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lk0/il$d;->a:Lk0/il;

    iget-boolean v0, v0, Lk0/il;->v:Z

    if-ne v0, v4, :cond_6

    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    iget-object v0, p0, Lk0/il$d;->a:Lk0/il;

    iput-boolean v3, v0, Lk0/il;->v:Z

    :cond_6
    :goto_1
    return-void

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

    :array_1
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x0
        0x0
        0x80
    .end array-data
.end method
