.class public Lk0/gk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gk;


# direct methods
.method public constructor <init>(Lk0/gk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gk$c;->a:Lk0/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/gk$c;->a:Lk0/gk;

    iget v1, v0, Lk0/gk;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/gk;->g:I

    if-lez v1, :cond_0

    .line 2
    iget v0, v0, Lk0/gk;->e:I

    if-ne v0, v2, :cond_1

    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lk0/gk;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/gk$c;->a:Lk0/gk;

    const/4 v1, 0x5

    iput v1, v0, Lk0/gk;->g:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xe
        0x91
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
