.class public Lk0/cg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cg;


# direct methods
.method public constructor <init>(Lk0/cg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cg$a;->a:Lk0/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/cg$a;->a:Lk0/cg;

    iget-byte v1, v0, Lk0/cg;->f:B

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/cg;->f:B

    const/16 v0, 0xb

    if-le v1, v0, :cond_1

    .line 2
    sget v0, Lk0/cg;->o:I

    if-ne v0, v2, :cond_0

    .line 3
    sget v0, Lu0/b;->r0:I

    if-nez v0, :cond_0

    .line 4
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lo1/u;->c()V

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/cg$a;->a:Lk0/cg;

    invoke-static {v0}, Lk0/cg;->a3(Lk0/cg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/cg$a;->a:Lk0/cg;

    const/4 v1, 0x0

    iput-byte v1, v0, Lk0/cg;->f:B

    :cond_1
    return-void
.end method
