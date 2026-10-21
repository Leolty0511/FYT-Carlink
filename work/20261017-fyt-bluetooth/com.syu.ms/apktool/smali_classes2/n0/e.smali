.class public Ln0/e;
.super Ln0/c4;
.source "SourceFile"


# static fields
.field public static final D:[I


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    sput-object v0, Ln0/e;->D:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    .line 2
    new-instance v0, Ln0/e$c;

    invoke-direct {v0, p0}, Ln0/e$c;-><init>(Ln0/e;)V

    iput-object v0, p0, Ln0/e;->B:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ln0/e$d;

    invoke-direct {v0, p0}, Ln0/e$d;-><init>(Ln0/e;)V

    iput-object v0, p0, Ln0/e;->C:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    iget v0, p0, Ln0/e;->z:I

    sput v0, Ly0/b;->h:I

    .line 3
    iget v0, p0, Ln0/e;->A:I

    sput v0, Ly0/b;->i:I

    .line 4
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/e;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Ln0/e;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v2, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x9600

    const/4 v2, 0x4

    .line 9
    invoke-static {v1, v0, v2}, Lz/k;->j(Ljava/lang/String;II)V

    .line 10
    :cond_1
    sget v0, Ly0/b;->h:I

    iput v0, p0, Ln0/e;->z:I

    const/4 v0, 0x5

    .line 11
    sput v0, Ly0/b;->h:I

    .line 12
    sget v0, Ly0/b;->i:I

    iput v0, p0, Ln0/e;->A:I

    const/16 v0, 0x8

    .line 13
    sput v0, Ly0/b;->i:I

    .line 14
    sget-object v0, Lu0/c;->J:Lo1/y;

    new-instance v1, Ln0/e$a;

    invoke-direct {v1, p0}, Ln0/e$a;-><init>(Ln0/e;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 16
    sput v0, Lu0/b;->P2:I

    .line 17
    sput v0, Lu0/b;->R2:I

    :cond_2
    :goto_0
    return-void
.end method

.method public b3()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln0/c4;->b3()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x7

    const/16 v3, 0x16

    aput v3, v0, v2

    .line 4
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x9600

    const/4 v2, 0x4

    const-string v3, "/dev/ttyS1"

    .line 5
    invoke-static {v3, v0, v2}, Lz/k;->j(Ljava/lang/String;II)V

    .line 6
    :cond_0
    sget-object v0, Lu0/c;->J:Lo1/y;

    new-instance v2, Ln0/e$b;

    invoke-direct {v2, p0}, Ln0/e$b;-><init>(Ln0/e;)V

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_2
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "MT"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x5

    .line 2
    sput v0, Lm1/a;->d:I

    const/16 v0, 0x14

    .line 3
    sput v0, Lu0/b;->Z1:I

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lu0/b;->T3:Z

    .line 5
    sput-boolean v0, Lu0/b;->V3:Z

    .line 6
    sget v1, Ln0/j4;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 7
    sput v0, Le/b;->b:I

    .line 8
    :cond_0
    invoke-super {p0}, Ln0/c4;->j3()V

    const/16 v1, 0x78

    .line 9
    sput v1, Lu0/b;->R2:I

    sput v1, Lu0/b;->P2:I

    .line 10
    sput v0, Lh0/c;->i0:I

    .line 11
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/e;->C:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lo1/h;->b:Lo1/y;

    iget-object v1, p0, Ln0/e;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
