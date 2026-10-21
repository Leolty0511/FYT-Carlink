.class public Lk0/or$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/or;


# direct methods
.method public constructor <init>(Lk0/or;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/or$b;->a:Lk0/or;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/or$b;->a:Lk0/or;

    iget v1, v0, Lk0/or;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/or;->h:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/or$b;->a:Lk0/or;

    invoke-static {v0}, Lk0/or;->a3(Lk0/or;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/or;->b3(Lk0/or;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lk0/or;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/or$b;->a:Lk0/or;

    const/4 v1, 0x6

    iput v1, v0, Lk0/or;->h:I

    :cond_1
    :goto_0
    return-void
.end method
