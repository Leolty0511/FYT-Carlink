.class public Lk0/ig$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ig;


# direct methods
.method public constructor <init>(Lk0/ig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ig$d;->a:Lk0/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/ig$d;->a:Lk0/ig;

    invoke-static {v0}, Lk0/ig;->d3(Lk0/ig;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ig$d;->a:Lk0/ig;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/ig;->n:B

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x0
    .end array-data
.end method
