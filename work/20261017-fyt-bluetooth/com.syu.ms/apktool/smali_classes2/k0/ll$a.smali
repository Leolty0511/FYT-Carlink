.class public Lk0/ll$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$a;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataMain.sBlackScreen  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->j:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v3, p0, Lk0/ll$a;->a:Lk0/ll;

    iget v3, v3, Lk0/ll;->R:I

    if-ne v3, v2, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk0/ll$a;->a:Lk0/ll;

    iget v0, v0, Lk0/ll;->R:I

    if-nez v0, :cond_1

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x98
        0x4
        0x9e
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x98
        0x4
        0x9e
        0x1
        0x0
        0x0
    .end array-data
.end method
