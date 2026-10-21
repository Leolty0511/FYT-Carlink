.class public Lmodule/canbus/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$k;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$k;->a:Lmodule/canbus/c;

    iget v1, v0, Lmodule/canbus/c;->v:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lmodule/canbus/c;->v:I

    .line 3
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lmodule/canbus/c$k;->a:Lmodule/canbus/c;

    iget v3, v0, Lmodule/canbus/c;->v:I

    if-nez v3, :cond_3

    .line 6
    sget v3, Lk0/nt;->c:I

    if-ne v3, v1, :cond_2

    .line 7
    invoke-static {v0}, Lmodule/canbus/c;->e3(Lmodule/canbus/c;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Ll0/c0;->E()V

    .line 9
    :cond_3
    :goto_0
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x419

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v3, v4

    iget-object v4, p0, Lmodule/canbus/c$k;->a:Lmodule/canbus/c;

    iget v4, v4, Lmodule/canbus/c;->t:I

    aput v4, v3, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x2
    .end array-data
.end method
