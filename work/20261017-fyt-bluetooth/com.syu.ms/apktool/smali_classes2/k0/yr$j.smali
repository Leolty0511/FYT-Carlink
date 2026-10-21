.class public Lk0/yr$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yr;


# direct methods
.method public constructor <init>(Lk0/yr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yr$j;->a:Lk0/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/yr$j;->a:Lk0/yr;

    iget v1, v0, Lk0/yr;->I:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/yr;->I:I

    if-nez v1, :cond_0

    .line 3
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {}, Lk0/yr;->n3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 5
    iget-object v0, p0, Lk0/yr$j;->a:Lk0/yr;

    iget-boolean v1, v0, Lk0/yr;->O:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v0, v2}, Lk0/yr;->e3(Lk0/yr;Z)V

    :cond_0
    const-string v0, "com.syu.fourcamera2"

    .line 7
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.lsec.fourcamera2.show"

    .line 8
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lk0/yr$j;->a:Lk0/yr;

    iget v1, v0, Lk0/yr;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk0/yr;->F:I

    const/4 v0, 0x2

    if-lt v1, v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    iget-object v0, p0, Lk0/yr$j;->a:Lk0/yr;

    iput v2, v0, Lk0/yr;->F:I

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
