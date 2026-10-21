.class public Lk0/pj$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pj;


# direct methods
.method public constructor <init>(Lk0/pj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pj$e;->a:Lk0/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/pj$e;->a:Lk0/pj;

    const/4 v1, 0x0

    iput v1, v0, Lk0/pj;->p:I

    .line 2
    iput v1, v0, Lk0/pj;->q:I

    .line 3
    invoke-static {v0}, Lk0/pj;->h3(Lk0/pj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    sget v0, Lk0/nt;->a:I

    const v1, 0xc901bb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lk0/pj$e;->a:Lk0/pj;

    const/16 v1, 0xa

    iput-byte v1, v0, Lk0/pj;->t:B

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xad
        0x1
        0x0
    .end array-data
.end method
