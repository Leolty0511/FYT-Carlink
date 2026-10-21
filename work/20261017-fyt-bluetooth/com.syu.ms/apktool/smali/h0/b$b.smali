.class public Lh0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lh0/b;


# direct methods
.method public constructor <init>(Lh0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh0/b$b;->b:Lh0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lh0/b$b;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lh0/b$b;->a:I

    sget v1, Lu0/b;->f:I

    if-eq v0, v1, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------->>>  DataMain.sMcuOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mcuOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh0/b$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget v0, Lu0/b;->f:I

    const/4 v1, 0x3

    if-nez v0, :cond_1

    const/16 v0, 0xc

    .line 4
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lh0/b$b;->a:I

    if-eqz v0, :cond_2

    :cond_0
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->p([I)V

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->p([I)V

    .line 8
    :cond_2
    :goto_0
    sget v0, Lu0/b;->f:I

    iput v0, p0, Lh0/b$b;->a:I

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x43
        0x5a
        0x30
    .end array-data

    :array_1
    .array-data 4
        0x48
        0x57
        0x31
    .end array-data

    :array_2
    .array-data 4
        0x43
        0x5a
        0x31
    .end array-data
.end method
