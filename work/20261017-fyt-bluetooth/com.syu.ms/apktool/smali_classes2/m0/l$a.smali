.class public Lm0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public final synthetic c:Lm0/l;


# direct methods
.method public constructor <init>(Lm0/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm0/l$a;->c:Lm0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array v0, p1, [B

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lm0/l$a;->a:[B

    new-array p1, p1, [B

    .line 3
    fill-array-data p1, :array_1

    iput-object p1, p0, Lm0/l$a;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        -0x5bt
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data

    :array_1
    .array-data 1
        -0x56t
        0x55t
        0x2t
        -0x20t
        0x0t
        0x0t
        -0x1ft
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/l$a;->c:Lm0/l;

    invoke-static {v0}, Lm0/l;->N2(Lm0/l;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lm0/l$a;->c:Lm0/l;

    invoke-static {v0}, Lm0/l;->Q2(Lm0/l;)I

    .line 3
    iget-object v0, p0, Lm0/l$a;->c:Lm0/l;

    invoke-static {v0}, Lm0/l;->O2(Lm0/l;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm0/l$a;->c:Lm0/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/l;->P2(Lm0/l;I)I

    .line 5
    iget-object v0, p0, Lm0/l$a;->c:Lm0/l;

    invoke-static {v0}, Lm0/l;->R2(Lm0/l;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lm0/l$a;->a:[B

    invoke-static {v0}, Lm0/d;->m([B)V

    .line 8
    iget-object v0, p0, Lm0/l$a;->b:[B

    invoke-static {v0}, Lm0/d;->m([B)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
