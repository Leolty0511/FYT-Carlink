.class public Lk0/r8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/r8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/r8;


# direct methods
.method public constructor <init>(Lk0/r8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/r8$c;->a:Lk0/r8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/r8$c;->a:Lk0/r8;

    iget v1, v0, Lk0/r8;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/r8;->h:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v6, 0x3

    .line 2
    sget v7, Lu0/b;->a0:I

    aput v7, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    iget-object v1, p0, Lk0/r8$c;->a:Lk0/r8;

    invoke-static {v1, v0, v5}, Lk0/r8;->c3(Lk0/r8;II)V

    .line 4
    iget-object v0, p0, Lk0/r8$c;->a:Lk0/r8;

    invoke-static {v0, v3, v2}, Lk0/r8;->c3(Lk0/r8;II)V

    .line 5
    iget-object v0, p0, Lk0/r8$c;->a:Lk0/r8;

    invoke-static {v0, v3, v4}, Lk0/r8;->c3(Lk0/r8;II)V

    .line 6
    iget-object v0, p0, Lk0/r8$c;->a:Lk0/r8;

    const/16 v1, 0xb

    invoke-static {v0, v1, v5}, Lk0/r8;->c3(Lk0/r8;II)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/r8;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/r8$c;->a:Lk0/r8;

    iput v3, v0, Lk0/r8;->h:I

    :goto_0
    return-void
.end method
