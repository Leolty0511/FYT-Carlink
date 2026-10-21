.class public Lk0/bj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bj;


# direct methods
.method public constructor <init>(Lk0/bj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bj$b;->a:Lk0/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/bj$b;->a:Lk0/bj;

    invoke-static {v0}, Lk0/bj;->a3(Lk0/bj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/bj$b;->a:Lk0/bj;

    const/16 v1, 0xb

    iput-byte v1, v0, Lk0/bj;->i:B

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x1
        0x0
    .end array-data
.end method
